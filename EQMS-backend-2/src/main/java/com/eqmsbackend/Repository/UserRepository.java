package com.eqmsbackend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eqmsbackend.Classes.User;
@Repository
public interface UserRepository extends JpaRepository<User,Integer>
{

}
