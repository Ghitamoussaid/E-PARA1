/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

@Entity
public class Client extends User implements Serializable {
    private String nom;
    private String prenom;
    private String tele;
    private String adresse;
    @OneToMany(mappedBy = "client",fetch = FetchType.EAGER)
    private List<Commande> commandes;
    @OneToMany(mappedBy = "client")
    private List<Panier> paniers;
    

    public Client() {
    }

    public Client(String nom, String prenom, String tele, String adresse, String email, String password) {
        super(email, password);
        this.nom = nom;
        this.prenom = prenom;
        this.tele = tele;
        this.adresse = adresse;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getTele() {
        return tele;
    }

    public void setTele(String tele) {
        this.tele = tele;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
    
    
    
    
    
}
