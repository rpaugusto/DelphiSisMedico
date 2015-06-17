CREATE VIEW lsFuncionarios AS
	SELECT id, nome, 
	       isnull(funcao,'') funcao,
	       isnull(conselho, '000000') conselho,
	       isnull(telefone, '') telefone,
	       isnull(celular, '') celular,
	       isnull(estado, '') estado,
	       cadastrado
	  FROM funcionarios
  GROUP BY funcao, id, nome, conselho, telefone, celular, estado, cadastrado