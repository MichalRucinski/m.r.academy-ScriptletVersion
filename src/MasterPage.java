
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import beans.User;
import database.Sorter;
import database.Student;

/**
 * Servlet implementation class MasterPage
 */
@WebServlet("/MasterPage")
public class MasterPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MasterPage() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {

		try {
			InitialContext initContext = new InitialContext();

			Context env = (Context) initContext.lookup("java:comp/env");

			ds = (DataSource) env.lookup("jdbc/m.r.academy");

		} catch (NamingException e) {
			throw new ServletException();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");

		if (user != null && user.isLoggedIn() == true && user.getLogin().equals("Lothav")) {

			Connection conn = null;

			try {
				conn = ds.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return;
			}

			Sorter sorter = new Sorter(conn);
			ArrayList<String> instrumentsList = new ArrayList<String>();
			instrumentsList.add("piano");
			instrumentsList.add("keyboard");
			instrumentsList.add("guitar");

			try {
				ArrayList<Student> studentsList = sorter.getList(instrumentsList);
				request.setAttribute("studentsList", studentsList);
				request.getRequestDispatcher("/masterschamber.jsp").forward(request, response);

			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return;
			}
		} else {
			PrintWriter out = response.getWriter();
			out.print("You are not logged in!");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String login = request.getParameter("student");
		String text = request.getParameter("notes");

		HttpSession session = request.getSession(true);
		User user = (User) session.getAttribute("user");

		if (user != null && user.isLoggedIn() == true && user.getLogin().equals("Lothav")) {

			Connection conn = null;

			try {
				conn = ds.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return;
			}

			Sorter sorter = new Sorter(conn);

			if (text == null) {

				try {
					Student student = sorter.getStudent(login);
					request.setAttribute("currentStudent", student);
					request.getRequestDispatcher("/masterschamber.jsp").forward(request, response);

				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
			} else {
				
				try {
					sorter.setText(login, text);
					Student student = sorter.getStudent(login);
					request.setAttribute("currentStudent", student);
					request.getRequestDispatcher("/masterschamber.jsp").forward(request, response);

				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return;
			}
		} else {
			PrintWriter out = response.getWriter();
			out.print("You don't have rights to do that!");

		}

	}

}
