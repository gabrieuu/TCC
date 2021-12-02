package tcc.repositorio;


import org.springframework.data.jpa.repository.JpaRepository;

import tcc.dominio.Defeito;

public interface DefeitoRepository extends JpaRepository<Defeito, Integer>{
	
	
}
