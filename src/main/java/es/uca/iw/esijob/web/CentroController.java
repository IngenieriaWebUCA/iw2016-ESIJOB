package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Centro;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/centroes")
@Controller
@RooWebScaffold(path = "centroes", formBackingObject = Centro.class)
public class CentroController {
}
