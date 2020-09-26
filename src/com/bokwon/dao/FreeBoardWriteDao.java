package com.bokwon.dao;

import java.util.ArrayList;

import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.FreeBoardDto;

public interface FreeBoardWriteDao {
	// 데이터 넣고 
		public void insert(FreeBoardDto dto);
		
		
		// 전체 데이터 가져오기
		public ArrayList<FreeBoardDto> select();
}
