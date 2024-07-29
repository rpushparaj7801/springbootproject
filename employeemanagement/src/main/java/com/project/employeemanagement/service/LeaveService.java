package com.project.employeemanagement.service;

import com.project.employeemanagement.entity.Leave;
import com.project.employeemanagement.repository.LeaveRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LeaveService {

    @Autowired
    private LeaveRepository leaveRepository;

    public List<Leave> findAll() {
        return leaveRepository.findAll();
    }

    public Optional<Leave> findById(Long id) {
        return leaveRepository.findById(id);
    }

    public Leave save(Leave leave) {
        return leaveRepository.save(leave);
    }

    public void deleteById(Long id) {
        leaveRepository.deleteById(id);
    }
}
