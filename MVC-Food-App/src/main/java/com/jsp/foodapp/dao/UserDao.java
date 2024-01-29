package com.jsp.foodapp.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.foodapp.entities.User;

@Repository
public class UserDao {
  @Autowired
  EntityManagerFactory emf;
  
  public void saveUser(User u) {
	   
	   User existingUser = fetchUserByEmail(u.getEmail());

	   if (existingUser == null) {
	        EntityManager em = emf.createEntityManager();
	        EntityTransaction et = em.getTransaction();
            et.begin(); 
            em.persist(u);
	         et.commit();
	        }else {
	        System.out.println("User with the same email already exists.");
	    }
	}
  
 public User findUserByEmailPassword(String email, String password) {
      EntityManager em = emf.createEntityManager();
      Query query = em.createQuery("SELECT u FROM User u WHERE u.email = :email AND u.password = :password");
      query.setParameter("email", email);
      query.setParameter("password", password);

      try {
          return (User) query.getSingleResult();
      } catch (NoResultException e) {
          return null;
      } 
  }

  public User fetchUserByEmail(String email) {
      EntityManager em = emf.createEntityManager();
      Query query = em.createQuery("SELECT u FROM User u WHERE u.email = :email");
      query.setParameter("email", email);

      try {
    	  
          return (User) query.getSingleResult();
      } catch (NoResultException e) {
          return null;
      }   }

  public void updateUser(User u) {
		EntityManager entityManager = emf.createEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(u);
		entityTransaction.commit();
	}
}