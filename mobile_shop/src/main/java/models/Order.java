package models;

import java.util.Date;

public class Order {
    private int order_id;
    private String address;
    private Date order_date;
    private String phone;
    private String status;
    private int total;

    public Order() {
    }

    public Order(int order_id, String address, Date order_date, String phone, String status, int total) {
        this.order_id = order_id;
        this.address = address;
        this.order_date = order_date;
        this.phone = phone;
        this.status = status;
        this.total = total;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getOrder_date() {
        return order_date;
    }

    public void setOrder_date(Date order_date) {
        this.order_date = order_date;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

}
