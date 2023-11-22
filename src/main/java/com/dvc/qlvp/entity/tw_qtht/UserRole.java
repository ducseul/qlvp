package com.dvc.qlvp.entity.tw_qtht;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "UserRole")
@Data
public class UserRole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "RoleId", nullable = false)
    private Role role;

    @ManyToOne
    @JoinColumn(name = "UserId", nullable = false)
    private User user;
}
