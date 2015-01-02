/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import Interfaces.Login;

/**
 *
 * @author Tusita
 */
public class ST {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //Initail Frame that will be opened when application is run
        /*LookAndFeel look = new NimbusLookAndFeel();
        try {
            UIManager.setLookAndFeel(look);
        } catch (Exception ex) {
            ex.printStackTrace();
        }*/
        Login m= new Login();
        m.setVisible(true);
        m.pack();
    }
}
