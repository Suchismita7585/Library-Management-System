```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String action = request.getParameter("action");

boolean isDashboard = "viewDashboard".equals(action);
boolean isAssignBook = "showAssignBook".equals(action);
boolean isReturnBook = "showReturnBook".equals(action);
boolean isBooks = "allBookList".equals(action);
boolean isAddBook = "showAddBook".equals(action);
boolean isUsers = "allUserList".equals(action);
boolean isAddUser = "showAddUser".equals(action);
%>

<nav id="sidebarMenu"
    class="col-md-3 col-lg-2 d-md-block sidebar collapse">

    <div class="position-sticky sidebar-sticky">
        <ul class="nav flex-column">

            <li class="nav-item">
                <a class="nav-link <%= isDashboard ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/DashboardController?action=viewDashboard">
                    <i class="bi bi-speedometer2"></i> Dashboard
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link <%= isAssignBook ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/BookController?action=showAssignBook">
                    <i class="bi bi-arrow-right-circle"></i> Assign Book
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link <%= isReturnBook ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/BookController?action=showReturnBook">
                    <i class="bi bi-arrow-left-circle"></i> Return Book
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link <%= isBooks ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/BookController?action=allBookList">
                    <i class="bi bi-book"></i> Books
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link <%= isAddBook ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/BookController?action=showAddBook">
                    <i class="bi bi-plus-circle"></i> Add Book
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link <%= isUsers ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/UserController?action=allUserList">
                    <i class="bi bi-people"></i> Users
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link <%= isAddUser ? "active" : "" %>"
                   href="${pageContext.request.contextPath}/UserController?action=showAddUser">
                    <i class="bi bi-person-plus"></i> Add User
                </a>
            </li>

        </ul>
    </div>
</nav>
```