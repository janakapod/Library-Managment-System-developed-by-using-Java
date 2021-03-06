/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import DB.DB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

/**
 *
 * @author Jpod
 */
public class UserProfile extends javax.swing.JFrame {

    /**
     * Creates new form UserProfile
     */
    public UserProfile() {
        initComponents();
        //assign the user name to the label
        jLabel2.setText(uname+"'s Profle");
    }
    //get the username from the Menu GUI and asign to variable
    public static String uname=Menu.Username;

   
        //To change body of generated methods, choose Tools | Templates.
    
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        options = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jLayeredPane1 = new javax.swing.JLayeredPane();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jUserName = new javax.swing.JTextField();
        jPassword = new javax.swing.JPasswordField();
        jNewPassword = new javax.swing.JPasswordField();
        jLayeredPane2 = new javax.swing.JLayeredPane();
        jLabel6 = new javax.swing.JLabel();
        jRadioButton1 = new javax.swing.JRadioButton();
        jRadioButton2 = new javax.swing.JRadioButton();
        jLabel7 = new javax.swing.JLabel();
        jReNewPassword = new javax.swing.JPasswordField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);
        setTitle("User Profile");

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/banner.jpg"))); // NOI18N

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setBounds(10, 0, 150, 30);
        jLayeredPane1.add(jLabel2, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jLabel3.setText("User Name");
        jLabel3.setBounds(10, 50, 70, 20);
        jLayeredPane1.add(jLabel3, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jLabel4.setText("Password");
        jLabel4.setBounds(10, 100, 60, 20);
        jLayeredPane1.add(jLabel4, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jLabel5.setText("New Password");
        jLabel5.setBounds(10, 150, 90, 20);
        jLayeredPane1.add(jLabel5, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jUserName.setBounds(150, 50, 110, 30);
        jLayeredPane1.add(jUserName, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jPassword.setBounds(150, 100, 110, 30);
        jLayeredPane1.add(jPassword, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jNewPassword.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jNewPasswordActionPerformed(evt);
            }
        });
        jNewPassword.setBounds(150, 150, 110, 30);
        jLayeredPane1.add(jNewPassword, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jLayeredPane2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setText("Options");
        jLabel6.setBounds(10, 10, 60, 30);
        jLayeredPane2.add(jLabel6, javax.swing.JLayeredPane.DEFAULT_LAYER);

        options.add(jRadioButton1);
        jRadioButton1.setText("Change User Name");
        jRadioButton1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jRadioButton1MouseClicked(evt);
            }
        });
        jRadioButton1.setBounds(10, 50, 140, 30);
        jLayeredPane2.add(jRadioButton1, javax.swing.JLayeredPane.DEFAULT_LAYER);

        options.add(jRadioButton2);
        jRadioButton2.setText("Change Password");
        jRadioButton2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jRadioButton2MouseClicked(evt);
            }
        });
        jRadioButton2.setBounds(10, 110, 140, 30);
        jLayeredPane2.add(jRadioButton2, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jLayeredPane2.setBounds(320, 60, 160, 160);
        jLayeredPane1.add(jLayeredPane2, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jLabel7.setText("Re-type New Password");
        jLabel7.setBounds(10, 220, 130, 20);
        jLayeredPane1.add(jLabel7, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jReNewPassword.setBounds(150, 210, 110, 30);
        jLayeredPane1.add(jReNewPassword, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/ok.png"))); // NOI18N
        jButton1.setText("Confirm");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jButton1.setBounds(240, 260, 100, 25);
        jLayeredPane1.add(jButton1, javax.swing.JLayeredPane.DEFAULT_LAYER);

        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/delete.png"))); // NOI18N
        jButton2.setText("Cancel");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.setBounds(390, 260, 90, 25);
        jLayeredPane1.add(jButton2, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jLabel1))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(jLayeredPane1)
                        .addContainerGap())))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLayeredPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 294, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jRadioButton1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jRadioButton1MouseClicked
        // TODO add your handling code here:
        //enable fields and disable fields accordng to selection
        jUserName.setEnabled(true);
        jPassword.setEnabled(true);
        jNewPassword.setEnabled(false);
        jReNewPassword.setEnabled(false);
    }//GEN-LAST:event_jRadioButton1MouseClicked

    private void jRadioButton2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jRadioButton2MouseClicked
        // TODO add your handling code here:
        //enable fields and disable fields accordng to selection
        jUserName.setEnabled(false);
        jPassword.setEnabled(true);
        jNewPassword.setEnabled(true);
        jReNewPassword.setEnabled(true);
    }//GEN-LAST:event_jRadioButton2MouseClicked

    private void jNewPasswordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jNewPasswordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jNewPasswordActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try {
            // TODO add your handling code here:
            String dps="";      //data base password
            Connection con= DB.myCon();
            Statement s=con.createStatement();
            //String uname=Menu.Username;
            ResultSet rs=s.executeQuery("SELECT * FROM user WHERE userName='"+ uname +"'");
            if(rs.next()){
                dps=rs.getString("password");
            }
            
            String ps=new String(jPassword.getPassword());
            System.out.println(dps);
            System.out.println(ps);
            
            if(jRadioButton1.isSelected()){
             //change user name
                String un=jUserName.getText();
                if((un.equals("")||ps.equals(""))){
                    JOptionPane.showMessageDialog(rootPane, "Fill required text fields", "Error", JOptionPane.ERROR_MESSAGE);
                }
                if(dps.equals(ps)){
                    String q="UPDATE user SET userName='"+un+"' WHERE userName='"+uname+"'";
                    s.execute(q);       //update user name
                    JOptionPane.showMessageDialog(rootPane, "User Name Changed");
                    Menu.Username=un;
                    jLabel2.setText(un);
                    
                }
                else {
                    JOptionPane.showMessageDialog(rootPane, "Password does not match", "Error", JOptionPane.ERROR_MESSAGE);
                }
                
            }
            else if(jRadioButton2.isSelected()){
                //change password
                String np1,np2;
                np1=new String(jNewPassword.getPassword());
                np2=new String(jReNewPassword.getPassword());
                
                if(ps.equals(dps)){
                    if(np1.equals(np2)){
                        if(np1.length()>6 && np1.length()<15){
                            String q="UPDATE user SET password='"+np1+"' WHERE userName='"+uname+"'";
                            s.executeUpdate(q);
                            JOptionPane.showMessageDialog(rootPane, "Password Changed");
                        }
                        else{
                            JOptionPane.showMessageDialog(this, "Password should be between 6 to 15 characters ", "Error", JOptionPane.ERROR_MESSAGE);
                        }
                    }
                    else{
                        JOptionPane.showMessageDialog(rootPane, " New Password Dosen't match", "Error", JOptionPane.ERROR_MESSAGE);
                    }
                
                }
                else{
                    JOptionPane.showMessageDialog(rootPane, " Wrong Password", "Error", JOptionPane.ERROR_MESSAGE);
                }
            }
            con.close();
        } 
        catch (Exception ex) {
            JOptionPane.showMessageDialog(this, ex.getMessage(), "Exception Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        new Menu().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    /**
     * @param args the command line arguments
     */
    
    public static void main(String args[]) {
        
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(UserProfile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(UserProfile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(UserProfile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(UserProfile.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                new UserProfile().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLayeredPane jLayeredPane1;
    private javax.swing.JLayeredPane jLayeredPane2;
    private javax.swing.JPasswordField jNewPassword;
    private javax.swing.JPasswordField jPassword;
    private javax.swing.JRadioButton jRadioButton1;
    private javax.swing.JRadioButton jRadioButton2;
    private javax.swing.JPasswordField jReNewPassword;
    private javax.swing.JTextField jUserName;
    private javax.swing.ButtonGroup options;
    // End of variables declaration//GEN-END:variables
}
