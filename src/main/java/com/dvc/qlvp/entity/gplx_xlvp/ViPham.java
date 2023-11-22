package com.dvc.qlvp.entity.gplx_xlvp;

import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "DM_ViPham")
@Data
public class ViPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MaViPham")
    private Integer maViPham;

    @Column(name = "TenViPham", nullable = false, length = 50)
    private String tenViPham;

    @Column(name = "VPPL", length = 50)
    private String vppl;

    @Column(name = "GhiChu", length = 255)
    private String ghiChu;

    @Column(name = "TrangThai", nullable = false)
    private boolean trangThai = true;

    @Column(name = "NguoiTao", length = 30)
    private String nguoiTao;

    @Column(name = "NguoiSua", length = 30)
    private String nguoiSua;

    @Column(name = "NgayTao", nullable = false)
    private java.sql.Timestamp ngayTao;

    @Column(name = "NgaySua", nullable = false)
    private java.sql.Timestamp ngaySua;

    // Constructors, getters, setters, etc.
}
