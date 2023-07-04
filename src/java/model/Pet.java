package model;

public class Pet {
        private int id;
        private String animal;
        private String raca;

    public Pet(){}    
        
    public Pet(String animal, String raca) {
        this.animal = animal;
        this.raca = raca;
    }
    
    public Pet(int id, String animal, String raca) {
        this.id = id;
        this.animal = animal;
        this.raca = raca;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAnimal() {
        return animal;
    }

    public void setAnimal(String animal) {
        this.animal = animal;
    }

    public String getRaca() {
        return raca;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }

            
        
}
