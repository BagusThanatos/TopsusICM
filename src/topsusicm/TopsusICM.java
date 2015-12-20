/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package topsusicm;

import java.awt.CardLayout;
import javax.swing.JFrame;
import javax.swing.JPanel;

/**
 *
 * @author BagusThanatos (github.com/BagusThanatos)
 */
public class TopsusICM extends JFrame{

    /**
     * @param args the command line arguments
     */
    JPanel mainPanel;
    String idmateri="01cri";
    PanelTest pT;
    PanelMateri pM;
    PanelLogin pL;
    PanelCreateNew pCN;
    Database d;
    String username;
    final static String PANELMATERI = "panelMateri";
    final static String PANELTEST = "panelTest";
    final static String PANELLOGIN = "panelLogin";
    final static String PANELCREATENEW = "panelCreateNew";
    int maksno, no,answer[];
    String curTest;
    public TopsusICM() {
        d = Database.getDatabase();
        setTitle("TopsusICM");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        addMainPanel();
        setResizable(false);

    }
    
    private void addMainPanel(){
//        this.getContentPane().removeAll();
//        repaint();
        pT=new PanelTest(this,d);
        pM = new PanelMateri(this, d);
        pL = new PanelLogin(this, d);
        pCN = new PanelCreateNew(this, d);
        mainPanel = new JPanel(new CardLayout());
        mainPanel.add(pL, PANELLOGIN);
        mainPanel.add(pCN,PANELCREATENEW);
        mainPanel.add(pM,PANELMATERI);
        mainPanel.add(pT,PANELTEST);
        mainPanel.setVisible(true);
        getContentPane().add(mainPanel);
//        getContentPane().add(mainPanel);
//        GroupLayout layout = new GroupLayout(getContentPane());
//        layout.setHorizontalGroup(layout.createParallelGroup().addComponent(mainPanel));
        pack();
    }
    public void changePanel(String s){
        CardLayout cl = (CardLayout) mainPanel.getLayout();
        cl.show(mainPanel, s);
        pack();
        if(s.equals(PANELMATERI)) {
            pM.updateLabelAvailability();
            TopsusICM_BayesianNetwork.getInstance().setLocation(this.getWidth()+10, 0);
            TopsusICM_BayesianNetwork.getInstance().setVisible(true);
        }
    }
    void setTestParameters(boolean isPretest){
        maksno= isPretest ? 5:2;
        pT.setTitle(isPretest ? "Pretest": "Test: "+idmateri);
        answer= new int[maksno];
        no =1;
        pT.updateSoal();
        
    }
    public static void main(String[] args) {
         java.awt.EventQueue.invokeLater(() -> {
             new TopsusICM().setVisible(true);
         });
    }
}
