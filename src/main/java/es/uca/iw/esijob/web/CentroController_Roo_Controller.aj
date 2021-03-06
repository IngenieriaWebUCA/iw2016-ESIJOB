// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.esijob.web;

import es.uca.iw.esijob.domain.Centro;
import es.uca.iw.esijob.domain.Formaciondemandante;
import es.uca.iw.esijob.web.CentroController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect CentroController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CentroController.create(@Valid Centro centro, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, centro);
            return "centroes/create";
        }
        uiModel.asMap().clear();
        centro.persist();
        return "redirect:/centroes/" + encodeUrlPathSegment(centro.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CentroController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Centro());
        return "centroes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String CentroController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("centro", Centro.findCentro(id));
        uiModel.addAttribute("itemId", id);
        return "centroes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CentroController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("centroes", Centro.findCentroEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Centro.countCentroes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("centroes", Centro.findAllCentroes(sortFieldName, sortOrder));
        }
        return "centroes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CentroController.update(@Valid Centro centro, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, centro);
            return "centroes/update";
        }
        uiModel.asMap().clear();
        centro.merge();
        return "redirect:/centroes/" + encodeUrlPathSegment(centro.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String CentroController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, Centro.findCentro(id));
        return "centroes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String CentroController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Centro centro = Centro.findCentro(id);
        centro.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/centroes";
    }
    
    void CentroController.populateEditForm(Model uiModel, Centro centro) {
        uiModel.addAttribute("centro", centro);
        uiModel.addAttribute("formaciondemandantes", Formaciondemandante.findAllFormaciondemandantes());
    }
    
    String CentroController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
