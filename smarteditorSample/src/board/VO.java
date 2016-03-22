package board;

public class VO {
	//회원가입 변수
	private String jname;
	private String jid;
	private String jzipcode;
	private String jpass;
	private String jemail;
	private String jtell;
	private String jaddress1;
	private String jaddress2;
	
	public String getJaddress2() {
		return jaddress2;
	}
	public void setJaddress2(String jaddress2) {
		this.jaddress2 = jaddress2;
	}
	public String getJname() {
		return jname;
	}
	public void setJname(String jname) {
		this.jname = jname;
	}
	public String getJid() {
		return jid;
	}
	public void setJid(String jid) {
		this.jid = jid;
	}
	public String getJzipcode() {
		return jzipcode;
	}
	public void setJzipcode(String jzipcode) {
		this.jzipcode = jzipcode;
	}
	public String getJpass() {
		return jpass;
	}
	public void setJpass(String jpass) {
		this.jpass = jpass;
	}
	public String getJemail() {
		return jemail;
	}
	public void setJemail(String jemail) {
		this.jemail = jemail;
	}
	public String getJtell() {
		return jtell;
	}
	public void setJtell(String jtell) {
		this.jtell = jtell;
	}
	public String getJaddress1() {
		return jaddress1;
	}
	public void setJaddress1(String jaddress) {
		this.jaddress1 = jaddress;
	}
	public String getJnname() {
		return jnname;
	}
	public void setJnname(String jnname) {
		this.jnname = jnname;
	}




	private String jnname;
	
	
	
	//우편번호 변수
	private String zipcode;
	private String Sido;
	private String gugun;
	private String dong;
	private String bunji;
	
	public String getSido() {
		return Sido;
	}
	public void setSido(String sido) {
		Sido = sido;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getBunji() {
		return bunji;
	}
	public void setBunji(String bunji) {
		this.bunji = bunji;
	}




	/*후기글 변수*/
	private int num;
	private String name;
	private String password;
	private String title;
	private String memo;
	private String time;
	private int hit;
	private int ref;
	private int indent;
	private int step;
	private boolean dayNew;
	
	/*가게 변수*/
	private String Mname;
	private int Snum;
	private String Licenseenumber;
	private String sname;
	private String itel;
	private String email;
	private String menu;
	private String Stime;
	private String dayoff;
	private String onair;
	public String getMname() {
		return Mname;
	}
	public void setMname(String mname) {
		Mname = mname;
	}
	public int getSnum() {
		return Snum;
	}
	public void setSnum(int snum) {
		Snum = snum;
	}
	public String getLicenseenumber() {
		return Licenseenumber;
	}
	public void setLicenseenumber(String licenseenumber) {
		Licenseenumber = licenseenumber;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getItel() {
		return itel;
	}
	public void setItel(String itel) {
		this.itel = itel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getStime() {
		return Stime;
	}
	public void setStime(String stime) {
		Stime = stime;
	}
	public String getDayoff() {
		return dayoff;
	}
	public void setDayoff(String dayoff) {
		this.dayoff = dayoff;
	}
	public String getOnair() {
		return onair;
	}
	public void setOnair(String onair) {
		this.onair = onair;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}




	private static String FindT;//검색어
	private static String FS;//필터
	public String getFS() {
		return FS;
	}
	public void setFS(String fS) {
		FS = fS;
	}
	
	public String getFindT() {
		return FindT;
	}
	public void setFindT(String findT) {
		FindT = findT;
	}

    /*댓글 변수*/
	private static int Staticnum;
	private static int Spg;
	public int getSpg() {
		return Spg;
	}
	public void setSpg(int spg) {
		Spg = spg;
	}



	private String tname;
	private String tmemo;
	private String ttime;
	private int tnum;

	public int getStaticnum() {
		return Staticnum;
	}
	public void setStaticnum(int staticnum) {
		Staticnum = staticnum;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	
	public String getTmemo() {
		return tmemo;
	}
	public void setTmemo(String tmemo) {
		this.tmemo = tmemo;
	}
	
	
	public String getTtime() {
		return ttime;
	}
	public void setTtime(String ttime) {
		this.ttime = ttime;
	}
	
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	
public VO() {
		
	}
	public VO(int num, String name, String password, String title,
			String memo, String time, int hit, int ref, int indent, int step, boolean dayNew) {
	this.num = num;
	this.name = name;
	this.password = password;
	this.title = title;
	this.memo = memo;
	this.time = time;
	this.hit = hit;
	this.ref = ref;
	this.indent = indent;
	this.step = step;
	this.dayNew = dayNew;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getIndent() {
		return indent;
	}

	public void setIndent(int indent) {
		this.indent = indent;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public boolean isDayNew() {
		return dayNew;
	}

	public void setDayNew(boolean dayNew) {
		this.dayNew = dayNew;
	}

}
