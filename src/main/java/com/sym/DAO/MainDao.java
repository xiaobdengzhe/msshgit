package com.sym.DAO;

import com.sym.entity.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2017/7/26 0026.
 */
@Repository
public class MainDao {
    @Autowired
    private SessionFactory sessionFactory;

    public int save(User u) {
        return (Integer) sessionFactory.getCurrentSession().save(u);
    }

    public List<User> findAll() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(User.class);
        return criteria.list();
    }

    public void delete(int id) {

        String hql = "delete from User where id = ?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString(0, String.valueOf(id));
        query.executeUpdate();
    }

    public User getUser(int id) {
        String hql = "from User where id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString(0, String.valueOf(id));
        return (User) query.uniqueResult();
    }


    public boolean modifyUser(User user) {
        String hql = "update User set username=? where id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString(0, user.getUsername());
        query.setString(1, String.valueOf(user.getId()));
        return query.executeUpdate() > 0;
    }

}
