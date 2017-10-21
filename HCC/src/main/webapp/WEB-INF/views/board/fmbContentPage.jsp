<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<%@ include file="../common/inc_common.jsp"%>

<%@ include file="../common/inc_header.jsp"%>

</head>
<body>
	<div class="wrap">
		<%@ include file="../common/inc_top.jsp"%>
		 
		
          <div class="post">
              <div class="search_nav">
                    <h2>제목 넣으셈</h2>
              </div>
              <div class="post_top">
                  <div class="post_name">
                      <p>이름 넣으셈</p>
                  </div>
                  <div class="post_text">
                      <p>댓글수</p>
                  </div>
                  <div class="post_see">
                      <p>조회수</p>
                  </div>
                  <div class="post_up">
                      <p>좋아요수</p>
                  </div>
                  <div class="post_down">
                      <p>싫어요수</p>
                  </div>
                  <div class="post_date">
                      <p>등록일 넣고</p>
                  </div>
              </div>
              <div class="post_mid">
                  ${fmb.fmb_title }
              </div>
              <div class="post_bottom">
                  <div class="post_bottom_like">
                                         좋아요
                  </div>
                  <div class="post_bottom_bad">
                                         싫어요
                  </div>
                  <div class="post_bottom_text" id="post_bottom_text">
                       <a href="javascript:Open();">댓글열기</a>
                  </div>
                  <div class="del">
                      <a href="./deleteList?seq=${fmb.fmb_seq }">삭제</a>
                  </div>
                  <div class="mod">
                      <a href="./fmbList">수정</a>
                  </div>
              </div>
			  
			 
               <div class="comments" >
                <span id=test1_1 ></span> 
   
                <span id=test1_2  style="DISPLAY: none;">
                     <div class="comments_list">
                       <span class="comments_span">
                              <a class="comments_info">유인준&nbsp;&nbsp;&nbsp;&nbsp;Date : 2017-10-07</a>
                              <span class="comments_fun">
                                 <!--testInnerHTML('댓글번호','댓글내용','댓글시퀀스','사용자시퀀스');" -->
								 <a href="javascript:testInnerHTML('1','test','1','1');" >Update</a>&nbsp;&nbsp;
								 <!--commentDelete('댓글시퀀스','사용자시퀀스');" -->
                                 <a href="javascript:commentDelete('1','1');">Delete</a>&nbsp;&nbsp;
								 <!--cencleInnerHTML('댓글번호','댓글내용');" -->
                                 <a href="javascript:cencleInnerHTML('1','test');">Cancel</a>
						      </span> 
                       </span>
                       <div class="inHere" id="inHere1" >
                         <a>test</a> 
                       </div>
                     </div> 

                     <div class="comments_text" >
                       <textarea id="comment" class="comment" name="comment" maxlength="250" ></textarea>
					   <input type="button" id="comment_btn" value="Register" >
                     </div> 
                </span> 
 
              </div> 
            
			 
          </div>
		  
   			<%@ include file="../common/inc_right.jsp"%>
   
		  
      </div>

	</div>
</body>
</html>
