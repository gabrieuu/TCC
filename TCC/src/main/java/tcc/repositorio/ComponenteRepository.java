package tcc.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import tcc.dominio.Componente;

public interface ComponenteRepository extends JpaRepository<Componente, Integer>{

}
