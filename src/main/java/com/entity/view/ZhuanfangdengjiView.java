package com.entity.view;

import com.entity.ZhuanfangdengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 转房登记
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-09 16:08:01
 */
@TableName("zhuanfangdengji")
public class ZhuanfangdengjiView  extends ZhuanfangdengjiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhuanfangdengjiView(){
	}
 
 	public ZhuanfangdengjiView(ZhuanfangdengjiEntity zhuanfangdengjiEntity){
 	try {
			BeanUtils.copyProperties(this, zhuanfangdengjiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
