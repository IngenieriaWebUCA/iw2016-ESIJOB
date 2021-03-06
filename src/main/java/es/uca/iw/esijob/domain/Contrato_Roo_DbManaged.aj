// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Contrato;
import es.uca.iw.esijob.domain.Oferta;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Contrato_Roo_DbManaged {
    
    @OneToMany(mappedBy = "tipoContrato")
    private Set<Oferta> Contrato.ofertas;
    
    @Column(name = "nombre", length = 45)
    @NotNull
    private String Contrato.nombre;
    
    public Set<Oferta> Contrato.getOfertas() {
        return ofertas;
    }
    
    public void Contrato.setOfertas(Set<Oferta> ofertas) {
        this.ofertas = ofertas;
    }
    
    public String Contrato.getNombre() {
        return nombre;
    }
    
    public void Contrato.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
