package main.java.com.xxx.mapper;

import main.java.com.xxx.entity.User;
/**
*用户接口类
 */
public interface UserMapper {
    public User queryUserByName(String userName);
}
