// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Demandante;
import es.uca.iw.esijob.domain.DemandanteDataOnDemand;
import es.uca.iw.esijob.domain.EstadoInscripcion;
import es.uca.iw.esijob.domain.Inscripcion;
import es.uca.iw.esijob.domain.InscripcionDataOnDemand;
import es.uca.iw.esijob.domain.Oferta;
import es.uca.iw.esijob.domain.OfertaDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect InscripcionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: InscripcionDataOnDemand: @Component;
    
    private Random InscripcionDataOnDemand.rnd = new SecureRandom();
    
    private List<Inscripcion> InscripcionDataOnDemand.data;
    
    @Autowired
    DemandanteDataOnDemand InscripcionDataOnDemand.demandanteDataOnDemand;
    
    @Autowired
    OfertaDataOnDemand InscripcionDataOnDemand.ofertaDataOnDemand;
    
    public Inscripcion InscripcionDataOnDemand.getNewTransientInscripcion(int index) {
        Inscripcion obj = new Inscripcion();
        setEstadoInscripcion(obj, index);
        setIddemandante(obj, index);
        setIdoferta(obj, index);
        return obj;
    }
    
    public void InscripcionDataOnDemand.setEstadoInscripcion(Inscripcion obj, int index) {
        EstadoInscripcion estadoInscripcion = null;
        obj.setEstadoInscripcion(estadoInscripcion);
    }
    
    public void InscripcionDataOnDemand.setIddemandante(Inscripcion obj, int index) {
        Demandante iddemandante = demandanteDataOnDemand.getRandomDemandante();
        obj.setIddemandante(iddemandante);
    }
    
    public void InscripcionDataOnDemand.setIdoferta(Inscripcion obj, int index) {
        Oferta idoferta = ofertaDataOnDemand.getRandomOferta();
        obj.setIdoferta(idoferta);
    }
    
    public Inscripcion InscripcionDataOnDemand.getSpecificInscripcion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Inscripcion obj = data.get(index);
        Integer id = obj.getId();
        return Inscripcion.findInscripcion(id);
    }
    
    public Inscripcion InscripcionDataOnDemand.getRandomInscripcion() {
        init();
        Inscripcion obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return Inscripcion.findInscripcion(id);
    }
    
    public boolean InscripcionDataOnDemand.modifyInscripcion(Inscripcion obj) {
        return false;
    }
    
    public void InscripcionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Inscripcion.findInscripcionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Inscripcion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Inscripcion>();
        for (int i = 0; i < 10; i++) {
            Inscripcion obj = getNewTransientInscripcion(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
