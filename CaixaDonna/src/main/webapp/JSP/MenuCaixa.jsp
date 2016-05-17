<%-- 
    Document   : MenuCaixa
    Created on : 17/05/2016, 16:16:22
    Author     : Wallace
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Caixa</h2>
        <form>
            Valor: <input name="oper1">
            <br>
            Operação: <input name="op">
            <br>
            Operador 2: <input name="oper2">
            <br>
            <button>ENTRADA</button>
            <button>SAÍDA</button>
        </form>
        <%
            String oper1Str = request.getParameter("oper1");
            String opStr = request.getParameter("op");
            String oper2Str = request.getParameter("oper2");
            
            int oper1 = oper1Str == null ? 0 : Integer.parseInt(oper1Str);
            
            opStr = opStr == null ? "" : opStr;
            
            int oper2 = oper2Str == null ? 0 : Integer.parseInt(oper2Str);
            
            int resultado = 0;
            
            if (opStr.equals("+")) {
                resultado = oper1 + oper2;
            } else if (opStr.equals("-")) {
                resultado = oper1 - oper2;
            }
            
            out.print("Resultado: " + resultado);
        %>
    </body>
</html>
