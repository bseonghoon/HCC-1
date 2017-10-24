package com.crossit.hcc.service;

import java.util.HashMap;

import com.crossit.hcc.dao.UserMapperImpl;
import com.crossit.hcc.vo.UserVO;

public class UserServiceImpl implements UserService {

	private UserMapperImpl userMapper;

	public void setUserMapper(UserMapperImpl userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public UserVO getUser(String user_id) {
		// TODO Auto-generated method stub
		return userMapper.selectUserByID(user_id);
	}

	@Override
	public boolean idCheck(String user_id) {
		// TODO Auto-generated method stub
		return userMapper.compareUserByID(user_id);
	}

	@Override
	public boolean pwCheck(String user_id,String user_pw) {
		// TODO Auto-generated method stub
		HashMap<String,String> map=new HashMap();
		map.put("id",user_id);
		map.put("pw",user_pw);
		
		return userMapper.compareUserByPW(map);
	}

	@Override
	public void register(UserVO vo) {
		// TODO Auto-generated method stub
		userMapper.insertUserVO(vo);
	}

	@Override
	public void leave(UserVO vo) {// 아이디 삭제
		// TODO Auto-generated method stub

		userMapper.deleteUserByID(vo.getUser_id());

	}

	@Override
	public void infoupdate(UserVO vo) {// 회원정보 변경.
		// TODO Auto-generated method stub
		userMapper.updateUserByVO(vo);

	}

}
