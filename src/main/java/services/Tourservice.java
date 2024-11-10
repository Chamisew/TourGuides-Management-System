package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.Tour;
import model.Tourguide;
import utils.DBConnect;

public class Tourservice {
	public void addTour(Tour t) {
		try {
			String query="insert into ttour values('"+t.getFname()+"','"+t.getPhone()+"','"+t.getTname()+"','"+t.getLang()+"','"+t.getPmethod()+"','"+t.getEname()+"','"+t.geteRelation()+"','"+t.getPhone()+"','"+t.getEmail()+"')";
			
			Statement statement =DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}
	
	
	
	
	public boolean validate(Tour tl) {
		try {
			
			String query="select* from reglogin where email='"+tl.getEmail()+"' and password='"+tl.getPassword()+"'";
			
			Statement statement=DBConnect.getConnection().createStatement();
			
			ResultSet rs=statement.executeQuery(query);
		
			if(rs.next()) {
				return true;
			}
		
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return false;
		
	}
	
	
	
	
public void updateTour(Tour tour) {
		try {
			String query="update ttour set fullname='"+tour.getFname()+"',number='"+tour.getPhone()+"',tgname='"+tour.getTname()+"',tlang='"+tour.getLang()+"',pmeth='"+tour.getPmethod()+"',ename='"+tour.getEname()+"',erelate='"+tour.geteRelation()+"',ephone='"+tour.getPhone()+"',email='"+tour.getEmail()+"' where email='"+tour.getEmail()+"'";
			
			Statement statement=DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}



public void deleteTour(Tour td) {
	try {
		String query="delete from ttour where email='"+td.getEmail()+"'";
		Statement statement=DBConnect.getConnection().createStatement();
		statement.executeUpdate(query);
		
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
}


public ArrayList<Tourguide> showtourguide() {
	try {
		ArrayList<Tourguide> listtg=new ArrayList<Tourguide>();
		
		String query="select* from tourguide";
		
		Statement statement=DBConnect.getConnection().createStatement();
		
		ResultSet rs=statement.executeQuery(query);
	
		while(rs.next()) {
			
			Tourguide tgl=new Tourguide();
			
			tgl.setTougID(rs.getString("TourguideID"));
			tgl.setName(rs.getString("Name"));
			tgl.setSpokLang(rs.getString("LanguageSpoken"));
	     	tgl.setContact(rs.getString("ContactInfo"));
			
			listtg.add(tgl);
			
			
			
		}
		return listtg;
	
	} catch (Exception e) {
		e.printStackTrace();
		return null;
		// TODO: handle exception
	}
	
	
}


public List<Tour> getUserToursByEmail(String userEmail) {
    List<Tour> tourList = new ArrayList<>();
    try (java.sql.Connection connection = DBConnect.getConnection();
         java.sql.PreparedStatement statement = connection.prepareStatement("SELECT * FROM ttour WHERE email = ?")) {
        statement.setString(1, userEmail);
        ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            Tour tour = new Tour();
            // Set tour properties from ResultSet
            tour.setFname(rs.getString("fullname"));
		    tour.setEmail(rs.getString("email"));
		    tour.setPhone(rs.getString("number"));
		    tour.setTname(rs.getString("tgname"));
		    tour.setLang(rs.getString("tlang"));
		    tour.setPmethod(rs.getString("pmeth"));
		    tour.setEname(rs.getString("ename"));
		    tour.seteRelation(rs.getString("erelate"));
		    tour.seteNumber(rs.getString("ephone"));
		
            tourList.add(tour);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return tourList;
}
}

	

