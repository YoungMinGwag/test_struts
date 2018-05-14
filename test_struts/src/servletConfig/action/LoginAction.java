package servletConfig.action;
import java.util.Map;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import servletConfig.dao.LoginDAO;
import servletConfig.interceptor.LoginDAOAware;
import servletConfig.model.UserInfo;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.interceptor.NoParameters;
public class LoginAction implements Action, Preparable, ModelDriven, LoginDAOAware
                                    , SessionAware, ServletRequestAware, RequestAware {
    //도메인 오브젝트
	UserInfo userInfo;
	LoginDAO dao;	
	Map sessionMap;
	Map requestMap;
	HttpServletRequest request;	
	Log log = LogFactory.getLog(LoginAction.class);		
	public String execute() throws Exception {
		//LoginDAO dao = new LoginDAO();				
		if (dao.loginChk(userInfo)) {
			sessionMap.put("userInfo", userInfo);
			log.info(">>>>>> requestURI : " + request.getRequestURI());
			log.info(">>>>>> request ID : " + requestMap.get("id").toString());
			log.info(">>>>>> request PWD : " + requestMap.get("pwd").toString());
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}	
	//Preparable인터페이스의 prepare 구현
	public void prepare() throws Exception {
		userInfo = new UserInfo();
	}	
	//ModelDriven 인터페이스의 getModel 구현
	public Object getModel() {
		return userInfo;
	}	
	//LoginDAUInterceptor에서 LoginDAO를 주입한다.
	public void setLoginDAO(LoginDAO loginDAO) {
	    this.dao = loginDAO;
	}	
	//SessionAware의 setSession 구현
	public void setSession(Map session) {
		this.sessionMap = session;
	}	
	//RequestAware의 setRequest 구현
	public void setRequest(Map requestMap) {
		this.requestMap = requestMap;
	}	
	//ServletRequestAware의 serServletRequest 구현
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}	
}
