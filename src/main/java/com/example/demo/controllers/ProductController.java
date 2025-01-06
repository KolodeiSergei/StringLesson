package com.example.demo.controllers;

import com.example.demo.models.Product;
import com.example.demo.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    @GetMapping("/")
    public String products(Model model) {
        model.addAttribute("products",productService.getProducts());
        return "products";
    }
    @PostMapping("/product/create")
    public String create(Product product) {
        productService.addProduct(product);
        return "redirect:/";
    }
    @PostMapping("/product/delete/{id}")
    public String delete(@PathVariable Long id) {
        productService.removeProduct(id);
        return "redirect:/";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product",productService.getProductById(id));
        return "productInfo";
    }
}
