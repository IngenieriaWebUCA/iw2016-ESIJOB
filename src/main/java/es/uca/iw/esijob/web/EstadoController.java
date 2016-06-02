package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Estado;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/estadoes")
@Controller
@RooWebScaffold(path = "estadoes", formBackingObject = Estado.class)
public class EstadoController {
}
