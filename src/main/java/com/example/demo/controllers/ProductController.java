package com.example.demo.controllers;

import com.example.demo.models.Product;
import com.example.demo.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    @GetMapping("/")
    public String products(@RequestParam(name="title",required = false) String title, Principal principal,Model model ) {
        model.addAttribute("products",productService.getProducts(title));
        model.addAttribute("user",productService.getUserByPrincipal(principal));
        return "products";
    }
    @PostMapping("/product/create")
    public String create(Principal principal, Product product, @RequestParam("file1") MultipartFile file1,
                         @RequestParam("file2") MultipartFile file2,
                         @RequestParam("file3") MultipartFile file3)  throws IOException{
        productService.addProduct(principal,product,file1,file2,file3);
        return "redirect:/";
    }
    @PostMapping("/product/delete/{id}")
    public String delete(@PathVariable Long id) {
        productService.removeProduct(id);
        return "redirect:/";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product",product);
        model.addAttribute("images",product.getImages());
        return "productInfo";
    }
}
