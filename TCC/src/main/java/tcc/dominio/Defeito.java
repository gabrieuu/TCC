package tcc.dominio;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;



@Entity
public class Defeito {
	
	@Id
	private int idDefeito;
	
	@Lob
	@Column(nullable = false)
	private String sintomas;
	
	@Lob
	private String infoAdiciconal;
	
	
	public int getIdDefeito() {
		return idDefeito;
	}
	public void setIdDefeito(int idDefeito) {
		this.idDefeito = idDefeito;
	}
	public String getSintomas() {
		return sintomas;
	}
	public void setSintomas(String sintomas) {
		this.sintomas = sintomas;
	}
	public String getInfoAdiciconal() {
		return infoAdiciconal;
	}
	public void setInfoAdiciconal(String infoAdiciconal) {
		this.infoAdiciconal = infoAdiciconal;
	}
	
	
	
}
