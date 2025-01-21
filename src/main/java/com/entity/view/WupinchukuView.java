package com.entity.view;

import com.entity.WupinchukuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 物品出库
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-09 16:08:01
 */
@TableName("wupinchuku")
public class WupinchukuView  extends WupinchukuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public WupinchukuView(){
	}
 
 	public WupinchukuView(WupinchukuEntity wupinchukuEntity){
 	try {
			BeanUtils.copyProperties(this, wupinchukuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
