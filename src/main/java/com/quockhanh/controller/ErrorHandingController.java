package com.quockhanh.controller;

import com.quockhanh.model.ErrorHandingModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.Year;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(urlPatterns = {"/assign-05/order-reply"})
public class ErrorHandingController extends HttpServlet {
    private ErrorHandingModel errorHanding = new ErrorHandingModel("","","","","","");

    private Boolean checkMatches(String compareStr, String regex){
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(compareStr);
        return matcher.matches();
    }

    private Boolean checkMonth(String month, String year) {
        int m = 1, y = Year.now().getValue();
        try { m = Integer.parseInt(month); }
        catch (NumberFormatException e) { return false; }

        try { y = Integer.parseInt(year); }
        catch (NumberFormatException e) { return false; }

        if (y > Year.now().getValue()) { return true; }

        if (m < LocalDate.now().getMonthValue()) {
            return false;
        }

        return y == Year.now().getValue();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean orderFailed = false;
        String url = "";

        String orderQuantity = "", customerName = "", phoneNumber = "", customerEmail = "";
        String nameOnCard = "", creditNumber = "", expirationMonth = "", expirationYear = "";
        Double pricePerUnit = 9.55, totalCost = 0d;
        String processor = "", listAcc = "";

        try {
            orderQuantity = request.getParameter("order-quantity");
            customerName = request.getParameter("customer-name");
            phoneNumber = request.getParameter("customer-phone");
            customerEmail = request.getParameter("customer-email");

            nameOnCard = request.getParameter("credit-card-name");
            creditNumber = request.getParameter("credit-number");
            expirationMonth = request.getParameter("expiration-month");
            expirationYear = request.getParameter("expiration-year");

            Integer quantity;

            try { quantity = Integer.parseInt(orderQuantity); }
            catch (NumberFormatException e) { quantity = 0; }

            processor = request.getParameter("processor");
            processor = processor == null ? "Not select processor" : processor;

            String monitor = request.getParameter("chk-accessories");

            String[] accessories = request.getParameterValues("list-accessories");

            listAcc = monitor == null ? "" : "Monitor<br>";
            if (accessories != null) {
                for	(int i = 0; i < accessories.length; i++) {
                    listAcc += accessories[i] + "<br>";
                }
            }

            if (quantity == 0) {
                errorHanding.setQuantity("Please enter a number for quantity");
                orderFailed = true;
            }
            else { errorHanding.setQuantity(""); }

            if (customerName.isEmpty()) {
                errorHanding.setName("Please enter a number for quantity");
                orderFailed = true;
            }
            else { errorHanding.setName(""); }

            if(!checkMatches(phoneNumber, "\\d{3}-\\d{3}-\\d{4}")) {
                errorHanding.setPhoneNumber("You must enter a 10-digit phone number in format xxx-xxx-xxxx");
                orderFailed = true;
            }
            else { errorHanding.setPhoneNumber(""); }

            if (nameOnCard.isEmpty()){
                errorHanding.setNameOnCard("You must enter name on card");
                orderFailed = true;
            }
            else { errorHanding.setNameOnCard(""); }

            if(!checkMatches(creditNumber, "\\d{16}")) {
                errorHanding.setCreditNumber("Credit card number must be 16 digits");
                orderFailed = true;
            }
            else { errorHanding.setCreditNumber(""); }

            if(!checkMonth(expirationMonth, expirationYear)){
                errorHanding.setExpirationDate("Your card has expired");
                orderFailed = true;
            }
            else { errorHanding.setCreditNumber(""); }

            pricePerUnit = 9.55;
            totalCost = quantity * pricePerUnit;
        }
        catch(Exception e) {
            url = "/assign-05/order-error.jsp";
            request.setAttribute("errorMessage", "Error while process your input, please try again !");
            getServletContext().getRequestDispatcher(url).forward(request, response);
        }

        // reload data
        request.setAttribute("orderQuantity",orderQuantity);
        request.setAttribute("customerName",customerName);
        request.setAttribute("phoneNumber",phoneNumber);
        request.setAttribute("customerEmail",customerEmail);
        request.setAttribute("nameOnCard",nameOnCard);
        request.setAttribute("creditNumber",creditNumber);
        request.setAttribute("expirationMonth",expirationMonth);
        request.setAttribute("expirationYear",expirationYear);

        if (orderFailed) {
            url = "/assign-05/index.jsp";
            request.setAttribute("errorHanding", errorHanding);
        }
        else {
            url = "/assign-05/order-success.jsp";
            String contactInfo = "";
            if (!customerEmail.isEmpty()) {
                contactInfo = "You will shortly receive an email confirmation at <a href=\"mailto:"+ customerEmail+"\">"+customerEmail+"</a></p><p>";
            }
            contactInfo += "Please stay in touch with your phone <b>" + phoneNumber + "</b> to receive widgets";

            request.setAttribute("pricePerUnit", pricePerUnit);
            request.setAttribute("totalCost", totalCost);

            request.setAttribute("cardNumberPart1", creditNumber.substring(0, 4));
            request.setAttribute("cardNumberPart2", creditNumber.substring(4, 8));
            request.setAttribute("cardNumberPart3", creditNumber.substring(8, 12));
            request.setAttribute("cardNumberPart4", creditNumber.substring(12, 16));

            request.setAttribute("contactInfo", contactInfo);
            request.setAttribute("processor", processor);
            request.setAttribute("listAcc", listAcc);
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
