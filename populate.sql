/* 64 Clientes */
@@ insert_clients;

/* Tipos */
insert into Tipo (codigo, descricao) values (1, 'impressora');
insert into Tipo (codigo, descricao) values (2, 'cabo');
insert into Tipo (codigo, descricao) values (3, 'teclado');
insert into Tipo (codigo, descricao) values (4, 'monitor');
insert into Tipo (codigo, descricao) values (5, 'áudio');
insert into Tipo (codigo, descricao) values (6, 'mouse');

/* Produtos */
/* mice */
insert into Produto (codigo, nome, tipo) values (1, 'LOGITECH M117', 6);
insert into Produto (codigo, nome, tipo) values (2, 'LOGITECH MX Vertical Advanced Ergonomic Mouse', 6);
insert into Produto (codigo, nome, tipo) values (3, 'LOGITECH MX Master 2S', 6);

/* keyboards */
insert into Produto (codigo, nome, tipo) values (4, 'LOGITECH CRAFT Advanced Keyboard with Creative Input Dial', 3);
insert into Produto (codigo, nome, tipo) values (5, 'LOGITECH Wireless Illuminated Keyboard K800 Hand-proximity backlight', 3);
insert into Produto (codigo, nome, tipo) values (6, 'LOGITECH Bluetooth Illuminated Keyboard K810 Easy-Switch multi-device keyboard', 3);

/* printers */
insert into Produto (codigo, nome, tipo) values (7, 'Canon Pro 1000 imagePROGRAF', 1);
insert into Produto (codigo, nome, tipo) values (8, 'HP Ink Tank 116 Jato de Tinta Colorida Bivolt 3UM87A', 1);
insert into Produto (codigo, nome, tipo) values (9, 'Plotter - Yes Printer Modelo 1801w Cabeça Xp600', 1);
insert into Produto (codigo, nome, tipo) values (10, 'Termica Jly-58 58mm Tickts Pc', 1);

/* cables */
insert into Produto (codigo, nome, tipo) values (11, 'Ethernet 20 Metros', 2);
insert into Produto (codigo, nome, tipo) values (12, 'Coaxial para Antena RG6 - 75OHMS', 2);

/* monitor */
insert into Produto (codigo, nome, tipo) values (13, 'LG LED 238 Widescreen Full HD IPS HDMI 24MK430H', 4);
insert into Produto (codigo, nome, tipo) values (14, 'Dell de 21.5” P2219H (somente painel) - 210-arxl - 210-arxl', 4);
insert into Produto (codigo, nome, tipo) values (15, 'LG 19,5" Led - 20M37Aa', 4);
insert into Produto (codigo, nome, tipo) values (16, 'Philips 18,5" LED HD VGA Widescreen 193V5LSB2', 4);
insert into Produto (codigo, nome, tipo) values (17, 'AOC LED 185 Widescreen VGA E970SWNL', 4);

/* audio */
insert into Produto (codigo, nome, tipo) values (18, 'ALTO-FALANTES LOGITECH Z120 - a7271767 - a7271767', 5);
insert into Produto (codigo, nome, tipo) values (19, 'Caixa de Som C3 Tech 20 Portátil 3W RMS Preta SP 301BK', 5);

/* 9 Técnicos */
insert into Tecnico (codigo, nome) values (1, 'Maria Angélica');
insert into Tecnico (codigo, nome) values (2, 'César Munari');
insert into Tecnico (codigo, nome) values (3, 'Jefferson Blaitt');
insert into Tecnico (codigo, nome) values (4, 'Carolina Camargo');
insert into Tecnico (codigo, nome) values (5, 'Tadeu Maffeis');
insert into Tecnico (codigo, nome) values (6, 'Dimas Cardoso');
insert into Tecnico (codigo, nome) values (7, 'Sérgio Bernardo');
insert into Tecnico (codigo, nome) values (8, 'Fernando Miranda');
insert into Tecnico (codigo, nome) values (9, 'Paulo Edson Alves');

/* Categoria */
insert into Categoria (codigo, descricao, precohora) values (1, 'Software', 20.5);
insert into Categoria (codigo, descricao, precohora) values (2, 'Hardware', 15.9);

/* 128 Solicitações */
@@ insert_solicitacoes;

/* 512 Ocorrências */
@@ insert_ocorrencias;
