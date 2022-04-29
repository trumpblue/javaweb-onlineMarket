package main.java.com.xxx.test;

import main.java.com.xxx.entity.User;
import main.java.com.xxx.mapper.UserMapper;
import main.java.com.xxx.util.GetSqlSessiono;
import org.apache.ibatis.session.SqlSession;

public class test {
    public static void main(String[] args){
        //获取SqlSession对象
        SqlSession session= GetSqlSessiono.createSqlSession();
        //得到对应的Mapper
        UserMapper userMapper=session.getMapper(UserMapper.class);
        //调用方法，返回用户对象
        User user= userMapper.queryUserByName("admin");

    }
}
