-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-01-2024 a las 20:21:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area_conocimiento`
--

CREATE TABLE `area_conocimiento` (
  `id_are` int(11) NOT NULL,
  `semestre_are` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area_conocimiento`
--

INSERT INTO `area_conocimiento` (`id_are`, `semestre_are`) VALUES
(1, 'Ciencias de la Computació'),
(2, 'Programación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_car` int(11) NOT NULL,
  `nombre_car` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_car`, `nombre_car`) VALUES
(1, 'Ingeniería de Software'),
(2, 'Tecnología de Redes y Telecomunicaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum`
--

CREATE TABLE `curriculum` (
  `id_cur` int(11) NOT NULL,
  `institucion_cur` char(50) NOT NULL,
  `fecha_gra_cur` date NOT NULL,
  `titulo_cur` text NOT NULL,
  `interes_inv_cur` text NOT NULL,
  `premios_cur` text NOT NULL,
  `cursos_cur` text NOT NULL,
  `otras_responsabilidades_cur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curriculum`
--

INSERT INTO `curriculum` (`id_cur`, `institucion_cur`, `fecha_gra_cur`, `titulo_cur`, `interes_inv_cur`, `premios_cur`, `cursos_cur`, `otras_responsabilidades_cur`) VALUES
(1, 'ESPE', '1995-09-05', 'TECNOLOGO ANALISTA EN SISTEMAS E INFORMATICA, INGENIERO EN SISTEMAS E INFORMATICA, DIPLOMA\r\nSUPERIOR EN GESTION PARA EL APRENDIZAJE UNIVERSITARIO, MAGISTER EN INGENIERIA DE SOFTWARE.', 'Desarrollo de Aplicaciones Web y Móviles\r\nInteligencia Artificial\r\n', '“Reconocimiento a la Investigación”, Universidad de las Fuerzas Armadas ESPE,\r\n2016.\r\n“Feria Galardones 2016”, Ganador en el área de Ciencias Sociales y Humanidades\r\nDel Concurso de Reconocimiento a la Investigación Científica y Fomento a la\r\nInnovación Galardones 2016, Quito 30 de noviembre de 2016', '“Ciencia de Datos e Inteligencia Artificial”, Universidad de las Fuerzas Armadas\r\nESPE Sede Latacunga, 40 horas, 4 de mayo de 2022.\r\n“Metodologías de Enseñanza – Aprendizaje y Técnicas de Investigación\r\nDocente”, Universidad de las Fuerzas Armadas ESPE Sede Latacunga, 120 horas,\r\n1 de abril de 2022.\r\n“Escritura de documentos académicos utilizando LaTeX”, Universidad de las\r\nFuerzas Armadas ESPE Sede Latacunga, 40 horas, 25 de febrero de 2022.', 'Coordinador (E) del área de Programación – Computación – Sistemas\r\nComputacionales. 5 horas a la semana.\r\nCoordinador (E) de Emprendimiento e Innovación del Departamento de Ciencias\r\nde la Computación de la ESPEL. 2 horas a la semana.\r\nAdministrador del Micrositio del Departamento de Ciencias de la Computación\r\nSede Latacunga. 1 hora a la semana.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `nrc_cur` int(11) NOT NULL,
  `id_mat` int(11) DEFAULT NULL,
  `id_sem` int(11) DEFAULT NULL,
  `id_car` int(11) DEFAULT NULL,
  `id_dm` int(11) DEFAULT NULL,
  `detalles_cur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`nrc_cur`, `id_mat`, `id_sem`, `id_car`, `id_dm`, `detalles_cur`) VALUES
(0, 1, 1, 1, 1, 'Fundamentos de ISOW - Ing. Fabian Montaluisa \"A\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_doc` int(11) NOT NULL,
  `id_cur` int(11) DEFAULT NULL,
  `nombre_doc` char(50) NOT NULL,
  `apellido_doc` char(50) NOT NULL,
  `cedula_doc` char(10) NOT NULL,
  `fecha_nac_doc` date NOT NULL,
  `direccion_doc` char(150) NOT NULL,
  `correo_doc` char(50) NOT NULL,
  `telefono_doc` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_doc`, `id_cur`, `nombre_doc`, `apellido_doc`, `cedula_doc`, `fecha_nac_doc`, `direccion_doc`, `correo_doc`, `telefono_doc`) VALUES
(1, 1, 'Edgar Fabian', 'Montaluisa Pilatásig', '0501960900', '1971-09-09', 'Parroquia Juan Montalvo – Barrio San José', 'efmontaluisa@espe.edu.ec', '0983411530');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_materia`
--

CREATE TABLE `docente_materia` (
  `id_dm` int(11) NOT NULL,
  `id_doc` int(11) DEFAULT NULL,
  `id_mat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente_materia`
--

INSERT INTO `docente_materia` (`id_dm`, `id_doc`, `id_mat`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_mat` int(11) NOT NULL,
  `id_are` int(11) DEFAULT NULL,
  `codigo_mat` char(10) NOT NULL,
  `nombre_mat` char(50) NOT NULL,
  `requisito_doc_mat` text NOT NULL,
  `horas_trabAuto_doc` smallint(6) NOT NULL,
  `horas_doc_mat` smallint(6) NOT NULL,
  `horas_invest_mat` smallint(6) NOT NULL,
  `horas_total_mat` smallint(6) NOT NULL,
  `descripcion_mat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_mat`, `id_are`, `codigo_mat`, `nombre_mat`, `requisito_doc_mat`, `horas_trabAuto_doc`, `horas_doc_mat`, `horas_invest_mat`, `horas_total_mat`, `descripcion_mat`) VALUES
(1, 1, 'A0652', 'Fundamentos de ISOW', 'Ingeniero en Sistemas, Magister en Ingeniería de Software, o afines', 16, 16, 16, 48, 'Enseñar los fundamentos de la Ingeniería de Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` time DEFAULT NULL,
  `expires_at` time DEFAULT NULL,
  `created_at` time DEFAULT NULL,
  `updated_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `privilegio`
--

CREATE TABLE `privilegio` (
  `id_priv` int(11) NOT NULL,
  `nombre_priv` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `privilegio`
--

INSERT INTO `privilegio` (`id_priv`, `nombre_priv`) VALUES
(1, 'coordinador'),
(2, 'planificador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id_sem` int(11) NOT NULL,
  `nombre_sem` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`id_sem`, `nombre_sem`) VALUES
(1, 'Nov23Mar24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gtJ92NSFRqBuBD9P743lK6vIuPNVYCfzEaT3fyg8', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZHFpSmxNZjRGUEp0RDBkMll0RGhzcmc2djl0OGVMamk3NnBOc1RwSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJE85ZFpqeG95VVpZN2dOaGRkMy90NmVKaFhzclFtdFdJbFV1d213LlBaMG96VnhMUEJNN2RxIjt9', 1704740730),
('MrYHdoB7TKgKRx0pipSR6u8fuoQt3klItAQ1MTDv', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYjZoN1htVkhWWEFoRFNSSGVWNWxqWmpjeHJIYVdmVklsV2pKQkR0TSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRieXBqQTYxU1NrcFdwNGxWUHVTZTFlTW0zNzhDRHkyY2Y3c1U3WW9JejF0Y0Rqd1NuVHJxNiI7fQ==', 1704741634);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_priv` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` time DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` time DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` time DEFAULT NULL,
  `updated_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `id_priv`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(4, NULL, 'Esteban Villavicencio Estrella', 'villatre11@gmail.com', NULL, '$2y$12$bypjA61SSkpWp4lVPuSe1eMm378CDy2cf7sU7YoIz1tcDjwSnTrq6', NULL, NULL, NULL, NULL, NULL, NULL, '19:20:33', '19:20:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area_conocimiento`
--
ALTER TABLE `area_conocimiento`
  ADD PRIMARY KEY (`id_are`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_car`);

--
-- Indices de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id_cur`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`nrc_cur`),
  ADD KEY `FK_REFERENCE_5` (`id_mat`),
  ADD KEY `FK_REFERENCE_7` (`id_sem`),
  ADD KEY `FK_REFERENCE_8` (`id_car`),
  ADD KEY `FK_REFERENCE_9` (`id_dm`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_doc`),
  ADD KEY `FK_REFERENCE_6` (`id_cur`);

--
-- Indices de la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  ADD PRIMARY KEY (`id_dm`),
  ADD KEY `FK_REFERENCE_2` (`id_doc`),
  ADD KEY `FK_REFERENCE_3` (`id_mat`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_mat`),
  ADD KEY `FK_REFERENCE_4` (`id_are`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `privilegio`
--
ALTER TABLE `privilegio`
  ADD PRIMARY KEY (`id_priv`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_sem`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_REFERENCE_1` (`id_priv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area_conocimiento`
--
ALTER TABLE `area_conocimiento`
  MODIFY `id_are` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id_cur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_mat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id_sem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`id_mat`) REFERENCES `materia` (`id_mat`),
  ADD CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`id_sem`) REFERENCES `semestre` (`id_sem`),
  ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`id_car`) REFERENCES `carrera` (`id_car`),
  ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`id_dm`) REFERENCES `docente_materia` (`id_dm`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`id_cur`) REFERENCES `curriculum` (`id_cur`);

--
-- Filtros para la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  ADD CONSTRAINT `FK_REFERENCE_2` FOREIGN KEY (`id_doc`) REFERENCES `docente` (`id_doc`),
  ADD CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`id_mat`) REFERENCES `materia` (`id_mat`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`id_are`) REFERENCES `area_conocimiento` (`id_are`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_REFERENCE_1` FOREIGN KEY (`id_priv`) REFERENCES `privilegio` (`id_priv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
