package board;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class DAO {
	DBConnect dbconnect = null;
	String sql="";
	
	public DAO() {
		dbconnect = new DBConnect();
	}
	//
	public int Tcount(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			sql = "SELECT COUNT(*) FROM TAIL where num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt=rs.getInt(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return cnt;
	}
	
	//후기게시판 글수
	public int count() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		
		try {
			sql = "SELECT COUNT(*) FROM TBOARD";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt=rs.getInt(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return cnt;
	}
	
		
	//가게 등록수
		public int Scount() {
			Connection con = dbconnect.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int cnt = 0;
			
			try {
				sql = "SELECT COUNT(*) FROM APPROVE";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					cnt=rs.getInt(1);
				}
				
			}catch(Exception e) {
				
			}finally {
				DBClose.close(con,pstmt,rs);
			}
			return cnt;
		}
		
		//아이디 중복
				public int IDFound(String ID) {
					Connection con = dbconnect.getConnection();
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					int cnt = 0;
					try {
						sql = "SELECT COUNT(*) FROM MEMBER WHERE ID LIKE '" + ID + "'";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						
						if(rs.next()) {
							cnt=rs.getInt(1);
						}
						
					}catch(Exception e) {
						
					}finally {
						DBClose.close(con,pstmt,rs);
					}
					
					return cnt;
				}
				
	 //닉네임 중복
				public int NNFound(String NN) {
					Connection con = dbconnect.getConnection();
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					int cnt = 0;
					
					try {
						sql = "SELECT COUNT(*) FROM MEMBER WHERE NICKNAME LIKE '" + NN + "'";
						pstmt = con.prepareStatement(sql);
						rs = pstmt.executeQuery();
						
						if(rs.next()) {
							cnt=rs.getInt(1);
						}
						
					}catch(Exception e) {
						
					}finally {
						DBClose.close(con,pstmt,rs);
					}
					return cnt;
				}
		
		
	//찾는 글수
	public int Fcount(String Text,int FS) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		
		try {
			if(FS ==1){
				sql = "SELECT COUNT(*) FROM Tboard WHERE MEMO LIKE '%" + Text + "%'  order by num desc";
				}
				else if(FS ==2){
					sql = "SELECT COUNT(*) FROM Tboard WHERE username LIKE '%" + Text + "%'  order by num desc";
					}
				else if(FS ==3){
					sql = "SELECT COUNT(*) FROM Tboard WHERE TITLE LIKE '%" + Text + "%'  order by num desc";
					}
				else if(FS ==4){
					sql = "SELECT COUNT(*)FROM Tboard WHERE TITLE LIKE '%" + Text + "%' or MEMO LIKE '%" + Text + "%' order by num desc";
					}
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt=rs.getInt(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return cnt;
	}
	
	
	public String pasing(String data) {
		try {
			data = new String(data.getBytes("8859_1"), "euc-kr");
		}catch (Exception e){ }
		return data;
	}
	
	
	public int getMax() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int max = 0;
		
		try {
			sql = "SELECT MAX(NUM) FROM TBOARD";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				max=rs.getInt(1);
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return max;
	}
	
	//후기게시판 글쓰기
	public void insertWrite(VO vo) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "INSERT INTO tboard(num,USERNAME,PASSWORD,TITLE,MEMO,TIME,HIT) VALUES(num.nextval,?,?,?,?,SYSDATE,0)";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, pasing(vo.getName()));
			pstmt.setString(2, pasing(vo.getPassword()));
			pstmt.setString(3, pasing(vo.getTitle()));
			pstmt.setString(4, pasing(vo.getMemo()));
	
			pstmt.execute();
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//댓글쓰기
	public void tailWrite(VO vo, int num) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "INSERT INTO tail(num,tnum,memo,name,TIME) VALUES(?,tnum.nextval,?,?,SYSDATE)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, pasing(vo.getTname()));
			pstmt.setString(3, pasing(vo.getTmemo()));
	
			pstmt.execute();
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//회원가입
		public void Join(VO vo) {
			Connection con = dbconnect.getConnection();
			PreparedStatement pstmt = null;
			
			try {
				sql = "INSERT INTO member(ID,PASSWORD,NAME,NICKNAME,TELL,EMAIL,ZIPCODE,ADDRESS1,ADDRESS2) VALUES(?,?,?,?,?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, pasing(vo.getJid()));
				pstmt.setString(2, pasing(vo.getJpass()));
				pstmt.setString(3, pasing(vo.getJname()));
				pstmt.setString(4, pasing(vo.getJnname()));
				pstmt.setString(5, pasing(vo.getJtell()));
				pstmt.setString(6, pasing(vo.getJemail()));
				pstmt.setString(7, pasing(vo.getJzipcode()));
				pstmt.setString(8, pasing(vo.getJaddress1()));
				pstmt.setString(9, pasing(vo.getJaddress2()));
				pstmt.execute();
			}catch(Exception e) {
				
			}finally {
				DBClose.close(con,pstmt);
			}
		}
	
	//후기게시판 리스트 불러오기
	public ArrayList<VO> getMemberList() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<VO> alist = new ArrayList<VO>();
		try {
			sql = "SELECT NUM, USERNAME, TITLE, TIME, HIT from tboard order by num desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO vo = new VO();
				boolean dayNew = false;
				vo.setNum(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setTitle(rs.getString(3));
				
				Date date = new Date();
				SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
				String year = (String)simpleDate.format(date);
				String yea = rs.getString(4).substring(0,10);
				
				if(year.equals(yea)){
					dayNew = true;
				}
				
				vo.setTime(yea);
				vo.setHit(rs.getInt(5));
				vo.setDayNew(dayNew);
				alist.add(vo);
			}
		}catch(Exception e) {
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return alist;
	}
	
	//등록가게 리스트 불러오기
	public ArrayList<VO> getShopList() {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<VO> alist = new ArrayList<VO>();
		try {
			sql = "SELECT NUM,licenseenumber,MNAME,SNAME,ITEL,EMAIL,MENU,TIME,DAYOFF,ONAIR from APPROVE order by NUM ASC";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO vo = new VO();
				vo.setSnum(rs.getInt(1));
				vo.setLicenseenumber(rs.getString(2));
				vo.setMname(rs.getString(3));
				vo.setSname(rs.getString(4));
				vo.setItel(rs.getString(5));
				vo.setEmail(rs.getString(6));
				vo.setMenu(rs.getString(7));
				vo.setStime(rs.getString(8));
				vo.setDayoff(rs.getString(9));
				vo.setOnair(rs.getString(10));
				alist.add(vo);
			}
		}catch(Exception e) {
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return alist;
	}
	
	//찾는글 리스트 불러오기
	public ArrayList<VO> findMemberList(String Text,int FS) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<VO> alist = new ArrayList<VO>();
		try {
			if(FS ==1){
			sql = "SELECT NUM, USERNAME, TITLE, TIME, HIT FROM Tboard WHERE MEMO LIKE '%" + Text + "%'  order by num desc";
			}
			else if(FS ==2){
				sql = "SELECT NUM, USERNAME, TITLE, TIME, HIT FROM Tboard WHERE username LIKE '%" + Text + "%'  order by num desc";
				}
			else if(FS ==3){
				sql = "SELECT NUM, USERNAME, TITLE, TIME, HIT FROM Tboard WHERE TITLE LIKE '%" + Text + "%'  order by num desc";
				}
			else if(FS ==4){
				sql = "SELECT NUM, USERNAME, TITLE, TIME, HIT FROM Tboard WHERE TITLE LIKE '%" + Text + "%' or MEMO LIKE '%" + Text + "%' order by num desc";
				}
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				boolean dayNew = false;
				VO vo = new VO();
				vo.setNum(rs.getInt(1));
				vo.setName(rs.getString(2));
				vo.setTitle(rs.getString(3));
				Date date = new Date();
				SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd"); 
				String year = (String)simpleDate.format(date);
				String yea = rs.getString(4).substring(0,10);
				
				if(year.equals(yea)){
					dayNew = true;
				}
				
				vo.setTime(yea);
				vo.setHit(rs.getInt(5));
				vo.setDayNew(dayNew);
				alist.add(vo);
			}
		}catch(Exception e) {
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return alist;
	}
	//덧글 불러오기
	public ArrayList<VO> getTailList(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<VO> alist = new ArrayList<VO>();
		try {
			sql = "SELECT TNUM, memo, name, TIME from tail where num= ? order by Tnum asc";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO vo = new VO();
				vo.setTnum(rs.getInt(1));
				vo.setTmemo(rs.getString(2));
				vo.setTname(rs.getString(3));
				vo.setTtime(rs.getString(4));
				alist.add(vo);
			}
		}catch(Exception e) {
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return alist;
	}
	
	//글보기
	public VO getView(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		VO vo = null;
		
		try {
			sql = "SELECT USERNAME, TITLE, MEMO, TIME, HIT, PASSWORD, REF, INDENT, STEP FROM tboard WHERE NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new VO();
				vo.setName(rs.getString(1));
				vo.setTitle(rs.getString(2));
				vo.setMemo(rs.getString(3));
				vo.setTime(rs.getString(4));
				vo.setHit(rs.getInt(5)+1);
				vo.setPassword(rs.getString(6));
				vo.setRef(rs.getInt(7));
				vo.setIndent(rs.getInt(8));
				vo.setStep(rs.getInt(9));
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return vo;
	}
	
	//등록 가게 보기
	public VO getShopView(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		VO vo = null;
		
		try {
			sql = "SELECT NUM,licenseenumber,MNAME,SNAME,ITEL,EMAIL,MENU,TIME,DAYOFF,ONAIR FROM APPROVE WHERE NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new VO();
				vo.setLicenseenumber(rs.getString(2));
				vo.setMname(rs.getString(3));
				vo.setSname(rs.getString(4));
				vo.setItel(rs.getString(5));
				vo.setEmail(rs.getString(6));
				vo.setMenu(rs.getString(7));
				vo.setTime(rs.getString(8));
				vo.setDayoff(rs.getString(9));
				vo.setOnair(rs.getString(10));
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return vo;
	}
	
	//조회수^
	public void UpdateHit(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "UPDATE TBOARD SET HIT=HIT+1 where NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//비밀번호 체크
	public boolean checkPassword(VO vo, int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean ch = false;
		
		try {
			sql = "SELECT NUM FROM TBOARD where NUM=? and PASSWORD=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.setString(2, vo.getPassword());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ch = true;
			} else {
				ch = false;
			}
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt,rs);
		}
		return ch;
	}
	
	//글삭제
	public void delete(int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "DELETE FROM TBOARD WHERE NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//글수정
	public void modify(VO vo, int idx) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "UPDATE TBOARD SET TITLE=?, MEMO=? where NUM=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pasing(vo.getTitle()));
			pstmt.setString(2, pasing(vo.getMemo()));
			pstmt.setInt(3, idx);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	
	//
	public void UpdateStep(int ref, int step) {
		Connection con = dbconnect.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			sql = "UPDATE TBOARD SET STEP=STEP+1 where REF=? and STEP>?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ref);
			pstmt.setInt(1, step);
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			
		}finally {
			DBClose.close(con,pstmt);
		}
	}
	

}
