package es.uca.iw.esijob.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "formacion")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "formaciondemandantes", "ofertas", "idTipoFormacion" })
public class Formacion {
}
