package xyz.funk2punk.blog.service;

import xyz.funk2punk.blog.model.post.Post;

public interface PostService {

	void insertPost(Post post);

	Post getPost(int postNo);

	void updatePost(Post post);

	void deletePost(int postNo);

}