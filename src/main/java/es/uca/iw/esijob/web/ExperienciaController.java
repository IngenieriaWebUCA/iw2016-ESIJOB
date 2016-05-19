package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Experiencia;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/experiencias")
@Controller
@RooWebScaffold(path = "experiencias", formBackingObject = Experiencia.class)
public class ExperienciaController {
}
