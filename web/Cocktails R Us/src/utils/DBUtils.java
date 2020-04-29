package utils;

import beans.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Category;
import beans.Customer;
import beans.Product;
import beans.ProductInCart;
import java.math.BigDecimal;

public class DBUtils {

    public static Customer findUser(Connection conn,
            String userName) throws SQLException {

        String sql = "Select c.name, c.email, c.phone,c.address, c.city_region,c.cc_number from Customer c " //
                + " where c.name = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            Customer user = new Customer();
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setPhone(rs.getString("phone"));
            user.setAddress(rs.getString("address"));
            user.setCityRegion(rs.getString("city_region"));
            user.setCcNumber(rs.getString("cc_number"));
            return user;
        }
        return null;
    }

    public static List<Product> queryProduct(Connection conn) throws SQLException {
//        String sql = "Select p.name,p.price,p.description,c.name,c.id from Product p inner join Category c on c.id=p.category_id";
        String sql = "select * from Product p, Category c where p.category_id = c.id";
        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<Product>();
        while (rs.next()) {

            Product product = new Product();
            product.setId(rs.getInt("p.id"));
            product.setName(rs.getString("p.name"));
            product.setPrice(rs.getBigDecimal("p.price"));
            product.setDescription(rs.getString("p.description"));
            product.setImg(rs.getString("p.image"));
            product.setCategory(new Category(rs.getShort("c.id"), rs.getString("c.name")));

            list.add(product);
        }
        return list;
    }

    public static void insertProduct(Connection conn, Product prod) throws SQLException {
        //String sql = "Select p.name,p.price,p.description,c.name,c.id from Product p inner join Category c on c.id=p.category_id";
        String sql = "insert into Product(name,category_id,price,description,image) values(?,?,?,?,?)";
        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, prod.getName());
        pstm.setInt(2, prod.getCategory().getId());
        pstm.setBigDecimal(3, prod.getPrice());
        pstm.setString(4, prod.getDescription());
        pstm.setString(5, prod.getImg());
        pstm.execute();

    }

    public static Product findProduct(Connection conn, String code) throws SQLException {
        Product prod = new Product();
        String sql = "select * from Product p, Category c where p.id = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, code);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {

            prod.setName(rs.getString("p.name"));
            prod.setPrice(rs.getBigDecimal("p.price"));
            prod.setDescription(rs.getString("p.description"));
            prod.setCategory(new Category(rs.getShort("c.id")));

        }
        return prod;
    }

    public static void updateProduct(Connection conn, Product product) throws SQLException {
        String sql = "UPDATE Product SET name = ?, price = ? WHERE id = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, product.getName());
        ps.setBigDecimal(2, product.getPrice());
        ps.setInt(3, product.getId());
        ps.execute();
    }

    public static void addToCart(Connection conn, String id) throws SQLException {
        String sql = "insert into Cart values (?,1) on duplicate key update quantity = quantity + 1";
       /* String varname1 = ""
                + "update Cart.quantity set quantity = quantity + 1 where id = ?";

        String varname11 = ""
                + "if ROW_COUNT()=0 insert into Cart values(?,1)";
        String sql = varname1 + varname11;*/
        PreparedStatement ps = conn.prepareCall(sql);
        ps.setInt(1, Integer.parseInt(id));

        ps.execute();
    }

    public static List<ProductInCart> getCart(Connection conn) throws SQLException {
        String sql = "select * from Product p, Cart c where p.id = c.product_id";
        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<ProductInCart> list = new ArrayList<>();
        while (rs.next()) {
            Cart cart = new Cart();
            Product product = new Product();
            product.setId(rs.getInt("p.id"));
            product.setName(rs.getString("p.name"));
            product.setPrice(rs.getBigDecimal("p.price"));
            product.setDescription(rs.getString("p.description"));
            product.setImg(rs.getString("p.image"));

            cart.setId(rs.getInt("p.id"));
            cart.setQuantity(rs.getInt("c.quantity"));
            list.add(new ProductInCart(product, cart));
        }
        return list;
    }
    public static void createOrder(Connection conn) throws SQLException{
        String sql = "delete from Cart;";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.execute();
    }

}
