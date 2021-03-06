package com.algaworks.algafood.api.model;

import java.math.BigDecimal;

import com.algaworks.algafood.api.model.view.RestauranteView;
import com.fasterxml.jackson.annotation.JsonView;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class RestauranteDTO {
	
	@ApiModelProperty(example = "1")
	@JsonView({ RestauranteView.Resumo.class, RestauranteView.ApenasNome.class })
	private Long id;
	
	@ApiModelProperty(example = "Thai Food")
	@JsonView({ RestauranteView.Resumo.class, RestauranteView.ApenasNome.class })
	private String nome;
	
	@ApiModelProperty(example = "34.90")
	@JsonView(RestauranteView.Resumo.class)
	private BigDecimal taxaFrete;
	
	@JsonView(RestauranteView.Resumo.class)
	private CozinhaDTO cozinha;
	
	@ApiModelProperty(example = "true")
	private Boolean ativo;
	
	@ApiModelProperty(example = "false")
	private Boolean aberto;
	
	private EnderecoDTO endereco;
}
