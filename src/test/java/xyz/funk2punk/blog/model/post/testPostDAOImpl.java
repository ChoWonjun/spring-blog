package xyz.funk2punk.blog.model.post;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class testPostDAOImpl {

	@Autowired
	private PostDAO postDAO;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Before
	public void setUp() throws Exception {
		assertNotNull(postDAO);
	}
	
	@Test
	public void testCRUD() {
		//Post 객체 생성
		String category = "test category";
		String title = "second post";
		String content = "test inserting post";
		boolean open = true;
		Post post = new Post(category,title,content,open);
		
		//Post 정보 DB 입력 : insertPost()
		postDAO.insertPost(post);
		log.info("입력 결과 : postNo = {}", post.getPostNo());
		
		//입력 결과 조회 : getPost()
		Post getResult = postDAO.getPost(post.getPostNo());
		log.info("조회 결과 : {}", getResult);
		
		//Post 정보 수정 : updatePost()
		post.setCategory("test updating");
		post.setTitle("update post");
		post.setContent("test update method");
		post.setOpen(false);
		postDAO.updatePost(post);
		Post updateResult = postDAO.getPost(post.getPostNo());
		log.info("수정 결과 : {}", updateResult);
		
		//Post 정보 삭제 : deletePost()
		postDAO.deletePost(post.getPostNo());
		Post deleteResult = postDAO.getPost(post.getPostNo());
		log.info("삭제 결과 : {}", deleteResult);
	}
	
}
