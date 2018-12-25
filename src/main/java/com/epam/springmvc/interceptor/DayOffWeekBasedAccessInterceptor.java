package com.epam.springmvc.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Calendar;

public class DayOffWeekBasedAccessInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Calendar calendar = Calendar.getInstance();
        int dayOfWeek = calendar.get(calendar.DAY_OF_WEEK);

        if(dayOfWeek == 2) {
            //response.sendRedirect("/interceptorpage.jsp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/interceptorpage.jsp");
            dispatcher.forward(request,response);
            //response.sendRedirect не может перенаправить на страницы папки WEB-INF
            return false; //doesnt go to controller
        }

        return true; // goes to controller
    }
}
