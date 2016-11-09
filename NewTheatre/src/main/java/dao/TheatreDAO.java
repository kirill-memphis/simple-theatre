package dao;

import entity.User;

public interface TheatreDAO {
	
	public Long addUser(User user);
	
	public User getUser(String userLogin, String userPass);

}
