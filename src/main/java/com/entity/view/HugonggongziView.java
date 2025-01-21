package com.entity.view;

import com.entity.HugonggongziEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 护工工资
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-09 16:08:01
 */
@TableName("hugonggongzi")
public class HugonggongziView  extends HugonggongziEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public HugonggongziView(){
	}
 
 	public HugonggongziView(HugonggongziEntity hugonggongziEntity){
 	try {
			BeanUtils.copyProperties(this, hugonggongziEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
