
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<marquee direction="up" behavior="scroll"  height="300px" onmousemove="this.stop()" onmouseout="this.start()" scrollamount="6">
    <ul style="list-style:none;">
        <%
            String cmd = "select * from notification";
            DbManager db = new DbManager();
            ResultSet rs = db.selectQuery(cmd);
            while (rs.next()) {
        %>
        <li><img src="images/NEWIMG.gif"/><%=rs.getString("ntext")%></li>
            <%
                }
            %>
    </ul>

</marquee>
