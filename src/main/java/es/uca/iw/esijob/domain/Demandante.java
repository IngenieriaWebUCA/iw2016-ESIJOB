package es.uca.iw.esijob.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "experiencias", "formaciondemandantes", "inscripcions", "puestoes", "idusuario" })
@RooJpaActiveRecord(versionField = "", table = "demandante", finders = { "findDemandantesByNombreLike", "findDemandantesByExperienciaLike" })
public class Demandante {
}
