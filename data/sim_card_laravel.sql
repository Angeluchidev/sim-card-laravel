-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2023 a las 03:28:23
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sim_card_laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`id`, `descripcion`) VALUES
(1, 'Almacen 1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-02-23 14:10:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-02-23 14:11:15', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-02-23 15:03:52', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/planes/add-save', 'Add New Data  at Planes', '', 1, '2023-02-23 15:10:37', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Actualizar información Planes en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-star</td></tr></tbody></table>', 1, '2023-02-23 15:34:59', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/planes/edit-save/1', 'Actualizar información  en Planes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>descripcion</td><td>descrip plan naraja mod</td><td>descrip plan naraja mod 1</td></tr></tbody></table>', 1, '2023-02-24 18:55:37', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Actualizar información Países en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-flag</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-02-24 19:11:55', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/paises/add-save', 'Añadir nueva información  en Países', '', 1, '2023-02-24 19:17:46', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/operadoras/add-save', 'Añadir nueva información  en Operadoras', '', 1, '2023-02-24 19:39:56', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sucursales/add-save', 'Añadir nueva información  en Sucursales', '', 1, '2023-02-24 20:14:50', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-02-27 01:22:15', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/status/edit-save/3', 'Actualizar información  en Estatus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>descripcion</td><td>En Simbank</td><td>En Simbank mod</td></tr></tbody></table>', 1, '2023-02-27 01:42:39', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/status/edit-save/3', 'Actualizar información  en Estatus', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>descripcion</td><td>En Simbank mod</td><td>En Simbank</td></tr></tbody></table>', 1, '2023-02-27 01:42:50', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Actualizar información Super Admin en Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-02/99bb7520c30f3f711f6d46e81dc7bfd3.png</td></tr><tr><td>password</td><td>$2y$10$pCULGhGN9d.oHkpb5KSbwuosuyUb8n6hdIoVa.cBLW/TwWO7cLyM.</td><td>$2y$10$6BjhDfYkCQ.yXDXACey49eUgIGrvt.NEggS.1VZJzZSN5x2pR81dS</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-02-27 01:48:05', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-02-27 01:48:32', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-02-27 01:48:36', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/almacenes/add-save', 'Añadir nueva información  en Almacenes', '', 1, '2023-02-27 02:19:06', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/paises/add-save', 'Añadir nueva información  en Países', '', 1, '2023-02-27 03:43:21', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/add-save', 'Añadir nueva información  en Lotes', '', 1, '2023-02-27 03:46:10', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/add-save', 'Añadir nueva información  en Lotes', '', 1, '2023-02-27 04:47:44', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-02-27 04:49:11', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-02-27 04:49:15', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/add-save', 'Añadir nueva información  en Lotes', '', 1, '2023-02-27 05:00:24', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/edit-save/2', 'Actualizar información  en Lotes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-02-27 05:01:41', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/edit-save/2', 'Actualizar información  en Lotes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>fecha_lote</td><td>2023-02-15</td><td>2023-02-16</td></tr></tbody></table>', 1, '2023-02-27 05:03:29', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/operadoras/add-save', 'Añadir nueva información  en Operadoras', '', 1, '2023-02-27 05:04:49', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/operadoras/add-save', 'Añadir nueva información  en Operadoras', '', 1, '2023-02-27 05:05:14', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/operadoras/add-save', 'Añadir nueva información  en Operadoras', '', 1, '2023-02-27 05:06:51', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/edit-save/2', 'Actualizar información  en Lotes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-02-27 05:07:11', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/edit-save/2', 'Actualizar información  en Lotes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>operadoras_id</td><td>4</td><td>1</td></tr><tr><td>paises_id</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2023-02-27 05:33:50', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-02-27 18:09:54', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Actualizar información Sim Cards en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2023-02-27 18:34:17', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-02-27 20:55:54', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/personas/add-save', 'Añadir nueva información  en Personas', '', 1, '2023-02-27 21:01:13', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-02-27 21:01:49', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-02-27 21:07:57', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-02-28 17:40:37', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recargas/add-save', 'Añadir nueva información  en Recargas', '', 1, '2023-02-28 18:47:00', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/historicos_sim/add-save', 'Añadir nueva información  en Historicos Sim Card', '', 1, '2023-02-28 19:42:37', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/historicos_sim/add-save', 'Añadir nueva información  en Historicos Sim Card', '', 1, '2023-02-28 19:43:12', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Añadir nueva información Angel Briceño en Users Management', '', 1, '2023-02-28 20:01:22', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-02-28 20:02:01', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Actualizar información Planes en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-02-28 20:02:38', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Actualizar información Países en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:03:13', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Actualizar información Operadoras en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:03:22', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Actualizar información Sucursales en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:04:00', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Actualizar información Estatus en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:07:52', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Actualizar información Almacenes en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:08:06', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Actualizar información Personas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:08:31', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Actualizar información Lotes en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2023-02-28 20:08:39', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Usuarios en Menu Management', '', 1, '2023-02-28 21:01:47', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-01 17:24:11', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-01 17:38:42', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Añadir nueva información escritorio en Statistic Builder', '', 1, '2023-03-01 18:39:08', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-08 07:16:48', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-03-08 09:22:09', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/3', 'Actualizar información 1 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td>121</td><td></td></tr></tbody></table>', 1, '2023-03-08 09:26:06', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/3', 'Actualizar información 1 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td>121</td><td></td></tr><tr><td>puk</td><td>0001</td><td></td></tr></tbody></table>', 1, '2023-03-08 09:33:12', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/3', 'Actualizar información 1 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td>121</td><td>0</td></tr><tr><td>puk</td><td>0001</td><td>0</td></tr></tbody></table>', 1, '2023-03-08 09:33:39', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-03-08 09:34:37', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/3', 'Actualizar información 1 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td>0</td><td></td></tr><tr><td>puk</td><td>0</td><td></td></tr></tbody></table>', 1, '2023-03-08 09:35:06', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/4', 'Actualizar información 1 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td></td><td>56487a</td></tr><tr><td>puk</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-08 09:35:45', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-03-08 09:41:22', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-03-08 09:50:02', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información 1 en Sim Cards', '', 1, '2023-03-08 09:53:39', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información  en Sim Cards', '', 1, '2023-03-08 10:05:38', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Añadir nueva información Estadisticas en Menu Management', '', 1, '2023-03-08 10:44:16', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Actualizar información Estadisticas en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td></td><td></td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-03-08 10:44:44', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/add-save', 'Añadir nueva información  en Lotes', '', 1, '2023-03-08 10:46:50', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-03-08 10:51:15', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-08 10:51:40', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información  en Sim Cards', '', 2, '2023-03-08 10:52:27', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'angeluchi.dev@gmail.com se desconectó', '', 2, '2023-03-08 10:57:56', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-08 10:58:05', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-03-08 11:03:19', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-08 11:03:56', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información  en Sim Cards', '', 2, '2023-03-08 11:07:07', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'angeluchi.dev@gmail.com se desconectó', '', 2, '2023-03-08 11:29:09', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-08 11:29:12', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-08 14:28:16', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-09 06:54:17', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-03-09 06:54:28', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-09 06:54:50', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-09 23:32:35', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/add-save', 'Añadir nueva información  en Sim Cards', '', 2, '2023-03-09 23:33:28', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-10 01:01:49', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recargas/add-save', 'Añadir nueva información  en Recargas', '', 1, '2023-03-10 03:01:47', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/planes/edit-save/1', 'Actualizar información  en Planes', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>descripcion</td><td>descrip plan naraja mod 1</td><td>descrip plan naraja</td></tr></tbody></table>', 1, '2023-03-10 03:19:42', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/personas/add-save', 'Añadir nueva información  en Personas', '', 1, '2023-03-10 03:31:11', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/9', 'Actualizar información 2 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td></td><td></td></tr><tr><td>puk</td><td></td><td></td></tr><tr><td>numero</td><td></td><td>04265988745</td></tr><tr><td>fecha_act</td><td></td><td>2023-03-01</td></tr><tr><td>fecha_plan</td><td></td><td>2023-03-25</td></tr><tr><td>planes_id</td><td></td><td></td></tr><tr><td>personas_id</td><td></td><td>2</td></tr></tbody></table>', 1, '2023-03-10 03:32:19', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/recargas/add-save', 'Añadir nueva información  en Recargas', '', 1, '2023-03-10 03:33:18', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-03-10 05:18:43', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-10 05:20:24', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'angeluchi.dev@gmail.com se desconectó', '', 2, '2023-03-10 05:20:45', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-10 05:20:53', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Actualizar información Vista Sim card en Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2023-03-10 05:22:42', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/sim_cards/edit-save/9', 'Actualizar información 2 en Sim Cards', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cod_pin</td><td></td><td></td></tr><tr><td>puk</td><td></td><td></td></tr><tr><td>planes_id</td><td></td><td>1</td></tr></tbody></table>', 1, '2023-03-10 06:32:17', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/historicos_sim/add-save', 'Añadir nueva información  en Historicos Sim Card', '', 1, '2023-03-10 06:35:11', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-03-10 06:41:26', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-10 06:41:48', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-12 22:54:27', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://localhost/sim-card-laravel/public/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP ::1', '', 1, '2023-03-13 07:20:34', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-13 18:07:14', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', 1, '2023-03-14 05:35:43', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/lotes/add-save', 'Añadir nueva información  en Lotes', '', 1, '2023-03-14 05:45:45', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', 1, '2023-03-14 06:24:56', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'Ingreso de angeluchi.dev@gmail.com desde la Dirección IP 127.0.0.1', '', 2, '2023-03-14 06:25:13', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Planes', 'Route', 'AdminPlanesControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 5, '2023-02-23 15:07:39', '2023-02-28 20:02:38'),
(2, 'Países', 'Route', 'AdminPaisesControllerGetIndex', 'normal', 'fa fa-flag', 0, 1, 0, 1, 3, '2023-02-24 19:10:04', '2023-02-28 20:03:13'),
(3, 'Operadoras', 'Route', 'AdminOperadorasControllerGetIndex', 'normal', 'fa fa-phone', 0, 1, 0, 1, 4, '2023-02-24 19:34:21', '2023-02-28 20:03:22'),
(4, 'Sucursales', 'Route', 'AdminSucursalesControllerGetIndex', 'normal', 'fa fa-industry', 0, 1, 0, 1, 6, '2023-02-24 20:08:05', '2023-02-28 20:03:59'),
(5, 'Estatus', 'Route', 'AdminStatusControllerGetIndex', 'normal', 'fa fa-list-alt', 0, 1, 0, 1, 7, '2023-02-27 01:31:43', '2023-02-28 20:07:52'),
(6, 'Almacenes', 'Route', 'AdminAlmacenesControllerGetIndex', 'normal', 'fa fa-home', 0, 1, 0, 1, 8, '2023-02-27 02:12:35', '2023-02-28 20:08:06'),
(7, 'Lotes', 'Route', 'AdminLotesControllerGetIndex', 'normal', 'fa fa-file', 0, 1, 0, 1, 10, '2023-02-27 03:23:22', '2023-02-28 20:08:38'),
(8, 'Sim Cards', 'Route', 'AdminSimCardsControllerGetIndex', 'normal', 'fa fa-glass', 0, 0, 0, 1, 1, '2023-02-27 18:14:09', '2023-02-27 18:34:17'),
(9, 'Personas', 'Route', 'AdminPersonasControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 9, '2023-02-27 20:59:48', '2023-02-28 20:08:30'),
(10, 'Recargas', 'Route', 'AdminRecargasControllerGetIndex', NULL, 'fa fa-money', 0, 0, 0, 1, 2, '2023-02-28 17:44:29', NULL),
(11, 'Historicos Sim Card', 'Route', 'AdminHistoricosSimControllerGetIndex', NULL, 'fa fa-glass', 0, 0, 0, 1, 3, '2023-02-28 19:26:27', NULL),
(12, 'Usuarios', 'Module', 'users', 'normal', 'fa fa-user', 0, 1, 0, 1, 2, '2023-02-28 21:01:46', NULL),
(13, 'Estadisticas', 'Statistic', 'statistic_builder/show/escritorio', 'normal', NULL, 0, 1, 1, 1, 1, '2023-03-08 10:44:16', '2023-03-08 10:44:44'),
(14, 'Vista Sim card', 'Route', 'AdminVsimcardControllerGetIndex', 'normal', 'fa fa-glass', 0, 1, 0, 1, 11, '2023-03-10 01:11:39', '2023-03-10 05:22:42'),
(15, 'Importar Sim Cards', 'Route', 'AdminImportarSimCardsControllerGetIndex', NULL, 'fa fa-glass', 0, 1, 0, 1, 12, '2023-03-13 02:01:54', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(11, 8, 1),
(13, 10, 1),
(14, 11, 1),
(15, 1, 2),
(16, 1, 1),
(17, 2, 2),
(18, 2, 1),
(19, 3, 2),
(20, 3, 1),
(21, 4, 2),
(22, 4, 1),
(23, 5, 2),
(24, 5, 1),
(25, 6, 2),
(26, 6, 1),
(27, 9, 2),
(28, 9, 1),
(29, 7, 2),
(30, 7, 1),
(31, 12, 2),
(33, 13, 2),
(34, 13, 1),
(36, 14, 2),
(37, 14, 1),
(38, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2023-02-23 14:10:10', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2023-02-23 14:10:10', NULL, NULL),
(12, 'Planes', 'fa fa-credit-card', 'planes', 'planes', 'AdminPlanesController', 0, 0, '2023-02-23 15:07:39', NULL, NULL),
(13, 'Países', 'fa fa-flag', 'paises', 'paises', 'AdminPaisesController', 0, 0, '2023-02-24 19:10:04', NULL, NULL),
(14, 'Operadoras', 'fa fa-phone', 'operadoras', 'operadoras', 'AdminOperadorasController', 0, 0, '2023-02-24 19:34:20', NULL, NULL),
(15, 'Sucursales', 'fa fa-industry', 'sucursales', 'sucursales', 'AdminSucursalesController', 0, 0, '2023-02-24 20:08:05', NULL, NULL),
(16, 'Estatus', 'fa fa-list-alt', 'status', 'status', 'AdminStatusController', 0, 0, '2023-02-27 01:31:42', NULL, NULL),
(17, 'Almacenes', 'fa fa-home', 'almacenes', 'almacenes', 'AdminAlmacenesController', 0, 0, '2023-02-27 02:12:35', NULL, NULL),
(18, 'Lotes', 'fa fa-file', 'lotes', 'lotes', 'AdminLotesController', 0, 0, '2023-02-27 03:23:21', NULL, NULL),
(19, 'Sim Cards', 'fa fa-glass', 'sim_cards', 'sim_cards', 'AdminSimCardsController', 0, 0, '2023-02-27 18:14:08', NULL, NULL),
(20, 'Personas', 'fa fa-glass', 'personas', 'personas', 'AdminPersonasController', 0, 0, '2023-02-27 20:59:48', NULL, NULL),
(21, 'Recargas', 'fa fa-money', 'recargas', 'recargas', 'AdminRecargasController', 0, 0, '2023-02-28 17:44:29', NULL, NULL),
(22, 'Historicos Sim Card', 'fa fa-glass', 'historicos_sim', 'historicos_sim', 'AdminHistoricosSimController', 0, 0, '2023-02-28 19:26:27', NULL, NULL),
(23, 'Vista Sim card', 'fa fa-glass', 'vsimcard', 'sim_cards', 'AdminVsimcardController', 0, 0, '2023-03-10 01:11:39', NULL, NULL),
(24, 'Importar Sim Cards', 'fa fa-glass', 'importar_sim_cards', 'sim_cards', 'AdminImportarSimCardsController', 0, 0, '2023-03-13 02:01:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2023-02-23 14:10:11', NULL),
(2, 'Administrador', 0, 'skin-red', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2023-02-23 14:10:12', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2023-02-23 14:10:12', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2023-02-23 14:10:12', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2023-02-23 14:10:12', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2023-02-23 14:10:12', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2023-02-23 14:10:12', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2023-02-23 14:10:12', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2023-02-23 14:10:12', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2023-02-23 14:10:12', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2023-02-23 14:10:12', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2023-02-23 14:10:12', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(36, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(37, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(38, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(39, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(40, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(41, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(42, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(43, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(44, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(45, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(46, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(47, 1, 1, 1, 1, 1, 2, 4, NULL, NULL),
(48, 1, 0, 0, 0, 0, 2, 23, NULL, NULL),
(49, 1, 1, 1, 1, 1, 1, 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2023-02-23 14:10:10', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2023-02-23 14:10:10', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2023-02-23 14:10:10', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2023-02-23 14:10:10', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Sim-Cards', 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-02-23 14:10:10', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2023-02-23 14:10:10', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2023-02-23 14:10:10', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'escritorio', 'escritorio', '2023-03-01 18:39:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(2, 1, '9a8ea904451ac0668d584be614a33b6d', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Lotes Registrados\",\"icon\":\"ion-archive\",\"color\":\"bg-green\",\"link\":\"\\/lotes\",\"sql\":\"SELECT\\r\\nCOUNT(lotes.id)as lotes\\r\\nFROM\\r\\nlotes\"}', '2023-03-08 10:34:39', NULL),
(3, 1, 'ed452910a89af59fe7766afcbd08cf7a', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Sim Card Activos Movilnet\",\"icon\":\"ion-wifi\",\"color\":\"bg-yellow\",\"link\":\"\\/admin\\/lotes\",\"sql\":\"SELECT\\r\\ncount(*)\\r\\nFROM\\r\\nsim_cards\\r\\nINNER JOIN historicos_sim ON historicos_sim.sim_cards_id = sim_cards.id\\r\\nINNER JOIN lotes ON sim_cards.lotes_id = lotes.id\\r\\nINNER JOIN operadoras ON lotes.operadoras_id = operadoras.id\\r\\nWHERE\\r\\nlotes.operadoras_id=1 and\\r\\nhistoricos_sim.status_id=1\"}', '2023-03-10 05:23:41', NULL),
(4, 1, '0588771c90a15ba30658d84fa20d83ce', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Sim Card Activos Movistar\",\"icon\":\"ion-wifi\",\"color\":\"bg-aqua\",\"link\":\"\\/admin\\/lotes\",\"sql\":\"SELECT\\r\\ncount(*)\\r\\nFROM\\r\\nsim_cards\\r\\nINNER JOIN historicos_sim ON historicos_sim.sim_cards_id = sim_cards.id\\r\\nINNER JOIN lotes ON sim_cards.lotes_id = lotes.id\\r\\nINNER JOIN operadoras ON lotes.operadoras_id = operadoras.id\\r\\nWHERE\\r\\nlotes.operadoras_id=2 and\\r\\nhistoricos_sim.status_id=1\"}', '2023-03-10 05:23:44', NULL),
(5, 1, '4fa4917cebfdf3f8a01a993da63409bc', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Sim Card Activos Digitel\",\"icon\":\"ion-wifi\",\"color\":\"bg-red\",\"link\":\"\\/admin\\/lotes\",\"sql\":\"SELECT\\r\\ncount(*)\\r\\nFROM\\r\\nsim_cards\\r\\nINNER JOIN historicos_sim ON historicos_sim.sim_cards_id = sim_cards.id\\r\\nINNER JOIN lotes ON sim_cards.lotes_id = lotes.id\\r\\nINNER JOIN operadoras ON lotes.operadoras_id = operadoras.id\\r\\nWHERE\\r\\nlotes.operadoras_id=3 and\\r\\nhistoricos_sim.status_id=1\"}', '2023-03-10 05:23:51', NULL),
(6, 1, 'ed6e7f6903508f10ec54fc3c646cf542', 'table', 'area5', 0, NULL, '{\"name\":\"Consulta rapida\",\"sql\":\"SELECT * FROM vsimcard\"}', '2023-03-10 05:32:23', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2023-02/99bb7520c30f3f711f6d46e81dc7bfd3.png', 'admin@crudbooster.com', '$2y$10$6BjhDfYkCQ.yXDXACey49eUgIGrvt.NEggS.1VZJzZSN5x2pR81dS', 1, '2023-02-23 14:10:10', '2023-02-27 01:48:05', 'Active'),
(2, 'Angel Briceño', 'uploads/1/2023-02/perfil_angel_recorte.jpg', 'angeluchi.dev@gmail.com', '$2y$10$5dKPGD65lZ2p.CmlpTDsJuuwRI/BxPxtfw3Q4PP8qzZjNWMfBUc0K', 2, '2023-02-28 20:01:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historicos_sim`
--

CREATE TABLE `historicos_sim` (
  `id` int(11) NOT NULL,
  `fecha_historico` date NOT NULL,
  `sim_cards_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `almacenes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `historicos_sim`
--

INSERT INTO `historicos_sim` (`id`, `fecha_historico`, `sim_cards_id`, `status_id`, `almacenes_id`) VALUES
(1, '2023-02-25', 2, 1, 1),
(2, '2023-02-28', 2, 3, 1),
(3, '2023-03-01', 9, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lotes`
--

CREATE TABLE `lotes` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `sucursales_id` int(11) DEFAULT NULL,
  `operadoras_id` int(11) DEFAULT NULL,
  `paises_id` int(11) DEFAULT NULL,
  `fecha_lote` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `lotes`
--

INSERT INTO `lotes` (`id`, `descripcion`, `sucursales_id`, `operadoras_id`, `paises_id`, `fecha_lote`) VALUES
(2, 'Lote Febrero 1', 1, 1, 1, '2023-02-16'),
(3, 'primer lote movistar', 1, 2, 1, '2023-03-01'),
(4, 'Lote febrero prueba Import', 1, 1, 1, '2023-03-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operadoras`
--

CREATE TABLE `operadoras` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `prefijos` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `paises_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `operadoras`
--

INSERT INTO `operadoras` (`id`, `descripcion`, `prefijos`, `paises_id`) VALUES
(1, 'Movilnet', '0416/0426', 1),
(2, 'Movistar', '0414/0424', 1),
(3, 'Digitel', '0412', 1),
(4, 'Vivo', '1569/1556', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `descripcion`) VALUES
(1, 'Venezuela'),
(2, 'Brazil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `ci` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `ci`, `nombres`, `apellidos`) VALUES
(1, 15408827, 'Angel Jose', 'Briceño Davila'),
(2, 17345882, 'Anyel Marelby', 'Pacheco Pacheco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `Plan` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `Plan`, `descripcion`) VALUES
(1, 'plan Naranja', 'descrip plan naraja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recargas`
--

CREATE TABLE `recargas` (
  `id` int(11) NOT NULL,
  `fecha_recarga` date NOT NULL,
  `monto_bs` double NOT NULL,
  `equivalencia_usd` double NOT NULL,
  `sim_cards_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `recargas`
--

INSERT INTO `recargas` (`id`, `fecha_recarga`, `monto_bs`, `equivalencia_usd`, `sim_cards_id`) VALUES
(1, '2023-02-01', 25, 1, 2),
(2, '2023-03-09', 50, 2, 2),
(3, '2023-03-25', 150, 6, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sim_cards`
--

CREATE TABLE `sim_cards` (
  `id` int(11) NOT NULL,
  `serial` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cod_pin` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `puk` varchar(50) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `numero` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `fecha_act` date DEFAULT NULL,
  `fecha_plan` date DEFAULT NULL,
  `planes_id` int(11) DEFAULT NULL,
  `personas_id` int(11) DEFAULT NULL,
  `lotes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `sim_cards`
--

INSERT INTO `sim_cards` (`id`, `serial`, `cod_pin`, `puk`, `numero`, `fecha_act`, `fecha_plan`, `planes_id`, `personas_id`, `lotes_id`) VALUES
(1, '0001', '1234', '0001', '04265874987', '2023-02-01', '2023-02-25', 1, 1, 2),
(2, '0002', '12345', '0002', '04262356987', '2023-02-01', '2023-02-24', 1, 1, 2),
(3, '0003', '0', '0', '04265698745', '2023-03-01', '2023-03-23', 1, 1, 2),
(4, '0005', '56487a', NULL, '04264589874', '2023-03-06', '2023-03-21', 1, 1, 2),
(5, '0006', NULL, NULL, '04261235698', NULL, '2023-03-01', 1, 1, 2),
(6, '0007', NULL, NULL, '04165898765', NULL, NULL, 1, 1, 2),
(7, '0008', NULL, NULL, '04261234569', NULL, NULL, NULL, 1, 2),
(8, '0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(9, '00010', NULL, NULL, '04265988745', '2023-03-01', '2023-03-25', 1, 2, 3),
(10, '00011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(11, '00012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(16, 'up001', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(17, 'up002', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(18, 'up003', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19, 'up004', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20, 'up003', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(21, 'up004', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(22, 'up005', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(23, 'up006', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(24, 'up005', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(25, 'up006', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(26, 'up005', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(27, 'up006', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(28, 'up005', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(29, 'up006', 'pin001', NULL, NULL, NULL, NULL, NULL, NULL, 3),
(330, '8958060004605904473', NULL, '32615455', '4164201987', NULL, NULL, NULL, NULL, 4),
(331, '8958060004605904408', NULL, '62589373', '4164079407', NULL, NULL, NULL, NULL, 4),
(332, '8958060004605904622', NULL, '86006704', '4164020433', NULL, NULL, NULL, NULL, 4),
(333, '8958060004605904630', NULL, '9234269', '4164208677', NULL, NULL, NULL, NULL, 4),
(334, '8958060004605904648', NULL, '40766933', '4164124857', NULL, NULL, NULL, NULL, 4),
(335, '8958060004605904788', NULL, '83691519', '4164264844', NULL, NULL, NULL, NULL, 4),
(336, '8958060004605904457', NULL, '81284879', '4264104300', NULL, NULL, NULL, NULL, 4),
(337, '8958060004605904440', NULL, '31140666', '4264114991', NULL, NULL, NULL, NULL, 4),
(338, '8958060004605904432', NULL, '32589482', '4264119935', NULL, NULL, NULL, NULL, 4),
(339, '8958060004605904424', NULL, '82151603', '4164254328', NULL, NULL, NULL, NULL, 4),
(340, '8958060004605904390', NULL, '53956793', '4164129091', NULL, NULL, NULL, NULL, 4),
(341, '8958060004605904374', NULL, '11815739', '4164173833', NULL, NULL, NULL, NULL, 4),
(342, '8958060004605904234', NULL, '39346014', '4164221899', NULL, NULL, NULL, NULL, 4),
(343, '8958060004605904481', NULL, '88651309', '4164082339', NULL, NULL, NULL, NULL, 4),
(344, '8958060004605902741', NULL, '32089720', '4264106852', NULL, NULL, NULL, NULL, 4),
(345, '8958060004605902725', NULL, '43406994', '4264115024', NULL, NULL, NULL, NULL, 4),
(346, '8958060004605902782', NULL, '34297160', '4264100179', NULL, NULL, NULL, NULL, 4),
(347, '8958060004605902790', NULL, '91352084', '4164144519', NULL, NULL, NULL, NULL, 4),
(348, '8958060004605904515', NULL, '10666433', '4264109606', NULL, NULL, NULL, NULL, 4),
(349, '8958060004605904507', NULL, '50677182', '4264100839', NULL, NULL, NULL, NULL, 4),
(350, '8958060004605904499', NULL, '20570778', '4264101300', NULL, NULL, NULL, NULL, 4),
(351, '8958060004605904770', NULL, '9224910', '4264700885', NULL, NULL, NULL, NULL, 4),
(352, '8958060004605904762', NULL, '64327434', '4264107603', NULL, NULL, NULL, NULL, 4),
(353, '8958060004605904754', NULL, '64672978', '4264119712', NULL, NULL, NULL, NULL, 4),
(354, '8958060004605904366', NULL, '33433018', '4164025516', NULL, NULL, NULL, NULL, 4),
(355, '8958060004605904341', NULL, '38366914', '4164082954', NULL, NULL, NULL, NULL, 4),
(356, '8958060004605904606', NULL, '83727629', '4164001255', NULL, NULL, NULL, NULL, 4),
(357, '8958060004605904358', NULL, '84400125', '4164019014', NULL, NULL, NULL, NULL, 4),
(358, '8958060004605904739', NULL, '69085381', '4264107461', NULL, NULL, NULL, NULL, 4),
(359, '8958060004605904382', NULL, '59688393', '4164220933', NULL, NULL, NULL, NULL, 4),
(360, '8958060004605904333', NULL, '44785819', '4164185859', NULL, NULL, NULL, NULL, 4),
(361, '8958060004605904325', NULL, '4103492', '4164066672', NULL, NULL, NULL, NULL, 4),
(362, '8958060004605904242', NULL, '33600558', '4164042459', NULL, NULL, NULL, NULL, 4),
(363, '8958060004605902881', NULL, '49843109', '4164229120', NULL, NULL, NULL, NULL, 4),
(364, '8958060004605902873', NULL, '61792120', '4164250833', NULL, NULL, NULL, NULL, 4),
(365, '8958060004605902758', NULL, '88268929', '4264114975', NULL, NULL, NULL, NULL, 4),
(366, '8958060004605902857', NULL, '14696025', '4264113905', NULL, NULL, NULL, NULL, 4),
(367, '8958060004605902816', NULL, '35126162', '4264116485', NULL, NULL, NULL, NULL, 4),
(368, '8958060004605902865', NULL, '6475423', '4264116432', NULL, NULL, NULL, NULL, 4),
(369, '8958060004605902840', NULL, '45130314', '4264105422', NULL, NULL, NULL, NULL, 4),
(370, '8958060004605902832', NULL, '52056825', '4164273590', NULL, NULL, NULL, NULL, 4),
(371, '8958060004605904580', NULL, '45848291', '4164029019', NULL, NULL, NULL, NULL, 4),
(372, '8958060004605902824', NULL, '52210085', '4264105425', NULL, NULL, NULL, NULL, 4),
(373, '8958060004605902808', NULL, '18187304', '4164116918', NULL, NULL, NULL, NULL, 4),
(374, '8958060004605902766', NULL, '64366353', '4264100143', NULL, NULL, NULL, NULL, 4),
(375, '8958060004605902733', NULL, '33740350', '4264115079', NULL, NULL, NULL, NULL, 4),
(376, '8958060004605902998', NULL, '23734079', '4264119917', NULL, NULL, NULL, NULL, 4),
(377, '8958060004605904465', NULL, '51945982', '4164261928', NULL, NULL, NULL, NULL, 4),
(378, '8958060004605902899', NULL, '52961270', '4264105421', NULL, NULL, NULL, NULL, 4),
(379, '8958060004605902709', NULL, '44902067', '4264116864', NULL, NULL, NULL, NULL, 4),
(380, '8958060004605902717', NULL, '81882012', '4264116862', NULL, NULL, NULL, NULL, 4),
(381, '8958060004605904531', NULL, '47149705', '4264107463', NULL, NULL, NULL, NULL, 4),
(382, '8958060004605904556', NULL, '8154065', '4264701019', NULL, NULL, NULL, NULL, 4),
(383, '8958060004605904564', NULL, '81427140', '4264700972', NULL, NULL, NULL, NULL, 4),
(384, '8958060004605904572', NULL, '72457447', '4164240383', NULL, NULL, NULL, NULL, 4),
(385, '8958060004605904614', NULL, '30641630', '4164062162', NULL, NULL, NULL, NULL, 4),
(386, '8958060004605904523', NULL, '48102957', '4264100728', NULL, NULL, NULL, NULL, 4),
(387, '8958060004605902774', NULL, '7969228', '4264105430', NULL, NULL, NULL, NULL, 4),
(388, '8958060004605904549', NULL, '29494968', '4264111591', NULL, NULL, NULL, NULL, 4),
(389, '8958060004605904598', NULL, '32706294', '4164019356', NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `descripcion`) VALUES
(1, 'Activo'),
(2, 'En espera'),
(3, 'En Simbank'),
(4, 'Fallido'),
(5, 'Sin saldo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `descripcion`, `direccion`) VALUES
(1, 'Sucursal 1', 'Valera, CC Edivica II');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vsimcard`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vsimcard` (
`id` int(11)
,`serial` varchar(50)
,`cod_pin` varchar(50)
,`puk` varchar(50)
,`numero` varchar(255)
,`fecha_act` date
,`Plan` varchar(50)
,`fecha_plan` date
,`ci` int(11)
,`nombres` varchar(101)
,`lote` varchar(255)
,`sucursal` varchar(50)
,`operadora` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vsimcard`
--
DROP TABLE IF EXISTS `vsimcard`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vsimcard`  AS SELECT `sim_cards`.`id` AS `id`, `sim_cards`.`serial` AS `serial`, `sim_cards`.`cod_pin` AS `cod_pin`, `sim_cards`.`puk` AS `puk`, `sim_cards`.`numero` AS `numero`, `sim_cards`.`fecha_act` AS `fecha_act`, `planes`.`Plan` AS `Plan`, `sim_cards`.`fecha_plan` AS `fecha_plan`, `personas`.`ci` AS `ci`, concat(`personas`.`nombres`,' ',`personas`.`apellidos`) AS `nombres`, `lotes`.`descripcion` AS `lote`, `sucursales`.`descripcion` AS `sucursal`, `operadoras`.`descripcion` AS `operadora` FROM (((((`lotes` join `sim_cards` on(`sim_cards`.`lotes_id` = `lotes`.`id`)) join `sucursales` on(`lotes`.`sucursales_id` = `sucursales`.`id`)) join `operadoras` on(`lotes`.`operadoras_id` = `operadoras`.`id`)) left join `personas` on(`sim_cards`.`personas_id` = `personas`.`id`)) left join `planes` on(`sim_cards`.`planes_id` = `planes`.`id`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indices de la tabla `historicos_sim`
--
ALTER TABLE `historicos_sim`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sim_cards_id` (`sim_cards_id`) USING BTREE,
  ADD KEY `status_id` (`status_id`) USING BTREE,
  ADD KEY `almacenes_id` (`almacenes_id`) USING BTREE;

--
-- Indices de la tabla `lotes`
--
ALTER TABLE `lotes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sucursales_id` (`sucursales_id`) USING BTREE,
  ADD KEY `operadoras_id` (`operadoras_id`) USING BTREE,
  ADD KEY `paises_id` (`paises_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `operadoras`
--
ALTER TABLE `operadoras`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `paises_id` (`paises_id`) USING BTREE;

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `recargas`
--
ALTER TABLE `recargas`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sim_cards_id` (`sim_cards_id`) USING BTREE;

--
-- Indices de la tabla `sim_cards`
--
ALTER TABLE `sim_cards`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `planes_id` (`planes_id`) USING BTREE,
  ADD KEY `personas_id` (`personas_id`) USING BTREE,
  ADD KEY `lotes_id` (`lotes_id`) USING BTREE;

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historicos_sim`
--
ALTER TABLE `historicos_sim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lotes`
--
ALTER TABLE `lotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `operadoras`
--
ALTER TABLE `operadoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `recargas`
--
ALTER TABLE `recargas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sim_cards`
--
ALTER TABLE `sim_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historicos_sim`
--
ALTER TABLE `historicos_sim`
  ADD CONSTRAINT `historicos_sim_ibfk_1` FOREIGN KEY (`sim_cards_id`) REFERENCES `sim_cards` (`id`),
  ADD CONSTRAINT `historicos_sim_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `historicos_sim_ibfk_3` FOREIGN KEY (`almacenes_id`) REFERENCES `almacenes` (`id`);

--
-- Filtros para la tabla `lotes`
--
ALTER TABLE `lotes`
  ADD CONSTRAINT `lotes_ibfk_1` FOREIGN KEY (`sucursales_id`) REFERENCES `sucursales` (`id`),
  ADD CONSTRAINT `lotes_ibfk_2` FOREIGN KEY (`operadoras_id`) REFERENCES `operadoras` (`id`),
  ADD CONSTRAINT `lotes_ibfk_3` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `operadoras`
--
ALTER TABLE `operadoras`
  ADD CONSTRAINT `operadoras_ibfk_1` FOREIGN KEY (`paises_id`) REFERENCES `paises` (`id`);

--
-- Filtros para la tabla `recargas`
--
ALTER TABLE `recargas`
  ADD CONSTRAINT `recargas_ibfk_1` FOREIGN KEY (`sim_cards_id`) REFERENCES `sim_cards` (`id`);

--
-- Filtros para la tabla `sim_cards`
--
ALTER TABLE `sim_cards`
  ADD CONSTRAINT `sim_cards_ibfk_1` FOREIGN KEY (`planes_id`) REFERENCES `planes` (`id`),
  ADD CONSTRAINT `sim_cards_ibfk_2` FOREIGN KEY (`personas_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `sim_cards_ibfk_3` FOREIGN KEY (`lotes_id`) REFERENCES `lotes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
