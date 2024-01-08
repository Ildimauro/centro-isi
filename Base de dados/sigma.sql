-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2023 às 00:06
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sigma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `nr_aluno` int(11) NOT NULL,
  `tipo_documento` varchar(25) NOT NULL,
  `nr_documento` varchar(15) NOT NULL,
  `local_de_emissao` varchar(50) NOT NULL,
  `nome_aluno` varchar(45) NOT NULL,
  `apelido_aluno` varchar(40) NOT NULL,
  `nacionalidade_aluno` varchar(35) NOT NULL,
  `naturalidade_aluno` varchar(50) NOT NULL,
  `data_nascimento_aluno` date NOT NULL,
  `validade_documento_inicial_aluno` date NOT NULL,
  `validade_documento_final_aluno` date DEFAULT NULL,
  `sexo_aluno` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `quarteirao` varchar(6) NOT NULL,
  `casa` smallint(6) NOT NULL,
  `rua_avenida` varchar(100) NOT NULL,
  `telefone` int(9) NOT NULL,
  `telefone_alternativo` int(9) DEFAULT NULL,
  `nome_do_pai` varchar(120) NOT NULL,
  `nome_da_mae` varchar(120) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url_foto` varchar(700) NOT NULL,
  `data_criado_aluno` datetime DEFAULT current_timestamp(),
  `data_modificado_aluno` datetime DEFAULT current_timestamp(),
  `criado_por` int(11) DEFAULT NULL,
  `modificado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`nr_aluno`, `tipo_documento`, `nr_documento`, `local_de_emissao`, `nome_aluno`, `apelido_aluno`, `nacionalidade_aluno`, `naturalidade_aluno`, `data_nascimento_aluno`, `validade_documento_inicial_aluno`, `validade_documento_final_aluno`, `sexo_aluno`, `bairro`, `quarteirao`, `casa`, `rua_avenida`, `telefone`, `telefone_alternativo`, `nome_do_pai`, `nome_da_mae`, `email`, `url_foto`, `data_criado_aluno`, `data_modificado_aluno`, `criado_por`, `modificado_por`) VALUES
(4, 'Bilhete de identidade', '000000Ze040', 'Emitido em', 'Julvânio', 'Raúl Viegas', 'Angolana', 'Nzeto', '2005-03-07', '2023-09-30', NULL, 'Masculino', 'Kintambi', '', 0, 'K/f', 924342600, 0, '', '', '', 'uploads/fotos/1917706782.jpg', '2023-09-30 11:41:47', '2023-09-30 11:41:47', 25, 25),
(6, 'Bilhete de identidade', '000000ZE041', 'Emitido em', 'Samuel ', 'Rogério Mombo Panzu', 'Angolana', 'Nzeto', '2005-04-24', '2023-09-30', NULL, 'Masculino', 'Kintambi', 'N', 0, 'SN', 935316292, 0, '', '', '', 'uploads/fotos/2020812407.jpg', '2023-09-30 12:18:30', '2023-09-30 12:18:30', 25, 25),
(7, 'Bilhete de identidade', '00000000ZE042', 'Emitido em', 'Mateus ', 'Kuyisani Augusto', 'Angolana', 'Soyo', '2009-03-01', '2024-09-30', NULL, 'Masculino', 'Kintambi', 'N', 0, 'FS', 923468432, 0, '', '', '', 'uploads/fotos/965478442.jpg', '2023-09-30 16:52:56', '2023-09-30 16:52:56', 25, 25),
(8, 'Bilhete de identidade', '00000000ZE043', 'Soyo', 'André', 'Nsungani Pedro Fernandes ', 'Angolana', 'Soyo', '2011-09-27', '2024-10-03', NULL, 'Masculino', 'Kintambi', 'N', 0, 'Rua Zé Kai', 921385253, 0, '', '', '', 'img/user.webp', '2023-10-03 09:06:52', '2023-10-03 09:06:52', 25, 25),
(9, 'Bilhete de identidade', '00000000ZE044', 'Emitido em', 'Rossana', 'Esperança De Castro ', 'Angolana', 'Soyo', '2008-03-08', '2024-10-07', NULL, 'Femenino', 'Mongo Soyo', 'T', 0, 'NS', 932172417, 0, '', '', '', 'img/user.webp', '2023-10-07 15:09:41', '2023-10-07 15:09:41', 25, 25),
(10, 'Bilhete de identidade', '0000000ZE444', 'Selecionar', 'Sublime António zati', 'Panzu', 'Angolana', 'Nzetu', '2008-11-11', '2024-10-15', NULL, 'Masculino', 'Kintambi ', 'N', 0, 'Faculdade - kintambi ', 0, 0, '', '', '', 'img/user.webp', '2023-10-15 15:05:42', '2023-10-15 15:05:42', 25, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `classe`
--

CREATE TABLE `classe` (
  `nr_classe` int(11) NOT NULL,
  `nome_classe` varchar(50) NOT NULL,
  `data_criado_classe` datetime DEFAULT current_timestamp(),
  `data_modificado_turma` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `criado_por` int(11) DEFAULT NULL,
  `modificado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `classe`
--

INSERT INTO `classe` (`nr_classe`, `nome_classe`, `data_criado_classe`, `data_modificado_turma`, `criado_por`, `modificado_por`) VALUES
(1, '9ª Classe ', '2023-09-18 08:58:48', '2023-09-22 23:06:25', 25, 25),
(2, '11ª Classe ', '2023-09-22 23:06:34', '2023-09-30 12:00:18', 25, 25),
(3, '7ª Classe', '2023-09-22 23:07:07', NULL, 25, NULL),
(4, '4ª Classe ', '2023-09-25 22:15:52', '2023-09-25 22:16:39', 25, 25),
(5, '3ª Classe', '2023-09-25 22:16:11', '2023-09-25 22:16:56', 25, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conf_mensalidades`
--

CREATE TABLE `conf_mensalidades` (
  `id` int(11) NOT NULL,
  `nr_aluno` int(11) NOT NULL,
  `mes` varchar(12) COLLATE utf32_bin NOT NULL,
  `recibo` bigint(20) NOT NULL,
  `ano` year(4) NOT NULL,
  `data_deposito` date NOT NULL,
  `criado_por` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp(),
  `modificado_por` int(11) NOT NULL,
  `data_modificacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inscricao_detalhes`
--

CREATE TABLE `inscricao_detalhes` (
  `id` int(11) NOT NULL,
  `recibo` int(11) NOT NULL,
  `nr_aluno` int(11) NOT NULL,
  `valor_inscricao` int(11) NOT NULL DEFAULT 1200,
  `valor_mensalidade` int(11) NOT NULL DEFAULT 525,
  `data_deposito` date NOT NULL,
  `criado_por` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inscricao_detalhes`
--

INSERT INTO `inscricao_detalhes` (`id`, `recibo`, `nr_aluno`, `valor_inscricao`, `valor_mensalidade`, `data_deposito`, `criado_por`, `data_criacao`) VALUES
(6, 300, 7, 1000, 2000, '2023-09-30', 25, '2023-09-30 16:52:56'),
(5, 200, 6, 500, 3500, '2023-09-30', 25, '2023-09-30 12:18:30'),
(4, 100, 4, 500, 3500, '2023-09-30', 25, '2023-09-30 11:41:47'),
(7, 400, 8, 1000, 7500, '2023-10-03', 25, '2023-10-03 09:06:52'),
(8, 400, 9, 1000, 3000, '2023-10-07', 25, '2023-10-07 15:09:41'),
(9, 600, 10, 500, 3500, '2023-10-15', 25, '2023-10-15 15:05:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `nr_matricula` int(11) NOT NULL,
  `nr_aluno` int(11) NOT NULL,
  `nr_turma` int(11) NOT NULL,
  `nr_pagamento` int(11) NOT NULL,
  `data_criado_pagamento` datetime DEFAULT current_timestamp(),
  `data_modificado_pagamento` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `criado_por` int(11) DEFAULT NULL,
  `modificado_por` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`nr_matricula`, `nr_aluno`, `nr_turma`, `nr_pagamento`, `data_criado_pagamento`, `data_modificado_pagamento`, `criado_por`, `modificado_por`, `ano`) VALUES
(4, 4, 8, 0, '2023-09-30 11:59:54', '2023-09-30 12:00:56', 25, 25, 2023),
(5, 6, 8, 0, '2023-09-30 12:19:43', '2023-09-30 12:21:34', 25, 25, 2023),
(6, 7, 5, 0, '2023-09-30 16:57:07', '2023-09-30 17:03:46', 25, 25, 2023),
(7, 8, 6, 0, '2023-10-03 09:10:46', '2023-10-03 09:15:58', 25, 25, 2023),
(8, 9, 7, 0, '2023-10-07 15:18:57', NULL, 25, NULL, 2023);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

CREATE TABLE `mensalidades` (
  `ID` int(11) NOT NULL,
  `nr_aluno` int(11) NOT NULL,
  `Fev` char(1) DEFAULT NULL,
  `Mar` char(1) DEFAULT NULL,
  `Abr` char(1) DEFAULT NULL,
  `Mai` char(1) DEFAULT NULL,
  `Jun` char(1) DEFAULT NULL,
  `Jul` char(1) DEFAULT NULL,
  `Ago` char(1) DEFAULT NULL,
  `Sete` char(1) DEFAULT NULL,
  `Outu` char(1) DEFAULT NULL,
  `Nov` char(1) DEFAULT NULL,
  `Ano` year(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mensalidades`
--

INSERT INTO `mensalidades` (`ID`, `nr_aluno`, `Fev`, `Mar`, `Abr`, `Mai`, `Jun`, `Jul`, `Ago`, `Sete`, `Outu`, `Nov`, `Ano`) VALUES
(12, 6, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(11, 6, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(10, 7, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(9, 7, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(8, 4, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(7, 4, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(13, 8, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(14, 8, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(15, 9, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023),
(16, 9, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2023);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_nivel_acesso`
--

CREATE TABLE `tabela_nivel_acesso` (
  `id_nivel_acesso` int(11) NOT NULL,
  `nome_nivel_acesso` varchar(50) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_nivel_acesso`
--

INSERT INTO `tabela_nivel_acesso` (`id_nivel_acesso`, `nome_nivel_acesso`, `data_criacao`) VALUES
(1, 'Administrador  full  ', '2017-08-24 00:00:00'),
(2, 'Administrador', '2020-03-27 19:46:08'),
(3, 'Area Administrativa ', '2017-08-24 00:00:00'),
(4, 'Secretaria', '2018-03-06 00:00:00'),
(5, 'Professor', '2017-08-24 00:00:00'),
(6, 'Aluno', '2017-08-24 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_usuarios`
--

CREATE TABLE `tabela_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `f_key` bigint(20) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT 'Activo',
  `id_nivel_acesso` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp(),
  `criado_por` varchar(50) NOT NULL,
  `data_modificacao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modificado_por` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabela_usuarios`
--

INSERT INTO `tabela_usuarios` (`id_usuario`, `f_key`, `usuario`, `nome`, `senha`, `estado`, `id_nivel_acesso`, `data_criacao`, `criado_por`, `data_modificacao`, `modificado_por`) VALUES
(24, 1000000017, 'Admin', 'Administrador', '21232f297a57a5a743894a0e4a801fc3', 'Activo', 5, '2020-04-26 21:07:51', '1', '2023-09-18 20:18:01', '25'),
(25, 123, 'Hildo', 'Hildo Domingos João', '2171a7553d5cf80e150e2b55e07eb732', 'Activo', 1, '2023-09-17 22:55:23', '', '2023-09-30 21:47:40', '25'),
(26, 1, '1', 'Hildo Domingos joão Iniciação', 'de88e3e4ab202d87754078cbb2df6063', 'Activo', 6, '2023-09-17 23:03:25', '25', '2023-09-17 23:03:25', ''),
(27, 1234, 'julinho', 'Julinho', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 6, '2023-09-17 23:28:33', '25', '2023-09-17 23:31:20', 'Admin'),
(28, 0, 'paulina', 'Paulina Joao Helena', '1b207465eac83b5d4b12e335faa0b53a', 'Activo', 4, '2023-09-18 20:16:53', '25', '2023-09-18 20:16:53', ''),
(29, 0, 'rosa', 'Rosilda Hildo', '84109ae4b4178430b8174b1dfef9162b', 'Activo', 3, '2023-09-18 20:17:36', '25', '2023-09-18 20:17:36', ''),
(30, 2, '2', 'Paulina João Helena', 'de88e3e4ab202d87754078cbb2df6063', 'Activo', 6, '2023-09-22 23:18:22', '25', '2023-09-22 23:18:22', ''),
(31, 3, 'casiane', 'Casiane Francisco P. Kambua', '4271aac28b04472500d1875724e89611', 'Activo', 6, '2023-09-22 23:28:49', '25', '2023-09-28 10:27:51', '25'),
(33, 0, 'Rogerio ', 'Samuel Rogério Mombo  Panzu', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 6, '2023-09-30 11:57:37', '25', '2023-09-30 12:07:14', '25'),
(34, 6, '5', 'Samuel  Rogério Mombo Panzu', 'de88e3e4ab202d87754078cbb2df6063', 'Activo', 6, '2023-09-30 12:18:30', '25', '2023-09-30 12:18:30', ''),
(35, 7, 'Mateus', 'Mateus  Kuyisani Augusto', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 6, '2023-09-30 16:52:56', '25', '2023-09-30 16:59:31', '25'),
(37, 0, 'paulina1', 'Professora', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 3, '2023-10-02 07:17:09', '25', '2023-10-02 07:17:09', ''),
(38, 8, 'Marcio', 'André Nsungani Pedro Fernandes ', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 6, '2023-10-03 09:06:52', '25', '2023-10-03 09:07:55', '25'),
(39, 9, 'Rossana', 'Rossana Esperança De Castro ', '81dc9bdb52d04dc20036dbd8313ed055', 'Activo', 6, '2023-10-07 15:09:41', '25', '2023-10-07 15:21:27', '25'),
(40, 10, '10', 'Sublime António zati Panzu', 'de88e3e4ab202d87754078cbb2df6063', 'Activo', 6, '2023-10-15 15:05:42', '25', '2023-10-15 15:05:42', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `nr_turma` int(11) NOT NULL,
  `nome_turma` varchar(50) NOT NULL,
  `duracao_turma` varchar(15) NOT NULL,
  `classe_turma` varchar(15) NOT NULL,
  `formato_turma` varchar(50) NOT NULL,
  `numero_sessoes_formato` tinyint(2) NOT NULL,
  `data_criado_turma` date DEFAULT NULL,
  `data_modificado_turma` date DEFAULT NULL,
  `criado_por` int(11) DEFAULT NULL,
  `modificado_por` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`nr_turma`, `nome_turma`, `duracao_turma`, `classe_turma`, `formato_turma`, `numero_sessoes_formato`, `data_criado_turma`, `data_modificado_turma`, `criado_por`, `modificado_por`) VALUES
(5, 'Turma do Sábado as 12h ', '1', '1', 'Trimestral', 3, NULL, NULL, 25, NULL),
(6, 'Turma do Márcio', '1', '3', 'Trimestral', 3, NULL, NULL, 25, NULL),
(7, 'Domingo as 14h', '1', '1', 'Trimestral', 3, NULL, NULL, 25, NULL),
(8, 'Turma das 16h', '1', '2', 'Trimestral', 3, NULL, NULL, 25, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`nr_aluno`),
  ADD UNIQUE KEY `nr_documento` (`nr_documento`);

--
-- Índices para tabela `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`nr_classe`);

--
-- Índices para tabela `conf_mensalidades`
--
ALTER TABLE `conf_mensalidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recibo` (`recibo`);

--
-- Índices para tabela `inscricao_detalhes`
--
ALTER TABLE `inscricao_detalhes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`nr_matricula`);

--
-- Índices para tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tabela_nivel_acesso`
--
ALTER TABLE `tabela_nivel_acesso`
  ADD PRIMARY KEY (`id_nivel_acesso`);

--
-- Índices para tabela `tabela_usuarios`
--
ALTER TABLE `tabela_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`nr_turma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `nr_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `classe`
--
ALTER TABLE `classe`
  MODIFY `nr_classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `conf_mensalidades`
--
ALTER TABLE `conf_mensalidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `inscricao_detalhes`
--
ALTER TABLE `inscricao_detalhes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `nr_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `mensalidades`
--
ALTER TABLE `mensalidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tabela_nivel_acesso`
--
ALTER TABLE `tabela_nivel_acesso`
  MODIFY `id_nivel_acesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tabela_usuarios`
--
ALTER TABLE `tabela_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `nr_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
