package com.dvc.qlvp.entity.gplx_xlvp;

import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "DsCam5Nam")
@Data
public class Cam5Nam {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    /**
     * Đã có GPLX: 1 đã có, 0: chưa có
     * */
    @Column(name = "DaCoGPLX")
    private Integer daCoGPLX;

    @Column(name = "SoGPLX", length = 20)
    private String soGPLX;

    @Column(name = "NoiCapGPLX", length = 6)
    private String noiCapGPLX;

    @Column(name = "NgayCap")
    private java.sql.Date ngayCap;

    @Column(name = "SoCMND", nullable = false, length = 20)
    private String soCMND;

    @Column(name = "HoVaTen", nullable = false, length = 150)
    private String hoVaTen;

    @Column(name = "NgaySinh", nullable = false)
    private java.sql.Date ngaySinh;

    @Column(name = "NoiCTTinh", nullable = false, length = 10)
    private String noiCTTinh;

    @Column(name = "NoiCTHuyen", nullable = false, length = 10)
    private String noiCTHuyen;

    @Column(name = "NoiCTXa", nullable = false, length = 10)
    private String noiCTXa;

    @Column(name = "NoiCTChiTiet", nullable = false, length = 150)
    private String noiCTChiTiet;

    @Column(name = "LyDo", nullable = false)
    private Long lyDo;

    @Column(name = "ThoiGianCamTu", nullable = false)
    private java.sql.Date thoiGianCamTu;

    @Column(name = "ThoiGianCamDen", nullable = false)
    private java.sql.Date thoiGianCamDen;

    @Column(name = "CoQuanRaQD", nullable = false, length = 6)
    private String coQuanRaQD;

    @Column(name = "SoQD", length = 100)
    private String soQD;

    @Column(name = "NgayRaQD")
    private java.sql.Date ngayRaQD;

    @Column(name = "DuongDanhFile", length = 255)
    private String duongDanhFile;

    @Column(name = "GhiChu", length = 150)
    private String ghiChu;

    @Column(name = "NgayTao")
    private java.sql.Date ngayTao;

    @Column(name = "NguoiTao", length = 100)
    private String nguoiTao;

    @Column(name = "NgayCapNhat")
    private java.sql.Date ngayCapNhat;

    @Column(name = "NguoiCapNhat", length = 100)
    private String nguoiCapNhat;

    @Column(name = "TrangThai")
    private Integer trangThai;

    // Constructors, getters, setters, etc.
}
