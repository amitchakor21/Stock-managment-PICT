<%@page import="com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>

<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>  
<%@page import="java.time.LocalDateTime"%>    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lab Incharge</title>
</head>
<body>
<%
response.setContentType("application/pdf");
Document document = new Document();
PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
document.open();
Paragraph p = new Paragraph();
p.add("Deadstock Report");
p.setAlignment(Element.ALIGN_CENTER);
document.add(p);
Paragraph p2 = new Paragraph();
Paragraph p5 = new Paragraph();
p5.setAlignment(Element.ALIGN_RIGHT);
 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
   LocalDateTime now = LocalDateTime.now(); 
   p5.add("Date:");
 p5.add(dtf.format(now));
document.add(p5);
//String dsr=request.getParameter("dsr"); 
String lab=request.getParameter("demo"); 
//String stat=request.getParameter("radio");
Font f1 = new Font();
f1.setStyle(Font.BOLD);
f1.setSize(15);
//f1.setColor(BaseColor.WHITE);
Font f = new Font();
f.setStyle(Font.BOLD);
f.setSize(8);
f.setColor(BaseColor.WHITE);
p2.add("Transfer register  for lab : "); //no alignment
p2.add(lab+ "\n");
p2.setAlignment(Element.ALIGN_CENTER);
document.add(p2);
Paragraph p3 = new Paragraph();
p3.add("\n");
document.add(p3);



 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("SELECT * from transfer where from_lab="+lab+"  ");

PdfPTable table = new PdfPTable(new float[] { 2, 2, 2,3 ,3,3});
table.setWidthPercentage(100);
	  table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
	  table.addCell(new Phrase("DSR No",f));
          table.addCell(new Phrase("user",f));
          table.addCell(new Phrase("Date of transfer",f));
           table.addCell(new Phrase("Time of transfer",f));
          table.addCell(new Phrase("From Lab",f));
          table.addCell(new Phrase("To Lab",f));
          
	  table.setHeaderRows(1);
	  PdfPCell[] cells = table.getRow(0).getCells(); 
	  for (int j=0;j<cells.length;j++){
	     cells[j].setBackgroundColor(BaseColor.GRAY);
             
	  }
         if (rs.next() == false) 
         {
                    Paragraph p9 = new Paragraph();
                     p9.setAlignment(Element.ALIGN_CENTER);
                    p9.add(new Phrase("\nNo any Exsisting record of this type.",f1));
                    document.add(p9);
      } else {
          do
          {
              
              table.addCell(rs.getString(1));
              table.addCell(rs.getString(2));
              table.addCell(rs.getString(3));
              table.addCell(rs.getString(4));
              table.addCell(rs.getString(5));
              table.addCell(rs.getString(6));
             
          }while(rs.next());
                
 
 document.add(table);
         }
 
         
Paragraph p7 = new Paragraph();
p7.add("\n\n");
document.add(p7);
PdfPTable table2 = new PdfPTable(new float[] { 2, 2,2});
table2.setWidthPercentage(100);
 PdfPCell cellOne = new PdfPCell(new Phrase("Name and Sign of Lab Assistant"));
PdfPCell cellTwo = new PdfPCell(new Phrase("Name and Sign of \nLab Incharge"));
PdfPCell cellThree = new PdfPCell(new Phrase("Name and Sign of stock verification comitee members"));
cellOne.setBorder(Rectangle.NO_BORDER);
cellTwo.setBorder(Rectangle.NO_BORDER);
cellThree.setBorder(Rectangle.NO_BORDER);
table2.addCell(cellOne);
              table2.addCell(cellTwo);
              table2.addCell(cellThree);
document.add(table2);
document.close();
%>
</body>
</html>
