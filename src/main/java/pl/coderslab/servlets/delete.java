package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User read = UserDao.read(id);
        request.setAttribute("user", read);
        getServletContext().getRequestDispatcher("/delete.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        if (request.getParameter("decision").equals("Yes")) {
            UserDao.delete(id);
            response.sendRedirect("/user/list");
        } else {
            response.sendRedirect("/user/show?id=" + id);
        }
    }
}
