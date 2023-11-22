package com.dvc.qlvp.entity.gplx_tw;

import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "DM_DonViGTVT")
@Data
public class DonViGTVT {

    /**
     * Primary key for DonViGTVT table
     */
    @Id
    @Column(name = "MaDV", nullable = false, length = 6)
    private String maDV;

    /**
     * Reference to MaDVQL in the same table
     */
    @ManyToOne
    @JoinColumn(name = "MaDVQL", referencedColumnName = "MaDV", nullable = false)
    private DonViGTVT maDVQL;

    /**
     * Second reference to MaDVQL in the same table
     */
    @ManyToOne
    @JoinColumn(name = "MaDVQL", referencedColumnName = "MaDV", nullable = false, insertable = false, updatable = false)
    private DonViGTVT maDVQLSecond;

    /**
     * SO=Sở GTVT; DT=CSĐT; SH=TTSH; DS=CSĐT & TTSH; VP=Văn phòng nhận hồ sơ GPLX
     * */
    @Column(name = "LoaiDV", nullable = false, length = 2)
    private String loaiDV;

    @Column(name = "TenDV", length = 100)
    private String tenDV;

    /**
     * Cơ quan quản lý trực tiếp của Đơn vị
     * */
    @Column(name = "CoQuanQL", length = 100)
    private String coQuanQL;

    /**
     * Loại TTSH:
     * 1=Loại 1. Sát hạch lái xe tất cả các hạng;
     * 2=Loại 2.Sát hạch lái xe đến hạng C;
     * 3=Loại 3.Sát hạch lái xe đến hạng A4
     */
    @Column(name = "LoaiTTSH")
    private Integer loaiTTSH;

    /**
     * Các hạng GPLX được sát hạch.
     * A1-FE=Tất cả các hạng;
     * A1-C=Sát hạch lái xe đến hạng C;
     * A1-A4=Sát hạch lái xe đến hạng A4'
     */
    @Column(name = "CacHangGPLX", length = 50)
    private String cacHangGPLX;

    @Column(name = "DienThoai", length = 20)
    private String dienThoai;

    @Column(name = "Fax", length = 20)
    private String fax;

    /**
     * Địa chỉ của đơn vị
     * */
    @Column(name = "DiaChi", length = 100)
    private String diaChi;

    /**
     * Tổng lưu lượng đào tạo của CSĐT
     * */
    @Column(name = "LuuLuongDT")
    private Integer luuLuongDT;

    @Column(name = "SoGP", length = 20)
    private String soGP;

    @Column(name = "NgayGP")
    private java.sql.Timestamp ngayGP;

    /**
     * Lãnh đạo của đơn vị
     * */
    @Column(name = "LanhDao", length = 50)
    private String lanhDao;

    @Column(name = "GhiChu", length = 255)
    private String ghiChu;

    /**
     * 0 = khong hieu luc; 1 = co hieu luc; mac dinh la 1
     */
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

    @Column(name = "Website", length = 100)
    private String website;

    /**
     * Diện tích sân tập, đơn vị m2
     */
    @Column(name = "DienTichSanTap")
    private Integer dienTichSanTap;

    /**
     * Expiry date of GPLX
     */
    @Column(name = "NgayHHGP")
    private java.sql.Date ngayHHGP;

    @Column(name = "DiaDiemDaoTao", length = 300)
    private String diaDiemDaoTao;
}
