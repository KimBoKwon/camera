package com.bokwon.dao;

import java.util.ArrayList;

import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.FreeBoardDto;
import com.bokwon.dto.QuestionDto;

public interface QuestionWriteDao {
	// 데이터 넣고 
		public void insert(QuestionDto dto);
		
		
		// 전체 데이터 가져오기
		public ArrayList<QuestionDto> select();
}
