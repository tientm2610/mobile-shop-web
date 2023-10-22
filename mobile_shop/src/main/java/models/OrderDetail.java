package models;

public class OrderDetail {
    private int order_detai_id;
    private int price;
    private int quantity;
    private int product_id;
    private int order_id;

    public OrderDetail() {
    }

    public OrderDetail(int order_detai_id, int price, int quantity, int product_id, int order_id) {
        this.order_detai_id = order_detai_id;
        this.price = price;
        this.quantity = quantity;
        this.product_id = product_id;
        this.order_id = order_id;
    }

    public int getOrder_detai_id() {
        return order_detai_id;
    }

    public void setOrder_detai_id(int order_detai_id) {
        this.order_detai_id = order_detai_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

}
