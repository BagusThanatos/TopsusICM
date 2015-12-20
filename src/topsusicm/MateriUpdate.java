/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package topsusicm;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JLabel;

/**
 *
 * @author BagusThanatos (github.com/BagusThanatos)
 */
public class MateriUpdate extends MouseAdapter {
    private String idmateri;
    private PanelMateri pM;
    private JLabel label;
    private String pict;
    public MateriUpdate(String id,PanelMateri pM,JLabel l){
        idmateri=id;
        this.pM=pM;
        label =l;
        pict="img/"+idmateri+".jpg";
    }
    
    @Override
    public void mouseClicked(MouseEvent e){
        try {
            if (!label.isEnabled()) return;
            String q = "select namamateri, isimateri from materi where id_materi='"+
                    idmateri+"'";
            Database d = Database.getDatabase();
            ResultSet rs = d.getData(q);
            rs.next();
            String namamateri = rs.getString("namamateri"),
                    isimateri = rs.getString("isimateri");
            String s = namamateri + "\n" + isimateri;
            String contoh="";
            if (idmateri.equals("03que")){
                rs = d.getData("select nilai1,nilai2 from nilai"+
                        " where username='"+pM.getUsername()+"' and id_materi='02ude' order by id_nilai desc");
                double tot1 =0,tot2=0;
                if (rs.isBeforeFirst()){
                    rs.next();
                    tot2 = rs.getDouble(1)+rs.getDouble(2);
                }
                rs = d.getData("select nilai1,nilai2 from nilai"+
                        " where username='"+pM.getUsername()+"' and id_materi='01cri' order by id_nilai desc");
                if (rs.isBeforeFirst()){
                    rs.next();
                    tot1 = rs.getDouble(1)+rs.getDouble(2);
                }
                if (tot2>tot1){
                    rs=d.getData("select isicontoh from contoh where id_contoh like '%03%'");
                    rs.next();
                    contoh = rs.getString(1);
                }
            } else if(idmateri.equals("01cri")) {
                rs=d.getData("select isicontoh from contoh where id_contoh like '%01%'");
                rs.next();
                contoh = rs.getString(1);
            } else if(!idmateri.equals("02ude")){
                int id = Integer.parseInt(idmateri.substring(0, 2));
                String sid = getId();
                rs=d.getData("select status from nilai "
                        + "where id_materi like '"+sid+" 'and username='"+pM.getUsername()+"' order by id_nilai desc");
                if(rs.isBeforeFirst()) {
                    rs.next();
                    String status = rs.getString(1);
                    if(!status.equals("adv")){
                        rs=d.getData("select isicontoh from contoh where id_contoh like '%"+id+"%'");
                        rs.next();
                        contoh=rs.getString(1);
                    }
                }
            }
            pM.updateTeksMateri(s+"\n\n"+contoh);
            pM.updateIDMateri(idmateri);
            d.query("insert into navigasi(id_navigasi, username, nav_id_materi) "
                    + "values(null,'"+pM.getUsername()+"','"+idmateri+"')");
            TopsusICM_BayesianNetwork.getInstance().setPicture(pict);
        } catch (SQLException ex) {
            Logger.getLogger(MateriUpdate.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       
    }
    private String getId(){
        if (idmateri.equals("08agr")) return "03que";
        if (idmateri.equals("04alt")) return "03que";
        if (idmateri.equals("07foj")) return "04alt";
        if (idmateri.equals("09hvc")) return "03que";
        if (idmateri.equals("06inj")) return "4alt";
        if (idmateri.equals("05loj")) return "4alt";
        if (idmateri.equals("11mcq")) return "03que";
        if (idmateri.equals("03que")) return "02ude";
        return "03que";
    }
}


                        