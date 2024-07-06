package com.eqmsbackend.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eqmsbackend.Classes.User;

public interface userFindRepository extends JpaRepository<User, Integer>
{
	public User findByUserEmail(String userEmail);
	
	public User findByUserType(String userType);
}
