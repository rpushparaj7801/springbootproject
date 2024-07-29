package com.project.employeemanagement.repository;


import com.project.employeemanagement.entity.Payroll;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PayrollRepository extends JpaRepository<Payroll, Long> {
}
