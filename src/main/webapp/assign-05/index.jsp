<%@ page import="java.time.Year" %><%--
  Created by IntelliJ IDEA.
  User: quockhanh
  Date: 14-Nov-20
  Time: 11:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Title and favicon icon-->
    <title>WP - Assignment 5 - Lam Quoc Khanh - 18110304</title>
    <link rel="icon" type="image/png" href="https://quockhanh.dev/favicon.png" />

    <!--Link Google Font-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
            rel="stylesheet">
    <!--Link Font Awesome-->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossOrigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!--Link Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!--Link My style-->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>
<div class="container">
    <div class="row">
        <!--Side bar menu-->
        <ul class="col-2 sidebar-menu">
            <li>
                <a href="https://quockhanh.dev" class="sidebar-item">
                    <i class="fal fa-home sidebar-icon"></i>
                    <span class="sidebar-text">Home</span>
                    <span class="sidebar-status"></span>
                </a></li>
            <li><a href="../assign-01" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 1</span>
            </a></li>
            <li><a href="../assign-02-1" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 2.1</span>
            </a></li>
            <li><a href="../assign-02-2" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 2.2</span>
            </a></li>
            <li><a href="../assign-03" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 3</span>
            </a></li>
            <li><a href="../assign-04" class="sidebar-item">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 4</span>
            </a></li>
            <li><a href="#" class="sidebar-item sidebar-item--active">
                <i class="fal fa-code sidebar-icon"></i>
                <span class="sidebar-text">Assignment 5</span>
            </a></li>
        </ul>

        <!--Main content-->
        <div class="col-10">
            <h1 class="title">Enter Your Information</h1>
            <!--Form input-->
            <form action="order-reply" method="get" class="container">
                <table class="table table-borderless">
                    <tbody>
                    <!--Quantity number-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="order-quantity">Number to purchase:</label>
                        </td>
                        <td>
                            <input type="number" min="1" class="input-focus" placeholder="at least 1" name="order-quantity" id="order-quantity" value="${orderQuantity}"/>
                        </td>
                        <td class="td-instruction">
                            <span class="instruction-request">*</span>
                        </td>
                    </tr>
                    <!--Quantity number error-->
                    <tr class="tr-input-error">
                        <td class="td-input-error"></td>
                        <td class="td-input-error">
                            <p class="p-input-error">${errorHanding.getQuantity()}</p>
                        </td>
                    </tr>
                    <!--Your name-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="customer-name">Your name:</label>
                        </td>
                        <td>
                            <input type="text" class="input-focus" name="customer-name" id="customer-name" value="${customerName}">
                        </td>
                        <td class="td-instruction"><span class="instruction-request">*</span></td>
                    </tr>
                    <!-- Name error -->
                    <tr class="tr-input-error">
                        <td class="td-input-error"></td>
                        <td class="td-input-error">
                            <p class="p-input-error">${errorHanding.getName()}</p>
                        </td>
                    </tr>
                    <!--Your phone-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="customer-phone">Your phone:</label>
                        </td>
                        <td>
                            <input type="text" class="input-focus" name="customer-phone" id="customer-phone" placeholder="in format xxx-xxx-xxxx" value="${phoneNumber}">
                        </td>
                        <td class="td-instruction"><span class="instruction-request">*</span></td>
                    </tr>
                    <!-- phone error -->
                    <tr class="tr-input-error">
                        <td class="td-input-error"></td>
                        <td class="td-input-error">
                            <p class="p-input-error">${errorHanding.getPhoneNumber()}</p>
                        </td>
                    </tr>
                    <!--Email-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="customer-email">Your email:</label>
                        </td>
                        <td>
                            <input type="email" class="input-focus" name="customer-email" id="customer-email" value="${customerEmail}">
                        </td>
                        <td class="td-instruction"><span style="margin-top: 12px;">(optical)</span></td>
                    </tr>
                    <!--Credit card info-->
                    <tr>
                        <td colspan="3">
                            <h4 class="sub-title">Credit card info</h4>
                        </td>
                    </tr>
                    <!--Name on card-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="credit-card-name">Name on card:</label>
                        </td>
                        <td>
                            <input type="text" class="input-focus" name="credit-card-name" id="credit-card-name" value="${nameOnCard}">
                        </td>
                        <td class="td-instruction"><span class="instruction-request">*</span></td>
                    </tr>
                    <!-- Name on card error -->
                    <tr class="tr-input-error">
                        <td class="td-input-error"></td>
                        <td class="td-input-error">
                            <p class="p-input-error">${errorHanding.getNameOnCard()}</p>
                        </td>
                    </tr>
                    <!--Credit card number-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="credit-number">Credit card number:</label>
                        </td>
                        <td>
                            <input type="text" class="input-focus" name="credit-number" placeholder="16 digits" id="credit-number" maxlength="16" value="${creditNumber}">
                        </td>
                        <td class="td-instruction"><span class="instruction-request">*</span></td>
                    </tr>
                    <!-- Credit card number error -->
                    <tr class="tr-input-error">
                        <td class="td-input-error"></td>
                        <td class="td-input-error">
                            <p class="p-input-error">${errorHanding.getCreditNumber()}</p>
                        </td>
                    </tr>
                    <!--Credit card expiration-date-->
                    <tr>
                        <td class="text-right td-label">
                            <label for="expiration-month">Expiration date:</label>
                        </td>
                        <td>
                            <select name="expiration-month" id="expiration-month" class="input-focus" style="width: calc(50% - 4px); display: inline-block" required>
                                <option value="1">January</option>
                                <option value="2">February</option>
                                <option value="3">March</option>
                                <option value="4">April</option>
                                <option value="5">May</option>
                                <option value="6">June</option>
                                <option value="7">July</option>
                                <option value="8">August</option>
                                <option value="9">September</option>
                                <option value="10">October</option>
                                <option value="11">November</option>
                                <option value="12">December</option>
                            </select>
                            <select name="expiration-year" id="expiration-year" class="input-focus" style="width: 50%; display: inline-block" required>
                                <%  int currentYear = Year.now().getValue();
                                    for (int i = 0; i < 20; i++) { %>
                                <option value="<%=currentYear + i%>"><%=currentYear + i%></option>
                                <%  } %>
                            </select>
                        </td>
                        <td class="td-instruction"><span class="instruction-request">*</span></td>
                    </tr>
                    <!-- Credit expiration-date error-->
                    <tr class="tr-input-error">
                        <td class="td-input-error"></td>
                        <td class="td-input-error">
                            <p class="p-input-error">${errorHanding.getExpirationDate()}</p>
                        </td>
                    </tr>
                    <!--Select computer hardware-->
                    <tr>
                        <td colspan="3">
                            <h4 class="sub-title text-left" style="margin-left: 9.5rem; margin-top: 3rem; margin-bottom: -1rem;">Select computer hardware</h4>
                        </td>
                    </tr>
                    <!---->
                    <tr>
                        <td>
                            <h6 class="sub-title text-right">Processor</h6>
                        </td>
                        <td>
                            <h6 class="sub-title text-left" style="margin-left: 50px;">Accessories</h6>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="col">
                                <div class="row">
                                    <div class="col text-right">
                                        <input type="radio" name="processor" id="celeron-d" value="Celeron D">
                                        <label for="celeron-d">Celeron D  </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col text-right">
                                        <input type="radio" name="processor" id="pentium-iv" value="Pentium IV">
                                        <label for="pentium-iv">Pentium IV</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col text-right">
                                        <input type="radio" name="processor" id="pentium-d" value="Pentium D">
                                        <label for="pentium-d">Pentium D  </label>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="col" style="margin-left: 35px;">
                                <div class="row">
                                    <div class="col text-left">
                                        <input type="checkbox" name="chk-accessories" id="chk-accessories">
                                        <label for="chk-accessories">Monitor</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col text-left">
                                        <select multiple class="chosen-select input-focus" name="list-accessories" style="width: 250px;">
                                            <option>Camera</option>
                                            <option>Printer</option>
                                            <option>Scanner</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <!--Button submit-->
                    <tr>
                        <td class="text-right"></td>
                        <td><input type="submit" value="CONFIGURE" class="btn btn-primary"></td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>

<!--Float button back to home-->
<a href="https://quockhanh.dev/#assignment" class="btn-float" rel="tooltip" title="Back to home page" >
    <i class="fa fa-home icon-btn-float"></i>
</a>

<!--Footer-->
<footer class="footer">
    <div class="container text-center">
        <a class="cc-facebook btn btn-link" target="blank" href="http://facebook.com/profile.php?id=100004367534716"
           rel="tooltip" title="Follow me on Facebook">
            <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-github btn btn-link" target="blank" href="https://github.com/quockhanhtn" rel="tooltip"
           title="Follow me on Github">
            <i class="fa fa-github fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-linkedin btn btn-link" target="blank" href="https://www.linkedin.com/in/lamquockhanh"
           rel="tooltip" title="Connect me on LinkedIn">
            <i class="fa fa-linkedin fa-2x" aria-hidden="true"></i>
        </a>
        <a class="cc-youtube btn btn-link" target="blank"
           href="https://www.youtube.com/channel/UCmhjCVQCe69Z68Fc6zsifAQ" rel="tooltip"
           title="Subscribe me on Youtube">
            <i class="fa fa-youtube fa-2x " aria-hidden="true"></i>
        </a>
    </div>
    <div class="text-center text-muted">
        <p>
            &copy; 2020 Lâm Quốc Khánh (18110304). All rights reserved.<br>
            Web app hosting by <a class="credit" href="https://www.heroku.com/home">Heroku</a><br>
        </p>
    </div>
</footer>

<script>
    // UpperCase first character of each word in Input name
    ((document) => {
        let $txtCustomerName = document.getElementById('customer-name');
        let $txtNameOnCard = document.getElementById('credit-card-name');

        function capitalize_Words(str) { return str.replace(/\w\S*/g, function (txt) { return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase(); }); }
        function changeValue() { $txtCustomerName.value = capitalize_Words($txtCustomerName.value).replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '').replace(/ +(?= )/g, ''); }
        function upperNameOnCardValue() { $txtNameOnCard.value = capitalize_Words($txtNameOnCard.value).replace(/[`~!@#$%^&*()_|+\-=?;:'",.<>\{\}\[\]\\\/]/gi, '').replace(/ +(?= )/g, '').toUpperCase(); }

        $txtCustomerName.addEventListener('keydown', changeValue, false);
        $txtCustomerName.addEventListener('keyup', changeValue, false);
        $txtCustomerName.addEventListener('keypress', changeValue, false);

        $txtNameOnCard.addEventListener('keydown', upperNameOnCardValue, false);
        $txtNameOnCard.addEventListener('keyup', upperNameOnCardValue, false);
        $txtNameOnCard.addEventListener('keypress', upperNameOnCardValue, false);
    })(document);
</script>
</body>
</html>
