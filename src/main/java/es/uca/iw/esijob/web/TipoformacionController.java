package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Tipoformacion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/tipoformacions")
@Controller
@RooWebScaffold(path = "tipoformacions", formBackingObject = Tipoformacion.class)
@GvNIXWebJQuery
public class TipoformacionController {
}
