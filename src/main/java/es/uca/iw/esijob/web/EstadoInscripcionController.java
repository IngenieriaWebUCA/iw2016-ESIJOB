package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.EstadoInscripcion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/estadoinscripcions")
@Controller
@RooWebScaffold(path = "estadoinscripcions", formBackingObject = EstadoInscripcion.class)
public class EstadoInscripcionController {
}
