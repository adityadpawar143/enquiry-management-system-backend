package com.eqmsbackend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eqmsbackend.Classes.Section;
@Repository
public interface SectionRepository extends JpaRepository<Section,Integer>{

}
