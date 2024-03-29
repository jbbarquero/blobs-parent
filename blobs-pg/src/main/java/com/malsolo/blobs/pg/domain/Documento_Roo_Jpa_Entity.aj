// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.blobs.pg.domain;

import com.malsolo.blobs.pg.domain.Documento;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Documento_Roo_Jpa_Entity {
    
    declare @type: Documento: @Entity;
    
    declare @type: Documento: @Table(name = "T_DOCUMENTO");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Documento.id;
    
    @Version
    @Column(name = "version")
    private Integer Documento.version;
    
    public Long Documento.getId() {
        return this.id;
    }
    
    public void Documento.setId(Long id) {
        this.id = id;
    }
    
    public Integer Documento.getVersion() {
        return this.version;
    }
    
    public void Documento.setVersion(Integer version) {
        this.version = version;
    }
    
}
