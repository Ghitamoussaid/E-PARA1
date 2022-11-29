/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import entities.Admin;
import entities.Categorie;
import entities.Client;
import entities.Commande;
import entities.Facture;
import entities.LigneCommandePK;
import entities.Marque;
import entities.Produit;
import java.util.Date;
import services.AdminService;
import services.CategorieService;
import services.ClientService;
import services.CommandeService;
import services.FactureService;
import services.LigneCommandeService;
import services.MarqueService;
import services.ProduitService;
import util.HibernateUtil;

/**
 *
 * @author a
 */
public class Test {
    public static void main(String[] args) {
       // HibernateUtil.getSessionFactory().openSession();
        CategorieService cs = new CategorieService();
        ClientService ccs = new ClientService();
        AdminService as = new AdminService();
        MarqueService ms = new MarqueService();
        ProduitService ps = new ProduitService();
        
       
        FactureService fs = new FactureService();
        CommandeService c = new CommandeService();
        LigneCommandeService lcs = new LigneCommandeService();
       // fs.create(new Facture(new Date() , 100.0 ));
       // c.create(new Commande("Annuler",new Date(),ccs.findById(3), fs.findById(3)) ); 
        c.create(new Commande("Livrer",new Date(),ccs.findById(1), fs.findById(1)) ); 
       // c.create(new Commande("Livrer",new Date(),ccs.findById(4), fs.findById(2)) ); 
        //c.create(new Commande("Approuver",new Date(),ccs.findById(4), fs.findById(3)) ); 
        /*
        cs.create(new Categorie("Soin"));
       
        cs.create(new Categorie("Beauté"));
        cs.create(new Categorie("Nouveau"));
        cs.create(new Categorie("Promo"));
        ccs.create(new Client("Siham","Chaima","0620001444","LOT LAYMOUNE 40","sihamchaima@gmail.com","ssss"));
        ccs.create(new Client("Orchi","Nouhaila","0620011444","LOT LAYMOUNE 30","siham@gmail.com","ssss"));
        ccs.create(new Client("Moussaid","Ghita","0620001444","LOT ARIHA 50","chaima@gmail.com","ssss"));
        ccs.create(new Client("Siham","Khadija","0612131444","LOT LAYMOUNE 40","orchi@gmail.com","ssss"));
        ccs.create(new Client("ALAMI","Zineb","0612151444","LOT LAYMOUNE 10","ghita@gmail.com","ssss"));
        as.create(new Admin("orchinouha@gmail.com","oooo"));
        ms.create(new Marque("La Roche"));
        ms.create(new Marque("Vichy"));
        ms.create(new Marque("ACM"));
        ms.create(new Marque("Avène"));
        ms.create(new Marque("Cerave"));
        ms.create(new Marque("Miso"));
        ms.create(new Marque("Vita"));
        ps.create(new Produit("Depi-White", "Soin Eclarssissant", 200.0 , "dd", 22, "Eclarcit la peau", ms.findById(1), cs.findById(3)));
        ps.create(new Produit("Sun-Screen", "Ecran", 200.0 , "dd", 22, "protège la peau", ms.findById(1), cs.findById(1)));
        ps.create(new Produit("Vichy-screen", "Ecran", 200.0 , "dd", 22, "protège la peau", ms.findById(2), cs.findById(3)));
        ps.create(new Produit("Duo", "Soin Eclarssissant", 200.0 , "dd", 22, "Eclarcit la peau", ms.findById(1), cs.findById(3)));
        //ps.create(new Produit("Cleanser", "Soin Eclarssissant", 100.0 , "dd", 22, "Anti acne", ms.findById(4), cs.findById(4)));
        //ps.create(new Produit("White", "Soin Eclarssissant", 300.0 , "dd", 30, "Eclarcit la peau", ms.findById(3), cs.findById(4)));
        //ps.create(new Produit("Depi_Soleil", "Ecran", 400.0 , "dd", 22, "Eclarcit la peau", ms.findById(2), cs.findById(3)));
        //ps.create(new Produit("Booster", "Soin Eclarssissant", 180.0 , "dd", 40, "Eclarcit la peau", ms.findById(1), cs.findById(1)));
        //ps.create(new Produit("Cerave", "Soin de jour", 200.0 , "dd", 22, "Hydrate la peau", ms.findById(4), cs.findById(4)));
        //ps.create(new Produit("ACM", "Soin de nuit", 400.0 , "dd",18, "Eclarcit la peau", ms.findById(2), cs.findById(1)));
        
        */
        
    }
}
