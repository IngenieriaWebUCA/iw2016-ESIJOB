package es.uca.iw.esijob.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "inscripcions", "puestoes", "idformacion", "idsede", "estado", "tipoContrato" })
@RooJpaActiveRecord(versionField = "", table = "oferta", finders = { "findOfertasByTituloLike", "findOfertasBySalarioBrutoGreaterThanEquals", "findOfertasByInfoPuestoLike" })
public class Oferta {
}
