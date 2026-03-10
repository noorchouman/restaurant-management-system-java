/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author User
 */
public class Ingredient {
    private String name;
    private int Q;
    private int Suppid;
    private String supp;

    public Ingredient(String name, int q, int suppid, String supp) {
        this.name = name;
        Q = q;
        Suppid = suppid;
        this.supp = supp;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQ() {
        return Q;
    }

    public void setQ(int q) {
        Q = q;
    }

    public int getSuppid() {
        return Suppid;
    }

    public void setSuppid(int suppid) {
        Suppid = suppid;
    }

    public String getSupp() {
        return supp;
    }

    public void setSupp(String supp) {
        this.supp = supp;
    }
}

