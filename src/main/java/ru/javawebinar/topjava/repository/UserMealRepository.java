package ru.javawebinar.topjava.repository;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import ru.javawebinar.topjava.model.UserMeal;

import java.util.Collection;

/**
 * GKislin
 * 06.03.2015.
 */

public interface UserMealRepository {
    UserMeal save(UserMeal userMeal);

    void delete(int id);

    UserMeal get(int id);

    Collection<UserMeal> getAll();
}
