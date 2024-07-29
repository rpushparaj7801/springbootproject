package com.project.employeemanagement.controller;


import com.project.employeemanagement.entity.Payroll;
import com.project.employeemanagement.service.PayrollService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/payroll")
public class PayrollController {

    @Autowired
    private PayrollService payrollService;

    @GetMapping
    public String listPayrolls(Model model) {
        model.addAttribute("payrolls", payrollService.findAll());
        return "payroll-list";
    }

    @GetMapping("/new")
    public String createPayrollForm(Model model) {
        model.addAttribute("payroll", new Payroll());
        return "payroll-form";
    }

    @PostMapping
    public String savePayroll(@ModelAttribute Payroll payroll) {
        payrollService.save(payroll);
        return "redirect:/payroll";
    }

    @GetMapping("/{id}/edit")
    public String editPayrollForm(@PathVariable Long id, Model model) {
        model.addAttribute("payroll", payrollService.findById(id).orElse(null));
        return "payroll-form";
    }

    @GetMapping("/{id}/delete")
    public String deletePayroll(@PathVariable Long id) {
        payrollService.deleteById(id);
        return "redirect:/payroll";
    }
}
