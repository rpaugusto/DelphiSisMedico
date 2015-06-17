create view lsPacientes as 
	select nome, cpf, endereco, bairro,
		   ISNULL(cidade,'') cidade,
		   ISNULL(estado,'') estado,
		   ISNULL(cep, '') cep,
		   ISNULL(telefone, '') telefone,
		   ISNULL(celular, '') celular,
		   ISNULL(sexo, 'INDEFINIDO') sexo from pessoas
	group by nome, cpf, endereco, bairro, cidade, estado, cep, telefone, celular, sexo