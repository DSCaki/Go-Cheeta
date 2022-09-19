/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package newpackage;

/**
 *
 * @author Akthar aki
 */
public class user {
    int id;
    String name;
    String address;
    int phone;
    String email;
    String password;
    
    public user() {
    }

    public user(int id, String name, String address, int phone, String email, String password) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.phone= phone;
        this.email = email;
        this.password = password;
    }

    public user(String name, String address, int phone, String email, String password) {
        this.name = name;
        this.address = address;
        this.phone= phone;
        this.email = email;
        this.password = password;
    }

    public user(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public int getPhoneNumber() {
        return phone;
    }
    
    public void setPhoneNumber(int phone ) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
