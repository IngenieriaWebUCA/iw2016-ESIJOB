package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Empresa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/empresas")
@Controller
@RooWebScaffold(path = "empresas", formBackingObject = Empresa.class)
@GvNIXWebJQuery
@RooWebFinder
public class EmpresaController {
}
