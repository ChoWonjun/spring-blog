package xyz.funk2punk.blog.service;

import java.util.List;

import xyz.funk2punk.blog.common.ListContainer;
import xyz.funk2punk.blog.common.Page;
import xyz.funk2punk.blog.model.post.Post;

public interface PostService {

	void insertPost(Post post);

	Post getPost(int postNo);

	void updatePost(Post post);

	void deletePost(int postNo);

	List<Post> getPostList(Post post, Page page);

	int getTotalCounts(Post post);

	ListContainer getRecentPosts(int pageNo);

	ListContainer selectCategory(String category, int pageNo);

}