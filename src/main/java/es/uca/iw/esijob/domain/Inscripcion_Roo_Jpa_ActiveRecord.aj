// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Inscripcion;
import es.uca.iw.esijob.domain.InscripcionPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Inscripcion_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Inscripcion.entityManager;
    
    public static final List<String> Inscripcion.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Inscripcion.entityManager() {
        EntityManager em = new Inscripcion().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Inscripcion.countInscripcions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Inscripcion o", Long.class).getSingleResult();
    }
    
    public static List<Inscripcion> Inscripcion.findAllInscripcions() {
        return entityManager().createQuery("SELECT o FROM Inscripcion o", Inscripcion.class).getResultList();
    }
    
    public static List<Inscripcion> Inscripcion.findAllInscripcions(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Inscripcion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Inscripcion.class).getResultList();
    }
    
    public static Inscripcion Inscripcion.findInscripcion(InscripcionPK id) {
        if (id == null) return null;
        return entityManager().find(Inscripcion.class, id);
    }
    
    public static List<Inscripcion> Inscripcion.findInscripcionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Inscripcion o", Inscripcion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Inscripcion> Inscripcion.findInscripcionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Inscripcion o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Inscripcion.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Inscripcion.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Inscripcion.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Inscripcion attached = Inscripcion.findInscripcion(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Inscripcion.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Inscripcion.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Inscripcion Inscripcion.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Inscripcion merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
