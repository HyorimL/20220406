package co.lhr.prj.notice.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.lhr.prj.notice.service.NoticeService;
import co.lhr.prj.notice.vo.NoticeVO;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeDao;
	
	@Autowired
	private String saveDir;
	
	@RequestMapping("/noticeList.do")
	public String noticeList(Model model, NoticeVO vo) {
		//페이징 구문을 넣어야 한다.
		model.addAttribute("notice", noticeDao.noticeList(vo));
		return "notice/noticeList";
	}
	
	@RequestMapping("/noticeInputForm.do")
	public String noticeInputForm() {
		return "notice/noticeInputForm";
	}
	
	@RequestMapping("/noticeInsert.do")
	public String noticeInsert(NoticeVO vo, MultipartFile file) {
		
		if(file.isEmpty()) { //파일이 비어있으면 true
			
			noticeDao.noticeInsert(vo);
		
		} else { //파일이 존재하면
			
			String originalFileName = file.getOriginalFilename();
			String saveFileName = UUID.randomUUID().toString() 
					+ originalFileName.substring(originalFileName.lastIndexOf('.'));
			
			try {
				
				file.transferTo(new File(saveDir, saveFileName)); // 물리적 위치에 저장
				
				//이곳에서 DB 저장하면 됨
				saveFileName = saveDir + saveFileName; //저장된 물리경로를 포함
				vo.setFilename(originalFileName);
				vo.setUuidfile(saveFileName);
				noticeDao.noticeInsert(vo);
				
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			} 
		}
		
		return "redirect:noticeList.do";
	}
}
