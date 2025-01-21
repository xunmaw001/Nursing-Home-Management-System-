package com.entity.model;

import com.entity.LoufangziliaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 楼房资料
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-05-09 16:08:00
 */
public class LoufangziliaoModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 占地面积
	 */
	
	private String zhandimianji;
		
	/**
	 * 装修程度
	 */
	
	private String zhuangxiuchengdu;
		
	/**
	 * 详情
	 */
	
	private String xiangqing;
		
	/**
	 * 建立时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date jianlishijian;
		
	/**
	 * 楼房图片
	 */
	
	private String loufangtupian;
				
	
	/**
	 * 设置：占地面积
	 */
	 
	public void setZhandimianji(String zhandimianji) {
		this.zhandimianji = zhandimianji;
	}
	
	/**
	 * 获取：占地面积
	 */
	public String getZhandimianji() {
		return zhandimianji;
	}
				
	
	/**
	 * 设置：装修程度
	 */
	 
	public void setZhuangxiuchengdu(String zhuangxiuchengdu) {
		this.zhuangxiuchengdu = zhuangxiuchengdu;
	}
	
	/**
	 * 获取：装修程度
	 */
	public String getZhuangxiuchengdu() {
		return zhuangxiuchengdu;
	}
				
	
	/**
	 * 设置：详情
	 */
	 
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
	}
				
	
	/**
	 * 设置：建立时间
	 */
	 
	public void setJianlishijian(Date jianlishijian) {
		this.jianlishijian = jianlishijian;
	}
	
	/**
	 * 获取：建立时间
	 */
	public Date getJianlishijian() {
		return jianlishijian;
	}
				
	
	/**
	 * 设置：楼房图片
	 */
	 
	public void setLoufangtupian(String loufangtupian) {
		this.loufangtupian = loufangtupian;
	}
	
	/**
	 * 获取：楼房图片
	 */
	public String getLoufangtupian() {
		return loufangtupian;
	}
			
}
