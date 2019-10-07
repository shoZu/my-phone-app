package pl.sda.service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class BucketServiceImpl implements BucketService {

    @Override
    public void addProduct(HttpServletRequest req, Long productId) {
        List<Long> bucket = (List<Long>) req.getSession().getAttribute("bucket");
        if (bucket == null) {
            bucket = new ArrayList<>();
            req.getSession().setAttribute("bucket", bucket);
        }
        bucket.add(productId);
    }

    @Override
    public void deleteProduct(HttpServletRequest req, Long productId) {
        List<Long> bucket = (List<Long>) req.getSession().getAttribute("bucket");
        if (bucket != null) {
            bucket.remove(productId);
        }
    }

    @Override
    public List<Long> getPrductsId(HttpServletRequest request) {
        List<Long> productsId = (List<Long>) request.getSession().getAttribute("bucket");
        return productsId == null ? new ArrayList<>() : productsId;
    }

    @Override
    public void cleanBucket(HttpServletRequest req) {
        ((List<Long>) req.getSession().getAttribute("bucket")).clear();
    }

}
