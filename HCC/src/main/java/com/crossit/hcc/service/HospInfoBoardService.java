package com.crossit.hcc.service;

import com.crossit.hcc.dao.HospInfoMapperImpl;
import com.crossit.hcc.util.PageNavigation;


public class HospInfoBoardService{
	


	private HospInfoMapperImpl hospInfoMapper=new HospInfoMapperImpl();
	/*
	public List<HospInfoVO> selectRecordsPerPage(int offset, int noOfRecords) throws Exception{
		return HospInfoMapper.selectRecordsPerPage(offset, noOfRecords);
	}
	*/
	/////////////////////////////////////페이징 처리/////////////////////////////////////
	PageNavigation paging;
	
	int currentPageNo;
	int recordsPerPage;
	int start;
	int end;
	
//	   public List<HospVO> selectRecordsPerPage(int offset, int noOfRecords) {
//	        
//	        return hospInfoMapper.selectRecordsPerPage(offset, noOfRecords);
//	    }
//
//	    public HospInfoMapperImpl getBoardDao() {
//	    	 
//	        return hospInfoMapper;
//	    }
	
	public HospInfoBoardService() {
		// TODO Auto-generated constructor stub
	}
	public HospInfoBoardService(String page) {
		try {
			currentPageNo = Integer.parseInt(page);
		} catch (NumberFormatException e) {
			currentPageNo = 1;
		}
		
		if(page != null) {
			currentPageNo = Integer.parseInt(page);
		}
		recordsPerPage = 5; //페이지당 5개의 게시물
		
		paging = new PageNavigation(currentPageNo, recordsPerPage);
		
		//호출할 페이지 레코드 번호
		start = (currentPageNo -1)* paging.getRecordsPerPage() +1;
		end = currentPageNo * paging.getRecordsPerPage();
	}
	public int getStart() {
		return start;
	}
	public int getEnd() {
		return end;
	}
	public void setNumberOfRecords(int numberOfRecords) {
		paging.setNumberOfRecords(numberOfRecords);
	}
	public int getFinalPageNo() {
		return paging.getFinalPageNo();
	}
	public void makePaging() {
		paging.makePaging();
	}
	public int getStartPageNo() {
		return paging.getStartPageNo();
	}
	public int getEndPageNo() {
		return paging.getEndPageNo();
	}
	
	

}