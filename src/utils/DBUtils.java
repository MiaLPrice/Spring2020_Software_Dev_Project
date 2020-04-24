package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Category;
import beans.Customer;
import beans.Product;

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
	        String sql = "Select p.name,p.price,p.description,c.name,c.id from Product p inner join Category c on c.id=p.category_id";
	 
	        PreparedStatement pstm = conn.prepareStatement(sql);
	 
	        ResultSet rs = pstm.executeQuery();
	        List<Product> list = new ArrayList<Product>();
	        while (rs.next()) {
	            
	            Product product = new Product();
	            product.setName(rs.getString("p.name"));
	            product.setPrice(rs.getBigDecimal("p.price"));
	            product.setDescription(rs.getString("p.description"));
	            product.setCategory(new Category(rs.getShort("c.id"),rs.getString("c.name")));
	            
	            list.add(product);
	        }
	        return list;
	    }
	 
	/* public static Product findProduct(Connection conn, String code) throws SQLException {
		         String sql = "Select a.Code, a.Name, a.Price from Product a where a.Code=?";
		  
		         PreparedStatement pstm = conn.prepareStatement(sql);
		         pstm.setString(1, code);
		  
		         ResultSet rs = pstm.executeQuery();
		  
		         while (rs.next()) {
		             String name = rs.getString("Name");
		             float price = rs.getFloat("Price");
		             Product product = new Product(code, name, price);
		             return product;
		         }
		         return null;
		     }*/
	 
	 
}
