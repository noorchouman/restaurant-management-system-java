/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;

import Model.Customer;
import Model.Ingredient;
import Model.Staff;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;



/**
 *
 * @author User
 */
public class DBAccess {
    private Connection con;
    private Statement stm;
     private void connect() throws SQLException{        
        con=DBConnection.getConnection();
        stm=con.createStatement();
    }
    private void close() throws SQLException{
        stm.close();
        con.close();
    }
    public void AddCost(Customer C) throws SQLException{
        String query1="INSERT INTO customer (Name, ContactNumber, Email, Address) VALUES ('" + C.getName() + "', '" + C.getContactNb() + "', '" + C.getEmail() + "', '" + C.getAddress() + "')";

        System.out.println(query1);
        
        try{
            connect();
            stm.executeUpdate(query1);
            close();
        }
        catch (SQLException e){
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, e);
        }
    }
    public ArrayList<Integer> getCustsIDs() throws Exception{
        String query2="Select CustomerID from customer";
        ArrayList<Integer> IDList = new ArrayList();
     
     try{
         connect();
         ResultSet rs= stm.executeQuery(query2);
         while(rs.next())
         {
             IDList.add(rs.getInt("CustomerID"));
         }
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
     return IDList;

    }
    public ArrayList<Integer> gettablesIDs() throws Exception{
        String query2="Select TableID from mytable";
        ArrayList<Integer> IDList = new ArrayList();
     
     try{
         connect();
         ResultSet rs= stm.executeQuery(query2);
         while(rs.next())
         {
             IDList.add(rs.getInt("TableID"));
         }
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
     return IDList;

    }
    public ArrayList<Integer> getDishesIDs() throws Exception{
        String query2="Select DishID from dish";
        ArrayList<Integer> IDList = new ArrayList();
     
     try{
         connect();
         ResultSet rs= stm.executeQuery(query2);
         while(rs.next())
         {
             IDList.add(rs.getInt("DishID"));
         }
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
     return IDList;

    }
    public int getnextOrderID() throws SQLException{
        connect();
        String sql = "SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES " +
                     "WHERE TABLE_SCHEMA = 'restaurant' AND TABLE_NAME = 'orders'";

        try {
            // Prepare the statement
            PreparedStatement pstmt = con.prepareStatement(sql);

            // Execute the query
            ResultSet rs = pstmt.executeQuery();

            // Retrieve and print the next auto-increment ID
            if (rs.next()) {
                long nextId = rs.getLong("AUTO_INCREMENT");
                System.out.println("Next auto-increment ID for 'orders' table: " + nextId);
                return (int) nextId;
            } else {
                System.out.println("Could not retrieve the next auto-increment ID.");
            }
        } catch (SQLException e) {
            System.out.println("SQL exception occurred: " + e.getMessage());
            e.printStackTrace();
        }
        return -1;
    }

    public double getdishPrice(int dishID) throws SQLException {
        connect();
        String query = "SELECT price FROM dish WHERE DishID = '"+ dishID+"'";
        ResultSet rs = stm.executeQuery(query);

            // Check if the result set has at least one row
            if (rs.next()) {
                return rs.getDouble("price");
            } else {
                System.out.println("No dish found with ID: " + dishID);
                return -1;  // Indicating that no dish was found
            }
            
    } 
    
    public void AddOrder(int id, int cust, int table, double bill, String special, int DishID, int Q) throws SQLException{
        connect();
        
        String query="INSERT INTO order_status (OrderStatusID, StatusName) VALUES ('"+id+"','Order Recieved')";
        try{
            connect();
            stm.executeUpdate(query);
            close();
        }
        catch (SQLException e){
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, e);
        }
         LocalDateTime now = LocalDateTime.now();

        // Define a formatter
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

        // Format the LocalDateTime to a string
        String time = now.format(formatter);
        String query1="INSERT INTO orders (CustomerID, TableID, OrderStatusID, OrderTime, TotalBill, SpecialInstructions) VALUES ('" + cust+ "', '" + table + "', '"+id+"', '" + time +"', '" + bill + "', '" +special+"')";
        System.out.println(query1);
        
        try{
            connect();
            stm.executeUpdate(query1);
            close();
        }
        catch (SQLException e){
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, e);
        }
        
        
        double x=getdishPrice(DishID);
        String query2="INSERT INTO order_detail (OrderDetailID, OrderID, DishID, Quantity, PricePerItem) Values ('"+id+"', '"+id+"', '" +DishID + "', '"+ Q + "', '"+ x+"')";
        System.out.println(query1);
        
        try{
            connect();
            stm.executeUpdate(query2);
            close();
        }
        catch (SQLException e){
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, e);
        }
    }
    
    public ArrayList<Integer> getstaffIds(){
        String query2="Select StaffId from staff";
        ArrayList<Integer> idlist = new ArrayList();
     
     try{
         connect();
         ResultSet rs= stm.executeQuery(query2);
         while(rs.next())
         {
             idlist.add(rs.getInt("StaffID"));
         }
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
     return idlist;
    }
    
    public ArrayList<String> getroles(){
        String query2="Select RoleName from role";
        ArrayList<String> namelist = new ArrayList();
     
     try{
         connect();
         ResultSet rs= stm.executeQuery(query2);
         while(rs.next())
         {
             namelist.add(rs.getString("RoleName"));
         }
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
     return namelist;
    }
    
    public ArrayList<String> getsupnames(){
        String query2="Select Name from supplier";
        ArrayList<String> namelist = new ArrayList();
     
     try{
         connect();
         ResultSet rs= stm.executeQuery(query2);
         while(rs.next())
         {
             namelist.add(rs.getString("Name"));
         }
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
     return namelist;
    }
    
    public void deletestaff(int id){
        String query="DELETE FROM Staff where StaffID="+ id;
        try{
         connect();
         stm.executeUpdate(query);
         close();
        }
        catch (SQLException ex){
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
    }
    
    public Staff getstaffinfo(int id) throws SQLException{
        String q="SELECT * FROM staff WHERE StaffID="+id;
        Staff s=null;
        try{
         connect();
         ResultSet rs= stm.executeQuery(q);
         while(rs.next())
         {
             s=new Staff();
             s.setName(rs.getString("Name"));
             s.setId(rs.getInt("StaffID"));
             s.setEmail(rs.getString("Email"));
             s.setCn(rs.getString("ContactNumber"));
             s.setSalary(rs.getDouble("Salary"));
             s.setShift(rs.getString("Shift"));
             s.setRoleId(rs.getInt("RoleID"));
             
             
             
             
         }
         close();
     }
     catch (SQLException ex)
     {
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
        
        String p="SELECT RoleName from role WHERE RoleID="+s.getRoleId();
        connect();
        ResultSet rs= stm.executeQuery(p);
        while(rs.next()){
            String ro=rs.getString("RoleName");
            s.setrole(ro);
        }
         
      return s;
    }
    
    public void updatestaff(int id, String name, String cn, String email, double salary, String shift, String role) throws SQLException{
        int rid=0;
        String p="SELECT RoleID from role WHERE RoleName='"+role+"'";
        connect();
        ResultSet rs= stm.executeQuery(p);
        while(rs.next()){
            int ro=rs.getInt("RoleID");
            rid=ro;
        }
        String q= "UPDATE staff SET Name='"+name+"', ContactNumber='"+cn+"', Email='"+email+"', Salary='"+salary+"', Shift='" +shift+"', RoleID='"+rid+"' WHERE StaffID='"+id+"'";
        try{
         connect();
         stm.executeUpdate(q);
         close();
        }
        catch (SQLException ex){
        Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, ex);
     }
    }
    
    
    public boolean checkiname(String name) throws SQLException{
         String query = "SELECT COUNT(*) FROM ingredient WHERE Name = ?";
         connect();
        try {
            // Prepare the statement to avoid SQL injection
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, name);  // Set the name parameter to 'Fred'

            // Execute the query and obtain the result set
            ResultSet rs = pstmt.executeQuery();

            // Check the result
            if (rs.next()) {
                int count = rs.getInt(1);  // Get the count from the result set
                return count > 0;  // Return true if there is at least one 'Fred'
            }
        } catch (SQLException e) {
            System.out.println("SQL exception occurred: " + e.getMessage());
            e.printStackTrace();
        }
        return false;
    }
    
    public Ingredient returninfo(String name) throws SQLException{
        connect();
        
        if(checkiname(name)){
            int qstock =0;
            int suppid =1;
            String query= "SELECT * FROM ingredient WHERE Name = '"+name+"'";
            
            ResultSet rs= stm.executeQuery(query);
            while(rs.next()){
            qstock=rs.getInt("QuantityInStock");
            suppid=rs.getInt("SupplierID");
            
            }
            String suppname="";
            String sql="SELECT Name FROM supplier WHERE SupplierID = '"+suppid+"'";
            ResultSet rf= stm.executeQuery(sql);
            while(rf.next()){
            suppname=rf.getString("Name");
            }
            Ingredient s=new Ingredient(name, qstock, suppid, suppname);
            return s;
        }
        else{
            
            return null;
        }
        
    }
    public int getsuppid(String name) throws SQLException{
        int i=1;
            connect();
            String sql="SELECT SupplierID FROM supplier WHERE Name = '"+name+"'";
            ResultSet rf= stm.executeQuery(sql);
            while(rf.next()){
                i=rf.getInt("SupplierID");
            }
         return i; 
    }
    
    
    public void addIngredient(String name, int q, String supp) throws SQLException{
        int supid=getsuppid(supp);
        if(checkiname(name)){
            String updateSql = "UPDATE ingredient SET QuantityInStock = QuantityInStock +'"+q+"', SupplierID='"+supid+"' WHERE name = ?";

        
            // Prepare the statement with a parameter for the name
            PreparedStatement pstmt = con.prepareStatement(updateSql);
            pstmt.setString(1, name);  // Set the name parameter to 'Fred'

            // Execute the update
            int affectedRows = pstmt.executeUpdate();
            
        }
        else{
         String query1="INSERT INTO ingredient (Name, QuantityInStock, SupplierID) VALUES ('" + name + "', '" + q+ "', '"  + supid + "')";

        System.out.println(query1);
        
        try{
            connect();
            stm.executeUpdate(query1);
            close();
        }
        catch (SQLException e){
            Logger.getLogger(DBAccess.class.getName()).log(Level.SEVERE,null, e);
        } 
        
        }
    }
}
