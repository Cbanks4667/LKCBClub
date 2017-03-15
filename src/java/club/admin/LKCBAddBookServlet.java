/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package club.admin;

import club.business.Book;
import club.data.BookIO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cbanks4667
 */
public class LKCBAddBookServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String errorMessage = "";
        String strCode  = request.getParameter("txtCode");
        String strDescription = request.getParameter("txtDescription");
        String strQuantity = request.getParameter("txtQuantity");
        
        if(strCode.trim() == "" || strCode == null)
        {
            errorMessage += "Book code is required <br>";
        }
        
        if(strDescription.length() < 2)
        {
            errorMessage += "Description must have at least 2 characters <br>";            
        }
        int quantity = 0;
        if(strQuantity.trim() != "")
        {
            quantity = Integer.parseInt(strQuantity);
        }
        if(quantity < 1)
        {
            errorMessage += "Quantity must be a positive number";
        }     
    
       if(errorMessage == "")
       {
        Book book = new Book();   
        book.setCode(strCode);
        book.setDescription(strDescription);       
        book.setQuantity(quantity);   
        ServletContext context = getServletContext();
        String path = context.getRealPath("/WEB-INF/books.txt"); 
       try{
            BookIO.insert(book,path);
          }catch(Exception e)
          {
              File myFile = new File(path);
              myFile.createNewFile();
              BookIO.insert(book,path);
          }
       
        String url = "/LKCBDisplayBooks";
        context.getRequestDispatcher(url).forward(request, response);
       }
       else
       {
            Book book = new Book();   
            book.setCode(strCode);
            book.setDescription(strDescription);       
            
            ServletContext context = getServletContext();
            String url = "/LKCBAddBook.jsp";
            request.setAttribute("book",book);
            request.setAttribute("quantity", strQuantity);
            request.setAttribute("message", errorMessage);          
            context.getRequestDispatcher(url).forward(request, response);
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
