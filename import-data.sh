#wait for the SQL Server to come up
sleep 180
#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 1wontT3ll# -d master -i setup.sql
#import the data from the csv file
/opt/mssql-tools/bin/bcp DemoData.dbo.Products in "/usr/src/app/Products.csv" -c -t',' -S localhost -U sa -P 1wontT3ll#
