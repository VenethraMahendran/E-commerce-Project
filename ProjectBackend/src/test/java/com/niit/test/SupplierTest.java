package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.Dao.SupplierDao;
import com.niit.model.Supplier;

public class SupplierTest {
	static SupplierDao supplierDao;

	@BeforeClass
	public static void initialize() {
		AnnotationConfigApplicationContext configApplnContext = new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();

		// SessionFactory
		// sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");

		supplierDao = (SupplierDao) configApplnContext.getBean("SupplierDao");
	}

	@Ignore
	@Test
	public void addSupplierTest() {
		Supplier supplier = new Supplier();
		supplier.setSupplierId(444);
		supplier.setSupplierName("name");
		supplier.setSupplierEmail("name@gmail.com");
		supplier.setSupplierDes("supplier");

		assertTrue(supplierDao.addSupplier(supplier));
	}

	@Ignore
	@Test
	public void updateSupplierTest() {
		Supplier supplier = new Supplier();
		supplier.setSupplierId(101);
		supplier.setSupplierName("ok");
		supplier.setSupplierEmail("miller@gmail.com");
		supplier.setSupplierDes(" Miller products");

		assertTrue(supplierDao.updateSupplier(supplier));
	}

	@Ignore
	@Test
	public void deleteSupplierTest() {
		Supplier supplier = new Supplier();
		supplier.setSupplierId(101);
		assertTrue(supplierDao.deleteSupplier(supplier));
	}

	@Ignore
	@Test
	public void retrieveSupplierTest() {
		List<Supplier> listSupplier = supplierDao.retrieveSupplier();
		assertNotNull("Problem in Retriving", listSupplier);
		this.show(listSupplier);
	}

	public void show(List<Supplier> listSupplier) {
		for (Supplier supplier : listSupplier) {
			System.out.println("Supplier ID:" + supplier.getSupplierId());
			System.out.println("Supplier Name:" + supplier.getSupplierName());
			System.out.println("Supplier Email:" + supplier.getSupplierEmail());
			System.out.println("Supplier Description:" + supplier.getSupplierDes());
		}
	}

	@Ignore
	@Test
	public void getSupplierTest() {
		Supplier supplier = supplierDao.getSupplier(101);
		assertNotNull("Problem in Getting:", supplier);
		System.out.println("Supplier Id:" + supplier.getSupplierId());
		System.out.println("Supplier Name:" + supplier.getSupplierName());
		System.out.println("Supplier Email:" + supplier.getSupplierEmail());
		System.out.println("Supplier Description:" + supplier.getSupplierDes());
	}
}
