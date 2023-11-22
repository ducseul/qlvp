package com.dvc.qlvp.entity.gplx_tw;

import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "DM_DVHC")
@Data
public class DVHC {

    /**
     * MaDvhc - Primary key for DVHC table
     * MaDVQL - Secondary key for DVHC table
     */
    @Id
    @Column(name = "MaDvhc", nullable = false, length = 5)
    private String maDvhc;

    @Column(name = "MaDVQL", nullable = false, length = 5)
    private String maDVQL;

    /**
     * Reference to MaDV in the same table
     */
    @Column(name = "MaDV", length = 10)
    private String maDV;

    @Column(name = "TenDvhc", nullable = false, length = 50)
    private String tenDvhc;

    @Column(name = "TenNganGon", nullable = false, length = 50)
    private String tenNganGon;

    @Column(name = "TenDayDu", length = 100)
    private String tenDayDu;

    /**
     * LoaiDvhc - Type of DVHC
     */
    @Column(name = "LoaiDvhc", nullable = false, length = 7)
    private String loaiDvhc;

    /**
     * GhiChu - Comments
     * TrangThai - Status: 0 = inactive; 1 = active; default is 1
     */
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

    @Column(name = "ROW_VERSION")
    private java.sql.Timestamp rowVersion;

    /**
     * Ids - Identity column
     * PrevId - Previous Identity
     * NextId - Next Identity
     * ParentId - Parent Identity
     * PreId - Previous Identity
     * LevelId - Level Identity
     */
    @Column(name = "Ids", insertable = false, updatable = false)
    private Integer ids;

    @Column(name = "PrevId")
    private Long prevId;

    @Column(name = "NextId")
    private Long nextId;

    @Column(name = "ParentId")
    private Integer parentId;

    @Column(name = "PreId")
    private Integer preId;

    @Column(name = "LevelId")
    private Integer levelId;

    @Column(name = "TenLoaiDvhc", length = 50)
    private String tenLoaiDvhc;

    @Column(name = "TenLoaiDvhcVietTat", length = 50)
    private String tenLoaiDvhcVietTat;

    /**
     * IdTinh - Province Identity
     * MaTinh - Province Code
     * TenTinh - Province Name
     * IdHuyen - District Identity
     * MaHuyen - District Code
     * TenHuyen - District Name
     * IdXa - Commune Identity
     * MaXa - Commune Code
     * TenXa - Commune Name
     */
    @Column(name = "IdTinh")
    private Integer idTinh;

    @Column(name = "MaTinh", length = 10)
    private String maTinh;

    @Column(name = "TenTinh", length = 50)
    private String tenTinh;

    @Column(name = "IdHuyen")
    private Integer idHuyen;

    @Column(name = "MaHuyen", length = 10)
    private String maHuyen;

    @Column(name = "TenHuyen", length = 50)
    private String tenHuyen;

    @Column(name = "IdXa")
    private Integer idXa;

    @Column(name = "MaXa", length = 10)
    private String maXa;

    @Column(name = "TenXa", length = 50)
    private String tenXa;
}
