package article.service;

import java.util.Map;

import article.model.Writer;

public class ModifyRequest {

	private String userId;
	private int articleNumber;
	private String title;
	private String content;
	private String writer;

	public ModifyRequest(String userId, int articleNumber, String title, String content, String writer) {
		this.userId = userId;
		this.articleNumber = articleNumber;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}

	public String getUserId() {
		return userId;
	}

	public int getArticleNumber() {
		return articleNumber;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public void validate(Map<String, Boolean> errors) {
		if (title == null || title.trim().isEmpty()) {
			errors.put("title", Boolean.TRUE);
		}
	}

	public String getWriter() {
		// TODO Auto-generated method stub
		return writer;
	}

}
