package com.example.demo.services;

import com.example.demo.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private final List<Product> products = new ArrayList<>();
    private long ID;
    {
        products.add(new Product(++ID,"PlayStation 5", "Description", 2000, "Homel","Author"));
        products.add(new Product(++ID,"Iphone 5", "Description", 1000, "Homel","Author2"));
    }
    public List<Product> getProducts() {return products;}
    public void addProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }
    public void removeProduct(Long id) {
        products.removeIf(product -> product.getId().equals( id));
    }
    public Product getProductById(Long id) {
        return products.stream().filter(product -> product.getId().equals(id)).findFirst().orElse(null);
    }
}
