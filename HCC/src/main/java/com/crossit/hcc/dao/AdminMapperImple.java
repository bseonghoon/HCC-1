package com.crossit.hcc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Service;

import com.crossit.hcc.vo.UserVO;

@Service
@Configurable
public class AdminMapperImple implements AdminMapper {

	private SqlSessionTemplate sqlSessionTemplate;
	
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	@Override
	public List<UserVO> getUserList(int start, int end,String kind) {
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("param1", String.valueOf(start));
		params.put("param2", String.valueOf(end));
		params.put("param3", kind);
		
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList("com.crossit.hcc.dao.AdminMapper.getUserList", params);
	}

	@Override
	public int getUserCount(String kind) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("com.crossit.hcc.dao.AdminMapper.getUserCount", kind);
	}

}
