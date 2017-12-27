package com.niit.Dao;

import java.util.List;

import com.niit.model.Orders;

public interface OrdersDao {
	public boolean createOrder(Orders orders);
	public List<Orders> retrieveOrders(String userEmail);
}