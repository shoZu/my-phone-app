package pl.sda.dao;

public class ProductImageDaoImpl implements ProductImageDao {
    @Override
    public String getImagePathForProduct(Long id) {
        return "img/iphone.png";
    }
}
