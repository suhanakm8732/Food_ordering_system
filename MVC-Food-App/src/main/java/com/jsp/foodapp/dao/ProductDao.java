package com.jsp.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.entities.Product;

@Repository
public class ProductDao {
  @Autowired
  EntityManagerFactory emf;
  
   public void saveProduct(Product p) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.persist(p);
		et.commit();	
		}
  public List<Product> fetchAllProducts() {
	   EntityManager em = emf.createEntityManager();
	  Query q= em.createQuery("select p from Product p");
	return q.getResultList();
     }

  
  
  public void updateProduct(Product product) {
	 EntityManager em = emf.createEntityManager();
     EntityTransaction et= em.getTransaction();
     et.begin();
     Product mergedProduct = em.merge(product);
     et.commit();
	}
  public Product findProductById(int id) {
		EntityManager em =emf.createEntityManager();
		return em.find(Product.class, id);
		
	}
	  
    public void deleteProduct(Product product) {
	  EntityManager em = emf.createEntityManager();
	    EntityTransaction et = em.getTransaction();
	    et.begin();
	    em.remove(em.find(Product.class, product.getId()));
	    et.commit();
	   

}

}