package email;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import notification.paymentNotification;
import pojoClass.studentPojo;

public class sendMail {

	
	public static boolean mailSend(List<studentPojo> al)
	{
		
		String username = "pavanacampagin@gmail.com";
		String password ="pavanalake";
		
		String from = "pavanacampagin@gmail.com";
		String to = "pavanacampagin@gmail.com";
				
		/* Taking Enquiry */
		
		StringBuilder sb = new StringBuilder();
		String str =null;
		for(studentPojo s : al)
		{
			str = s.getName()+" "+s.getEmail()+" "+s.getMobile()+" "+s.getCource()+ "\n";
			sb.append(str);
			
		}
		
		
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,password);
				}
			});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
			//message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(to));
			message.setSubject("Enquiry : Pavana Campagin");
			message.setText(sb.toString());

			Transport.send(message);

			System.out.println("Done");
			
			//response.sendRedirect("/pav/index.html");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		

		
		
		return true;
	}
}
