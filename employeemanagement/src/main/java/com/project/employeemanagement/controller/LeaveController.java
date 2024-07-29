package com.project.employeemanagement.controller;


import com.project.employeemanagement.entity.Leave;
import com.project.employeemanagement.service.LeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/leave")
public class LeaveController {

    @Autowired
    private LeaveService leaveService;

    @GetMapping
    public String listLeaves(Model model) {
        model.addAttribute("leaves", leaveService.findAll());
        return "leave-list";
    }

    @GetMapping("/new")
    public String createLeaveForm(Model model) {
        model.addAttribute("leave", new Leave());
        return "leave-form";
    }

    @PostMapping
    public String saveLeave(@ModelAttribute Leave leave) {
        leaveService.save(leave);
        return "redirect:/leave";
    }

    @GetMapping("/{id}/edit")
    public String editLeaveForm(@PathVariable Long id, Model model) {
        model.addAttribute("leave", leaveService.findById(id).orElse(null));
        return "leave-form";
    }

    @GetMapping("/{id}/delete")
    public String deleteLeave(@PathVariable Long id) {
        leaveService.deleteById(id);
        return "redirect:/leave";
    }
}
