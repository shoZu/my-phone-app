package pl.sda.service;

import pl.sda.model.Product;

import java.math.BigDecimal;
import java.util.List;

public class BillServiceIml implements BillService {

    @Override
    public BigDecimal getFinalBill(List<Product> list) {
        BigDecimal sum = BigDecimal.ZERO;
        for (Product product:list) {
            sum = sum.add(product.getPrice());
        }

        return sum;
    }
}
