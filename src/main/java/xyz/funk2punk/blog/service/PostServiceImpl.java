package xyz.funk2punk.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
