// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Demandante;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Demandante_Roo_Finder {
    
    public static Long Demandante.countFindDemandantesByExperienciaLike(String experiencia) {
        if (experiencia == null || experiencia.length() == 0) throw new IllegalArgumentException("The experiencia argument is required");
        experiencia = experiencia.replace('*', '%');
        if (experiencia.charAt(0) != '%') {
            experiencia = "%" + experiencia;
        }
        if (experiencia.charAt(experiencia.length() - 1) != '%') {
            experiencia = experiencia + "%";
        }
        EntityManager em = Demandante.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Demandante AS o WHERE LOWER(o.experiencia) LIKE LOWER(:experiencia)", Long.class);
        q.setParameter("experiencia", experiencia);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Demandante.countFindDemandantesByNombreLike(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Demandante.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Demandante AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)", Long.class);
        q.setParameter("nombre", nombre);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Demandante> Demandante.findDemandantesByExperienciaLike(String experiencia) {
        if (experiencia == null || experiencia.length() == 0) throw new IllegalArgumentException("The experiencia argument is required");
        experiencia = experiencia.replace('*', '%');
        if (experiencia.charAt(0) != '%') {
            experiencia = "%" + experiencia;
        }
        if (experiencia.charAt(experiencia.length() - 1) != '%') {
            experiencia = experiencia + "%";
        }
        EntityManager em = Demandante.entityManager();
        TypedQuery<Demandante> q = em.createQuery("SELECT o FROM Demandante AS o WHERE LOWER(o.experiencia) LIKE LOWER(:experiencia)", Demandante.class);
        q.setParameter("experiencia", experiencia);
        return q;
    }
    
    public static TypedQuery<Demandante> Demandante.findDemandantesByExperienciaLike(String experiencia, String sortFieldName, String sortOrder) {
        if (experiencia == null || experiencia.length() == 0) throw new IllegalArgumentException("The experiencia argument is required");
        experiencia = experiencia.replace('*', '%');
        if (experiencia.charAt(0) != '%') {
            experiencia = "%" + experiencia;
        }
        if (experiencia.charAt(experiencia.length() - 1) != '%') {
            experiencia = experiencia + "%";
        }
        EntityManager em = Demandante.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Demandante AS o WHERE LOWER(o.experiencia) LIKE LOWER(:experiencia)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Demandante> q = em.createQuery(queryBuilder.toString(), Demandante.class);
        q.setParameter("experiencia", experiencia);
        return q;
    }
    
    public static TypedQuery<Demandante> Demandante.findDemandantesByNombreLike(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Demandante.entityManager();
        TypedQuery<Demandante> q = em.createQuery("SELECT o FROM Demandante AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)", Demandante.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
    public static TypedQuery<Demandante> Demandante.findDemandantesByNombreLike(String nombre, String sortFieldName, String sortOrder) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Demandante.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Demandante AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Demandante> q = em.createQuery(queryBuilder.toString(), Demandante.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
}
