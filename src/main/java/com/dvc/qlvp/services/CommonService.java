package com.dvc.qlvp.services;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import java.io.Serializable;

@Service
@Transactional
public class CommonService <T, ID extends Serializable> {
    private Class<T> persistentClass;
    @Autowired
    private EntityManager entityManager;
    private Session session;

    @Autowired
    public CommonService(EntityManager entityManager) {
        this.entityManager = entityManager;
        this.session = getSession();
    }

    public CommonService(Class<T> persistentClass, EntityManager entityManager) {
        this.persistentClass = persistentClass;
        this.entityManager = entityManager;
        this.session = getSession();
    }

    private Session getSession() {
        if(session == null || !session.isOpen()){
            session = entityManager.unwrap(Session.class);
        }
        return session;
    }


    public T findById(ID id){
        return session.get(getPersistentClass(), id);
    }

    public void create(T o) {
        getSession().save(o);
    }

    public void update(T o){
        getSession().update(o);
    }

    public void merge(T o) {
        getSession().merge(o);
    }

    public void saveOrUpdate(T o) {
        getSession().saveOrUpdate(o);
    }

    public void delete(T o){
        getSession().delete(o);
    }

    public Class<T> getPersistentClass() {
        if(persistentClass == null){
            throw new IllegalArgumentException("Need to override Persistent Class");
        }
        return this.persistentClass;
    }
}
