package com.gquartet.GroupProject.repos;

import com.gquartet.GroupProject.models.Customer;
import com.gquartet.GroupProject.models.CustomerOrder;
import com.gquartet.GroupProject.models.OrderDetails;
import com.gquartet.GroupProject.models.ShippingInformation;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Integer>{
    
    public List<OrderDetails> findByOrderNumber(CustomerOrder id);
    
    
    
}
