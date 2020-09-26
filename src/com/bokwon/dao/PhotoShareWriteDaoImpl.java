package com.bokwon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bokwon.db.DB;
import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.PhotoShareDto;

public class PhotoShareWriteDaoImpl implements PhotoShareWriteDao{

	@Override
	public void insert(PhotoShareDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DB.conn(); 
			String sql = "INSERT INTO photoshare (camera, lens, photo, writer) VALUES (?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, dto.getCamera());
			pstmt.setString(2, dto.getLens());
			pstmt.setString(3, dto.getPhoto());
			pstmt.setString(4, dto.getWriter());
			
			int count = pstmt.executeUpdate();
			if (count == 0) {
				System.out.println("데이터 입력 실패");
			} else {
				System.out.println("데이터 입력 성공");
			}

		} catch (Exception e) {
			System.out.println("에러: " + e);
		} finally {
			try {
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
				if( pstmt != null && !pstmt.isClosed()){
                    pstmt.close();
                }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public ArrayList<PhotoShareDto> select() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 전달 변수(dto 담을 그릇)
		ArrayList<PhotoShareDto> list = new ArrayList<PhotoShareDto>();
		try {
			conn = DB.conn();
			String sql = "SELECT * FROM photoshare";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getInt("num"));
				System.out.println(rs.getString("camera"));
				System.out.println(rs.getString("lens"));
				System.out.println(rs.getString("photo"));
				System.out.println(rs.getString("writer"));
				System.out.println(rs.getString("photoresize"));
				PhotoShareDto dto = new PhotoShareDto();
				dto.setNum(rs.getInt("num"));
				dto.setCamera(rs.getString("camera"));
				dto.setLens(rs.getString("lens"));
				dto.setPhoto(rs.getString("photo"));
				dto.setWriter(rs.getString("writer"));
				dto.setPhotoresize(rs.getString("photoresize"));
				list.add(dto);
			}

		} catch (Exception e) {
			System.out.println("에러: " + e);
		} finally {
			try {
				if( rs != null && !rs.isClosed()){
                    rs.close();
                }
				if( pstmt != null && !pstmt.isClosed()){
                    pstmt.close();
                }
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public void uploadFile(PhotoShareDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DB.conn(); 
			String sql = "INSERT INTO photoshare (camera, lens, photo, writer, photoresize) VALUES (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, dto.getCamera());
			pstmt.setString(2, dto.getLens());
			pstmt.setString(3, dto.getPhoto());
			pstmt.setString(4, dto.getWriter());
			pstmt.setString(5, dto.getPhotoresize());
			
			int count = pstmt.executeUpdate();
			if (count == 0) {
				System.out.println("데이터 입력 실패");
			} else {
				System.out.println("데이터 입력 성공");
			}

		} catch (Exception e) {
			System.out.println("에러: " + e);
		} finally {
			try {
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
				if( pstmt != null && !pstmt.isClosed()){
                    pstmt.close();
                }
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
  }

}
