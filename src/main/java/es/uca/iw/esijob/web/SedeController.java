package es.uca.iw.esijob.web;
import es.uca.iw.esijob.domain.Sede;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/sedes")
@Controller
@RooWebScaffold(path = "sedes", formBackingObject = Sede.class)
@GvNIXWebJQuery
public class SedeController {
}
