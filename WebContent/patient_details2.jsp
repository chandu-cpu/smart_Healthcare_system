<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<html>
<style type="text/css">
<!--
.style1 {color: #0000FF}
-->
</style>
<body>

          <p>
		  
		  <table width="1113" border="1" align="center" cellspacing="0" cellpadding="5">
  <tr>
    <td width="47" bgcolor="#99CC00"><div align="center" class="style6 style1">Id</div></td>
    <td width="72" bgcolor="#99CC00"><div align="center" class="style6 style1">Patient Name </div></td>
	<td width="87" bgcolor="#99CC00"><div align="center" class="style6 style1">IOT Device(Uploader) </div></td>
    <td width="78" bgcolor="#99CC00"><div align="center" class="style6 style1">Address</div></td>
    <td width="62" bgcolor="#99CC00"><div align="center" class="style6 style1">Date of Birth</div></td>
    <td width="51" bgcolor="#99CC00"><div align="center" class="style6 style1">Email</div></td>
	<td width="59" bgcolor="#99CC00"><div align="center" class="style6 style1">Mobile</div></td>
	<td width="42" bgcolor="#99CC00"><div align="center" class="style6 style1">Age</div></td>
	<td width="66" bgcolor="#99CC00"><div align="center" class="style6 style1">Hospital</div></td>
	<td width="63" bgcolor="#99CC00"><div align="center" class="style6 style1">Disease</div></td>
	<td width="57" bgcolor="#99CC00"><div align="center" class="style6 style1">Blood Group</div></td>
	<td width="79" bgcolor="#99CC00"><div align="center" class="style6 style1">Symptoms</div></td>
	<td width="32" bgcolor="#99CC00"><div align="center" class="style6 style1"> Rank</div></td>
	<td width="98" bgcolor="#99CC00"><div align="center" class="style6 style1"> Patient File </div></td>
	
  </tr>

	<%
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13,s14,s15,s16,s17,s18;
		int i = 0, j = 0, k = 0;
        

		try {

			String query = "select * from patient_details ";
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				i = rs.getInt(1);
				s2 = rs.getString(2);
				s3 = rs.getString(3);
				s4 = rs.getString(4);
				s5 = rs.getString(5);
				s6 = rs.getString(6);
				s7 = rs.getString(7);
				s8 = rs.getString(8);
				s9 = rs.getString(9);
				s10 = rs.getString(10);
				s11 = rs.getString(11);
				s12 = rs.getString(12);
				s13 = rs.getString(13);
				s14 = rs.getString(14);//img
				s15 = rs.getString(15);
				s16 = rs.getString(16);//on
				s17 = rs.getString(17);
				s18 = rs.getString(18);//down_rank
				
				                                String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
						   String decrys3 = new String(Base64.decode(s3.getBytes()));
						   String decrys4 = new String(Base64.decode(s4.getBytes()));
						   String decrys5 = new String(Base64.decode(s5.getBytes()));
						   String decrys6 = new String(Base64.decode(s6.getBytes()));
						   String decrys7 = new String(Base64.decode(s7.getBytes()));
						   String decrys8 = new String(Base64.decode(s8.getBytes()));
						   String decrys9 = new String(Base64.decode(s9.getBytes()));
						   String decrys10 = new String(Base64.decode(s10.getBytes()));
						   String decrys11 = new String(Base64.decode(s11.getBytes()));
						   String decrys12= new String(Base64.decode(s12.getBytes()));
						   String decrys13 = new String(Base64.decode(s13.getBytes()));

	%>

	<tr>
		<td height="29">
		<div align="center" class="style8"><%=i%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s2%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s16%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s3%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s4%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s5%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s6%></div>		</td>
		<td height="29">
		<div align="center" class="style8"><%=s7%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s8%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s9%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s10%></div>		</td>
		<td>
		<div align="center" class="style8"><%=s11%></div>		</td>
		
		<td>
		<div align="center" class="style8"><%=s18%></div>		</td>
		<td>
		<div align="center" class="style8"><a href="cs_view_file.jsp?fname=<%=s12%>&pname=<%=s2%>"><%=decrys12%></a></div>		</td>
	</tr>

	<%
		}

			connection.close();
		}

		catch (Exception e) {
		//	out.println(e.getMessage());
		}
	%>
</table>
		  
		  
</body>
</html>
