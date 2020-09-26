package com.bokwon.dao;

import java.util.ArrayList;

import com.bokwon.dto.CameraHugiDto;
import com.bokwon.dto.PhotoShareDto;

public interface PhotoShareWriteDao {
	// 데이터 넣고 
		public void insert(PhotoShareDto dto);
		
		
		// 전체 데이터 가져오기
		public ArrayList<PhotoShareDto> select();
		
		public void uploadFile(PhotoShareDto dto);
}
