# Import necessary libraries
from flask import Flask, request, jsonify
import mysql.connector
import pandas as pd

# Initialize Flask application
app = Flask(__name__)

# Define MySQL database connection parameters
MYSQL_HOST = 'localhost'
MYSQL_USER = 'cba_project'
MYSQL_PASSWORD = 'cbadata'
MYSQL_DATABASE = 'Store_Data'

# Function to connect to MySQL server and execute SQL queries
def exec_query(query, params=None, fetch_result=False):
    try:
        # Establish connection to the MySQL database
        connection = mysql.connector.connect(
            host=MYSQL_HOST,
            user=MYSQL_USER,
            password=MYSQL_PASSWORD,
            database=MYSQL_DATABASE,
        )
        # Check if connection is successful
        if connection.is_connected():
            cursor = connection.cursor(dictionary=True)
            # Run with parameters if needed
            if params:
                cursor.execute(query, params)
            else:
                cursor.execute(query)
            # Check if result is expected
            if fetch_result:
                result = cursor.fetchall()
                # Close all connections
                cursor.close()
                connection.close()
                return result
            else:
                # Committ change to db
                connection.commit()
                # Close all connections
                cursor.close()
                connection.close()
                return True
    # Catch sql connection error
    except mysql.connector.Error as err:
        print("Error connecting to database: ", err)
        return None
    # Catch any unexpected errors
    except Exception as e:
        print("Unexpected error occurred: ", e)
        return None
# Route containing html to display a form for adding sales data
@app.route('/salesform', methods = ['GET'])
def add_salesform():
    # HTML form for adding sales data
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
# Route to retrieve sales data within a specified date range
@app.route('/data', methods = ['GET'])
def get_data():
    # Extract start_date and end_date from the request parameters
    start_date = request.args.get('start_date')
    end_date = request.args.get('end_date')

    # Check if both start_date and end_date are provided
    if not start_date or not end_date:
        return jsonify({'error': 'Please provide both a start and end date.'}), 400

    # SQL query to retrieve sales data within the specified date range
    query = "SELECT * FROM Sales WHERE transaction_date BETWEEN %s AND %s"
    params = (start_date, end_date)
    result = exec_query(query, params, fetch_result=True)

    if result:
        # Convert the result to JSON, list, and pandas DataFrame
        json_data = {index: row for index, row in enumerate(result)}

        list_data = [dict(row) for row in result]

        df = pd.DataFrame(result)

        return jsonify(
            {'json_data': json_data,
             'list_data': list_data,
             'pandas_data': df.to_dict('records')}), 200
    # If data was not retrieved successfully
    else:
        return jsonify({'error': 'Failed to retrieve data from database.'}), 500
# Route to add a new sales record
@app.route('/add_row', methods=['POST'])
def add_row():
    # Extract data from the POST request
    data = request.form

    store_code = data.get('store_code')
    total_sale = float(data.get('total_sale'))
    transaction_date = data.get('transaction_date')

    # Check if required fields are provided
    if store_code is None or total_sale is None or transaction_date is None:
        return jsonify({'error': 'Please provide store_code, total_sale, and transaction_date (YYYY-MM-DD).'}), 400

    # SQL query to insert a new row into the Sales table
    query = "INSERT INTO Sales (store_code, total_sale, transaction_date) VALUES (%s, %s, %s)"
    params = (store_code, total_sale, transaction_date)
    #Execute query
    result = exec_query(query, params)

    # Check that result is not None
    if result:
        # Verify if the new row is successfully added
        verification_query = "SELECT * FROM Sales WHERE store_code = %s AND total_sale = %s AND transaction_date = %s"
        new_row_params = (store_code, total_sale, transaction_date)
        new_row = exec_query(verification_query, new_row_params, fetch_result=True)
        # If new row is found
        if new_row:
            return jsonify({'message': 'New row added to the database.', 'new_row': new_row}), 200
        else:
            return jsonify({'error': 'Failed to retrieve newly added row from the database.'}), 500
    else:
        return jsonify({'error': 'Failed to add a new row to the database.'}), 500

if __name__ == '__main__':
    app.run(debug = True)
