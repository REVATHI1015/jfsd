package com.klef.jfsd.farmtoglobal.controller;

import java.io.File;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.farmtoglobal.model.Product;
import com.klef.jfsd.farmtoglobal.repository.ProductRepository;

@Controller
public class ProductController {
    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/products")
    public String viewProducts(Model model) {
        model.addAttribute("products", productRepository.findAll());
        return "viewProducts";  // JSP to display products
    }

    @PostMapping("/addProduct")
    public String addProduct(@RequestParam("name") String name,
                             @RequestParam("description") String description,
                             @RequestParam("price") Double price,
                             @RequestParam("image") MultipartFile image) throws IOException {
        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setPrice(price);

        if (!image.isEmpty()) {
            String fileName = System.currentTimeMillis() + "_" + image.getOriginalFilename();
            String filePath = "src/main/resources/static/images/" + fileName;
            image.transferTo(new File(filePath));
            product.setImagePath("/images/" + fileName);
        }

        productRepository.save(product);
        return "redirect:/products";
    }
}
