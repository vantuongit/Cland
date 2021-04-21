package edu.vinaenter.controller.cland;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.vinaenter.model.Category;
import edu.vinaenter.service.CatService;

@Controller
public class CatController {

	@Autowired
	CatService catService;
	
	@GetMapping("cat")
	public String cat(Model model) {
		List<Category> catList = catService.getAll();
		model.addAttribute("catList", catList);
		
		return "cland.cat";
	}
}
