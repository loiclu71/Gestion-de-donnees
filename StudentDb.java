import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudentDb {
    private static Connection getConn(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Fail");
        }
        String url = "jdbc:mysql://localhost:3306/test";
        String  username = "root";
        String  password = "123456";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Faile");
        }
        return conn;
    }

    public List<Student> getStudent(String sql) throws SQLException {
        List<Student> lst = new ArrayList<Student>();
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                Student stu = new Student();
                stu.setSid(rs.getInt("sid"));
                stu.setSname(rs.getString("sname"));
                stu.setSage(rs.getInt("sage"));
                stu.setSsex(rs.getString("ssex"));
                stu.setSnativeplace(rs.getString("snativeplace"));
                stu.setSmajor(rs.getString("smajor"));
                stu.setSclass(rs.getString("sclass"));
                stu.setSnative(rs.getString("snative"));
                lst.add(stu);
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            if (conn!=null){
                conn.close();
            }
        }
        return lst;
    }

    public boolean studentUpdate(String sql) throws SQLException {
        Connection conn = getConn();
        try {

            Statement st = conn.createStatement();
            int cnt = st.executeUpdate(sql);
            return cnt>0;
        }catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }finally {
            if (conn!=null)
                conn.close();
        }
    }
}
