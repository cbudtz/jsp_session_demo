package business;

import data.User;
import data.UserDao;

public class UserController {
    UserDao userDao = new UserDao();

    public User checkLogin(String cpr, String pass) {
        User user = userDao.findUser(cpr);
        //Check if theres a user and if pass matches!
        if (user!= null && pass.equals(user.getPassword())){
            return user;
        }
        return null;

    }
}
