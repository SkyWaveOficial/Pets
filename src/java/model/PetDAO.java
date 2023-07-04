package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PetDAO {
        private static Connection conn;
        
        public PetDAO() throws ClassNotFoundException, SQLException {
            conn = MyConn.getConnection();
        }
        
        //Método para inserir dados
        public void insertPet(Pet animal) {
            //Query genérica para o método inserir
            String sql = "INSERT INTO pet (animal, raca)"
                                + "VALUES(?, ?)";
            
            //Objeto para preparar o envio da query ao banco de dados
            try {
                PreparedStatement prep = conn.prepareStatement(sql);
                prep.setString(1, animal.getAnimal());
                prep.setString(2,  animal.getRaca());
                
                prep.execute();
                prep.close();
                
            } catch (SQLException erro) {
                System.out.println("Erro ao inserir..." + erro);
            }
        }//Fim do método inserir
        
        
        //Método para listar todos os registros
        public ArrayList<Pet> listPet() throws SQLException{
            ArrayList<Pet> list = new ArrayList<>();
            
            String sql = "select * from pet";
            
            PreparedStatement prep = conn.prepareStatement(sql);
            ResultSet result = prep.executeQuery();
            
            while(result.next()){
              Pet t = new Pet();
              
              t.setId(result.getInt("id"));
              t.setAnimal(result.getString("animal"));
              t.setRaca(result.getString("raca"));
              
              list.add(t);
            }
            
            return list;
        }
        
        
        //Método para excluir
        public void deletePet(int id) throws SQLException {
            String query = "DELETE FROM pet WHERE "
                    + "id = " + id;
            
            PreparedStatement prep = conn.prepareStatement(query);
            
            prep.execute();
            prep.close();
        }
        
        
        //Método para listar pelo ID (um registro)
        public Pet listOnePet(int id) throws SQLException {
            String query = "SELECT * FROM pet WHERE "
                    + "id = " + id;
            
            PreparedStatement prep = conn.prepareStatement(query);
            ResultSet result = prep.executeQuery();
            
            Pet tr = new Pet();
            
            if(result.next()){
                tr.setId(result.getInt("id"));
                tr.setAnimal(result.getString("animal"));
                tr.setRaca(result.getString("raca"));
            }
            
            return tr;
        }
        
        
        //Método para atualizar um registro
        public void updatePet(Pet t) throws SQLException {
            String sql = "UPDATE pet SET animal = ?,"
                    + " raca = ? "
                    + "WHERE id = ?";
            
            PreparedStatement prep = conn.prepareStatement(sql);
            
            prep.setString(1, t.getAnimal());
            prep.setString(2, t.getRaca());
            prep.setInt(3, t.getId());
            
            prep.execute();
            prep.close();
        }
        
}//Fim da classe
