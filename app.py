from flask import Flask, request, jsonify
import mysql.connector
import pandas as pd

app = Flask(__name__)

MYSQL_HOST = 'localhost'
MYSQL_USER = 'cba_project'
MYSQL_PASSWORD = 'cbadata'
MYSQL_DATABASE = 'Store_Data'
def exec_query(query, params=None, fetch_result=False):
    try:
        connection = mysql.connector.connect(
            host=MYSQL_HOST,
            user=MYSQL_USER,
            password=MYSQL_PASSWORD,
            database=MYSQL_DATABASE,
        )
        if connection.is_connected():
            cursor = connection.cursor(dictionary=True)
            if params:
                cursor.execute(query, params)
            else:
                cursor.execute(query)

            if fetch_result:
                result = cursor.fetchall()

                cursor.close()
                connection.close()
                return result
            else:
                connection.commit()
                cursor.close()
                connection.close()
                return True

    except mysql.connector.Error as err:
        print("Error connecting to database: ", err)
        return None
    except Exception as e:
        print("Unexpected error occurred: ", e)
        return None
@app.route('/salesform', methods = ['GET'])
def add_salesform():
    sales_form =  """
                    <!DOCTYPE html>
                    <html>
                    <head>
                        <title>Text Field Form</title>
                    </head>
                    <body>
                        <label for="Title">Please Enter New Sales Data</label>
                        <form action="/add_row" method="post">
                            <label for="field1">Store Code:</label>
                            <input type="text" id="store_code" name="store_code"><br><br>
                    
                            <label for="field2">Total Sale</label>
                            <input type="text" id="total_sale" name="total_sale"><br><br>
                    
                            <label for="field3">Transaction Date(YYYY-MM-DD):</label>
                            <input type="text" id="transaction_date" name="transaction_date"><br><br>
                    
                            <input type="submit" value="Add Sale">
                        </form>
                    </body>
                    </html>
                    """
    return sales_form

@app.route('/data', methods = ['GET'])
def get_data():
    start_date = request.args.get('start_date')
    end_date = request.args.get('end_date')

    if not start_date or not end_date:
        return jsonify({'error': 'Please provide both a start and end date.'}), 400


    query = "SELECT * FROM Sales WHERE transaction_date BETWEEN %s AND %s"
    params = (start_date, end_date)
    result = exec_query(query, params, fetch_result=True)

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
    data = request.form

    store_code = data.get('store_code')
    total_sale = float(data.get('total_sale'))
    transaction_date = data.get('transaction_date')

    if store_code is None or total_sale is None or transaction_date is None:
        return jsonify({'error': 'Please provide store_code, total_sale, and transaction_date (YYYY-MM-DD).'}), 400

    query = "INSERT INTO Sales (store_code, total_sale, transaction_date) VALUES (%s, %s, %s)"
    params = (store_code, total_sale, transaction_date)
    result = exec_query(query, params)

    if result:
        verification_query = "SELECT * FROM Sales WHERE store_code = %s AND total_sale = %s AND transaction_date = %s"
        new_row_params = (store_code, total_sale, transaction_date)
        new_row = exec_query(verification_query, new_row_params, fetch_result=True)
        if new_row:
            return jsonify({'message': 'New row added to the database.', 'new_row': new_row}), 200
        else:
            return jsonify({'error': 'Failed to retrieve newly added row from the database.'}), 500
    else:
        return jsonify({'error': 'Failed to add a new row to the database.'}), 500

if __name__ == '__main__':
    app.run(debug = True)
