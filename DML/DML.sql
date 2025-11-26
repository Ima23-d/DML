-- -------------
-- Cadastro Aluno
-- -------------
INSERT INTO alunos
        (nome_aluno, cpf, idade, peso, gordura_corporal,
         nivel, deficiencia, email, sexo, senha)
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
        RETURNING id_aluno
  
-- ------------------
-- Cadastro instrutor
-- ------------------
INSERT INTO Instrutores (Nome, CREF, Email, Senha)
            VALUES (%s, %s, %s, %s)
            RETURNING ID_Instrutor
  
-- ---------------------
-- Cadastro Treino Aluno
-- ---------------------
INSERT INTO treinos (especificacoes, id_instrutor) VALUES (%s, %s) RETURNING id_treinos
INSERT INTO treinos_alunos (id_aluno, id_treinos) VALUES (%s, %s)
  
-- ---------------------
-- Editar Treino
-- ---------------------
UPDATE treinos SET especificacoes = %s WHERE id_treinos = %s

-- ---------------------
-- Deletar Treino
-- ---------------------
DELETE FROM treinos_alunos WHERE id_treinos = %s
DELETE FROM treinos WHERE id_treinos = %s
-- -----------------------
-- Editar Dados do Aluno
-- -----------------------
UPDATE alunos
        SET nome_aluno = %s, peso = %s, gordura_corporal = %s, nivel = %s, deficiencia = %s
        WHERE id_aluno = %s

  -- -----------------------
-- Deletar Dados do Aluno
-- ---------------------
DELETE FROM alunos WHERE id_aluno = %s
