package com.algaworks.algafood.api.assembler;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.algaworks.algafood.api.model.input.UsuarioDTOInput;
import com.algaworks.algafood.api.model.input.UsuarioDTOInputNomeEmail;
import com.algaworks.algafood.domain.model.Usuario;

@Component
public class UsuarioDTODisassembler {

	@Autowired
	private ModelMapper modelMapper;
	
	public Usuario toDomainObject(UsuarioDTOInput usuarioDTOInput) {
		return modelMapper.map(usuarioDTOInput, Usuario.class);
	}

	public void copyToDomainObject(UsuarioDTOInputNomeEmail usuarioDTOInputNomeEmail, Usuario usuario) {
		modelMapper.map(usuarioDTOInputNomeEmail, usuario);
	}
}