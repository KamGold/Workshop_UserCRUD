package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User user = UserDao.read(id);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String editName = request.getParameter("editName");
        String editEmail = request.getParameter("editEmail");
        String editPass = request.getParameter("editPass");
       if (!editName.isEmpty() && !editPass.isEmpty()) {
           int id = Integer.parseInt(request.getParameter("id"));
           User user = new User(id, editName, editEmail, editPass);
           UserDao.update(user);
           response.sendRedirect("/user/show?id=" + id);
       }else {
           int id = Integer.parseInt(request.getParameter("id"));
           User user = UserDao.read(id);
           request.setAttribute("user", user);
           getServletContext().getRequestDispatcher("/edit.jsp").forward(request, response);
       }
    }
}
