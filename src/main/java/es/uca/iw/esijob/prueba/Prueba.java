package es.uca.iw.esijob.prueba;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Prueba {

    /**
     */
    @NotNull
    @Size(min = 4)
    private String login;

    /**
     */
    @NotNull
    private Integer tipo;
}
