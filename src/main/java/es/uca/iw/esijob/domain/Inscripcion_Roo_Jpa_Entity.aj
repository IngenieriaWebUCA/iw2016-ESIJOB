// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Inscripcion;
import es.uca.iw.esijob.domain.InscripcionPK;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Inscripcion_Roo_Jpa_Entity {
    
    declare @type: Inscripcion: @Entity;
    
    declare @type: Inscripcion: @Table(name = "inscripcion");
    
    @EmbeddedId
    private InscripcionPK Inscripcion.id;
    
    public InscripcionPK Inscripcion.getId() {
        return this.id;
    }
    
    public void Inscripcion.setId(InscripcionPK id) {
        this.id = id;
    }
    
}
