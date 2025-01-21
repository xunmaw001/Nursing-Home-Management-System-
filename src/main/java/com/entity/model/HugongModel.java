package com.entity.model;

import com.entity.HugongEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 护工
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-05-09 16:08:00
 */
public class HugongModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 护工姓名
	 */
	
	private String hugongxingming;
		
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 护工照片
	 */
	
	private String hugongzhaopian;
		
	/**
	 * 年龄
	 */
	
	private Integer nianling;
		
	/**
	 * 护工电话
	 */
	
	private String hugongdianhua;
		
	/**
	 * 民族
	 */
	
	private String minzu;
		
	/**
	 * 学历
	 */
	
	private String xueli;
		
	/**
	 * 婚否
	 */
	
	private String hunfou;
		
	/**
	 * 护理级别
	 */
	
	private String hulijibie;
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：护工姓名
	 */
	 
	public void setHugongxingming(String hugongxingming) {
		this.hugongxingming = hugongxingming;
	}
	
	/**
	 * 获取：护工姓名
	 */
	public String getHugongxingming() {
		return hugongxingming;
	}
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：护工照片
	 */
	 
	public void setHugongzhaopian(String hugongzhaopian) {
		this.hugongzhaopian = hugongzhaopian;
	}
	
	/**
	 * 获取：护工照片
	 */
	public String getHugongzhaopian() {
		return hugongzhaopian;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(Integer nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public Integer getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：护工电话
	 */
	 
	public void setHugongdianhua(String hugongdianhua) {
		this.hugongdianhua = hugongdianhua;
	}
	
	/**
	 * 获取：护工电话
	 */
	public String getHugongdianhua() {
		return hugongdianhua;
	}
				
	
	/**
	 * 设置：民族
	 */
	 
	public void setMinzu(String minzu) {
		this.minzu = minzu;
	}
	
	/**
	 * 获取：民族
	 */
	public String getMinzu() {
		return minzu;
	}
				
	
	/**
	 * 设置：学历
	 */
	 
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	
	/**
	 * 获取：学历
	 */
	public String getXueli() {
		return xueli;
	}
				
	
	/**
	 * 设置：婚否
	 */
	 
	public void setHunfou(String hunfou) {
		this.hunfou = hunfou;
	}
	
	/**
	 * 获取：婚否
	 */
	public String getHunfou() {
		return hunfou;
	}
				
	
	/**
	 * 设置：护理级别
	 */
	 
	public void setHulijibie(String hulijibie) {
		this.hulijibie = hulijibie;
	}
	
	/**
	 * 获取：护理级别
	 */
	public String getHulijibie() {
		return hulijibie;
	}
			
}
