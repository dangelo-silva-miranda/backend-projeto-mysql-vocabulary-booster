/* 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas Speedy Express ou United Package */
SELECT
  c.ContactName `Nome de contato`,
  s.ShipperName `Empresa que fez o envio`,
  o.OrderDate `Data do pedido`
FROM
  (w3schools.orders o
    INNER JOIN
  w3schools.customers c
  ON o.CustomerID = c.CustomerID)
    INNER JOIN
  w3schools.shippers s
  ON s.ShipperID = o.ShipperID
WHERE
  s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
  `Nome de contato`,
  `Empresa que fez o envio`,
  `Data do pedido`;
