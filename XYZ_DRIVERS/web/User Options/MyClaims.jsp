<%-- 
    Document   : MyClaims
    Created on : 28-Nov-2016, 17:56:08
    Author     : TOBY WHITE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <table class="highlight">
                <tr><th>Amount(£)</th><th>Rationale</th><th>Date</th><th>Status</th></tr>
                
                  <!--    <%
                    List<Claim> claims = (List) session.getAttribute("claimList");

                    if (claims != null) {
                        Iterator<Claim> it = claims.iterator();

                        while (it.hasNext()) {
                            Claim claim = it.next();

                            out.println("<tr>");
                            out.println("<td>£" + claim.getAmount() + "</td>");
                            out.println("<td>" + claim.getRationale() + "</td>");
                            out.println("<td>" + claim.getClaimDate() + "</td>");
                            out.println("<td>" + claim.getStatus() + "</td>");
                            out.print("</tr>");

                        }
                    }
                %>    -->
                
      </table>
    </body>
</html>
