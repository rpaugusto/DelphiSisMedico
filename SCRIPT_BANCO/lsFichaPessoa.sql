ALTER VIEW lsFichaPessoa
	AS
		SELECT p.*,
			   ISNULL(CONVERT(varchar,a.datahora, 103),'') data,
			   ISNULL(CONVERT(varchar(5),a.datahora, 108),'') hora,
			   ISNULL(f.nome,'') medico,
			   ISNULL(c.diagnostico,'SEM CONSULTA') consulta
		FROM pessoas p
		LEFT JOIN agenda a ON a.paciente_id = p.id
		LEFT JOIN funcionarios f ON f.id = a.funcionario_id
		LEFT JOIN consultas c ON c.agenda_id = a.id