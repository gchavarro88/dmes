/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sip.dmes.entitys;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author gchavarro88
 */
@Entity
@Table(name = "sc_person_documentation_attached"  ,schema = "dmes")
@NamedQueries(
{
    @NamedQuery(name = "ScPersonDocumentationAttached.findAll", query = "SELECT s FROM ScPersonDocumentationAttached s"),
    @NamedQuery(name = "ScPersonDocumentationAttached.findByIdPersonDocumentationAttached", query = "SELECT s FROM ScPersonDocumentationAttached s WHERE s.idPersonDocumentationAttached = :idPersonDocumentationAttached"),
    @NamedQuery(name = "ScPersonDocumentationAttached.findByTittle", query = "SELECT s FROM ScPersonDocumentationAttached s WHERE s.tittle = :tittle"),
    @NamedQuery(name = "ScPersonDocumentationAttached.findByPath", query = "SELECT s FROM ScPersonDocumentationAttached s WHERE s.path = :path")
})
public class ScPersonDocumentationAttached implements Serializable
{
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_person_documentation_attached")
    @GeneratedValue(generator = "dmes.sqscpersondocumentationAttached")
    @SequenceGenerator(name = "dmes.sqscpersondocumentationAttached", sequenceName = "dmes.sqscpersondocumentationAttached", allocationSize = 1)
    private Long idPersonDocumentationAttached;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "tittle")
    private String tittle;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "path")
    private String path;
    @JoinColumn(name = "id_person", referencedColumnName = "id_person")
    @ManyToOne(optional = false)
    private ScPerson idPerson;

    public ScPersonDocumentationAttached()
    {
    }

    public ScPersonDocumentationAttached(Long idPersonDocumentationAttached)
    {
        this.idPersonDocumentationAttached = idPersonDocumentationAttached;
    }

    public ScPersonDocumentationAttached(Long idPersonDocumentationAttached, String tittle, String path)
    {
        this.idPersonDocumentationAttached = idPersonDocumentationAttached;
        this.tittle = tittle;
        this.path = path;
    }

    public Long getIdPersonDocumentationAttached()
    {
        return idPersonDocumentationAttached;
    }

    public void setIdPersonDocumentationAttached(Long idPersonDocumentationAttached)
    {
        this.idPersonDocumentationAttached = idPersonDocumentationAttached;
    }

    public String getTittle()
    {
        return tittle;
    }

    public void setTittle(String tittle)
    {
        this.tittle = tittle;
    }

    public String getPath()
    {
        return path;
    }

    public void setPath(String path)
    {
        this.path = path;
    }

    public ScPerson getIdPerson()
    {
        return idPerson;
    }

    public void setIdPerson(ScPerson idPerson)
    {
        this.idPerson = idPerson;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (idPersonDocumentationAttached != null ? idPersonDocumentationAttached.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ScPersonDocumentationAttached))
        {
            return false;
        }
        ScPersonDocumentationAttached other = (ScPersonDocumentationAttached) object;
        if ((this.idPersonDocumentationAttached == null && other.idPersonDocumentationAttached != null) || (this.idPersonDocumentationAttached != null && !this.idPersonDocumentationAttached.equals(other.idPersonDocumentationAttached)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "com.sip.dmes.entitys.ScPersonDocumentationAttached[ idPersonDocumentationAttached=" + idPersonDocumentationAttached + " ]";
    }
    
}
