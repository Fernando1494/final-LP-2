package Modelo;

public class Curso {
    private int idcurso;
    private String nombre;
    private int Horas;
    private int Credito;
    private String Estado;

    public Curso() {
    }

    public Curso(int idcurso, String nombre, int Horas, int Credito, String Estado) {
        this.idcurso = idcurso;
        this.nombre = nombre;
        this.Horas = Horas;
        this.Credito = Credito;
        this.Estado = Estado;
    }

    public int getIdcurso() {
        return idcurso;
    }

    public void setIdcurso(int idcurso) {
        this.idcurso = idcurso;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getHoras() {
        return Horas;
    }

    public void setHoras(int Horas) {
        this.Horas = Horas;
    }

    public int getCredito() {
        return Credito;
    }

    public void setCredito(int Credito) {
        this.Credito = Credito;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
    
    
    
}