package models;

public class Product {

    private int productId;
    private String productName;
    private String description;
    private String img;
    private int price;

    public Product() {
    }

    public Product(int productId, String productName, String description, String img, int price) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.img = img;
        this.price = price;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public String getProductName() {
        return productName;
    }

    public String getDescription() {
        return description;
    }

    public String getImg() {
        return img;
    }

    public int getPrice() {
        return price;
    }

    @Override
    public String toString() {
        return "Product [productId=" + productId + ", productName=" + productName + ", description=" + description
                + ", img=" + img + ", price=" + price + "]";
    }

}
