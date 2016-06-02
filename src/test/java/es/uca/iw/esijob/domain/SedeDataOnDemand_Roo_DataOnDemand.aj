// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.domain;

import es.uca.iw.esijob.domain.Empresa;
import es.uca.iw.esijob.domain.EmpresaDataOnDemand;
import es.uca.iw.esijob.domain.Sede;
import es.uca.iw.esijob.domain.SedeDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect SedeDataOnDemand_Roo_DataOnDemand {
    
    declare @type: SedeDataOnDemand: @Component;
    
    private Random SedeDataOnDemand.rnd = new SecureRandom();
    
    private List<Sede> SedeDataOnDemand.data;
    
    @Autowired
    EmpresaDataOnDemand SedeDataOnDemand.empresaDataOnDemand;
    
    public Sede SedeDataOnDemand.getNewTransientSede(int index) {
        Sede obj = new Sede();
        setCiudad(obj, index);
        setIdempresa(obj, index);
        setNombre(obj, index);
        return obj;
    }
    
    public void SedeDataOnDemand.setCiudad(Sede obj, int index) {
        String ciudad = "ciudad_" + index;
        if (ciudad.length() > 32) {
            ciudad = ciudad.substring(0, 32);
        }
        obj.setCiudad(ciudad);
    }
    
    public void SedeDataOnDemand.setIdempresa(Sede obj, int index) {
        Empresa idempresa = empresaDataOnDemand.getRandomEmpresa();
        obj.setIdempresa(idempresa);
    }
    
    public void SedeDataOnDemand.setNombre(Sede obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 32) {
            nombre = nombre.substring(0, 32);
        }
        obj.setNombre(nombre);
    }
    
    public Sede SedeDataOnDemand.getSpecificSede(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Sede obj = data.get(index);
        Integer id = obj.getId();
        return Sede.findSede(id);
    }
    
    public Sede SedeDataOnDemand.getRandomSede() {
        init();
        Sede obj = data.get(rnd.nextInt(data.size()));
        Integer id = obj.getId();
        return Sede.findSede(id);
    }
    
    public boolean SedeDataOnDemand.modifySede(Sede obj) {
        return false;
    }
    
    public void SedeDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Sede.findSedeEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Sede' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Sede>();
        for (int i = 0; i < 10; i++) {
            Sede obj = getNewTransientSede(i);
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
