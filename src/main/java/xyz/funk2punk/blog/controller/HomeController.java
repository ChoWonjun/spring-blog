package xyz.funk2punk.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.funk2punk.blog.service.PostService;

@Controller
public class HomeController {

	@Autowired
	private PostService postService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root(Model model) {
		model.addAttribute("listContainer", postService.getRecentPosts(1));
		return "home";
	}

}
