package xyz.funk2punk.blog.model.post;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import xyz.funk2punk.blog.common.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class testPostDAO {

	@Autowired
	private PostDAO postDAO;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Before
	public void setUp() throws Exception {
		assertNotNull(postDAO);
	}
	
	@Test
	public void testCRUD() {
		//Post ��ü ��
		String category = "test category";
		String title = "second post";
		String content = "test inserting post";
		boolean open = true;
		Post post = new Post(category,title,content,open);
		
		//Post ���� DB �Է� : insertPost()
		postDAO.insertPost(post);
		log.info("�Է� ��� : postNo = {}", post.getPostNo());
		
		//�Է� ��� ��ȸ : getPost()
		Post getResult = postDAO.getPost(post.getPostNo());
		log.info("��ȸ ��� : {}", getResult);
		
		//Post ���� ���� : updatePost()
		post.setCategory("test updating");
		post.setTitle("update post");
		post.setContent("test update method");
		post.setOpen(false);
		postDAO.updatePost(post);
		Post updateResult = postDAO.getPost(post.getPostNo());
		log.info("���� ��� : {}", updateResult);
		
		//Post ���� ���� : deletePost()
		postDAO.deletePost(post.getPostNo());
		Post deleteResult = postDAO.getPost(post.getPostNo());
		log.info("���� ��� : {}", deleteResult);
	}
	
	@Test
	public void testGetTotalCounts(){
		Post post = new Post();
		post.setCategory("Spring");
		int result = postDAO.getTotalCounts(post);
		log.info("포스트 수 : {}", result);
	}
	
	@Test
	public void testPostList(){
		Post post = new Post();
		post.setCategory("Spring");
		int listSize = postDAO.getTotalCounts(post);
		Page page = new Page(listSize);
		List <Post> list = postDAO.getPostList(post, page);
		log.info("포스트 리스트 : {}", list);
		
	}
	
}
