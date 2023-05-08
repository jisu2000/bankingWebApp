package Controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import Entities.Statement;
import Entities.User;
import Service.StatementService;
import Service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private StatementService servicest;
	
	@RequestMapping("/userlogin")
	public String userLogin()
	{
		return "userlogin";
	}

	
	@RequestMapping("/userloginval")
	public RedirectView userLoginVal(@RequestParam("lemail")int id,@RequestParam("lpass") String pass,HttpServletRequest request)
	{
		RedirectView view=new RedirectView();
		User user=
				  this.service.getUser(id);
		if(user==null|| ! user.getPassword().equals(pass.toString()))
		{
			view.setUrl(request.getContextPath()+"/usererror");
		}
		 
		else {
			HttpSession session=request.getSession();
			session.setAttribute("user", user);
			view.setUrl(request.getContextPath()+"/userdashboard");
		}
		
		
		return view;
	}
	
	@RequestMapping("/usererror")
	public String userError()
	{
		return "usererror";
	}
	
	
	@RequestMapping("/userdashboard")
	public String userDashBoard()
	{
		return "userdashboard";
	}
	
	
	@RequestMapping("/showbal/{id}")
	public String balanceFetch(@PathVariable("id")int id, Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("user",user);
		return "showbalance";
	}
	
	@RequestMapping("/neft/{id}")
	public String neftForm(@PathVariable("id")int id,Model model)
	{
		User user=this.service.getUser(id);
		model.addAttribute("user",user);
		return "neftform";
	}
	
	@RequestMapping(path = "/neftprocess",method = RequestMethod.POST)
	public RedirectView neftprocess(@RequestParam("accountno")int recAc, @RequestParam("ifsc") String ifsc,@RequestParam("id") int id,@RequestParam("amt")long amt,HttpServletRequest request,Model model)
	
	{
		  LocalDate dt = java.time.LocalDate.now();
		    String d = dt.toString();
		RedirectView view =new RedirectView();
		User receiver=this.service.getUserneft(recAc, ifsc);
		User sender= this.service.getUser(id);
		
		if(sender.getBalance()<amt)
		{
			model.addAttribute("user",sender);
			view.setUrl(request.getContextPath()+"/notmoney");
		}
		
		else if(receiver==null)
		{
			view.setUrl(request.getContextPath()+"/receivernotfound");
		}
		
		else {
			
			sender.setBalance(sender.getBalance()-amt);
			receiver.setBalance(receiver.getBalance()+amt);
			
			Statement send=new Statement();
			Statement receive=new Statement();
			
			send.setDate(d);
			send.setWithdraw(Long.toString(amt)+" "+receiver.getUserName());
			send.setDiposite("0");
			send.setAval(Long.toString(sender.getBalance()));
			send.setUser(sender);
			
			
			receive.setDate(d);
			receive.setDiposite(Long.toString(amt)+" "+sender.getUserName());
			receive.setWithdraw("0");
			receive.setAval(Long.toString(receiver.getBalance()));
			receive.setUser(receiver);
			
			service.addUser(sender);
			service.addUser(receiver);
			
			servicest.addStatement(receive);
			servicest.addStatement(send);
			
			view.setUrl(request.getContextPath()+"/neftsuccess");
			
		}
		
		return view;
	}
	
	
	
	@RequestMapping("/neftsuccess")
	public String neftSuccess()
	{
		return "neftsuccess";
	}
	
	@RequestMapping("/notmoney")
	public String insuff(Model model)
	{
		
		return "insufff";
	}
	
	
	
	@RequestMapping("/receivernotfound")
	public String notFnt()
	{
		return "recvnotfound";
	}
}

