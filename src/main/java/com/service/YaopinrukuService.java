package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YaopinrukuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YaopinrukuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YaopinrukuView;


/**
 * 药品入库
 *
 * @author 
 * @email 
 * @date 2022-05-09 16:08:01
 */
public interface YaopinrukuService extends IService<YaopinrukuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YaopinrukuVO> selectListVO(Wrapper<YaopinrukuEntity> wrapper);
   	
   	YaopinrukuVO selectVO(@Param("ew") Wrapper<YaopinrukuEntity> wrapper);
   	
   	List<YaopinrukuView> selectListView(Wrapper<YaopinrukuEntity> wrapper);
   	
   	YaopinrukuView selectView(@Param("ew") Wrapper<YaopinrukuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YaopinrukuEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<YaopinrukuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<YaopinrukuEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<YaopinrukuEntity> wrapper);
}

