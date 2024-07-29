package com.project.employeemanagement.repository;


import com.project.employeemanagement.entity.Leave;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LeaveRepository extends JpaRepository<Leave, Long> {
}
