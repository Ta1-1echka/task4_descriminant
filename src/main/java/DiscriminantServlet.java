import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.IOException;

/**
 * Created by Tanya on 20.10.2016.
 */
public class DiscriminantServlet extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        try {
            req.setAttribute("resp", "Некорректные данные. Вводите, пожалуйста, только цифры.");
            double a = Double.parseDouble(req.getParameter("a")), b = Double.parseDouble(req.getParameter("b")),
                    c = Double.parseDouble(req.getParameter("c"));
            if(a==0) {
                req.setAttribute("resp", "a не должно равняться 0. Т.к. это тогда линейное уравнение.");
                throw new NumberFormatException();
            }
            double d = Math.pow(b, 2) - 4 * a * c;
            double x1, x2;
            x1 = (-b + Math.pow(Math.abs(d), 0.5)) / (2 * a);
            x2 = (-b - Math.pow(Math.abs(d), 0.5)) / (2 * a);
            boolean i = false;
            if (d < 0) {
                i = true;
            }
            req.setAttribute("a", a);
            req.setAttribute("b", b);
            req.setAttribute("c", c);
            req.setAttribute("d", Math.abs(d));
            req.setAttribute("x1", x1);
            req.setAttribute("x2", x2);
            req.setAttribute("i", i);
            req.getRequestDispatcher("result.jsp").forward(req, res);
        } catch (NumberFormatException e) {
          //  req.setAttribute("resp", "Некорректные данные. Вводите, пожалуйста, только цифры.");
            req.getRequestDispatcher("index.jsp").forward(req, res);
        }

    }
}
