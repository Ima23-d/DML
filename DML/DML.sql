INSERT INTO Alunos (Nome_Aluno, CPF, Data_Nascimento, Idade, Peso, Gordura_Corporal, Nivel, Deficiencia, Email,Sexo)
VALUES ('Maria Silva', '123.456.789-00', '2000-05-10', 24, 60.5, 18.3, 'Intermediário', NULL, 'maria@gmail.com',"Sexo");

INSERT INTO Instrutores (Nome, CREF)
VALUES ('João Santos', 'CREF12345');

INSERT INTO Planos (Nome_Plano, Descricao, Valor)
VALUES ('Plano Mensal', 'Acesso livre por 30 dias', 120.00);

INSERT INTO Escolhe (ID_Aluno, ID_Planos)
VALUES (1, 1);

INSERT INTO Treinos (Especificacoes, ID_Instrutor)
VALUES ('Treino de força para membros superiores', 1);

INSERT INTO Treinos_alunos (ID_Aluno, ID_Treinos)
VALUES (1, 1);


