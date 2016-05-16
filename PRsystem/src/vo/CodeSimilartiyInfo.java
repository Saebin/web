package vo;


public class CodeSimilartiyInfo {
	protected int 		num;
	protected String 	stu_name1;
	protected String 	stu_name2;
	protected String 	title;
	protected double 	content;

	
	public int getNum() {
		return num;
	}
	public CodeSimilartiyInfo setNum(int num) {
		this.num = num;
		return this;
	}
	public String getStu_name1() {
		return stu_name1;
	}
	public CodeSimilartiyInfo setStu_name1(String stu_name1) {
		this.stu_name1 = stu_name1;
		return this;
	}
	public String getStu_name2() {
		return stu_name2;
	}
	public CodeSimilartiyInfo setStu_name2(String stu_name2) {
		this.stu_name2 = stu_name2;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public CodeSimilartiyInfo setTitle(String title) {
		this.title = title;
		return this;
	}
	public double getContent() {
		return content;
	}
	public CodeSimilartiyInfo setContent(double content) {
		this.content = content;
		return this;
	}
}
