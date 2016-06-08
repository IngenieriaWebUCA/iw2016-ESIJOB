package es.uca.iw.esijob.web;

import org.springframework.format.FormatterRegistry;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.roo.addon.web.mvc.controller.converter.RooConversionService;

import es.uca.iw.esijob.domain.Centro;
import es.uca.iw.esijob.domain.Contrato;
import es.uca.iw.esijob.domain.Demandante;
import es.uca.iw.esijob.domain.Empresa;
import es.uca.iw.esijob.domain.Estado;
import es.uca.iw.esijob.domain.EstadoInscripcion;
import es.uca.iw.esijob.domain.Experiencia;
import es.uca.iw.esijob.domain.Formacion;
import es.uca.iw.esijob.domain.Formaciondemandante;
import es.uca.iw.esijob.domain.Inscripcion;
import es.uca.iw.esijob.domain.Oferta;
import es.uca.iw.esijob.domain.Puesto;
import es.uca.iw.esijob.domain.Sede;
import es.uca.iw.esijob.domain.Tipoformacion;
import es.uca.iw.esijob.domain.Usuario;
import es.uca.iw.esijob.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;


/**
 * A central place to register application converters and formatters. 
 */
@RooConversionService
public class ApplicationConversionServiceFactoryBean extends FormattingConversionServiceFactoryBean {

	@Override
	protected void installFormatters(FormatterRegistry registry) {
		super.installFormatters(registry);
		// Register application converters and formatters
	}
}
