/* 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo */

SELECT
  j.JOB_TITLE 'Cargo',
  ROUND(AVG(e.SALARY), 2) `Média salarial`,
  CASE
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(e.SALARY), 2) <= 7500 THEN 'Pleno'
    WHEN ROUND(AVG(e.SALARY), 2) <= 10500 THEN 'Sênior'
    WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
  END AS 'Senioridade'
FROM
  hr.employees e
    INNER JOIN
  hr.jobs j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY
  `Média salarial`,
  j.JOB_TITLE;

