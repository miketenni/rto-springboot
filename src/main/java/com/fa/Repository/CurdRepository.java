package com.fa.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fa.Entity.CurdEntity;


@Repository
public interface CurdRepository extends JpaRepository<CurdEntity,Long>{



}
