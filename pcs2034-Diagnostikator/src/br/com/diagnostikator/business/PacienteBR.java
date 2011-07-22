package br.com.diagnostikator.business;

import java.util.List;

import br.com.diagnostikator.dao.PacienteDAO;
import br.com.diagnostikator.model.Paciente;
import br.com.diagnostikator.util.DAOFactory;

public class PacienteBR {
	private PacienteDAO pacienteDAO;
	
	public PacienteBR(){
		pacienteDAO = DAOFactory.createPacienteDAO();
	}

	public Paciente getById(long id){
		return pacienteDAO.getById(id);
	}
	
	public Paciente getByCpf(String cpf){
		return pacienteDAO.getByCpf(cpf);
	}
	
	public void save(Paciente user){
		long id = user.getId();
		if(id == 0){
			pacienteDAO.save(user);
		}
		else{
			pacienteDAO.alter(user);
		}
	}
	
	public void delete(Paciente user) {
		pacienteDAO.delete(user);
	}
	
	public List<Paciente> list(){
		return pacienteDAO.list();
	}
}