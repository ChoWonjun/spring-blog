package xyz.funk2punk.blog.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import xyz.funk2punk.blog.model.post.Post;
import xyz.funk2punk.blog.service.PostService;

@Controller
public class PostController {
	
	@Autowired
	private PostService postService;
	
	@RequestMapping(value = "/post/writeFrom")
	public String showWriteForm(Post post) {
		return "post_default/writeForm";
	}
	
	@RequestMapping(value = "/post", method=RequestMethod.POST)
	public String writingPost(Model model, Post post,  BindingResult result){
		postService.insertPost(post);
		System.out.println(post);
		return "redirect:/post/"+post.getPostNo();
	}
	
	@RequestMapping(value="/post/{postNo}",method=RequestMethod.GET)
	public String selectPost(@PathVariable int postNo, Model model, HttpServletResponse response) {
		Post post = postService.getPost(postNo);
		model.addAttribute("post", post);
		return "post_default/post";
	}
	
	
}
