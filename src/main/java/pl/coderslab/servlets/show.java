package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/show")
public class show extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try {
           int id = Integer.parseInt(request.getParameter("id"));
           User user = UserDao.read(id);
           request.setAttribute("user", user);
           getServletContext().getRequestDispatcher("/show.jsp").forward(request, response);
       }catch (NumberFormatException e){
           e.printStackTrace();
       }
        getServletContext().getRequestDispatcher("/show.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
