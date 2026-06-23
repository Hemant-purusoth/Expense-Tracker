package com.example.expensetracker.model;

import jakarta.persistence.*;

@Entity
public class Expense {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;
    private double amount;
    private String category;
    private String date;

    private String username;   // 👈 ADD THIS

    public Expense() {}

    public Expense(String description, double amount,
                   String category, String date,
                   String username) {
        this.description = description;
        this.amount = amount;
        this.category = category;
        this.date = date;
        this.username = username;
    }

    public Long getId() { return id; }
    public String getDescription() { return description; }
    public double getAmount() { return amount; }
    public String getCategory() { return category; }
    public String getDate() { return date; }
    public String getUsername() { return username; }

    public void setDescription(String description) { this.description = description; }
    public void setAmount(double amount) { this.amount = amount; }
    public void setCategory(String category) { this.category = category; }
    public void setDate(String date) { this.date = date; }
    public void setUsername(String username) { this.username = username; }
}
