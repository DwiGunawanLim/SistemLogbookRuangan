/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Peminjaman;
import model.PeminjamanHome;

/**
 *
 * @author asus
 */
public class save_servlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        String id_peminjaman_r = request.getParameter("id_peminjaman_r");
        String id_user = request.getParameter("id_user");
        String id_ruangan = request.getParameter("id_ruangan");
        String cek_in = request.getParameter("cek_in");
        String cek_out = request.getParameter("cek_out");
        String keperluan = request.getParameter("keperluan");
        
        Peminjaman p = new Peminjaman();
        p.setId_peminjaman_r(id_peminjaman_r);
        p.setId_ruangan(id_ruangan);
        p.setId_user(id_user);
        p.setKeperluan(keperluan);
        p.setCek_in(cek_in);
        p.setCek_out(cek_out);
        
        int status = PeminjamanHome.save(p);
        if(status > 0) {
            response.sendRedirect("view/logbook.jsp");
        } else {
            out.println("Maaf! Data Gagal Disimpan");
        }
        out.close();
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
