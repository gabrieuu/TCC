package tcc.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import tcc.dominio.Alternativa;

public interface AlternativaRepository extends JpaRepository<Alternativa, Integer> {
	
    @Query("select a from Alternativa a "
    		+ "JOIN a.componente c "
    		+ "JOIN a.defeito d "
    		+ "where c.idComponente = :idComp "
    		+ "and d.idDefeito = :idDef") 
     Alternativa findByIds(@Param("idComp") int idComp, @Param("idDef") int idDef);

}
