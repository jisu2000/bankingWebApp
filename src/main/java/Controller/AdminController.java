package Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import Entities.Employee;
import Entities.Manager;
import Entities.Message;
import Entities.User;
import Service.EmployeeService;
import Service.ManagerService;
import Service.MsgService;

@Controller
public class AdminController {
	@Autowired
	private EmployeeService service;
	
	
	@Autowired
	private ManagerService mservice;
	
	@Autowired
	private MsgService msgservice;

	@RequestMapping("/admin")
	public String adminController()
	{
		return "adminlogin";
	}
	
	@RequestMapping("/addemployee")
	public String addEmployee()
	{
		return "addemployee";
		
	}
	
	@RequestMapping("/searchemp")
	public String searchEmployee()
	{
		return "searchemp";
		
	}
	
	@RequestMapping(path = "/empprocess" ,method = RequestMethod.POST)
	public String saveEmpoyee(
			@RequestParam("ename") String ename,
			@RequestParam("eemail") String eemail,
			@RequestParam("epass") String password,
			@RequestParam("econt") String contact,
			@RequestParam("esal") int sal,
			@RequestParam("eadd") String address,
			@RequestParam("eimage") MultipartFile image,
			Model model
			) throws IOException
		{
		
		ArrayList<Integer> imageBytes = new ArrayList<Integer>();
		byte []arr=image.getBytes();
		
		for(byte b: arr)
		{
			imageBytes.add((int) b & 0xff);
		}
		
		Employee emp=new Employee();
		emp.setEmpName(ename);
		emp.setEmpEmail(eemail);
		emp.setPassword(password);
		emp.setEmpCont(contact);
		emp.setEmpsal(sal);
		emp.setEmpAdd(address);
		emp.setImage(imageBytes);
		   LocalDate dt = java.time.LocalDate.now();
		    String d = dt.toString();
		    
		emp.setJoinedDate(d);
		
		try {
		this.service.addEmployee(emp);
		model.addAttribute("emp",emp);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return "empsuccess";
	}
	
	
	@RequestMapping(path = "/empsprocess",method = RequestMethod.POST)
	public String findEmployee(@RequestParam("empId") int empId, Model model )
	{
		Employee emp=this.service.getEmployee(empId);
		
		if(emp==null)
		{
			model.addAttribute("id",empId);
			return "empnotfound";
		}
		model.addAttribute("emp",emp);
		
		
		return "empdetails";
		
	}
	
	@RequestMapping("/showallemp")
	public String showAllemp(Model model)
	{
		List<Employee> list=(List<Employee>)this.service.getAll();
		model.addAttribute("list",list);
		return "showallemp";
	}
	
	
	@RequestMapping("/empsprocess/{id}")
	public String find(@PathVariable("id") int id, Model model) {
		Employee emp=(Employee)this.service.getEmployee(id);
		model.addAttribute("emp", emp);
		return "empdetails";
	}
	
	@RequestMapping("/deleteemp")
	public String deleteEmp()
	{
		return "searchempdel";
	
	}
	
	
	@RequestMapping(path = "/empdelsprocess",method = RequestMethod.POST)
	public String findEmployeedel(@RequestParam("empId") int empId, Model model )
	{
		Employee emp=this.service.getEmployee(empId);
		
		if(emp==null)
		{
			model.addAttribute("id",empId);
			return "empnotfound";
		}
		model.addAttribute("emp",emp);
		
		
		return "empdeldetails";
		
	}
	
	
	@RequestMapping("/empdel/{id}")
	public String deleteSuccessemp(@PathVariable("id") int id,Model model)
	{
		this.service.deleteEmp(id);
		model.addAttribute("id",id);
		return "empdelsuccess";
	}
	
	
	@RequestMapping("/updateemp")
	public String updateEmp()
	{
		return "searchempup";
	}
	
	
	@RequestMapping(path = "/empupprocess",method = RequestMethod.POST)
	public String findEmployeeup(@RequestParam("empId") int empId, Model model )
	{
		Employee emp=this.service.getEmployee(empId);
		
		if(emp==null)
		{
			model.addAttribute("id",empId);
			return "empnotfound";
		}
		model.addAttribute("emp",emp);
		
		
		return "empupdetails";
		
	}
	
	@RequestMapping("/empup/{id}")
	public String empUpdateProcess(@PathVariable("id") int id,Model model)
	{
		Employee employee=(Employee)service.getEmployee(id);
		model.addAttribute("emp",employee);
		return "updateemp";
	}
	
	@RequestMapping(path = "/updateprocess",method = RequestMethod.POST)
	public RedirectView empupProcess
			(
					@RequestParam("ename") String ename,
					@RequestParam("eemail") String eemail,
					@RequestParam("epass") String password,
					@RequestParam("econt") String contact,
					@RequestParam("esal") int sal,
					@RequestParam("eadd") String address,
					@RequestParam("empid") int id,
					HttpServletRequest request
			)
	{
	
		this.service.updateEmployee(id, ename, eemail, password, contact, sal, address);
		
		RedirectView view =new RedirectView();
		view.setUrl(request.getContextPath()+"/showallemp");
		return view;
	}
	
	
	@RequestMapping("/showallmsg")
	public String showAllmsg(Model model)
	{
		List<Message> list=(List<Message>)this.msgservice.getAllmsg();
		model.addAttribute("allmsg", list);
		return "showallmsg";
	}
	
	
	@RequestMapping("/msgdel/{id}")
	public RedirectView msgdel(@PathVariable("id") int id, HttpServletRequest request)
	{
		RedirectView view = new RedirectView();
		this.msgservice.delMsg(id);
		view.setUrl(request.getContextPath()+"/showallmsg");
		return view;
		
	}
	
	
	@RequestMapping(path = "/adlogin",method = RequestMethod.POST)
	public RedirectView adminProcess(@RequestParam("lemail")int id,@RequestParam("lpass") String password,HttpServletRequest request)
	{
		RedirectView view =new RedirectView();
		
		Manager manager=this.mservice.getManager(id);
		
		if(manager==null || !manager.getManagerPass().equals(password))
		{
			view.setUrl(request.getContextPath()+"/loginfailed");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("admin", manager);
			view.setUrl(request.getContextPath()+"/adminsuccess");
			
		}
		
		return view;
		
	}
	
	
	@RequestMapping("/adminsuccess")
	public String adloginSuccess()
	{
		return "admin";
	}
	
	
	
	@RequestMapping("/loginfailed")
	public String Failedview()
	{
		return "adloginfailed";
	}
	
	
}
