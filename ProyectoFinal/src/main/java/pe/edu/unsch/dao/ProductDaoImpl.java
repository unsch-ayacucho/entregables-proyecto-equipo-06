package pe.edu.unsch.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import pe.edu.unsch.entities.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao{
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public Product find(Integer id) {
		return (Product) entityManager.find(Product.class, id);
	}
	

}
