package pl.sda.controller;

import pl.sda.model.Product;
import pl.sda.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/kup-i-zaplac")
public class PayAndBuyController extends HttpServlet {

    private BucketService bucketService = new BucketServiceImpl();
    private ProductService productService = new ProductServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Long> boughtProducts = bucketService.getPrductsId(req);
        String login = (String) req.getSession().getAttribute("login");
        orderService.order(login, boughtProducts);
        bucketService.cleanBucket(req);
        req.getRequestDispatcher("/WEB-INF/view/summary.jsp").forward(req,resp);
    }

    private OrderService orderService = new OrderServiceImpl();
}

