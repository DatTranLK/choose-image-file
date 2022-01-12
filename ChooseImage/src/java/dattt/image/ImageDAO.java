/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dattt.image;

import dattt.utils.DBHelpers;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;

/**
 *
 * @author jike
 */
public class ImageDAO implements Serializable{
    public boolean savePhoto(InputStream inputstream)
    throws SQLException, NamingException{
        Connection con = null;
        PreparedStatement stm = null;
        
        try{
            //check connection
            con = DBHelpers.makeConnection();
            if(con != null){
                //2 create spl string
                String sql = "Insert into Pictures([image])"
                        + "Values(?) ";
                //3 create statement object to load to sql String
                stm = con.prepareStatement(sql);
                stm.setBlob(1, inputstream);
                int row = stm.executeUpdate();
                if(row > 0){
                    return true;
                }
            }
            
            
        } finally{
            if(stm != null){
                stm.close();
            }
            if(con != null){
                con.close();
            }
        }
        return false;
    }
    
    
}
