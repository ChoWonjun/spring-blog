package xyz.funk2punk.blog.model.post;

import java.util.List;

import xyz.funk2punk.blog.common.Page;

public interface PostDAO {

	Post insertPost(Post post);

	Post getPost(int postNo);

	void deletePost(int postNo);

	int getTotalCounts(String category);

	List<Post> getArticleList(Page page);

	void updatePost(Post post);

}