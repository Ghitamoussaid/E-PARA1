/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dao.IDao;
import entities.Client;
import entities.Panier;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author hp
 */
public class PanierService implements IDao<Panier> {

    @Override
    public boolean create(Panier o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public boolean delete(Panier o) {
               Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.delete(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public boolean update(Panier o) {
                Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.update(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public Panier findById(int id) {
        Panier panier = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            panier  = (Panier) session.get(Panier.class, id);
            tx.commit();
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return panier;
    }

    @Override
    public List<Panier> findAll() {
        List<Panier> paniers = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            paniers  =  session.createQuery("from Panier").list();
            tx.commit();
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return paniers;
    }
    
    
     public List<Panier> findBetweenDate(Date d1, Date d2) {
        List<Panier> paniers = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            paniers  =  session.getNamedQuery("findBetweenDates").setParameter("d1", d1).setParameter("d2", d2).list();
            tx.commit();
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return paniers;
    }
     public List<Panier>  findByClient(Client client) {
        Session s = null;
        Transaction tx = null;
        List<Panier>  paniers = null;
        try {
            s = HibernateUtil.getSessionFactory().openSession();
            tx = s.beginTransaction();
            paniers = (List<Panier>) ((List<Panier>) s.createQuery("select a from Panier a where a.client = :client").setParameter("client", client).list()).get(0);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            if (s != null) {
                s.close();
            }
        }
        return paniers;

    }


         
}

