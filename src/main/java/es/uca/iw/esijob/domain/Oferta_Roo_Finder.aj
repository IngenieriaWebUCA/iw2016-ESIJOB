// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Oferta;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Oferta_Roo_Finder {
    
    public static Long Oferta.countFindOfertasByInfoPuestoLike(String infoPuesto) {
        if (infoPuesto == null || infoPuesto.length() == 0) throw new IllegalArgumentException("The infoPuesto argument is required");
        infoPuesto = infoPuesto.replace('*', '%');
        if (infoPuesto.charAt(0) != '%') {
            infoPuesto = "%" + infoPuesto;
        }
        if (infoPuesto.charAt(infoPuesto.length() - 1) != '%') {
            infoPuesto = infoPuesto + "%";
        }
        EntityManager em = Oferta.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Oferta AS o WHERE LOWER(o.infoPuesto) LIKE LOWER(:infoPuesto)", Long.class);
        q.setParameter("infoPuesto", infoPuesto);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Oferta.countFindOfertasBySalarioBrutoGreaterThanEquals(Integer salarioBruto) {
        if (salarioBruto == null) throw new IllegalArgumentException("The salarioBruto argument is required");
        EntityManager em = Oferta.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Oferta AS o WHERE o.salarioBruto >= :salarioBruto", Long.class);
        q.setParameter("salarioBruto", salarioBruto);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Oferta.countFindOfertasByTituloLike(String titulo) {
        if (titulo == null || titulo.length() == 0) throw new IllegalArgumentException("The titulo argument is required");
        titulo = titulo.replace('*', '%');
        if (titulo.charAt(0) != '%') {
            titulo = "%" + titulo;
        }
        if (titulo.charAt(titulo.length() - 1) != '%') {
            titulo = titulo + "%";
        }
        EntityManager em = Oferta.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Oferta AS o WHERE LOWER(o.titulo) LIKE LOWER(:titulo)", Long.class);
        q.setParameter("titulo", titulo);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Oferta> Oferta.findOfertasByInfoPuestoLike(String infoPuesto) {
        if (infoPuesto == null || infoPuesto.length() == 0) throw new IllegalArgumentException("The infoPuesto argument is required");
        infoPuesto = infoPuesto.replace('*', '%');
        if (infoPuesto.charAt(0) != '%') {
            infoPuesto = "%" + infoPuesto;
        }
        if (infoPuesto.charAt(infoPuesto.length() - 1) != '%') {
            infoPuesto = infoPuesto + "%";
        }
        EntityManager em = Oferta.entityManager();
        TypedQuery<Oferta> q = em.createQuery("SELECT o FROM Oferta AS o WHERE LOWER(o.infoPuesto) LIKE LOWER(:infoPuesto)", Oferta.class);
        q.setParameter("infoPuesto", infoPuesto);
        return q;
    }
    
    public static TypedQuery<Oferta> Oferta.findOfertasByInfoPuestoLike(String infoPuesto, String sortFieldName, String sortOrder) {
        if (infoPuesto == null || infoPuesto.length() == 0) throw new IllegalArgumentException("The infoPuesto argument is required");
        infoPuesto = infoPuesto.replace('*', '%');
        if (infoPuesto.charAt(0) != '%') {
            infoPuesto = "%" + infoPuesto;
        }
        if (infoPuesto.charAt(infoPuesto.length() - 1) != '%') {
            infoPuesto = infoPuesto + "%";
        }
        EntityManager em = Oferta.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Oferta AS o WHERE LOWER(o.infoPuesto) LIKE LOWER(:infoPuesto)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Oferta> q = em.createQuery(queryBuilder.toString(), Oferta.class);
        q.setParameter("infoPuesto", infoPuesto);
        return q;
    }
    
    public static TypedQuery<Oferta> Oferta.findOfertasBySalarioBrutoGreaterThanEquals(Integer salarioBruto) {
        if (salarioBruto == null) throw new IllegalArgumentException("The salarioBruto argument is required");
        EntityManager em = Oferta.entityManager();
        TypedQuery<Oferta> q = em.createQuery("SELECT o FROM Oferta AS o WHERE o.salarioBruto >= :salarioBruto", Oferta.class);
        q.setParameter("salarioBruto", salarioBruto);
        return q;
    }
    
    public static TypedQuery<Oferta> Oferta.findOfertasBySalarioBrutoGreaterThanEquals(Integer salarioBruto, String sortFieldName, String sortOrder) {
        if (salarioBruto == null) throw new IllegalArgumentException("The salarioBruto argument is required");
        EntityManager em = Oferta.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Oferta AS o WHERE o.salarioBruto >= :salarioBruto");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Oferta> q = em.createQuery(queryBuilder.toString(), Oferta.class);
        q.setParameter("salarioBruto", salarioBruto);
        return q;
    }
    
    public static TypedQuery<Oferta> Oferta.findOfertasByTituloLike(String titulo) {
        if (titulo == null || titulo.length() == 0) throw new IllegalArgumentException("The titulo argument is required");
        titulo = titulo.replace('*', '%');
        if (titulo.charAt(0) != '%') {
            titulo = "%" + titulo;
        }
        if (titulo.charAt(titulo.length() - 1) != '%') {
            titulo = titulo + "%";
        }
        EntityManager em = Oferta.entityManager();
        TypedQuery<Oferta> q = em.createQuery("SELECT o FROM Oferta AS o WHERE LOWER(o.titulo) LIKE LOWER(:titulo)", Oferta.class);
        q.setParameter("titulo", titulo);
        return q;
    }
    
    public static TypedQuery<Oferta> Oferta.findOfertasByTituloLike(String titulo, String sortFieldName, String sortOrder) {
        if (titulo == null || titulo.length() == 0) throw new IllegalArgumentException("The titulo argument is required");
        titulo = titulo.replace('*', '%');
        if (titulo.charAt(0) != '%') {
            titulo = "%" + titulo;
        }
        if (titulo.charAt(titulo.length() - 1) != '%') {
            titulo = titulo + "%";
        }
        EntityManager em = Oferta.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Oferta AS o WHERE LOWER(o.titulo) LIKE LOWER(:titulo)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Oferta> q = em.createQuery(queryBuilder.toString(), Oferta.class);
        q.setParameter("titulo", titulo);
        return q;
    }
    
}