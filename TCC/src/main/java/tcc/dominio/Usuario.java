package tcc.dominio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Usuario {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String nome;
	
	@Column(nullable = false)
	private String email;	
	
	@Column(nullable = false)
	private String senha;
	
	@Column
	private int Score = 0;
	
	public Usuario() {
		super();
	}

	public Usuario(String nome, String email,String senha) {
		this.id = id;
		this.nome = nome;
		this.email= email;
		this.senha= senha;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getScore() {
		return Score;
	}

	public void setScore(int score) {
		Score = score;
	}
	
	
}
