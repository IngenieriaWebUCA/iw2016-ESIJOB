// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.prueba;

import es.uca.iw.esijob.prueba.Prueba;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Prueba_Roo_Jpa_Entity {
    
    declare @type: Prueba: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Prueba.id;
    
    @Version
    @Column(name = "version")
    private Integer Prueba.version;
    
    public Long Prueba.getId() {
        return this.id;
    }
    
    public void Prueba.setId(Long id) {
        this.id = id;
    }
    
    public Integer Prueba.getVersion() {
        return this.version;
    }
    
    public void Prueba.setVersion(Integer version) {
        this.version = version;
    }
    
}
