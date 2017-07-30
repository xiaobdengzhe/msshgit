package com.sym.service;

import com.sym.DAO.MainDao;
import com.sym.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2017/7/26 0026.
 */
@Service("userService")
@Transactional
public class MainService {

    @Autowired
    private MainDao mainDao;

    public void saveUsers(List<User> us) {
        for (User u : us) {
            mainDao.save(u);
        }
    }

    public void saveUser(User user) {
        mainDao.save(user);
    }

    public User getUser(int id) {
        return mainDao.getUser(id);
    }


    public boolean modifyUser(User user) {
        return mainDao.modifyUser(user);
    }

    public List<User> getAllUsernames() {
        return mainDao.findAll();
    }

    public void delete(int id) {
        mainDao.delete(id);
    }

}
