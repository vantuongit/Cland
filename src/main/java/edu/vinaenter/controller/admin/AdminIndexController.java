package edu.vinaenter.controller.admin;

import javax.annotation.Resource;

import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminIndexController {
	
	
	@Resource
	MessageSource messegeSource; 
	
//	@Autowired
//	private ICatService catService;

	@GetMapping("index")
	public String index() {
		return "admin.index";
	}
	
//	@GetMapping("cat")
//	public String cat(ModelMap model) {
//		List<Cat> listCat = catService.getList();
//		model.addAttribute("listCat", listCat);
//		return "admin.cat";
//	}
//	
//	@PostMapping("add-cat") // binding data
//	public String add(@Valid @ModelAttribute("cats") Cat cat, BindingResult rs,
//			RedirectAttributes ra) { // trả về 1 object
////		dateValidator.validate(football, rs);
//		if (rs.hasErrors()) {
//			System.out.println("có lỗi data");
//
//			return "admin.add";
//		}
//
//		System.out.println("id : " + cat.getCid());
//		System.out.println("name : " + cat.getCname());
//		
//		//add data
//		int save = catService.add(cat);
//		if(save > 0) {
//			//ra.addFlashAttribute("ra", messegeSource.getMessage("ra.success", null, Locale.getDefault()));	
//			return "redirect:/admin/cat";
//		}
//		
//		return "admin.add";
//	}
	
	
	@GetMapping("news")
	public String news() {
		return "admin.news";
	}
	
//	@GetMapping("add")
//	public String add() {
//		return "admin.add";
//	}
	
}
