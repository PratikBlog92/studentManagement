<%@page import="java.time.LocalDate"%>
<%@page import="pojoClass.studentPojo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>Data Council Recept</title>
    
    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 40px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
    }
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>

<body>
<%
	studentPojo stud = (studentPojo)session.getAttribute("student");
	if(stud != null)
	{
		
%>
    <div class="invoice-box">
        <table cellpadding="0" cellspacing="0">
            <tr class="top">
                <td colspan="2">
                    <table>
                        <tr>
                            <td class="title">
                                <img src="https://www.datacouncil.in/images/logo2.png" style="width:100%; max-width:300px;">
                            </td>
                            
                            <td>
                                Installment 1<br>
                                Created: <%=LocalDate.now() %><br>
                                Next Installment: <%=stud.getNextInstallment() %>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr class="information">
                <td colspan="2">
                    <table>
                        <tr>
                            <td>
                                <%=stud.getName() %><br>
                                <%=stud.getEmail()%><br>
                                <%=stud.getMobile() %>
                            </td>
                            
                            <td>
                                Data Council<br>
                                Above Jijamata Bank<br>
                                atharv11@gmail.com
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
           <!--  <tr class="heading">
                <td>
                    Payment Method
                </td>
                
                <td>
                    Check #
                </td>
            </tr>
            
            <tr class="details">
                <td>
                    Check
                </td>
                
                <td>
                    1000
                </td>
            </tr> -->
            
            <tr class="heading">
                <td>
                    Cource
                </td>
                
                <td>
                    Price
                </td>
            </tr>
            
            <tr class="item">
                <td>
                    <%=stud.getCource() %>
                </td>
                
                <td>
                    <%=stud.getTotalFee() %>
                </td>
            </tr>
            
            
             <tr class="item">
                <td>
                    Installment 1
                </td>
                
                <td>
                   <%=stud.getInstallment1() %>
                </td>
            </tr>
            
            <%
            	if(stud.getInstallment2() != 0)
            	{
            %>
            <tr class="item">
                <td>
                    Installment 2
                </td>
                
                <td>
                   <%=stud.getInstallment2() %>
                </td>
            </tr>
            <%}
            	if(stud.getInstallment3() != 0)
            	{
            %>
            <tr class="item">
                <td>
                    Installment 3
                </td>
                
                <td>
                   <%=stud.getInstallment3() %>
                </td>
            </tr>
            <% } 
            if(stud.getInstallment4() != 0)
            {
           %>
            <tr class="item">
                <td>
                    Installment 4
                </td>
                
                <td>
                   <%=stud.getInstallment4() %>
                </td>
            </tr>
            <%
            	}
            
            	if(stud.getInstallment5() != 0)
            	{
            %>
            <tr class="item last">
                <td>
                    Installment 5
                </td>
                
                <td>
                   <%=stud.getInstallment5() %>
                </td>
            </tr>
            <%
            	}
            %>
            
           <!--  <tr class="item last">
                <td>
                    Domain name (1 year)
                </td>
                
                <td>
                    $10.00
                </td>
            </tr>
              -->
            <tr class="total">
                <td></td>
                
                <td>
                   <%= stud.getTotalFee()%>
                </td>
            </tr>
            
             <tr class="heading">
                <td>
                    Balance
                </td>
                
                <td>
                    <%=stud.getBallence() %>
                </td>
            </tr>
            <tr class="heading">
                <td>
                    Next Installment
                </td>
                
                <td>
                    <%=stud.getNextInstallment() %>
                </td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            
            <tr>
            	<td></td>
            </tr>
            
            <tr>
            	<td></td>
            </tr>
            
            <tr>
            	<td></td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            <tr>
            	<td></td>
            </tr>
            
            
            <tr class="item">
                <td>
                    
                </td>
                
                <td>
                   Signature
                </td>
            </tr>
        </table>
      <center> <button onclick="print1();"style="margin-top: 20px;border-radius: 5px;background-color: aqua; ">Print</button></center> 
    </div>
    <%
	}
    %>
   <script type="text/javascript">
   function print1() {
	print();
}
   </script>
    
</body>
</html>