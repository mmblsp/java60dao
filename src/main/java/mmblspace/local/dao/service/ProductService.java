package mmblspace.local.dao.service;

import mmblspace.local.dao.repository.ProductRepository;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    private final ProductRepository repository;

    public ProductService(ProductRepository repository) {
        this.repository = repository;
    }

    public String getProductName(String name) {
        return repository.getProductName(name);
    }
}
