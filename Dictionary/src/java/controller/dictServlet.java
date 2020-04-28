/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import utility.Helper;
import model.DictionaryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Entries;

public class dictServlet extends HttpServlet {
    DictionaryDAO dao = new DictionaryDAO();
    
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        List<Entries> entriesList = dao.SearchWord(request.getParameter("search"));
        String result = Helper.resultFormatting(entriesList);
        
        try (PrintWriter out = response.getWriter()) {
        
            out.println(result);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }    
       
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
   
        
    }
  
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
