package Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import Entities.Employee;
import Entities.Statement;
import Entities.User;
import Service.EmployeeService;
import Service.StatementService;
import Service.UserService;

@Controller
public class EmpController {
	@Autowired
	private UserService service;
	
	@Autowired
	private StatementService servicest;
	
	@Autowired
	private EmployeeService serviceemp;
	
	@RequestMapping("/employee")
	public String getDashboard() {
		return "emplogin";
	}
	
	@RequestMapping("/empdashboard")
	public String getEmpdashbaord()
	{
		return "empdashboard";
	}

	@RequestMapping("/addnewaccount")
	public String addAccount() {
		return "addaccount";
	}

	@RequestMapping(path = "/addaccountprocess" ,method = RequestMethod.POST)
	public String addAccountProcess
	
	
			(
			
					@RequestParam("uname") String ename,
					@RequestParam("uemail") String eemail,
					@RequestParam("upass") String password,
					@RequestParam("ucont") String contact,
					@RequestParam("uadd") String address,
					@RequestParam("image") MultipartFile image,
					Model model
			
			
			
			) throws IOException
	{
		
		User user=new User();
		byte[] arr=image.getBytes();
		ArrayList<Integer> list=new ArrayList<Integer>();
		
		for(byte b: arr)
		{
			list.add((int) b & 0xff);
		}
		
		LocalDate dt = java.time.LocalDate.now();
	    String d = dt.toString();
	    
	    user.setUserName(ename);
	    user.setUserEmail(eemail);
	    user.setCont(contact);
	    user.setUserAddress(address);
	    user.setPassword(password);
	    user.setImage(list);
	    user.setOpenedDate(d);
	    user.setBalance(0);
	    this.service.addUser(user);
	    model.addAttribute("user",user);
	    
	    
		return "usersuccess";
	}
	
	@RequestMapping("/getallusers")
	public String getAlluser(Model model)
	{
		List<User> list=this.service.getAllUser();
		model.addAttribute("allusers", list);
		return "allusers";
	}
	
	@RequestMapping("/showuser/{id}")
	public String showUser(@PathVariable("id") int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("user",user);
		return "showuser";
	}
	
	@RequestMapping("/searchuser")
	public String searchUser()
	{
		return "searchuser";
	}
	
	@RequestMapping(path = "/usersprocess",method = RequestMethod.POST)
	public String searchUserprocess(@RequestParam("userId")int id,Model model)
	{
		User user=(User) this.service.getUser(id);
		model.addAttribute("user",user);
		model.addAttribute("id", id);
		if(user==null)
		{
			return "usernotfound";
		}
		return "showuser";
	}
	
	@RequestMapping("/userdels")
	public String searchDel()
	{
		return "delsearch";
		
	}
	
	
	@RequestMapping("/userdelsearch")
	public String userDelsearch(@RequestParam("userId") int id, Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("id",id);
		if(user== null) {
			return "usernotfound";
		}
		model.addAttribute("user",user);
		return "userdelprocess";
	}
	
	
	@RequestMapping("/userdelprocess/{id}")
	public String delprocess(@PathVariable("id") int id,Model model)
	{
		this.service.delUser(id);
		return "userdelsuccess";
	}
	
	
	@RequestMapping("/upsearch")
	public String updatesearch()
	{
		return "upsearch";
	}
	
	@RequestMapping("/userupsearch")
	public String upadateSeachval(@RequestParam("userId") int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("id",id);
		if(user==null)
		{
			return "usernotfound";
		}
		model.addAttribute("user",user);
		return "userupprocess";
	}
	
	@RequestMapping("/userupprocess/{id}")
	public String updateFrom(@PathVariable("id") int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("user", user);
		return "userupdateform";
	}
	
	@RequestMapping(path = "/userupval",method = RequestMethod.POST)
	public RedirectView updateVal
			(
					@RequestParam("id") int id,
					@RequestParam("uname") String name,
					@RequestParam("uemail") String email,
					@RequestParam("ucont") String contact,
					@RequestParam("upass") String pass,
					@RequestParam("uadd") String add,
					HttpServletRequest request
			
			
			)
	{
		RedirectView view =new RedirectView();
		User user=this.service.getUser(id);
		user.setUserName(name);
		user.setUserEmail(email);
		user.setCont(contact);
		user.setPassword(pass);
		user.setUserAddress(add);
		
		this.service.addUser(user);
		
		view.setUrl(request.getContextPath()+"/getallusers");
		
		
		return view;
	}
	
	
	@RequestMapping("/userdeposearch")
	public String userDepoSearch()
	{
		return "userdeposearch";
	}
	
	@RequestMapping(path = "/userdepo" ,method =RequestMethod.POST )
	public String userDepofrom(@RequestParam("userId") int id, Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("id", id);
		if(user==null)
		{
			return "usernotfound";
		}
		model.addAttribute("user",user);
		return "userdepoform";
	}
	
	@RequestMapping("/userdepoprocess/{id}")
	public String userDepoAmount(@PathVariable("id") int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("user",user);
		return "dipoammountform";
	}
	
	@RequestMapping(path = "/userdepoconfirm",method = RequestMethod.POST)
	public String depoConfirm(@RequestParam("id") int id,@RequestParam("amount") long ammount,Model model)
	{
		User user=this.service.getUser(id);
		user.setBalance(user.getBalance()+ammount);
		Statement st=new Statement();
		 LocalDate dt = java.time.LocalDate.now();
		    String d = dt.toString();
		    st.setDate(d);
		    String dep=Long.toString(ammount);
		    st.setDiposite(dep+" "+"deposite");
		    st.setWithdraw("0");
		    st.setAval(Long.toString(user.getBalance()));
		    st.setUser(user);
		    this.service.addUser(user);
		    this.servicest.addStatement(st);
		    
		    model.addAttribute("ammount",ammount);
		    return "diposuccess";
	}
	
	
	@RequestMapping("/userwithsearch")
	public String userWithdrSearch()
	{
		return "userwithsearch";
	}
	
	@RequestMapping(path = "/userwithdraw" ,method =RequestMethod.POST )
	public String userWithfrom(@RequestParam("userId") int id, Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("id", id);
		if(user==null)
		{
			return "usernotfound";
		}
		model.addAttribute("user",user);
		return "userwithform";
	}
	
	
	@RequestMapping("/userwithprocess/{id}")
	public String userWithAmount(@PathVariable("id") int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("user",user);
		return "withammountform";
	}
	
	@RequestMapping(path = "/withconfirm",method = RequestMethod.POST)
	public String withConfirm(@RequestParam("id") int id,@RequestParam("amount") long ammount,Model model)
	{
		User user=this.service.getUser(id);
			if(user.getBalance()<ammount)
			{
				return "insuff";
			}
			
			user.setBalance(user.getBalance()-ammount);
			
			Statement st=new Statement();
			LocalDate dt = java.time.LocalDate.now();
		    String d = dt.toString();
		    st.setDate(d);
		    String with=Long.toString(ammount);
		    st.setDiposite("0");
		    st.setWithdraw(Long.toString(ammount)+" "+"withdraw");
		    st.setAval(Long.toString(user.getBalance()));
		    st.setUser(user);
		    this.service.addUser(user);
		    this.servicest.addStatement(st);
		    model.addAttribute("ammount", ammount);
		    
		    
		    
		    return "withsuccess";
	}
	
	
	@RequestMapping("/showbal")
	public String showbalSearch()
	{
		return "showbalsearch";
	}
	
	@RequestMapping(path = "/showbalprocess",method = RequestMethod.POST)
	public String showbalProcess(@RequestParam("userId") int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("id",id);
		if(user==null)
		{
			return "usernotfound";
		}
		
		model.addAttribute("user",user);
		
		return "successbal";
	}
	
	
	@RequestMapping("/getstatement")
	public String userSearchforStatement()
	{
		return "statementsearch";
	}
	
	@RequestMapping(path = "/statementprocess" ,method = RequestMethod.POST)
	public String statementProcess(@RequestParam("userId")int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("id",id);
		if(user==null)
		{
			return "usernotfound";
		}
		
		List<Statement> list=this.servicest.getAllstatement(id);
		model.addAttribute("statement",list);
		model.addAttribute("user", user);
		
		return "showstatement";
		
		
	}
	
	@RequestMapping("/getstatement/{id}")
	public String getStatement(@PathVariable("id") int id,Model model)
	{
		User user=this.service.getUser(id);
		List<Statement> list=this.servicest.getAllstatement(id);
		model.addAttribute("statement",list);
		model.addAttribute("user", user);
		
		return "showstatement";
		
		
	}
	
	
	@RequestMapping(path = "/emplogin",method = RequestMethod.POST)
	public RedirectView loginValided(@RequestParam("lemail")int id,@RequestParam("lpass")String password,HttpServletRequest request)
	{
		RedirectView  view=new RedirectView();
		
		Employee emp=this.serviceemp.getEmployee(id);
		
		
		if(emp==null || !emp.getPassword().toString().equals(password.toString()))
		{
			view.setUrl(request.getContextPath()+"/emperror");
		}
		
		else if(emp.getPassword().equals(password)){
			
			HttpSession session=request.getSession();
			session.setAttribute("emp", emp);
			view.setUrl(request.getContextPath()+"/empdashboard");
		}
		return view;
	}
	
	@RequestMapping("/logout")
	public RedirectView logout(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.invalidate();
		RedirectView view =new RedirectView();
		view.setUrl(request.getContextPath()+"/");
		return view;
	}
	
	@RequestMapping("/showyourself")
	public String showYourself()
	{
		return "showyourself";
	}
	
	@RequestMapping("/emperror")
	public String emperror()
	{
		return "emperror";
	}
}
