<%@page import="com.emergentes.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("apuntes")==null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("apuntes", lisaux);
    }
    ArrayList<Tarea> apuntes = (ArrayList<Tarea>)session.getAttribute("apuntes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo.css">
    </head>
    <body>
        <h1 style="text-align:center">Tarea pendientes</h1>
        
        <table border="1" style="margin: 0 auto;" class="default" >
            <caption style="text-align:left"><a href="AgregaTarea.jsp">Nuevo</a></caption>
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th>         </th>
            </tr>
            <%
                if(apuntes !=null){
                    for(Tarea t : apuntes){      
            %>
            <tr>
                <td><%=t.getId()%></td>
                <td><%=t.getTarea()%></td>
                <td><input type="checkbox"></td>
                <td><a href="MainServlet?op=eliminar&id=<%=t.getId()%>">Eliminar</a></td>
            </tr>
            <%
                }
                }
            %>
            <caption align=bottom><button><a href="index.jsp">Salir</a></button></caption> 
        </table>
            
  <div class="wrapper">
    <div class="content">
      <p>Bienvenido a nuestro sitio Web</p>
      <div class="buttons">
        <button class="item">Aceptar</button>
        <a href="#" class="item">Avisos de cookie</a>
      </div>
    </div>
  </div>

  <script>

    const cookieBox = document.querySelector(".wrapper"), acceptBtn = cookieBox.querySelector("button");
    acceptBtn.onclick = ()=>{
      document.cookie = "Kevin=K; max-age="+86400;
      if(document.cookie){
        cookieBox.classList.add("hide");
        
      }else{
        alert("¡No se puede configurar la cookie! Desbloquee este sitio desde la configuración de cookies de su navegador.");
      }
    }

    let checkCookie = document.cookie.indexOf("Kevin=K");
    checkCookie != -1 ? cookieBox.classList.add("hide"): cookieBox.classList.remove("hide");

  </script>
  
    </body>
</html>
