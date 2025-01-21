package com.dao;

import com.entity.HugongEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HugongVO;
import com.entity.view.HugongView;


/**
 * 护工
 * 
 * @author 
 * @email 
 * @date 2022-05-09 16:08:00
 */
public interface HugongDao extends BaseMapper<HugongEntity> {
	
	List<HugongVO> selectListVO(@Param("ew") Wrapper<HugongEntity> wrapper);
	
	HugongVO selectVO(@Param("ew") Wrapper<HugongEntity> wrapper);
	
	List<HugongView> selectListView(@Param("ew") Wrapper<HugongEntity> wrapper);

	List<HugongView> selectListView(Pagination page,@Param("ew") Wrapper<HugongEntity> wrapper);
	
	HugongView selectView(@Param("ew") Wrapper<HugongEntity> wrapper);
	

}
