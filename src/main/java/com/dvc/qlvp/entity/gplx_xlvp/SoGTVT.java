package com.dvc.qlvp.entity.gplx_xlvp;

import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "DM_SoGTVT")
@Data
public class SoGTVT {

    @Id
    @Column(name = "MaDV", nullable = false, length = 2)
    private String maDV;

    @Column(name = "TenDV", length = 100)
    private String tenDV;

    @Column(name = "DienThoai", length = 20)
    private String dienThoai;

    @Column(name = "Fax", length = 20)
    private String fax;

    @Column(name = "DiaChi", length = 100)
    private String diaChi;

    @Column(name = "LanhDao", length = 50)
    private String lanhDao;

    @Column(name = "GhiChu", length = 255)
    private String ghiChu;

    @Column(name = "TrangThai", nullable = false)
    private boolean trangThai = true;

    @Column(name = "NguoiTao", length = 30, nullable = false)
    private String nguoiTao = "ADMIN";

    @Column(name = "NguoiSua", length = 30, nullable = false)
    private String nguoiSua = "ADMIN";

    @Column(name = "NgayTao", nullable = false)
    private java.sql.Timestamp ngayTao;

    @Column(name = "NgaySua", nullable = false)
    private java.sql.Timestamp ngaySua;
}
