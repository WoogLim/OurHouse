package ourhouse.report.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ourhouse.common.handler.CommandHandler;
import ourhouse.report.service.IReportService;
import ourhouse.report.service.ReportServiceImpl;

public class DeleteReplyReportHandler implements CommandHandler{

	private static final String GSON_PAGE = "/views/MycommonJson.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		//gson용 map
		Map<Object, Object> jsonMap = new HashMap<>();
		
		int replyNo = Integer.parseInt(req.getParameter("replyNo"));
		
		IReportService reportService = ReportServiceImpl.getInstance();
		
		int cnt = reportService.deleteReply(replyNo);
		
		// gson 만든다
		
		Gson gson = new Gson();
		
		String jsonString = null;
		
		if(cnt > 0 ) {
			jsonMap.put("msg", "성공");
		}else {
			jsonMap.put("msg", "실패");			
		}
		jsonString = gson.toJson(jsonMap);
		req.setAttribute("jsonString", jsonString);
		
		return GSON_PAGE;
	}

	@Override
	public boolean isRedirect(HttpServletRequest req) {

		return false;
	}

}
