package com.dvc.qlvp.entity.gplx_xlvp;

import javax.persistence.*;
import lombok.Data;

@Entity
@Table(name = "DM_LyDoCam5Nam")
@Data
public class LyDoCam5Nam {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "Ten", nullable = false, length = 150)
    private String ten;

    @Column(name = "MoTa", length = 255)
    private String moTa;

    // Constructors, getters, setters, etc.
}