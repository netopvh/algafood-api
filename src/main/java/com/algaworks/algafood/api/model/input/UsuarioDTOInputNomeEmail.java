package com.algaworks.algafood.api.model.input;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UsuarioDTOInputNomeEmail {

	@NotBlank
	private String nome;
	
	@Email
	@NotBlank
	private String email;
}