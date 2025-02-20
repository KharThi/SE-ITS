/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class MainController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String GO_LOGOUT = "LogoutController";

    // --------------------- Admin Page -------------------------
    private static final String GO_DASHBOARD = "LoadAdminPageController";
    private static final String GO_EVENT = "LoadEventCategoryController";
    private static final String goEventPage = "LoadEventPageController";
    private static final String createEvent = "CreateEventController";
    private static final String deleteEvent = "DeleteEventController";
    private static final String goUpdateEvent = "LoadEventByIDController";

    // User
    private static final String GO_USER = "LoadUserPageController";
    private static final String DELETE_USER = "DeleteUserController";
    private static final String UPDATE_USER = "UpdateUserController";
    
    // Tư vấn
    private static final String GO_TuVan_ADMIN = "LoadTuVanPageController";
    
    
    // --------------------- User Page -------------------------
    // Event
    private static final String GO_EVENT_USER = "LoadEventUserPageController";
    private static final String GO_EVENT_ONLINE_USER = "LoadAllEventOnlController";
    private static final String GO_EVENT_OFFLINE_USER = "LoadAllEventOffController";
    private static final String GO_EVENT_DETAILS_USER = "LoadEventDetailController";

    // Apply Event
    private static final String APPLY_EVENT = "ApplyEventController";

    // Manage Event: Cancel Event
    private static final String GO_CANCEL_EVENT = "LoadAllEventToCancelController";
    private static final String CANCEL_EVENT = "CancelEventController";

    // News
    private static final String GO_NEWS_USER = "LoadNewsUserPageController";
    private static final String GO_NEWS_TAG_USER = "LoadAllNewsTagController";
    private static final String GO_NEWS_DETAILS_USER = "LoadNewsDetailController";

    // Recruitment   
    private static final String GO_RECRUITMENT_USER = "LoadRecruitmentUserPageController";
    private static final String GO_RECRUITMENT_READ_MORE_USER = "LoadAllRecruitmentController";
    private static final String GO_RECRUITMENT_DETAILS_USER = "LoadRecruitmentDetailController";

    // Tư vấn học tập:
    private static final String Go_TuVan = "AddInfoTuVanController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            // ------------------- Admin Page -------------------
            // Event:
            if ("goCreateEvent".equals(action)) {
                url = GO_EVENT;
            } else if ("Thêm sự kiện".equals(action)) {
                url = createEvent;
            } else if ("goEventPage".equals(action)) {
                url = goEventPage;
            } else if ("deleteEvent".equals(action)) {
                url = deleteEvent;
            } else if ("goUpdateEvent".equals(action)) {
                url = goUpdateEvent;
            } else if ("goDashBoard".equals(action)) {
                url = GO_DASHBOARD;
            } 
            // User:
            else if ("goUserPage".equals(action)) {
                url = GO_USER;
            }else if ("deleteUser".equals(action)) {
                url = DELETE_USER;
            }else if ("updateUser".equals(action)) {
                url = UPDATE_USER;
            }
            // Tư vấn
            else if ("goTuVanPage".equals(action)) {
                url = GO_TuVan_ADMIN;
            }
            
            // Logout:
            else if ("goLogout".equals(action)) {
                url = GO_LOGOUT;
            } 
            // ------------------- User Page -------------------
            else if ("applyEvent".equals(action)) {
                url = APPLY_EVENT;
            } 
            // Event:
            else if ("goEventUser".equals(action)) {
                url = GO_EVENT_USER;
            } else if ("goEventOnlReadMore".equals(action)) {
                url = GO_EVENT_ONLINE_USER;
            } else if ("goEventOffReadMore".equals(action)) {
                url = GO_EVENT_OFFLINE_USER;
            } else if ("goEventDetails".equals(action)) {
                url = GO_EVENT_DETAILS_USER;
            } else if ("goEventCancel".equals(action)) {
                url = GO_CANCEL_EVENT;
            } else if ("cancelEvent".equals(action)) {
                url = CANCEL_EVENT;
            } 
            // News:
            else if ("goNewsUser".equals(action)) {
                url = GO_NEWS_USER;
            } else if ("goNewsTagReadMore".equals(action)) {
                url = GO_NEWS_TAG_USER;
            } else if ("goNewsDetails".equals(action)) {
                url = GO_NEWS_DETAILS_USER;
            } // Recruitment:
            else if ("goRecruitmentUser".equals(action)) {
                url = GO_RECRUITMENT_USER;
            } else if ("goRecruitmentReadMore".equals(action)) {
                url = GO_RECRUITMENT_READ_MORE_USER;
            } else if ("goRecruitmentDetail".equals(action)) {
                url = GO_RECRUITMENT_DETAILS_USER;
            }// Tư vấn học tập:
            if ("TuVan".equals(action)) {
                url = Go_TuVan;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
