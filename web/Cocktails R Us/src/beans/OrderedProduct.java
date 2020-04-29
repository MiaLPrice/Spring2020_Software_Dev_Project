

package beans;

import java.io.Serializable;



public class OrderedProduct implements Serializable {
    private static final long serialVersionUID = 1L;
    
    protected OrderedProductPK orderedProductPK;
    
    private short quantity;
    
    private Product product;
    
    private CustomerOrder customerOrder;

    public OrderedProduct() {
    }

    public OrderedProduct(OrderedProductPK orderedProductPK) {
        this.orderedProductPK = orderedProductPK;
    }

    public OrderedProduct(OrderedProductPK orderedProductPK, short quantity) {
        this.orderedProductPK = orderedProductPK;
        this.quantity = quantity;
    }

    public OrderedProduct(int customerOrderId, int productId) {
        this.orderedProductPK = new OrderedProductPK(customerOrderId, productId);
    }

    public OrderedProductPK getOrderedProductPK() {
        return orderedProductPK;
    }

    public void setOrderedProductPK(OrderedProductPK orderedProductPK) {
        this.orderedProductPK = orderedProductPK;
    }

    public short getQuantity() {
        return quantity;
    }

    public void setQuantity(short quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public CustomerOrder getCustomerOrder() {
        return customerOrder;
    }

    public void setCustomerOrder(CustomerOrder customerOrder) {
        this.customerOrder = customerOrder;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderedProductPK != null ? orderedProductPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderedProduct)) {
            return false;
        }
        OrderedProduct other = (OrderedProduct) object;
        if ((this.orderedProductPK == null && other.orderedProductPK != null) || (this.orderedProductPK != null && !this.orderedProductPK.equals(other.orderedProductPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderedProduct[orderedProductPK=" + orderedProductPK + "]";
    }

}