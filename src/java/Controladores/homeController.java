
package Controladores;

import Modelos.Profesor;
import Modelos.Conectar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class homeController {
    
    private JdbcTemplate jt;
    private int id;
    public homeController(){
        Conectar con = new Conectar();
        this.jt = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("home.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        String sql = "SELECT *FROM profesor";
        List datos = this.jt.queryForList(sql);
        mav.addObject("datos", datos);
        mav.setViewName("home");
        return mav;
    }
    
    @RequestMapping("add.htm")
    public ModelAndView add(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("add");
        return mav;
    }
    
    @RequestMapping(value="add.htm", method = RequestMethod.POST)
    public ModelAndView add(Profesor a){
        String sql="INSERT INTO profesor(nombres, apellidos, correo, telefono, dni) VALUES(?,?,?,?,?)";
        this.jt.update(sql, a.getNombres(),a.getApellidos(), a.getCorreo(), a.getTelefono(), a.getDni());
        return new ModelAndView("redirect:/home.htm");
    }
    
    
    @RequestMapping("edit.htm")
    public ModelAndView edit(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "SELECT *FROM profesor WHERE id="+id;
        List datos = this.jt.queryForList(sql);
        mav.addObject("datos", datos);
        mav.setViewName("edit");
        return mav;
    }
    
    @RequestMapping(value="edit.htm", method = RequestMethod.POST)
    public ModelAndView edit(Profesor a){
        String sql="UPDATE profesor SET nombres=?, apellidos=?, correo=?, telefono=?, dni=? WHERE id="+id;
        this.jt.update(sql, a.getNombres(), a.getApellidos(), a.getCorreo(), a.getTelefono(), a.getDni());
        return new ModelAndView("redirect:/home.htm");
    }
    
    @RequestMapping("delete.htm")
    public ModelAndView delete(HttpServletRequest request){
         id = Integer.parseInt(request.getParameter("id"));
         String sql = "DELETE FROM profesor WHERE id="+id;
         this.jt.update(sql);
         return new ModelAndView("redirect:/home.htm");
    }
}
