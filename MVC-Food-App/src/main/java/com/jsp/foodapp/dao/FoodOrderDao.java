package com.jsp.foodapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.entities.FoodOrder;
import com.jsp.foodapp.entities.Product;
@Repository
public class FoodOrderDao {
	@Autowired
	 EntityManagerFactory emf;

	public List<FoodOrder> fetchAllFoodOrders() {
		EntityManager em = emf.createEntityManager();
		  Query q= em.createQuery("select fo from FoodOrder fo");
		return q.getResultList();
	}

	public List<FoodOrder> fetchAllFoodOrdersbyUser(int id) {
	    EntityManager em = emf.createEntityManager();
	    Query query = em.createQuery("SELECT fo FROM FoodOrder fo WHERE fo.user.id = :id");
        query.setParameter("id", id);
	    return query.getResultList();
	}


}
