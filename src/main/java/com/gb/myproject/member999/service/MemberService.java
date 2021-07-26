package com.gb.myproject.member999.service;

import java.util.Map;

import com.gb.myproject.member999.model.KakaoMemberDto;
import com.gb.myproject.member999.model.MemberDto;

public interface MemberService {
	MemberDto selectLogin(Map<String,String> map);			//로그인
	MemberDto selectKakaoLogin(KakaoMemberDto dto);			//카카오 로그인 체크
	MemberDto selectOneMember(int idx);						//세션 갱신용 select one
	int insertMember(MemberDto dto);						//회원가입
	int updateMember(MemberDto dto);						//회원정보 수정
	String selectId(MemberDto dto);							//아이디 찾기
	MemberDto selectDoubleCheck(String id);					//아이디 중복체크
	int updatePassword(Map<String,Object> map);				//비밀번호 변경
	String selectPassword(Map<String,Object> map);			//비밀번호 변경시 현재 비밀번호 확인 -> 암호화 적용했으므로 쿼리문이 필요함
	int deleteMember(Map<String,Object> map);				//회원탈퇴
	//s_like 테이블
	int insertLike(Map<String, Object> map);				//찜하기
	int[] selectLikeList(int m_idx);						//마이페이지에서 맛집목록 불러오기 위한 s_idx값
	int selectLikeCount(int s_idx);							//맛집에서 찜개수 카운트
	int deleteMemberLike(int idx);							//마이페이지에서 찜목록 삭제
	int deleteStoreLike(Map<String,Object> map);			//맛집에서 찜 체크 해제
	int selectLikeStore(Map<String, Object> map);		//맛집 좋아요 
}
