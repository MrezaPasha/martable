package org.sadr._core.meta.generic;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.sadr._core._type.TtInitResult;

import java.util.List;
import java.util.Set;

/**
 * @param <T>
 * @author masoud
 */
public interface GenericService<T> {

    //=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#
    public TtInitResult init();

    //=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#
    public T find(GB gb);

    public T find(long id);

    public T find(long id, GB gb);

    //----------------------------
    public List<T> findAll(GB gb);

    public String findAllJson(GB gb, JB jb);

    //---------------------------
    public int count(GB gb);

    //=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#
    public T findBy(Criterion c);
    public T findById(long id);

    public T findBy(Criterion c, String... relatedClasses);

    public T findById(long id, String... relatedClasses);

    //--------------------------
    //----------------------------
    public List<T> findAll();

    public List<T> findAll(int limit);

    public List<T> findAll(Order o);

    public List<T> findAll(int limit, Order o);

    public List<T> findAll(String... relatedClasses);

    public List<T> findAll(int limit, String... relatedClasses);

    public List<T> findAll(Order o, String... relatedClasses);

    public List<T> findAll(int limit, Order o, String... relatedClasses);

    public List<T> findAllBy(Criterion c);

    public List<T> findAllBy(Criterion c, int limit);

    public List<T> findAllBy(Criterion c, Order o);

    public List<T> findAllBy(Criterion c, int limit, Order o);

    public List<T> findAllBy(Criterion c, String... relatedClasses);

    public List<T> findAllBy(Criterion c, int limit, String... relatedClasses);

    public List<T> findAllBy(Criterion c, Order o, String... relatedClasses);

    public List<T> findAllBy(Criterion c, int limit, Order o, String... relatedClasses);

    public List<T> findAllBy(Criterion c, int limit, Order o, Order oo, String... relatedClasses);

    public List<T> findAllBy(Criterion c, int limit, int offset, Order o, String... relatedClasses);

    public List<T> findAllBy(Criterion c, int limit, int offset, Order o, Order oo, String... relatedClasses);

    //=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#
    public long count();

    public int count(Criterion c);

    public boolean isExist(Criterion c);

    public boolean isExist(long id);

    public boolean isDuplicateWith(Criterion c, long ownId);

    public void update(T entity);

    public void save(T entity);

    public long saveId(T entity);

    public void delete(T entity);

    public void delete(long id);

    public void deleteAllBy(long id, List<T> lists);

    public void deleteAllBy(long id, Set<T> lists);

    public void deleteAll(long id);

    public void remove(long id);

    public void trash(long id);

    public void trash(long... id);

    public void trash(List<T> lists);

    public void exist(long id);
}
