package com.bokwon.dao;

import java.util.ArrayList;

import com.bokwon.dto.CameraHugiDto;

public interface CameraHugiWriteDao {
	// 데이터 넣고 
		public void insert(CameraHugiDto dto);
		
		
		// 전체 데이터 가져오기
		public ArrayList<CameraHugiDto> select();
}
