package xyz.funk2punk.blog.common;

public interface Page {

	int getTotalListSize();

	int getPageSize();

	void setPageSize(int pageSize);

	int getPageGroupSize();

	void setPageGroupSize(int pageGroupSize);

	int getCurrentPage();

	void setCurrentPage(int currentPage);

	int getPageCount();

	int getPageGroupCount();

	int getCurrentPageGroup();

	int getBeginRow();

	int getEndRow();

	int getBeginPage();

	int getEndPage();

	boolean isFirstPage();

	boolean isLastPage();

	boolean isFirstPageGroup();

	boolean isLastPageGroup();

	boolean isEmpty();

}