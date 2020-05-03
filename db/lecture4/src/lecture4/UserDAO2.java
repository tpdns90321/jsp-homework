package lecture4;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import lecture4.DB;

public class UserDAO2 {
	private static List<User> userFrom(ResultSet result) throws SQLException {
			ArrayList<User> list = new ArrayList<User>();
			while (result.next()) {
				User user = new User();
				user.setId(result.getInt("id"));
				user.setUserid(result.getString("userid"));
				user.setPassword(result.getString("password"));
				user.setName(result.getString("name"));
				user.setEmail(result.getString("email"));
				user.setDepartmentId(result.getInt("departmentId"));
				user.setDepartmentName(result.getString("departmentName"));
				user.setUserType(result.getString("userType"));
				user.setEnabled(result.getBoolean("enabled"));
				list.add(user);
			}
			
			return list;
	}
	
	public static List<User> findAll() throws Exception {
		String sql = "SELECT u.*, d.departmentName " + 
					 "FROM user u LEFT JOIN department d ON u.departmentId = d.id";
		try (Connection connection = DB.getConnection("student1");
			 PreparedStatement statement = connection.prepareStatement(sql);
			 ResultSet result = statement.executeQuery()) {
			return userFrom(result);
		}
	}
	
	public static List<User> findByName(String name) throws Exception {
		String sql = "SELECT u.*, d.departmentName " + 
					 "FROM user u LEFT JOIN department d ON u.departmentId = d.id " +
					 "WHERE u.name LIKE ?";

		try (Connection connection = DB.getConnection("student1");
			 PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, "%" + name + "%");
			ResultSet result = statement.executeQuery();
			List<User> list = userFrom(result);
			result.close();
			return list;
		}
	}
}
