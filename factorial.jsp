<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html xml:lang>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo de Potencias en página JSP </title>
    </head>
    <body>
        <h1>Cálculo de Potencias</h1>

        <form action="factorial.jsp" method="POST">
            <label> Ingrese la base de la potencia</label>
            <input type="number" name="base" step="any"><br>
            <label> Ingrese el exponente de la potencia</label>
            <input type="number" name="exponente" step="any"><br>
            <input type="submit" name="calcular" value="Calcular"></p>
        </form>

        <%
        
            if (request.getParameter("calcular") != null) {
                float b, e, potencia=1;
                b = Float.parseFloat(request.getParameter("base"));
                e = Float.parseFloat(request.getParameter("exponente"));
                for (int i=1; i<=e; i++) {
                    potencia = (potencia * b);
                }
                out.println("<b>Resultado: " + potencia + "</b>");

            }

            else {
                    out.println("<p>Ingrese el valor de la base y el exponente de la potencia que desea calcular.</p>");
            }
        %>
            
    </body>
</html>