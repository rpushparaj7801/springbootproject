package com.project.employeemanagement.service;


import com.project.employeemanagement.entity.Payroll;
import com.project.employeemanagement.repository.PayrollRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PayrollService {

    @Autowired
    private PayrollRepository payrollRepository;

    public List<Payroll> findAll() {
        return payrollRepository.findAll();
    }

    public Optional<Payroll> findById(Long id) {
        return payrollRepository.findById(id);
    }

    public Payroll save(Payroll payroll) {
        return payrollRepository.save(payroll);
    }

    public void deleteById(Long id) {
        payrollRepository.deleteById(id);
    }
}
