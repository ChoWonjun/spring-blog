package xyz.funk2punk.blog.model.post;

import java.util.List;

import xyz.funk2punk.blog.common.Page;

public interface PostDAO {

	Post insertPost(Post post);

	Post getPost(int postNo);

	void updatePost(Post post);

	void deletePost(int postNo);

	int getTotalCounts(Post post);

	List<Post> getPostList(Post post, Page page);


}