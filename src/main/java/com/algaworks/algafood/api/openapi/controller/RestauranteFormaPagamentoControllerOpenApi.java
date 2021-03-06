package com.algaworks.algafood.api.openapi.controller;

import java.util.List;

import com.algaworks.algafood.api.exceptionhandler.Problem;
import com.algaworks.algafood.api.model.FormaPagamentoDTO;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@Api(tags = "Restaurantes")
public interface RestauranteFormaPagamentoControllerOpenApi {

	@ApiOperation("Lista as formas de pagamento associadas a restaurante")
	@ApiResponses({
		@ApiResponse(code = 404, message = "Restaurante não encontrado", response = Problem.class)
	})
	public List<FormaPagamentoDTO> listar(
			@ApiParam(value = "ID de um restaurante", example = "1", required = true)
			Long restauranteId);
	
	@ApiOperation("Desassociação de restaurante com forma de pagamento")
	@ApiResponses({
		@ApiResponse(code = 204, message = "Desassociação reallizada com sucesso"),
		@ApiResponse(code = 404, message = "Restaurante ou forma de pagamento não encontrado", response = Problem.class)
	})
	public void desassociar(
			@ApiParam(value = "ID de um restaurante", example = "1", required = true)
			Long restauranteId,
			@ApiParam(value = "ID de uma forma de pagamento", example = "1", required = true)
			Long formaPagamentoId);

	@ApiOperation("Associação de restaurante com forma de pagamento")
	@ApiResponses({
		@ApiResponse(code = 204, message = "Associação reallizada com sucesso"),
		@ApiResponse(code = 404, message = "Restaurante ou forma de pagamento não encontrado", response = Problem.class)
	})
	public void associar(
			@ApiParam(value = "ID de um restaurante", example = "1", required = true)
			Long restauranteId,
			@ApiParam(value = "ID de uma forma de pagamento", example = "1", required = true)
			Long formaPagamentoId);
}
