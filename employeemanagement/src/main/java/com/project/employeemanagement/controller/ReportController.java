package com.project.employeemanagement.controller;




import com.project.employeemanagement.service.AttendanceService;
import com.project.employeemanagement.service.EmployeeService;
import com.project.employeemanagement.service.LeaveService;
import com.project.employeemanagement.service.PayrollService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reports")
public class ReportController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private AttendanceService attendanceService;

    @Autowired
    private LeaveService leaveService;

    @Autowired
    private PayrollService payrollService;

    @GetMapping
    public String generateReport(Model model) {
        model.addAttribute("employees", employeeService.findAll());
        model.addAttribute("attendances", attendanceService.findAll());
        model.addAttribute("leaves", leaveService.findAll());
        model.addAttribute("payrolls", payrollService.findAll());
        return "report";
    }
}
