package models;

public class User {
    private int user_id;
    private String address;
    private String email;
    private String fullname;
    private String password;
    private String phone;
    private int role_id;

    public User() {
    }

    public User(int user_id, String address, String email, String fullname, String password, String phone,
            int role_id) {
        this.user_id = user_id;
        this.address = address;
        this.email = email;
        this.fullname = fullname;
        this.password = password;
        this.phone = phone;
        this.role_id = role_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "User [user_id=" + user_id + ", address=" + address + ", email=" + email + ", fullname=" + fullname
                + ", password=" + password + ", phone=" + phone + ", role_id=" + role_id + "]";
    }

}
