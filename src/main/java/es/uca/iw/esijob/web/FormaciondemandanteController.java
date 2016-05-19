package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Formaciondemandante;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/formaciondemandantes")
@Controller
@RooWebScaffold(path = "formaciondemandantes", formBackingObject = Formaciondemandante.class)
public class FormaciondemandanteController {
}
