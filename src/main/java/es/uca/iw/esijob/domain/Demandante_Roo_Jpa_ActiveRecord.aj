// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Demandante;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Demandante_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Demandante.entityManager;
    
    public static final List<String> Demandante.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Demandante.entityManager() {
        EntityManager em = new Demandante().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Demandante.countDemandantes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Demandante o", Long.class).getSingleResult();
    }
    
    public static List<Demandante> Demandante.findAllDemandantes() {
        return entityManager().createQuery("SELECT o FROM Demandante o", Demandante.class).getResultList();
    }
    
    public static List<Demandante> Demandante.findAllDemandantes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Demandante o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Demandante.class).getResultList();
    }
    
    public static Demandante Demandante.findDemandante(Integer id) {
        if (id == null) return null;
        return entityManager().find(Demandante.class, id);
    }
    
    public static List<Demandante> Demandante.findDemandanteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Demandante o", Demandante.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Demandante> Demandante.findDemandanteEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Demandante o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Demandante.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Demandante.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Demandante.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Demandante attached = Demandante.findDemandante(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Demandante.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Demandante.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Demandante Demandante.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Demandante merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
