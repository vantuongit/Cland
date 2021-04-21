package edu.vinaenter.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import edu.vinaenter.model.Contact;

@Repository
public class ContactDAO extends AbstractDAO<Contact> {
	
	@Override
	public List<Contact> getAll(){
		final String SQL = "SELECT * FROM vnecontact ORDER BY ct_id DESC";
		return jdbcTemplate.query(SQL, new BeanPropertyRowMapper<>(Contact.class));
	}
	
	@Override
	public int del(int id) {
		final String SQL = "DELETE FROM vnecontact WHERE ct_id = ?";
		return jdbcTemplate.update(SQL, id);
	}
	
	@Override
	public int save(Contact t) {
		final String SQL = "INSERT INTO vnecontact (ct_fullname, ct_email, ct_subject, ct_content) VALUES (?,?,?,?)";
		return jdbcTemplate.update(SQL, t.getCt_fullname(), t.getCt_email(), t.getCt_subject(), t.getCt_content());
	}
}
