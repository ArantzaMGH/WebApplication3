<%-- 
    Document   : rolUsuarioList
    Created on : 12/05/2022, 01:56:02 PM
    Author     : Alumno
--%>

<%@page import="org.gerdoc.helper.RolUsuarioHelper"%>
<%@page import="org.gerdoc.dao.RolUsuario"%> 
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>rolUsuario List</title>
    </head>
    
        <div class="container-fluid p-5 bg-primary text-white text-center">
            Lista rolUsuario
        </div>
        <div class="container mt-4"> 
            <%
                if( request == null )
                {
                    return;
                }
                String action = request.getParameter( "action" );
                if( action == null )
                {
                    action = "";
                }
                switch( action )
                {
                    case "nuevo":
            %>
                        <jsp:include page="RolUsuarioForm.jsp" />
            <%
                        break;
                    case "send":
                        if( new RolUsuarioHelper( ).addRolUsuario(request) )
                        {
                            response.sendRedirect("RolUsuarioList.jsp");
                        }
                        break;
                    default:
            %>
                        <jsp:include page="RolUsuarioTable.jsp" />
            <%
                }
            %>
        
        </div>
</html>
