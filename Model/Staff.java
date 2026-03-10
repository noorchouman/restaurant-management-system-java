/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author User
 */
public class Staff {
    private int id;
    private String name;
    private String cn;
    private String email;
    private double salary;
    private String shift;
    private int roleId;
    private String rolename;
    public Staff(){}

    // Constructor
    public Staff(String name, String cn, String email, double salary, String shift, int roleId) {
        this.name = name;
        this.cn = cn;
        this.email = email;
        this.salary = salary;
        this.shift = shift;
        this.roleId = roleId;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCn(String cn) {
        this.cn = cn;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getCn() {
        return cn;
    }

    public String getEmail() {
        return email;
    }

    public double getSalary() {
        return salary;
    }

    public String getShift() {
        return shift;
    }

    public int getRoleId() {
        return roleId;
    }
    public String getrole(){
        return rolename;
    }
    public void setrole(String n){
        this.rolename=n;
    }
}
