package com.bokwon.dao;

import java.util.ArrayList;

import com.bokwon.dto.UserDto;

public interface UserDao {
	// 데이터 넣고 
	public void insert(UserDto dto);
	
	// ID로 검색하고
	public boolean select(String id);
	
	// id 과  pw를 검색
	public UserDto select(String email, String pw);
	
	// 전체 데이터 가져오기
	public ArrayList<UserDto> select();
}
