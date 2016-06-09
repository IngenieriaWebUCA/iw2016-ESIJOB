package es.uca.iw.esijob.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooJpaActiveRecord(versionField = "", table = "usuario")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "demandantes", "empresas" })
public class Usuario {

    @Column(name = "enable")
    @NotNull
    private boolean enable = true;

    @Column(name = "rol", length = 45)
    @NotNull
    private String rol = "ROLE_USER";
}
