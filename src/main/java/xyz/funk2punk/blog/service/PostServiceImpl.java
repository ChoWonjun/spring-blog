package xyz.funk2punk.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.funk2punk.blog.common.ListContainer;
import xyz.funk2punk.blog.common.Page;
import xyz.funk2punk.blog.model.post.Post;
import xyz.funk2punk.blog.model.post.PostDAO;

@Service
public class PostServiceImpl implements PostService {
	
	@Autowired
	private PostDAO postDAO;
	
	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.service.PostService#insertPost(xyz.funk2punk.blog.model.post.Post)
	 */
	@Override
	public void insertPost(Post post){
		postDAO.insertPost(post);
	}
	
	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.service.PostService#getPost(int)
	 */
	@Override
	public Post getPost(int postNo) {
		Post post = postDAO.getPost(postNo);
		return post;
	}
	
	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.service.PostService#updatePost(xyz.funk2punk.blog.model.post.Post)
	 */
	@Override
	public void updatePost(Post post) {
		postDAO.updatePost(post);
	}
	
	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.service.PostService#deletePost(int)
	 */
	@Override
	public void deletePost(int postNo) {
		postDAO.deletePost(postNo);
	}
	
	@Override
	public int getTotalCounts(Post post) {
		return postDAO.getTotalCounts(post);
	}
	
	@Override
	public List<Post> getPostList(Post post, Page page) {
		return postDAO.getPostList(post, page);
	}
	
	@Override
	public ListContainer getRecentPosts(int pageNo){
		Post post = new Post();
		int listSize = postDAO.getTotalCounts(post);
		Page page = new Page(listSize);
		page.setCurrentPage(pageNo);
		List <Post> list = postDAO.getPostList(post, page);
		ListContainer listContainer = new ListContainer(list, page);
		return listContainer;
	}
	
	@Override
	public ListContainer selectCategory(String category, int pageNo){
		Post post = new Post();
		post.setCategory(category);
		int listSize = postDAO.getTotalCounts(post);
		Page page = new Page(listSize);
		page.setCurrentPage(pageNo);
		List <Post> list = postDAO.getPostList(post, page);
		ListContainer listContainer = new ListContainer(list, page);
		return listContainer;
	}
}
