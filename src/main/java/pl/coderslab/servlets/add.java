package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class add extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String addName = request.getParameter("addName");
        String addEmail = request.getParameter("addEmail");
        String addPass = request.getParameter("addPass");
        if (!addEmail.isEmpty()&& !addName.isEmpty()) {
            User user = new User(addName,addEmail,addPass);
            UserDao.create(user);
            response.sendRedirect("/user/list");
        } else {
            response.sendRedirect("/user/add");
        }
    }
}