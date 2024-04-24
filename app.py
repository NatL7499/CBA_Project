from flask import Flask, request, jsonify
import mysql.connector
import pandas as pd

app = Flask(__name__)

def exec_query(query):
    try:
        connection = mysql.connector.connect(
            host = "",
            user = "",
            password = "",
            databse = "",
        )
        if connection.is_connected():
            cursor = connection.cursor()

            cursor.execute(query)

            result = cursor.fetchall()

            cursor.close()
            connection.close()
            return result

    except mysql.connector.Error as err:
        print("Error connecting to database: ", err)
        return None
    except Exception as e:
        print("Unexpected error occurred: ", e)
        return None

@app.route('/data', methods = ['GET'])
def get_data():
    start_date = request.args.get('start_date')
    end_date = request.args.get('end_date')

    if not start_date or not end_date:
        return jsonify({'error': 'Please provide both a start and end date.'}), 400

    # NEED TO CHANGE ONCE DB SET UP
    #query = ("SELECT * FROM table WHERE date BETWEEN {0} AND {1}"
             #.format(start_date, end_date))
    query = f"SELECT * FROM table WHERE date BETWEEN {start_date} AND {end_date}"
    result = exec_query(query)

    if result:
        json_data = {index: row for index, row in enumerate(result)}

        list_data = [dict(row) for row in result]

        df = pd.DataFrame(result)

        return jsonify(
            {'json_data': json_data,
             'list_data': list_data,
             'pandas_data': df.to_dict('records')}), 200
    else:
        return jsonify({'error': 'Failed to retrieve data from database.'}), 500

@app.route('/add_row', methods=['POST'])
def add_row():
    data = request.json

    id = data.get('id')
    store_id = data.get('store_id')
    total_sales = data.get('total_sales')
    date = data.get('date')

    if not id or not store_id or not total_sales or not date:
        return jsonify({'error': 'Please provide id, store_id, total_sales, and date.'}), 400

    query = f"INSERT INTO table (id, store_id, total_sales, date) VALUES ({id}, {store_id}, {total_sales}, {date})"

    result = exec_query(query)

    if result:
        verification_query = f"SELECT * FROM table WHERE id = {id}"
        new_row = exec_query(verification_query)
        if new_row:
            return jsonify({'message': 'New row added to the database.', 'new_row': new_row}), 200
        else:
            return jsonify({'error': 'Failed to retrieve newly added row from the database.'}), 500
    else:
        return jsonify({'error':'Failed to add a new row to the database.'}), 500
if __name__ == '__main__':
    app.run(debug = True)
