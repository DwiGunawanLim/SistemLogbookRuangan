/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author asus
 */
public class Connection {
    private com.mysql.jdbc.Connection con;
    private com.mysql.jdbc.Statement stmt;
    private ResultSet resulSet;
    private PreparedStatement preparedStatement;
    private String dsn;
    private String login;
    private String pwd;

    public Connection(String dsn, String login, String pwd) {
        this.dsn = dsn;
        this.login = login;
        this.pwd = pwd;
    }

    public com.mysql.jdbc.Connection connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        con = (com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/"
                + dsn, login, pwd);
        stmt = (com.mysql.jdbc.Statement) con.createStatement();
        return con;
    }

    public int executeUpdate(String str) throws SQLException {
        return stmt.executeUpdate(str);
    }

    public ResultSet executeQuery(String str) throws SQLException {
        resulSet = stmt.executeQuery(str);
        return resulSet;
    }

    public void disconnect() throws SQLException {
        if (resulSet != null) {
            resulSet.close();
        }
        if (stmt != null) {
            stmt.close();
        }
        if (con != null) {
            con.close();
        }
    }

    public com.mysql.jdbc.Statement getStmt() {
        return stmt;
    }

    public ResultSet getResultSet() {
        return resulSet;
    }

    public PreparedStatement getPreparedStatement(String str) throws SQLException {
        preparedStatement = (PreparedStatement) con.prepareStatement(str);
        return preparedStatement;
    }
}
