package tcc.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import tcc.dominio.Alternativa;

public interface AlternativaRepository extends JpaRepository<Alternativa, Integer> {
	
}
