package task;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Task_23_2 {
	public static void main(String[] args) throws SQLException {

		// connection details for MySQL

		String URL = "jdbc:mysql://localhost" + ":" + 3306;
		String uname = "root";
		String psw = "Abdmysql@786";
		// Creating connection to MySQL Database
		Connection con = DriverManager.getConnection(URL, uname, psw);

		// Create statement object to create the statement
		Statement st = con.createStatement();
		String createDB = "create database Task_23_2";
		String use = "Use Task_23_2";
		String createTable = "create table DataInfo (empcode int,empname varchar(20),empage int,esalary int)";
		String insert = "insert into DataInfo values (101,'Jenny',25,10000)," + "(102,'Jacky',30,20000),"
				+ "(103,'Joe',20,40000)," + "(104,'John',40,80000)," + "(105,'Shameer',25,90000)";
		String select = "Select * from DataInfo";
		
		// Create a new Database

		st.execute(createDB);

		// Use the Database

		st.execute(use);

		// Create a table

		st.execute(createTable);

		// Insert the data filed values

		st.executeUpdate(insert);
		
		// Selecting the data
		ResultSet rs = st.executeQuery(select);

		// Print the data values

		while (rs.next()) {

			System.out.println(rs.getInt("empcode") + " " + rs.getString("empname") + " " + rs.getInt("empage") + " "
					+ rs.getInt("esalary"));

		}

	}
}


