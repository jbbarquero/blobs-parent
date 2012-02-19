// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.blobs.pg.domain;

import com.malsolo.blobs.pg.domain.NoDocumento;
import com.malsolo.blobs.pg.domain.NoDocumentoDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect NoDocumentoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: NoDocumentoDataOnDemand: @Component;
    
    private Random NoDocumentoDataOnDemand.rnd = new SecureRandom();
    
    private List<NoDocumento> NoDocumentoDataOnDemand.data;
    
    public NoDocumento NoDocumentoDataOnDemand.getNewTransientNoDocumento(int index) {
        NoDocumento obj = new NoDocumento();
        setContenido(obj, index);
        setDescripcion(obj, index);
        setFichero(obj, index);
        setLongitud(obj, index);
        setNombre(obj, index);
        setUrli(obj, index);
        return obj;
    }
    
    public void NoDocumentoDataOnDemand.setContenido(NoDocumento obj, int index) {
        String contenido = "contenido_" + index;
        obj.setContenido(contenido);
    }
    
    public void NoDocumentoDataOnDemand.setDescripcion(NoDocumento obj, int index) {
        String descripcion = "descripcion_" + index;
        obj.setDescripcion(descripcion);
    }
    
    public void NoDocumentoDataOnDemand.setFichero(NoDocumento obj, int index) {
        String fichero = "fichero_" + index;
        obj.setFichero(fichero);
    }
    
    public void NoDocumentoDataOnDemand.setLongitud(NoDocumento obj, int index) {
        Long longitud = new Integer(index).longValue();
        obj.setLongitud(longitud);
    }
    
    public void NoDocumentoDataOnDemand.setNombre(NoDocumento obj, int index) {
        String nombre = "nombre_" + index;
        if (nombre.length() > 100) {
            nombre = nombre.substring(0, 100);
        }
        obj.setNombre(nombre);
    }
    
    public void NoDocumentoDataOnDemand.setUrli(NoDocumento obj, int index) {
        String urli = "urli_" + index;
        if (urli.length() > 100) {
            urli = urli.substring(0, 100);
        }
        obj.setUrli(urli);
    }
    
    public NoDocumento NoDocumentoDataOnDemand.getSpecificNoDocumento(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        NoDocumento obj = data.get(index);
        Long id = obj.getId();
        return NoDocumento.findNoDocumento(id);
    }
    
    public NoDocumento NoDocumentoDataOnDemand.getRandomNoDocumento() {
        init();
        NoDocumento obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return NoDocumento.findNoDocumento(id);
    }
    
    public boolean NoDocumentoDataOnDemand.modifyNoDocumento(NoDocumento obj) {
        return false;
    }
    
    public void NoDocumentoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = NoDocumento.findNoDocumentoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'NoDocumento' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<NoDocumento>();
        for (int i = 0; i < 10; i++) {
            NoDocumento obj = getNewTransientNoDocumento(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
