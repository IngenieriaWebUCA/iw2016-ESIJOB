// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Experiencia;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Experiencia_Roo_Jpa_Entity {
    
    declare @type: Experiencia: @Entity;
    
    declare @type: Experiencia: @Table(name = "experiencia");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Experiencia.id;
    
    public Integer Experiencia.getId() {
        return this.id;
    }
    
    public void Experiencia.setId(Integer id) {
        this.id = id;
    }
    
}
