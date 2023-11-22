package com.dvc.qlvp.services.gplx_tw;

import com.dvc.qlvp.configuration.ClientNames;
import com.dvc.qlvp.configuration.DBContextHolder;
import com.dvc.qlvp.entity.gplx_tw.DonViGTVT;
import com.dvc.qlvp.repository.gplx_tw.DonViGtvtRepo;
import com.dvc.qlvp.services.CommonService;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;

@Service
public class DonViGtvtService extends CommonService<DonViGTVT, String> {

    private DonViGtvtRepo donViGtvtRepo;
    private EntityManager entityManager;

    public DonViGtvtService(DonViGtvtRepo donViGtvtRepo, EntityManager entityManager) {
        super(DonViGTVT.class, entityManager);
        this.donViGtvtRepo = donViGtvtRepo;
        this.entityManager = entityManager;
        DBContextHolder.setCurrentDb(ClientNames.GPXL_TW);
    }
}
