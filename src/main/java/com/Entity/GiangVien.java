package com.Entity;

public class GiangVien {
	private String ma_giangvien, chucvu;
	public GiangVien() {
		super();
	}
	public GiangVien(String ma_giangvien, String chucvu) {
		super();
		this.ma_giangvien = ma_giangvien;
		this.chucvu = chucvu;
	}
	public String getMa_giangvien() {
		return ma_giangvien;
	}
	public void setMa_giangvien(String ma_giangvien) {
		this.ma_giangvien = ma_giangvien;
	}
	public String getChucvu() {
		return chucvu;
	}
	public void setChucvu(String chucvu) {
		this.chucvu = chucvu;
	}
	
}
