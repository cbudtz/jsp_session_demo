package data;

import java.util.HashMap;
import java.util.Map;

public class UserDao {
    Map<String, User> userMap = new HashMap<>();

    public UserDao(){
        User user = new User();
        user.setPassword("halløj");
        user.setUsername("123456-1111");
        userMap.put("123456-1111", user);
    }

    public User findUser(String cpr){
        return userMap.get(cpr);
    }
}
