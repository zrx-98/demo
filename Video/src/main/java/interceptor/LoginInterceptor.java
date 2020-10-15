package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zhiyou.model.User;

public class LoginInterceptor implements HandlerInterceptor{
	/**
	 * 在执行controller方法之前执行,如果返回true代表放行,如果返回false代表不放行。
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		if (user==null) {	//代表用户没有登陆
			response.sendRedirect("index.jsp"); //重定向到登录页面
			return false;	// 不让访问controller
		}
		return true;	// 如果没进入if表示登录了,可以访问controller
	}
	
	// controller代码执行完,但是还没有返回视图的时候
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("controller代码执行完,但是还没有返回视图的时候");
	}
	
	// 结合视图之后调用
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("结合视图之后调用");
	}

}
