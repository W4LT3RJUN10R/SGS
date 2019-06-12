/* 64 Clientes */
@@ insert_clients;

/* Tipos */
INSERT INTO Tipo (codigo, descricao) VALUES (1, 'impressora');
INSERT INTO Tipo (codigo, descricao) VALUES (2, 'cabo');
INSERT INTO Tipo (codigo, descricao) VALUES (3, 'teclado');
INSERT INTO Tipo (codigo, descricao) VALUES (4, 'monitor');
INSERT INTO Tipo (codigo, descricao) VALUES (5, 'áudio');
INSERT INTO Tipo (codigo, descricao) VALUES (6, 'mouse');

/* Produtos */
/* mice */
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    1, 'LOGITECH M117', 6);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    2, 'LOGITECH MX Vertical Advanced Ergonomic Mouse', 6);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    3, 'LOGITECH MX Master 2S', 6);

/* keyboards */
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    4, 'LOGITECH CRAFT Advanced Keyboard with Creative Input Dial', 3);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    5, 'LOGITECH Wireless Illuminated Keyboard K800 Hand-proximity backlight', 3);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    6, 'LOGITECH Bluetooth Illuminated Keyboard K810 Easy-Switch multi-device keyboard', 3);

/* printers */
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    7, 'Canon Pro 1000 imagePROGRAF', 1);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    8, 'HP Ink Tank 116 Jato de Tinta Colorida Bivolt 3UM87A', 1);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    9, 'Plotter - Yes Printer Modelo 1801w Cabeça Xp600', 1);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    10, 'Termica Jly-58 58mm Tickts Pc', 1);

/* cables */
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    11, 'Ethernet 20 Metros', 2);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    12, 'Coaxial para Antena RG6 - 75OHMS', 2);

/* monitors */
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    13, 'LG LED 238 Widescreen Full HD IPS HDMI 24MK430H', 4);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    14, 'Dell de 21.5” P2219H (somente painel) - 210-arxl - 210-arxl', 4);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    15, 'LG 19,5" Led - 20M37Aa', 4);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    16, 'Philips 18,5" LED HD VGA Widescreen 193V5LSB2', 4);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    17, 'AOC LED 185 Widescreen VGA E970SWNL', 4);

/* audio devices */
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    18, 'ALTO-FALANTES LOGITECH Z120 - a7271767 - a7271767', 5);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    19, 'Caixa de Som C3 Tech 20 Portátil 3W RMS Preta SP 301BK', 5);
INSERT INTO Produto (codigo, nome, tipo) VALUES (
    20, 'Caixa de Som C3 Tech 20 Portátil 3W RMS Branca SP 301WH', 5);

/* 10 Técnicos */
INSERT INTO Tecnico (codigo, nome) VALUES (1, 'Maria Angélica');
INSERT INTO Tecnico (codigo, nome) VALUES (2, 'César Munari');
INSERT INTO Tecnico (codigo, nome) VALUES (3, 'Jefferson Blaitt');
INSERT INTO Tecnico (codigo, nome) VALUES (4, 'Carolina Camargo');
INSERT INTO Tecnico (codigo, nome) VALUES (5, 'Tadeu Maffeis');
INSERT INTO Tecnico (codigo, nome) VALUES (6, 'Dimas Cardoso');
INSERT INTO Tecnico (codigo, nome) VALUES (7, 'Sérgio Bernardo');
INSERT INTO Tecnico (codigo, nome) VALUES (8, 'Fernando Miranda');
INSERT INTO Tecnico (codigo, nome) VALUES (9, 'Paulo Edson Alves');
INSERT INTO Tecnico (codigo, nome) VALUES (10, 'Tony Stark');

/* Categorias */
INSERT INTO Categoria (codigo, descricao, precohora) VALUES (1, 'Software', 30.0);
INSERT INTO Categoria (codigo, descricao, precohora) VALUES (2, 'Hardware', 20.0);

/* 128 Solicitações */
@@ insert_solicitacoes;

/* 512 Ocorrências */
@@ insert_ocorrencias;
