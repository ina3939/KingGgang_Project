package com.teamb.model;

public class MemberDTO {


	private int memberNum; //primary key
	private String profile_name;
	private int profile_size;
	private String regdate;
	private String name;
	private String gender;
	private String id;
	private String passwd;
	private String email;
	private String birth_y;
	private String birth_m;
	private String birth_d;
	private String hp1;
	private String hp2;
	private String hp3;
	private String intro;
	private int friendCount;
	private int point;
	private int unreadCount;
	
	
	public static final int OK = 0;			
	public static final int NOT_ID = 1;	
	public static final int NOT_PW = 2;
	public static final int ERROR = -1;	
	
	
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public int getUnreadCount() {
		return unreadCount;
	}
	public void setUnreadCount(int unreadCount) {
		this.unreadCount = unreadCount;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	

	
	public String getProfile_name() {
		return profile_name;
	}
	public void setProfile_name(String profile_name) {
		this.profile_name = profile_name;
	}
	public int getProfile_size() {
		return profile_size;
	}
	public void setProfile_size(int profile_size) {
		this.profile_size = profile_size;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth_y() {
		return birth_y;
	}
	public void setBirth_y(String birth_y) {
		this.birth_y = birth_y;
	}
	public String getBirth_m() {
		return birth_m;
	}
	public void setBirth_m(String birth_m) {
		this.birth_m = birth_m;
	}
	public String getBirth_d() {
		return birth_d;
	}
	public void setBirth_d(String birrth_d) {
		this.birth_d = birrth_d;
	}
	public String getAllBirth() {
		
		return birth_y+"년"+birth_m+"월"+birth_d+"일";
	}
	
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public String getAllHp() {
		
		return hp1+"-"+hp2+"-"+hp3;
	}
	
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getFriendCount() {
		return friendCount;
	}
	public void setFriendCount(int friendCount) {
		this.friendCount = friendCount;
	}
	
	
}