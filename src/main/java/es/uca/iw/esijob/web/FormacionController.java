package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Formacion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/formacions")
@Controller
@RooWebScaffold(path = "formacions", formBackingObject = Formacion.class)
public class FormacionController {
}
