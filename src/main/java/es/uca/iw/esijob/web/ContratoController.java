package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Contrato;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/contratoes")
@Controller
@RooWebScaffold(path = "contratoes", formBackingObject = Contrato.class)
public class ContratoController {
}
