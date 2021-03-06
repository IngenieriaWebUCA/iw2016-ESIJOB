// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Contrato;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Contrato_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Contrato.entityManager;
    
    public static final List<String> Contrato.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Contrato.entityManager() {
        EntityManager em = new Contrato().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Contrato.countContratoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Contrato o", Long.class).getSingleResult();
    }
    
    public static List<Contrato> Contrato.findAllContratoes() {
        return entityManager().createQuery("SELECT o FROM Contrato o", Contrato.class).getResultList();
    }
    
    public static List<Contrato> Contrato.findAllContratoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Contrato o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Contrato.class).getResultList();
    }
    
    public static Contrato Contrato.findContrato(Integer id) {
        if (id == null) return null;
        return entityManager().find(Contrato.class, id);
    }
    
    public static List<Contrato> Contrato.findContratoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Contrato o", Contrato.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Contrato> Contrato.findContratoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Contrato o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Contrato.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Contrato.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Contrato.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Contrato attached = Contrato.findContrato(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Contrato.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Contrato.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Contrato Contrato.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Contrato merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
