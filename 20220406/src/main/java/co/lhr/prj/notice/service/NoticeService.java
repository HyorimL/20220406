package co.lhr.prj.notice.service;

import java.util.List;

import co.lhr.prj.notice.vo.NoticeVO;

public interface NoticeService {

	List<NoticeVO> noticeList(NoticeVO vo);
	NoticeVO noticeSelect(NoticeVO vo);
	int noticeInsert(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
}
