package xyz.funk2punk.blog.model.post;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.funk2punk.blog.common.Page;

@Repository
public class PostDAOImpl implements PostDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.model.post.PostDAO#insertPost(xyz.funk2punk.blog.model.post.Post)
	 */
	@Override
	public Post insertPost(Post post) {
		sqlSessionTemplate.insert("post.insertPost", post);
		return post;
	}

	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.model.post.PostDAO#getPost(int)
	 */
	@Override
	public Post getPost(int postNo) {
		return sqlSessionTemplate.selectOne("post.getPost", postNo);
	}

	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.model.post.PostDAO#deletePost(int)
	 */
	@Override
	public void deletePost(int postNo) {
		sqlSessionTemplate.delete("post.deletePost", postNo);
	}

	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.model.post.PostDAO#getTotalCounts(java.lang.String)
	 */
	@Override
	public int getTotalCounts(String category) {
		return sqlSessionTemplate.selectOne("post.getTotalCounts", category);
	}

	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.model.post.PostDAO#getArticleList(xyz.funk2punk.blog.common.Page)
	 */
	@Override
	public List<Post> getArticleList(Page page) {
		return sqlSessionTemplate.selectList("post.getPostList", page);
	}

	/* (non-Javadoc)
	 * @see xyz.funk2punk.blog.model.post.PostDAO#updatePost(xyz.funk2punk.blog.model.post.Post)
	 */
	@Override
	public void updatePost(Post post) {
		sqlSessionTemplate.update("post.updatePost", post);
	}

}
