package Database;

import Bean.Person;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PersonDAO {

    private ArrayList<Person> pList = new ArrayList<>();
    Connection connect;

    public ArrayList<Person> getcList() {
        return pList;
    }

    public void setcList(ArrayList<Person> pList) {
        this.pList = pList;
    }

    public PersonDAO() {

        String dbURL = "jdbc:derby://localhost:1527/sample;create=true;user=app;password=app";

        try {
            connect = DriverManager.getConnection(dbURL);
            System.out.println("Connected");

        } catch (SQLException ex) {
            System.out.println("SQLException");
        }

    }

    public List<Person> getPersonList() throws SQLException {
        Statement statement = connect.createStatement();
        ResultSet resultSet = statement.executeQuery("Select * from APP.PERSON");
        System.out.println("query run");

        List<Person> pp = new ArrayList<Person>();
        while (resultSet.next()) {
            Person person = new Person();

            person.setFirstName(resultSet.getString("firstname"));
            person.setLastName(resultSet.getString("lastname"));
            person.setAge(Integer.parseInt(resultSet.getString("age")));

            pp.add(person);
        }
        return pp;
    }

    public void insertPerson(Person person) throws SQLException {
        Statement statement = connect.createStatement();
        String insertString = "'" + person.getFirstName() + "','" + person.getLastName() + "'," + person.getAge();
        System.out.println("query run" + insertString);
        statement.executeUpdate("Insert into APP.PERSON values (" + insertString + ")");
        System.out.println("query run");
        statement.close();
    }

}
