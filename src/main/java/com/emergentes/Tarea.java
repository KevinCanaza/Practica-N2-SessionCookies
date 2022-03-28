package com.emergentes;

public class Tarea {
    private int id;
    private String tarea;

    public Tarea() {
    }

    public Tarea(int id, String tarea, boolean completado) {
        this.id = id;
        this.tarea = tarea;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }
    
    
    
}
