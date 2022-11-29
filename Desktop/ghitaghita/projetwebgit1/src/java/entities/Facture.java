/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Facture implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
    @Temporal(TemporalType.DATE)
  private Date date;
  private Double montant;
    @OneToMany(mappedBy = "facture",fetch = FetchType.EAGER)
  private List <Commande> Commandes;

    public Facture(Date date, Double montant) {
        this.date = date;
        this.montant = montant;
    }

    public Facture() {
    }

    public List<Commande> getCommandes() {
        return Commandes;
    }

    public void setCommandes(List<Commande> Commandes) {
        this.Commandes = Commandes;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getMontant() {
        return montant;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }
    

}
