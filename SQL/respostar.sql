/*a) Encontre a MATRÍCULA(s) dos alunos com nota em BD12015-1menor que 90; */

select matricula from tb_historico_academico where codigo_turma='BD12015-1' AND nota<90 ;

/*b) Encontre a MATRÍCULA(s) e calcule a média das notas dos alunos na disciplina de POO2015-1. */

select matricula, avg(nota) from tb_historico_academico where codigo_turma='POO2015-1' group by matricula;

/*c) Encontre o CODIGO do professor que ministra a turma WEB2015-1.*/

 select codigo_professor from tb_turma where codigo_turma='WEB2015-1';

/*d) Gere o histórico completo do aluno 2015010106 mostrando MATRICULA,CODIGO DA TURMA, CODIGO DA DISCIPLINA, CODIGO PROFESSOR, FREQUENCIA,NOTA com inner join*/

select	matricula, tb_turma.codigo_turma, codigo_disciplina, codigo_professor, frequencia, nota 
from tb_historico_academico 
inner join tb_turma on tb_historico_academico.codigo_turma=tb_turma.codigo_turma
where tb_historico_academico.matricula='2015010106';