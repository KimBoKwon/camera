package com.bokwon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bokwon.db.DB;
import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.FreeBoardDto;

public class FreeBoardWriteDaoImpl implements FreeBoardWriteDao{

	@Override
	public ArrayList<FreeBoardDto> select() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 전달 변수(dto 담을 그릇)
		ArrayList<FreeBoardDto> list = new ArrayList<FreeBoardDto>();
		try {
			conn = DB.conn();
			String sql = "SELECT * FROM freeboard";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getInt("num"));
				System.out.println(rs.getString("je"));
				System.out.println(rs.getString("content"));
				System.out.println(rs.getString("writer"));
				FreeBoardDto dto = new FreeBoardDto();
				dto.setNum(rs.getInt("num"));
				dto.setJe(rs.getString("je"));
				dto.setContent(rs.getString("content"));
				dto.setWriter(rs.getString("writer"));
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

	@Override
	public void insert(FreeBoardDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DB.conn(); 
			String sql = "INSERT INTO freeboard (je, content, writer) VALUES (?, ?, ?)";
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, dto.getJe());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getWriter());
			
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
