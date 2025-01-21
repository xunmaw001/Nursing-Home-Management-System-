package com.dao;

import com.entity.WaichudengjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WaichudengjiVO;
import com.entity.view.WaichudengjiView;


/**
 * 外出登记
 * 
 * @author 
 * @email 
 * @date 2022-05-09 16:08:01
 */
public interface WaichudengjiDao extends BaseMapper<WaichudengjiEntity> {
	
	List<WaichudengjiVO> selectListVO(@Param("ew") Wrapper<WaichudengjiEntity> wrapper);
	
	WaichudengjiVO selectVO(@Param("ew") Wrapper<WaichudengjiEntity> wrapper);
	
	List<WaichudengjiView> selectListView(@Param("ew") Wrapper<WaichudengjiEntity> wrapper);

	List<WaichudengjiView> selectListView(Pagination page,@Param("ew") Wrapper<WaichudengjiEntity> wrapper);
	
	WaichudengjiView selectView(@Param("ew") Wrapper<WaichudengjiEntity> wrapper);
	

}
