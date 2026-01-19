-- Quantos produtos são de rpg? 

SELECT count(*)

FROM produtos

WHERE DescCategoriaProduto = 'rpg';

-- outra possibilidade de fazer :

SELECT DescCategoriaProduto,
       count(*)

FROM produtos

GROUP BY DescCategoriaProduto;