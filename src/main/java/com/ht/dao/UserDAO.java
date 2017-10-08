package com.ht.dao;

import com.ht.bean.Employee;
import com.ht.bean.User;
import com.ht.common.Pager;
import com.ht.price.UserPrice;

/**
 * Created by CHEN JX on 2017/8/24.
 * 用户
 */
public interface UserDAO extends BaseDAO<String,User> {
    public long countId();
    public User queryEmailPwd(String email);//根据邮箱查询信息
    void updateStatusById(String[] id,int status);
    Pager<User> queryPagerStatus(Pager<User> pager,int  status);

    User queryByPhone(String phone);//根据手机查询账户是否存在

    User queryByNickname(String nickname);//根据名称查询账户是否存在

    void updatePwd(String pwd,String user_id);//根据id来改密码

    void  updateUser(User user);//修改用户信息

}
