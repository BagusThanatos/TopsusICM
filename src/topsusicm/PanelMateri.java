/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package topsusicm;

import java.awt.Color;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JLabel;

/**
 *
 * @author BagusThanatos (github.com/BagusThanatos)
 */
public class PanelMateri extends javax.swing.JPanel {

    /**
     * Creates new form PanelMateri
     */
    private TopsusICM m;
    Database d;

    public PanelMateri(TopsusICM m,Database d){
        initComponents();
        addMouseListeners();
        this.m=m;
        this.d =d;
    }
    private void addMouseListeners(){
        labelAgregasi.addMouseListener(new MateriUpdate("08agr",this,labelAgregasi));
        labelAltering.addMouseListener(new MateriUpdate("04alt",this,labelAltering));
        labelCreateInsert.addMouseListener(new MateriUpdate("01cri",this,labelCreateInsert));
        labelHaving.addMouseListener(new MateriUpdate("09hvc",this,labelHaving));
        labelInnerJoin.addMouseListener(new MateriUpdate("06inj",this,labelInnerJoin));
        labelLeftOuter.addMouseListener(new MateriUpdate("05loj",this,labelLeftOuter));
        labelMoreComplexQueries.addMouseListener(new MateriUpdate("11mcq",this,labelMoreComplexQueries));
        labelFullOuter.addMouseListener(new MateriUpdate("07foj",this,labelFullOuter));
        labelQueriesSub.addMouseListener(new MateriUpdate("10qsb",this,labelQueriesSub));
        labelQuery.addMouseListener(new MateriUpdate("03que",this,labelQuery));
        labelUpdate.addMouseListener(new MateriUpdate("02ude",this,labelUpdate));
        
    }
    void updateTeksMateri(String t){
        this.textMateri.setText(t);
    }
    void updateIDMateri (String s){
        m.idmateri=s;
    }
    void updateLabelAvailability(){
        try {
            ResultSet rs = d.getData("select golongan from akun where"
                    + " username = '"+m.username+"'");
            rs.next();
            int gol = rs.getInt(1);
            setAll(false);
            if (gol==5) {
                setAll(true);
            }
            else if (gol==4) {
                setAll(true);
            } else if(gol==3){
                labelAgregasi.setEnabled(true);
                labelAltering.setEnabled(true);
                labelCreateInsert.setEnabled(true);
                labelHaving.setEnabled(true);
                labelMoreComplexQueries.setEnabled(true);
                labelQueriesSub.setEnabled(true);
                labelQuery.setEnabled(true);
                labelUpdate.setEnabled(true);
            }
            else if(gol==2){
                labelCreateInsert.setEnabled(true);
                labelQuery.setEnabled(true);
                labelUpdate.setEnabled(true);
            } else if(gol==1){
                labelCreateInsert.setEnabled(true);
                labelUpdate.setEnabled(true);
            } else {
                labelCreateInsert.setEnabled(true);
            }
//            rs = d.getData("select status from nilai"+
//                        " where username='"+m.username+"' and id_materi='01cri' order by id_nilai desc");
//            if (rs.isBeforeFirst()){
//                rs.next();
//                String status = rs.getString("status");
//                if (status.equals("adv")){
//                    labelUpdate.setEnabled(true);
//                }
//            }
            updateStatusLabel("01cri", labelUpdate);
            updateStatusLabel("02ude", labelQuery);
            updateStatusLabel("03que", labelMoreComplexQueries);
            updateStatusLabel("11mcq", labelFullOuter);
            updateStatusLabel("04alt", labelLeftOuter);
            updateStatusLabel("03que", labelAgregasi);
            updateStatusLabel("03que", labelAltering);
            updateStatusLabel("09hvc", labelQueriesSub);
            updateStatusLabel("08agr", labelHaving);
            updateStatusLabel("05loj", labelInnerJoin);
            updateStatusLabel("10qsb", labelAltering);
            updateStatusLabel("02agr", labelQueriesSub);
            updateStatusLabel("04alt", labelMoreComplexQueries);
            updateStatusLabel("06inj", labelFullOuter);
            updateStatusLabel("11mcq", labelInnerJoin);
            updateColor(labelCreateInsert, labelUpdate.isEnabled() ? 1:0, 0);
            
        } catch (SQLException ex) {
            Logger.getLogger(PanelMateri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
                
    }
    private void updateStatusLabel(String idmateri,JLabel label){
        try {
            double nilai1=0, nilai2=0;
            Color color =null;
            ResultSet rs = d.getData("select status,nilai1, nilai2 from nilai"+
                    " where username='"+m.username+"' and id_materi='"+idmateri+"' order by id_nilai desc");
            if (rs.isBeforeFirst()){
                rs.next();
                String status = rs.getString("status");
                System.out.println(status);
                if (status.equals("adv") && !label.isEnabled()){
                    label.setEnabled(true);
                }
                nilai1= rs.getDouble("nilai1");nilai2=rs.getDouble("nilai2");

                        
            }
            updateColor(label, nilai1, nilai2);
        } catch (SQLException ex) {
            Logger.getLogger(PanelMateri.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private void updateColor(JLabel label,double nilai1,double nilai2){
        Color color;
        if((nilai1+nilai2)/2 >=0.7) color=Color.green;
        else color = Color.red;
        if (nilai1>0 && label.isEnabled()) color = Color.blue;
        label.setForeground(color);
    }
    String getUsername(){
        return m.username;
    }
    void setAll(boolean b){
        labelAgregasi.setEnabled(b);
        labelAltering.setEnabled(b);
        labelCreateInsert.setEnabled(b);
        labelHaving.setEnabled(b);
        labelInnerJoin.setEnabled(b);
        labelLeftOuter.setEnabled(b);
        labelMoreComplexQueries.setEnabled(b);
        labelFullOuter.setEnabled(b);
        labelQueriesSub.setEnabled(b);
        labelQuery.setEnabled(b);
        labelUpdate.setEnabled(b);
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelNavigasiMateri = new javax.swing.JPanel();
        labelCreateInsert = new javax.swing.JLabel();
        labelUpdate = new javax.swing.JLabel();
        labelQuery = new javax.swing.JLabel();
        labelMoreComplexQueries = new javax.swing.JLabel();
        labelFullOuter = new javax.swing.JLabel();
        labelAgregasi = new javax.swing.JLabel();
        labelHaving = new javax.swing.JLabel();
        labelQueriesSub = new javax.swing.JLabel();
        labelAltering = new javax.swing.JLabel();
        labelLeftOuter = new javax.swing.JLabel();
        labelInnerJoin = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        textMateri = new javax.swing.JTextArea();
        butTest = new javax.swing.JButton();

        labelCreateInsert.setText("1. Create&Insert");

        labelUpdate.setText("2. Update&delete");

        labelQuery.setText("3. QueryTable");

        labelMoreComplexQueries.setText("4. MoreComplexQueries");

        labelFullOuter.setText("5. FullOuterJoin");

        labelAgregasi.setText("6. AgregasiData");

        labelHaving.setText("7. HavingAndCase");

        labelQueriesSub.setText("8. Queries&SubQueries");

        labelAltering.setText("9. AlteringTable");

        labelLeftOuter.setText("10. LeftOuterJoin");

        labelInnerJoin.setText("11. InnerJoin");

        javax.swing.GroupLayout panelNavigasiMateriLayout = new javax.swing.GroupLayout(panelNavigasiMateri);
        panelNavigasiMateri.setLayout(panelNavigasiMateriLayout);
        panelNavigasiMateriLayout.setHorizontalGroup(
            panelNavigasiMateriLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelNavigasiMateriLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(panelNavigasiMateriLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(labelCreateInsert)
                    .addComponent(labelUpdate)
                    .addComponent(labelQuery)
                    .addComponent(labelMoreComplexQueries)
                    .addComponent(labelFullOuter)
                    .addComponent(labelAgregasi)
                    .addComponent(labelHaving)
                    .addComponent(labelQueriesSub)
                    .addComponent(labelAltering)
                    .addComponent(labelLeftOuter)
                    .addComponent(labelInnerJoin))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        panelNavigasiMateriLayout.setVerticalGroup(
            panelNavigasiMateriLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelNavigasiMateriLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(labelCreateInsert)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelUpdate)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelQuery)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelMoreComplexQueries)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelFullOuter)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelAgregasi)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelHaving)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(labelQueriesSub)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelAltering)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(labelLeftOuter)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(labelInnerJoin)
                .addContainerGap())
        );

        textMateri.setColumns(20);
        textMateri.setRows(5);
        jScrollPane1.setViewportView(textMateri);

        butTest.setText("Test");
        butTest.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                butTestActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(panelNavigasiMateri, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 333, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(butTest)
                .addGap(138, 138, 138))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane1)
                    .addComponent(panelNavigasiMateri, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(butTest)
                .addContainerGap(19, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void butTestActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_butTestActionPerformed
        m.changePanel(TopsusICM.PANELTEST);
        m.setTestParameters(false);
    }//GEN-LAST:event_butTestActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton butTest;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel labelAgregasi;
    private javax.swing.JLabel labelAltering;
    private javax.swing.JLabel labelCreateInsert;
    private javax.swing.JLabel labelFullOuter;
    private javax.swing.JLabel labelHaving;
    private javax.swing.JLabel labelInnerJoin;
    private javax.swing.JLabel labelLeftOuter;
    private javax.swing.JLabel labelMoreComplexQueries;
    private javax.swing.JLabel labelQueriesSub;
    private javax.swing.JLabel labelQuery;
    private javax.swing.JLabel labelUpdate;
    private javax.swing.JPanel panelNavigasiMateri;
    private javax.swing.JTextArea textMateri;
    // End of variables declaration//GEN-END:variables
}
