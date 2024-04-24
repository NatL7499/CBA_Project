CBA Sales Data Management Application
This Flask application is designed to manage sales data for stores. It provides functionality to add new sales records, retrieve sales data within a specified date range, and display a form for adding sales data.

Features:
  Add Sales Record: Users can submit a form to add new sales records to the database. The form requires the store code, total sale amount, and transaction date.
  Retrieve Sales Data: Users can retrieve sales data within a specified date range by making a GET request to the /data endpoint with the start date and end date parameters.
  Display Form: The application provides an HTML form at the /salesform endpoint for users to input sales data.
  
Installation:
  Clone the repository:
    git clone https://github.com/NatL7499/CBA_Project.git
  Install the required dependencies:
  pip install -r requirements.txt
  
  Set up the MySQL database. 
  Ensure you have MySQL installed and running. 
  Create a database named Store_Data and a user with appropriate permissions. 
  Update the database connection parameters (MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE) in the app.py file accordingly.
  
  Run the Flask application:
    python app.py
    
Usage:
  Access the form to add sales data:
    http://localhost:5000/salesform
    Submit the form to add new sales records to the database.
    
  Retrieve sales data within a specified date range:
    http://localhost:5000/data?start_date=YYYY-MM-DD&end_date=YYYY-MM-DD
    Replace YYYY-MM-DD with the desired start and end dates.
