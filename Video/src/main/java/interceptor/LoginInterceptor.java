package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zhiyou.model.User;

public class LoginInterceptor implements HandlerInterceptor{
	/**
	 * ��ִ��controller����֮ǰִ��,�������true�������,�������false�������С�
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if (user==null) {	//�����û�û�е�½
			response.sendRedirect("index.jsp"); //�ض��򵽵�¼ҳ��
			return false;	// ���÷���controller
		}
		return true;	// ���û����if��ʾ��¼��,���Է���controller
	}
	
	// controller����ִ����,���ǻ�û�з�����ͼ��ʱ��
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("controller����ִ����,���ǻ�û�з�����ͼ��ʱ��");
	}
	
	// �����ͼ֮�����
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("�����ͼ֮�����");
	}

}
