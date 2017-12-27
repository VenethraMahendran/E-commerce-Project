package com.niit.Dao;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDao {
	
	public boolean addSupplier(Supplier supplier);
	public  List<Supplier> retrieveSupplier(); 
	public boolean deleteSupplier(Supplier supplier);
	public Supplier getSupplier(int catId);
	public boolean updateSupplier(Supplier supplier);

}

