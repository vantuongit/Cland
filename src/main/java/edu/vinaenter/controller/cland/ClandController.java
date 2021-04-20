package edu.vinaenter.controller.cland;

import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vinaenter.constants.GlobalConstant;
import edu.vinaenter.constants.URLConstant;
import edu.vinaenter.model.Category;
import edu.vinaenter.model.Contact;
import edu.vinaenter.model.Lands;
import edu.vinaenter.service.CatService;
import edu.vinaenter.service.ContactService;
import edu.vinaenter.service.LandsService;
import edu.vinaenter.util.PageUtil;

@Controller
public class ClandController {
	
	@Autowired
	 MessageSource messageSource;
	
	@Autowired
	LandsService landsService;
	
	@Autowired
	ContactService contactService;
	
	@Autowired
	CatService catService;
	
//	@GetMapping({"", URLConstant.INDEX_PAGE })
//	public String index(Model model, @PathVariable(required = false) Integer page, Lands lands) {
//		if(page == null) {
//			page =1;
//		}
//		int offset = PageUtil.getOffset(page);
//		List<Category> catList = catService.getAll();
//		List<Lands> landsList = landsService.getAll(offset, GlobalConstant.TOTAL_ROW);
//		
//		model.addAttribute("catList", catList);
//		model.addAttribute("totalPage", PageUtil.getTotalPage(landsService.totalRow()));
//		model.addAttribute("currentPage", page);
//		model.addAttribute("landsList", landsList);
//		return "cland.index";
//	}
	@GetMapping("cat/{cid}")
	public String index(@PathVariable(value="cid") int cid, ModelMap model) {
		
		List<Category> catList = catService.getAll();
		List<Lands> landsList = landsService.getAll(cid);
		
		model.addAttribute("catList", catList);
		model.addAttribute("totalPage", PageUtil.getTotalPage(landsService.totalRow()));
		model.addAttribute("landsList", landsList);
		return "cland.cat";
	}
	
	@GetMapping({"", URLConstant.INDEX_PAGE })
	public String index(@ModelAttribute("search") String search, ModelMap model,@PathVariable(required = false) Integer page, Lands lands) {
		int offset = PageUtil.getOffset(page);
		List<Category> catList = catService.getAll();
		model.addAttribute("catList", catList);
		List<Lands> landsList = landsService.getAll(offset, GlobalConstant.TOTAL_ROW);
		List<Lands> listLandsSearch = landsService.findAllByNameOderByNewName(search);
		if(!"".equals(search)) {
			
			model.addAttribute("landsList", listLandsSearch);
			return "cland.index";
		}
		model.addAttribute("landsList", landsList);
		return "cland.index";
	}
	
	@GetMapping("detail/{lid}")
	public String detail(@PathVariable(value="lid") int lid, ModelMap model) {

		List<Category> catList = catService.getAll();
		Lands lands =  landsService.findByid(lid);
		
		model.addAttribute("catList", catList);
		model.addAttribute("lands", lands);
		return "cland.detail";
	}
	
	@GetMapping("contact")
	public String contact() {
		return "cland.contact";
	}
	
	@PostMapping("contact")
	public String contact(@Valid @ModelAttribute("contact") Contact contact, RedirectAttributes ra) {
		if(contactService.save(contact) > 0) {
			ra.addFlashAttribute("msg",messageSource.getMessage("msg.success", null, Locale.getDefault()));
			return "redirect:/contact";
		}else {
			ra.addFlashAttribute("error",messageSource.getMessage("msg.error", null, Locale.getDefault()));
			return "redirect:/contact";
		}
	}
	
	//search
	
}
