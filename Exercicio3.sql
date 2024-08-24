DELIMITER //

CREATE PROCEDURE RelatorioDiarioCompras()
BEGIN
    SELECT
        produto_id,
        DATE(data_compra) AS data_compra,
        SUM(quantidade) AS total_quantidade
    FROM
        compras
    GROUP BY
        produto_id,
        DATE(data_compra)
    ORDER BY
        data_compra,
        produto_id;
END //

DELIMITER ;

