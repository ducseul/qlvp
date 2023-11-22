package com.dvc.qlvp.entity.gplx_xlvp;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DM_QuocTich")
@Data
public class QuocTich {

    @Id
    @Column(name = "Ma", nullable = false, length = 3)
    private String ma;

    @Column(name = "TenEN", nullable = false, length = 200)
    private String tenEN;

    @Column(name = "TenVN", length = 200)
    private String tenVN;

    @Column(name = "GhiChu", length = 300)
    private String ghiChu;

    @Column(name = "TrangThai", nullable = false)
    private boolean trangThai;
}