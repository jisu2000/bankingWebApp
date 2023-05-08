package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Entities.Message;
import Service.MsgService;

@Controller
public class MsgController {
	
	@Autowired
	private MsgService service;
	
	@RequestMapping("/msgsent")
	public String addMsg
	
			(	
					@RequestParam("fname") String fname,
					@RequestParam("lname") String lanme,
					@RequestParam("email") String mail,
					@RequestParam("sub") String subject,
					@RequestParam("message") String msg
			
			
			)
			
	{
		Message msgs=new Message();
		msgs.setName(fname+" "+lanme);
		msgs.setEmail(mail);
		msgs.setSubject(subject);
		msgs.setMsg(msg);
		
		this.service.addMsg(msgs);
		
		return "message";
	}
	

}
