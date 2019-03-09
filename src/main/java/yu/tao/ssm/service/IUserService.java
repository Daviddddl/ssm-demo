package yu.tao.ssm.service;
import yu.tao.ssm.model.User;

public interface IUserService {
    User getUserByUserName(String user_name);
    User getUserByPassWord(String password);
    void insertUsernamePassword(User record);
}