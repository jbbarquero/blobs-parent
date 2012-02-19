package com.malsolo.blobs.pg.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "T_DOCUMENTO", persistenceUnit = "persistenceUnitPg")
public class Documento {

    @NotNull
    @Size(max = 100)
    private String nombre;

    private String descripcion;

    @NotNull
    private String fichero;

    @NotNull
    private String tipoContenido;

    private Long longitud;

    @NotNull
    @Size(max = 100)
    private String uri;
}
