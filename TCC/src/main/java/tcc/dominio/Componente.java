package tcc.dominio;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Componente {
	@Id
	private int idComponente;
	
	@Column(nullable = false)
	private String nome;
	
	
	public int getIdComponente() {
		return idComponente;
	}
	public void setIdComponente(int idComponente) {
		this.idComponente = idComponente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
	
}
