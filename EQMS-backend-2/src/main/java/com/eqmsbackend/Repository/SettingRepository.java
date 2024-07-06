package com.eqmsbackend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eqmsbackend.Classes.Settings;
@Repository
public interface SettingRepository extends JpaRepository<Settings,Integer>
{

}
