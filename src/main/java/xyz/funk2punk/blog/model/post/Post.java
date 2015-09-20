package xyz.funk2punk.blog.model.post;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class Post {
	private int postNo;
	@NotEmpty
	private String category;
	@NotEmpty
	private String title;
	@NotEmpty
	private String subTitle;
	@NotEmpty
	private String content;
	private int recommend;
	@NotEmpty
	private boolean open;
	private Date writeDate;

	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Post(String category, String title, String content, boolean open) {
		super();
		this.category = category;
		this.title = title;
		this.content = content;
		this.open = open;
	}

	public Post(int postNo, String category, String title, String content, int recommend, boolean open,
			Date writeDate) {
		super();
		this.postNo = postNo;
		this.category = category;
		this.title = title;
		this.content = content;
		this.recommend = recommend;
		this.open = open;
		this.writeDate = writeDate;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubTitle() {
		return subTitle;
	}

	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public boolean isOpen() {
		return open;
	}

	public void setOpen(boolean open) {
		this.open = open;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(writeDate);
		return date;
	}

	@Override
	public String toString() {
		return "Post [postNo=" + postNo + ", category=" + category + ", title=" + title + ", content=" + content
				+ ", recommend=" + recommend + ", open=" + open + ", writeDate=" + writeDate + "]";
	}

}
