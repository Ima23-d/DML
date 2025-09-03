
INSERT INTO Alunos (ID_Aluno, Nome_Aluno, CPF, Data_Nascimento, Idade, Peso, Gordura_Corporal, Nivel, Deficiencia, Email)
VALUES (1, 'Maria Silva', '123.456.789-00', '2000-05-10', 24, 60.5, 18.3, 'Intermediário', NULL, 'maria@gmail.com');


INSERT INTO Instrutores (ID_Instrutor, Nome, CREF)
VALUES (1, 'João Santos', 'CREF12345');


INSERT INTO Planos (ID_Planos, Nome_Plano, Descricao, Valor)
VALUES (1, 'Plano Mensal', 'Acesso livre por 30 dias', 120.00);


INSERT INTO Escolhe (ID_Aluno, ID_Planos)
VALUES (1, 1);

INSERT INTO Treinos (ID_Treinos, Especificacoes, ID_Instrutor)
VALUES (1, 'Treino de força para membros superiores', 1);

INSERT INTO Realiza (ID_Aluno, ID_Treinos)
VALUES (1, 1);
