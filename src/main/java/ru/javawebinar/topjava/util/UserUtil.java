package ru.javawebinar.topjava.util;

import ru.javawebinar.topjava.model.Role;
import ru.javawebinar.topjava.model.User;

import java.util.Arrays;
import java.util.List;

/**
 * Created by ArturDS on 16.12.2015.
 */
public class UserUtil {

    public static final List<User> USERS_LIST = Arrays.asList(
            new User(1,"fsdfadff", "abc@gmail.com", "Сегей", Role.ROLE_USER),
            new User(2,"fsdfaf", "vgz@gmail.com", "Василий", Role.ROLE_ADMIN),
            new User(3,"fsdaaf", "rms@gmail.com", "Андрей", Role.ROLE_USER),
            new User(5,"fsdfff", "bg@gmail.com", "Герман", Role.ROLE_USER),
            new User(4,"fsdf", "fd@gmail.com", "Артем", Role.ROLE_USER),
            new User(6,"fsdf", "af@gmail.com", "Вениамин", Role.ROLE_USER)
    );

    public static void main(String[] args) {
        System.out.println(USERS_LIST);
    }

}
