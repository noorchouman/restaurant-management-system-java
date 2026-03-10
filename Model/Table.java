/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author User
 */
public class Table {
    private int capacity;
    private String location;
    private int tableSizeId;
    private int availability;
    private int seatingAreaId;

    public Table(int capacity, String location, int tableSizeId, int availability, int seatingAreaId) {
        this.capacity = capacity;
        this.location = location;
        this.tableSizeId = tableSizeId;
        this.availability = availability;
        this.seatingAreaId = seatingAreaId;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getTableSizeId() {
        return tableSizeId;
    }

    public void setTableSizeId(int tableSizeId) {
        this.tableSizeId = tableSizeId;
    }

    public int getAvailability() {
        return availability;
    }

    public void setAvailability(int availability) {
        this.availability = availability;
    }

    public int getSeatingAreaId() {
        return seatingAreaId;
    }

    public void setSeatingAreaId(int seatingAreaId) {
        this.seatingAreaId = seatingAreaId;
    }
}

