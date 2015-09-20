package xyz.funk2punk.blog.service;

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

import xyz.funk2punk.blog.common.ListContainer;
import xyz.funk2punk.blog.model.post.Post;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class testPostService {

	@Autowired
	private PostService postService;
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Before
	public void setUp() throws Exception {
		assertNotNull(postService);
	}
	
	@Test
	public void testGetRecentPosts() {
		ListContainer listContainer = postService.getRecentPosts(0);
		List list = listContainer.getList();
		log.info("최근 포스트 : {}", list.get(0));
	}

}
