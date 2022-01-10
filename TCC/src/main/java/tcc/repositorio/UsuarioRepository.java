package tcc.repositorio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import tcc.dominio.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer>{
	@Query("select u from Usuario u where u.email like %:email%")
	Optional<Usuario> findByEmail(@Param("email") String email);
	
	@Query("from Usuario where email=?1")
	public List<Usuario> buscarUsuarioEmail(String email);
	
}
