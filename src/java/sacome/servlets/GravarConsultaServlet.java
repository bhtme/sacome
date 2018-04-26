/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sacome.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import sacome.beans.Consulta;
import sacome.beans.Paciente;
import sacome.dao.ConsultaDAO;
import sacome.dao.PacienteDAO;
import sacome.forms.AddConsultaFormBean;
import sacome.forms.AddPacienteFormBean;

/**
 *
 * @author tulio
 */

@WebServlet(name = "GravarConsultaServlet", urlPatterns = {"/paciente/gravarConsulta"})
public class GravarConsultaServlet extends HttpServlet {

    @Resource(name="jdbc/sacomeDBlocal")
    DataSource dataSource;
    
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
        AddConsultaFormBean npfb = (AddConsultaFormBean) request.getSession().getAttribute("novaConsulta");
        request.getSession().removeAttribute("novaConsulta");
        
        ConsultaDAO udao = new ConsultaDAO(dataSource);

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date dataConsulta = null;
        try {
            dataConsulta = sdf.parse(npfb.getDataConsulta());
        } catch (ParseException e) {
            request.setAttribute("mensagem", e.getLocalizedMessage());
            request.getRequestDispatcher("erro.jsp").forward(request, response);
        }
        try {
            Consulta u = new Consulta();
            u.setCpf(npfb.getCpf());
            u.setCrm(npfb.getCrm());
            u.setDataConsulta(dataConsulta);
           
            u = udao.gravarConsulta(u);
           
            request.setAttribute("mensagem", "Consulta agendada com sucesso!");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("mensagem", e.getLocalizedMessage());
            request.getRequestDispatcher("erro.jsp").forward(request, response);
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
