package com.eqmsbackend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eqmsbackend.Classes.Content;

@Repository
public interface ContentRepository extends JpaRepository<Content,Integer>
{

}
