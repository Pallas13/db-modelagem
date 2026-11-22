 SELECT u.nome, p.id_user FROM pagamentos AS p INNER JOIN users AS u ON u.id_user = p.id_user WHERE status_pagamento = 0;

SELECT id_user, id_musica, reg_time FROM historicos ORDER BY reg_time; 

SELECT COUNT(id_plano) FROM pagamentos WHERE status_pagamento = 0 AND id_plano = 2;

SELECT COUNT(cidade) FROM users GROUP BY cidade;

