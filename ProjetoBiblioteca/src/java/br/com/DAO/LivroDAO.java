package br.com.DAO;

import br.com.DTO.LivroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LivroDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<LivroDTO> lista = new ArrayList<>();
    
    //método de cadastro
    public void CadastrarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "insert into livro (nome_livro) values (?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
          pstm = con.prepareStatement(sql);
          pstm.setString(1,objLivroDTO.getNome_livro());
          
          pstm.execute();
          pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    //método de pesquisa(listar)
    public ArrayList<LivroDTO> PesquisarLivro() throws ClassNotFoundException{
        
        String sql = "select * from livro";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while (rs.next()){
                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setId_livro(rs.getInt("id_livro"));
                objLivroDTO.setNome_livro(rs.getString("nome_livro"));
                
                lista.add(objLivroDTO);
            }            
        } catch (SQLException e) {
        }        
        return lista;        
    }
    
    //método para excluir
    public void ExcluirLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "delete from livro where id_livro=?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
          pstm = con.prepareStatement(sql);
          pstm.setInt(1,objLivroDTO.getId_livro());
          
          pstm.execute();
          pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    //método para alterar
     public void AlterarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException{
        
        String sql = "update livro set nome_livro=? where id_livro=?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
          pstm = con.prepareStatement(sql);
          pstm.setString(1, objLivroDTO.getNome_livro());
          pstm.setInt(2,objLivroDTO.getId_livro());
          
          pstm.execute();
          pstm.close();
            
        } catch (SQLException e) {
        }
    }
}
