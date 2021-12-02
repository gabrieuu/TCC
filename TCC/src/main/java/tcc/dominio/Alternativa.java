package tcc.dominio;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;


@Entity
public class Alternativa {
	
	@Id
	private int idAlternativa;
	
	@Lob
	private String descricao;
	
	
	private boolean correto;
	
	@ManyToOne
	@JoinColumn(name ="idDefeito")
	private Defeito defeito;
	
	@ManyToOne
	@JoinColumn(name ="idComponente")
	private Componente componente;
	
	public int getIdAlternativa() {
		return idAlternativa;
	}

	public void setIdAlternativa(int idAlternativa) {
		this.idAlternativa = idAlternativa;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isCorreto() {
		return correto;
	}

	public void setCorreto(boolean correto) {
		this.correto = correto;
	}

	
	
	
}
