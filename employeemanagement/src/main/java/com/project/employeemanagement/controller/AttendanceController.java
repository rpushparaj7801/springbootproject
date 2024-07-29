package com.project.employeemanagement.controller;


import com.project.employeemanagement.entity.Attendance;
import com.project.employeemanagement.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;

    @GetMapping
    public String listAttendance(Model model) {
        model.addAttribute("attendances", attendanceService.findAll());
        return "attendance-list";
    }

    @GetMapping("/new")
    public String createAttendanceForm(Model model) {
        model.addAttribute("attendance", new Attendance());
        return "attendance-form";
    }

    @PostMapping
    public String saveAttendance(@ModelAttribute Attendance attendance) {
        attendanceService.save(attendance);
        return "redirect:/attendance";
    }

    @GetMapping("/{id}/edit")
    public String editAttendanceForm(@PathVariable Long id, Model model) {
        model.addAttribute("attendance", attendanceService.findById(id).orElse(null));
        return "attendance-form";
    }

    @GetMapping("/{id}/delete")
    public String deleteAttendance(@PathVariable Long id) {
        attendanceService.deleteById(id);
        return "redirect:/attendance";
    }
}
