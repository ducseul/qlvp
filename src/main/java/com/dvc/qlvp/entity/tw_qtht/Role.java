package com.dvc.qlvp.entity.tw_qtht;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Role")
@Data
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotBlank
    @Size(max = 250)
    private String roleDescription;

    @NotBlank
    @Size(max = 50)
    private String roleName;
}
