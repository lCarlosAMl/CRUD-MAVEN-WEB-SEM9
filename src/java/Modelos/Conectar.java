
package Modelos;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conectar {
    
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/bd_profesor");
        ds.setUsername("root");
        ds.setPassword("");
        return ds;
    }
}
