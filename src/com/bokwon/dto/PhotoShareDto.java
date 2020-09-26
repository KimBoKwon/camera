package com.bokwon.dto;

public class PhotoShareDto {
	
	int num;
	String camera;
	String lens;
	String writer;
	String photo;
	String photoresize;
	public String getPhotoresize() {
		return photoresize;
	}
	public void setPhotoresize(String photoresize) {
		this.photoresize = photoresize;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCamera() {
		return camera;
	}
	public void setCamera(String camera) {
		this.camera = camera;
	}
	public String getLens() {
		return lens;
	}
	public void setLens(String lens) {
		this.lens = lens;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
