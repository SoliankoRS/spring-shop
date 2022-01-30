package com.example.springshop.service;

import com.example.springshop.model.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {

    private List<Product> products = new ArrayList<>();
    private long id = 0;

    {
        products.add(new Product(++id, "Product 1", "Test product.", 100, "Test city", "Test author"));
        products.add(new Product(++id, "Product 2", "Test product.", 100, "Test city", "Test author"));
    }

    public List<Product> getAllProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setId(++id);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        return products.stream().filter(product -> product.getId().equals(id))
                .findFirst().orElse(null);
    }
}
