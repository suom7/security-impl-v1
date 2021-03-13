package com.suom.securityimplv1.repository;

import com.suom.securityimplv1.domain.ERole;
import com.suom.securityimplv1.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Optional<Role> findByName(ERole name);
}
