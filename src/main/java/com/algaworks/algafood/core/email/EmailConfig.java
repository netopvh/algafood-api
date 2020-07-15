package com.algaworks.algafood.core.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.algaworks.algafood.domain.service.EnvioEmailService;
import com.algaworks.algafood.infrastructure.service.email.FakeEnvioEmailService;
import com.algaworks.algafood.infrastructure.service.email.SandboxEnvioEmailService;
import com.algaworks.algafood.infrastructure.service.email.SmtpEnvioEmailService;

@Configuration
public class EmailConfig {

	@Autowired
	private EmailProperties emailProperties;
	
	@Bean
	public EnvioEmailService envioEmailService() {
//		if (TipoEmail.SMTP.equals(emailProperties.getImpl())) {
//			return new SmtpEnvioEmailService();
//		} else if (TipoEmail.FAKE.equals(emailProperties.getImpl())) {
//			return new FakeEnvioEmailService();
//		} else {
//			return null;
//		}
		
        switch (emailProperties.getImpl()) {
	        case FAKE:
	            return new FakeEnvioEmailService();
	        case SMTP:
	            return new SmtpEnvioEmailService();
	        case SANDBOX:
	        	return new SandboxEnvioEmailService();
	        default:
	            return null;
        }
	}
}
