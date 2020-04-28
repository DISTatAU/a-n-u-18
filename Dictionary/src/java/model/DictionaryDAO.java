/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import utility.DbConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class DictionaryDAO {
    	DbConnection cm;
	Connection con;
	Statement stmt;
	ResultSet rs;
        PreparedStatement ps;

	public DictionaryDAO() {
		try {
                    con = cm.getConnection();  
                    System.out.print("connected to database");
		} catch (Exception e) {
                    e.printStackTrace();
		}
	}
    public List<Entries> SearchWord(String word) {
		try {
                     List<Entries> entriesList;
          
                    String sql = "SELECT * FROM entries where word = '"+word+"'";
                    stmt = con.createStatement();
                    rs = stmt.executeQuery(sql);
                    if (rs == null){
                        return null;
                    }
                       
                    entriesList = new ArrayList<>();
                    while (rs.next()) {
                        Entries f = new Entries(rs.getString("word").trim(), rs.getString("language").trim(),
                                        rs.getString("description").trim());
                        entriesList.add(f);

                    }
                    
                    return entriesList;
                    
		} catch (Exception e) {
                    e.printStackTrace();
		}
		return null;
	}
    }
    
