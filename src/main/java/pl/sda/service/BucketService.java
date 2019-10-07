package pl.sda.service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface BucketService {
    void addProduct(HttpServletRequest req, Long productId);

    void deleteProduct(HttpServletRequest req, Long productId);

    List<Long> getPrductsId(HttpServletRequest request);

    void cleanBucket(HttpServletRequest req);
}
