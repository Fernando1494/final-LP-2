package ModeloDAO;

import Config.bd.ConectaBd;
import Interfaces.CRUDCurso;
import Modelo.Curso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CursoDAO implements CRUDCurso{
    ConectaBd cn = new ConectaBd();
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    Curso cu = new Curso();

    @Override
    public List listarcurso() {
        ArrayList<Curso> cursos = new ArrayList();
        String consulta = " select * "
                        + "from curso ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                Curso curso = new Curso();
                curso.setIdcurso(rs.getInt("idcurso"));
                curso.setNombre(rs.getString("nombre"));
                curso.setHoras(rs.getInt("horas"));
                curso.setCredito(rs.getInt("credito"));
                curso.setEstado(rs.getString("estado")); 
                cursos.add(curso);
            }
        } catch (Exception cu) {
            
        }
        return cursos;
    }

    @Override
    public Curso buscarcurso(int idcurso) {
        String consulta = " select *  "
                        + " from curso  "
                        + " where idcurso = " + idcurso + " ;";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                cu.setIdcurso(rs.getInt("idcurso"));
                cu.setNombre(rs.getString("nombre"));
                cu.setHoras(rs.getInt("horas"));
                cu.setCredito(rs.getInt("creditos"));
                cu.setEstado(rs.getString("estado"));
            }
        } catch (Exception cu) {
        }
        
        return cu;
    }

    @Override
    public boolean agregarcurso(Curso curso) {
        String consulta = " insert into curso(nombre, horas, credito, estado)  "
                        + " values( "
                        + "'"+ curso.getNombre() +"', "
                        + "'"+ curso.getHoras() +"', "
                        + "'"+ curso.getCredito() +"', "
                        + "'"+ curso.getEstado() +"') ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception cu) {
        }
        return false;
    }

    @Override
    public boolean editarcurso(Curso curso) {
        String consulta = " update curso "
                        + " set "
                        + " nombre = '"+ curso.getNombre() +"', "
                        + " horas = '"+ curso.getHoras() +"', "
                        + " credito = '"+ curso.getCredito() +"', "
                        + " estado = '"+ curso.getEstado() +"' "
                        + " where "
                        + " idcurso = " + curso.getIdcurso() + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception cu) {
        }
        return false;
    }

    @Override
    public boolean eliminarcurso(int idcurso) {
        String consulta = " delete from curso "
                        + " where "
                        + " idcurso = " + idcurso + "; ";
        try {
            con = cn.getConnection();
            pst = con.prepareStatement(consulta);
            pst.executeUpdate();
        } catch (Exception cu) {
        }
        return false;
    }

}