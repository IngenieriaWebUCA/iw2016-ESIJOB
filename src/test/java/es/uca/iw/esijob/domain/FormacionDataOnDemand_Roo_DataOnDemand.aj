// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Formacion;
import es.uca.iw.esijob.domain.FormacionDataOnDemand;
import es.uca.iw.esijob.domain.Tipoformacion;
import es.uca.iw.esijob.domain.TipoformacionDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect FormacionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: FormacionDataOnDemand: @Component;
    
    private Random FormacionDataOnDemand.rnd = new SecureRandom();
    
    private List<Formacion> FormacionDataOnDemand.data;
    
    @Autowired
    TipoformacionDataOnDemand FormacionDataOnDemand.tipoformacionDataOnDemand;
    
    public Formacion FormacionDataOnDemand.getNewTransientFormacion(int index) {
        Formacion obj = new Formacion();
        setIdTipoFormacion(obj, index);
        setNivel(obj, index);
        setTitulacion(obj, index);
        return obj;
    }
    
    public void FormacionDataOnDemand.setIdTipoFormacion(Formacion obj, int index) {
        Tipoformacion idTipoFormacion = tipoformacionDataOnDemand.getRandomTipoformacion();
        obj.setIdTipoFormacion(idTipoFormacion);
    }
    
    public void FormacionDataOnDemand.setNivel(Formacion obj, int index) {
        String nivel = "nivel_" + index;
        if (nivel.length() > 32) {
            nivel = nivel.substring(0, 32);
        }
        obj.setNivel(nivel);
    }
    
    public void FormacionDataOnDemand.setTitulacion(Formacion obj, int index) {
        String titulacion = "titulacion_" + index;
        if (titulacion.length() > 128) {
            titulacion = titulacion.substring(0, 128);
        }
        obj.setTitulacion(titulacion);
    }
    
    public Formacion FormacionDataOnDemand.getSpecificFormacion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Formacion obj = data.get(index);
        Integer id = obj.getId();
        return Formacion.findFormacion(id);
    }
    
    public Formacion FormacionDataOnDemand.getRandomFormacion() {
        init();
        Formacion obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return Formacion.findFormacion(id);
    }
    
    public boolean FormacionDataOnDemand.modifyFormacion(Formacion obj) {
        return false;
    }
    
    public void FormacionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Formacion.findFormacionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Formacion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Formacion>();
        for (int i = 0; i < 10; i++) {
            Formacion obj = getNewTransientFormacion(i);
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
