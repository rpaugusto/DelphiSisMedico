CREATE VIEW lsHistoricoPaciente AS
	SELECT CONVERT(VARCHAR,a.datahora,103) data, CONVERT(VARCHAR(5),a.datahora,108) hora, f.nome, p.id FROM agenda a
	INNER JOIN pessoas p ON p.id = a.paciente_id
	INNER JOIN funcionarios f ON f.id = a.funcionario_id