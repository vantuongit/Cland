package edu.vinaenter.controller.admin;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.constants.URLConstant;
import edu.vinaenter.model.Contact;
import edu.vinaenter.service.ContactService;

@Controller
@RequestMapping(URLConstant.URL_ADMIN_CONTACT)
public class AdminContactController {
	@Autowired
	 MessageSource messageSource;
	
	@Autowired
	private ContactService contactService;
	
	@GetMapping(URLConstant.INDEX)
	public String index(ModelMap model) {
		List<Contact> contactList = contactService.getAll();
		model.addAttribute("contactList", contactList);
		return "admin.contact.index";
	}
	
	@GetMapping(URLConstant.DELETE +"/{ct_id}")
	public String del(@PathVariable(value="ct_id") int ct_id, RedirectAttributes rd) {
		if(contactService.del(ct_id) > 0) {
			rd.addFlashAttribute("msg",messageSource.getMessage("msg.success", null, Locale.getDefault()));
			return "redirect:/admin/contact/index";
		}
		rd.addFlashAttribute("err",messageSource.getMessage("err.error", null, Locale.getDefault()));
		return "admin.contact.index";
	}

}
