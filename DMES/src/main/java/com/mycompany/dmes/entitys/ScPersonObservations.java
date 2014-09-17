/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.dmes.entitys;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author gustavo
 */
@Entity
@Table(name = "SC_PERSON_OBSERVATIONS")
@NamedQueries({
    @NamedQuery(name = "ScPersonObservations.findAll", query = "SELECT s FROM ScPersonObservations s"),
    @NamedQuery(name = "ScPersonObservations.findByIdPersonObservations", query = "SELECT s FROM ScPersonObservations s WHERE s.idPersonObservations = :idPersonObservations"),
    @NamedQuery(name = "ScPersonObservations.findByTittle", query = "SELECT s FROM ScPersonObservations s WHERE s.tittle = :tittle"),
    @NamedQuery(name = "ScPersonObservations.findByObservation", query = "SELECT s FROM ScPersonObservations s WHERE s.observation = :observation")})
public class ScPersonObservations implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID_PERSON_OBSERVATIONS")
    private Long idPersonObservations;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "TITTLE")
    private String tittle;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "OBSERVATION")
    private String observation;
    @JoinColumn(name = "ID_PERSON", referencedColumnName = "ID_PERSON")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private ScPerson idPerson;

    public ScPersonObservations() {
    }

    public ScPersonObservations(Long idPersonObservations) {
        this.idPersonObservations = idPersonObservations;
    }

    public ScPersonObservations(Long idPersonObservations, String tittle, String observation) {
        this.idPersonObservations = idPersonObservations;
        this.tittle = tittle;
        this.observation = observation;
    }

    public Long getIdPersonObservations() {
        return idPersonObservations;
    }

    public void setIdPersonObservations(Long idPersonObservations) {
        this.idPersonObservations = idPersonObservations;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getObservation() {
        return observation;
    }

    public void setObservation(String observation) {
        this.observation = observation;
    }

    public ScPerson getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(ScPerson idPerson) {
        this.idPerson = idPerson;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPersonObservations != null ? idPersonObservations.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ScPersonObservations)) {
            return false;
        }
        ScPersonObservations other = (ScPersonObservations) object;
        if ((this.idPersonObservations == null && other.idPersonObservations != null) || (this.idPersonObservations != null && !this.idPersonObservations.equals(other.idPersonObservations))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.mycompany.dmes.entitys.ScPersonObservations[ idPersonObservations=" + idPersonObservations + " ]";
    }
    
}
