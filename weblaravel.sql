-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2023 a las 23:59:27
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `weblaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'et ut', 'et-ut', '2023-02-25 19:49:47', '2023-02-25 19:49:47'),
(2, 'quas exercitationem', 'quas-exercitationem', '2023-02-25 19:49:47', '2023-02-25 19:49:47'),
(3, 'nemo earum', 'nemo-earum', '2023-02-25 19:49:47', '2023-02-25 19:49:47'),
(4, 'ut qui', 'ut-qui', '2023-02-25 19:49:47', '2023-02-25 19:49:47'),
(5, 'sunt enim', 'sunt-enim', '2023-02-25 19:49:47', '2023-02-25 19:49:47'),
(6, 'vel qui', 'vel-qui', '2023-02-25 19:49:47', '2023-02-25 19:49:47'),
(7, 'voluptate accusantium', 'voluptate-accusantium', '2023-02-25 19:50:33', '2023-02-25 19:50:33'),
(8, 'veniam et', 'veniam-et', '2023-02-25 19:50:33', '2023-02-25 19:50:33'),
(9, 'ut eum', 'ut-eum', '2023-02-25 19:50:33', '2023-02-25 19:50:33'),
(10, 'et quia', 'et-quia', '2023-02-25 19:50:33', '2023-02-25 19:50:33'),
(11, 'in autem', 'in-autem', '2023-02-25 19:50:33', '2023-02-25 19:50:33'),
(12, 'quasi expedita', 'quasi-expedita', '2023-02-25 19:50:33', '2023-02-25 19:50:33');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_25_202259_create_categories_table', 2),
(6, '2023_02_25_202330_create_products_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_descriptions` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_descriptions`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'non quia ut consequuntur delectus exercitationem', 'non-quia-ut-consequuntur-delectus-exercitationem', 'Suscipit assumenda quam ea dolorum. Amet atque placeat aliquam dicta. Id illo eum ut excepturi et.', 'Quia et ut in ab. Ex ut ab et enim reiciendis voluptatum voluptas. Ullam officiis ex voluptatum sed iure. Quia quas earum aut quam.', '201.00', NULL, 'PRD141', 'instock', 0, 24, 'product-11', NULL, 2, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(2, 'iste autem maiores inventore quo non', 'iste-autem-maiores-inventore-quo-non', 'Dolore aut quo inventore molestiae corrupti. Dolores qui omnis ut dignissimos. Est inventore architecto non libero accusantium aut.', 'Nobis aut dolorem sint omnis non. Omnis aperiam porro deserunt occaecati corrupti est. Facilis veritatis ullam et sed consequatur.', '108.00', NULL, 'PRD208', 'instock', 0, 47, 'product-12', NULL, 3, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(3, 'est facere voluptas ut iste quibusdam', 'est-facere-voluptas-ut-iste-quibusdam', 'Similique unde cupiditate ipsa culpa ut incidunt. Eos ut dolor repellendus inventore quia cum. Dicta eius beatae maiores itaque suscipit nesciunt temporibus.', 'Aspernatur est ducimus quas sed aut veritatis. Vel voluptatem aspernatur voluptate sunt quis odit maxime et.', '232.00', NULL, 'PRD228', 'instock', 0, 36, 'product-5', NULL, 2, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(4, 'excepturi et officiis laboriosam consequatur officia', 'excepturi-et-officiis-laboriosam-consequatur-officia', 'Placeat beatae neque consequatur at et totam. Omnis voluptatibus occaecati laborum magni suscipit dolor consectetur.', 'Nulla doloremque quis excepturi fugit laboriosam. Sint reiciendis earum minus consequatur aut. Blanditiis enim id enim dignissimos quod quo sed. Consequatur culpa voluptatem eius omnis qui aut ea. Ratione consequatur sed repudiandae.', '132.00', NULL, 'PRD175', 'instock', 0, 29, 'product-13', NULL, 4, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(5, 'id et ea est adipisci quasi', 'id-et-ea-est-adipisci-quasi', 'Eum nihil sequi necessitatibus esse est architecto. Provident ex est occaecati. Qui sed nesciunt necessitatibus suscipit laudantium fuga in. Sequi aut ipsam dolore ut cupiditate commodi.', 'Et aliquid provident sunt vel eos quia aspernatur architecto. Magnam inventore voluptas dolorum quia vitae in tempore.', '77.00', NULL, 'PRD166', 'instock', 0, 42, 'product-8', NULL, 4, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(6, 'magnam enim aut aut ut quisquam', 'magnam-enim-aut-aut-ut-quisquam', 'Iure similique quia qui. Voluptas labore et et dolor enim.', 'Architecto sit molestiae aut voluptatem delectus debitis ab iure. Optio nisi vitae aut necessitatibus libero alias incidunt. Voluptas perspiciatis esse non necessitatibus temporibus.', '51.00', NULL, 'PRD244', 'instock', 0, 32, 'product-10', NULL, 5, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(7, 'perferendis nesciunt qui non quasi aliquid', 'perferendis-nesciunt-qui-non-quasi-aliquid', 'Similique sint provident ullam itaque autem libero. Dolores est dolore aut. Cupiditate magnam eligendi vitae quam est. Et sit perspiciatis tempora quia.', 'Repellendus rerum excepturi quo aut rerum. Numquam vero omnis sapiente culpa. Facilis officiis dicta dolor non omnis pariatur. Illum nihil perferendis architecto rerum.', '85.00', NULL, 'PRD238', 'instock', 0, 37, 'product-1', NULL, 2, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(8, 'consequatur dicta eligendi nemo quia laudantium', 'consequatur-dicta-eligendi-nemo-quia-laudantium', 'Consectetur excepturi iusto eaque aut. Natus impedit quia molestiae omnis. Laboriosam culpa hic rerum natus dolor aut error. In ut ut distinctio.', 'Tempore facilis dolorem aut blanditiis totam enim iusto adipisci. Aspernatur tenetur similique doloremque quo qui eum distinctio. Soluta velit repellat qui fugiat. Iste quis impedit atque eos fugit ea.', '193.00', NULL, 'PRD214', 'instock', 0, 45, 'product-15', NULL, 5, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(9, 'qui nihil dolorem molestias tenetur at', 'qui-nihil-dolorem-molestias-tenetur-at', 'Occaecati non et beatae natus. Accusamus aut quia magnam iste omnis rerum deserunt.', 'Quod id non consequatur reprehenderit quaerat eum. Repellendus modi explicabo quia qui. Modi ut nihil neque tempora ullam iste.', '250.00', NULL, 'PRD221', 'instock', 0, 24, 'product-13', NULL, 4, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(10, 'unde voluptatibus rem magnam quisquam fugit', 'unde-voluptatibus-rem-magnam-quisquam-fugit', 'Aliquid qui voluptatem autem. Libero sapiente commodi est aperiam nisi et. Qui dolorem inventore provident ad ea magnam.', 'Laudantium sit ut et voluptatem voluptatem blanditiis laudantium. Iste expedita officiis expedita enim itaque quae nobis libero. Soluta corrupti odit eos. Officiis commodi quibusdam est est consectetur est aspernatur.', '47.00', NULL, 'PRD127', 'instock', 0, 29, 'product-2', NULL, 2, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(11, 'minima consectetur dolores dolores enim unde', 'minima-consectetur-dolores-dolores-enim-unde', 'Aliquam est molestiae non odio. Assumenda quaerat itaque sequi numquam. Provident ut facere magnam aut. Exercitationem molestiae id rerum ea provident.', 'Voluptas quia tempora accusamus et. Eaque quasi aliquam ut. Magni voluptas animi quis porro possimus.', '206.00', NULL, 'PRD179', 'instock', 0, 13, 'product-4', NULL, 5, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(12, 'id consequatur esse aperiam placeat voluptatem', 'id-consequatur-esse-aperiam-placeat-voluptatem', 'Impedit ad iusto ratione quaerat delectus. Dignissimos et et doloremque repellendus. Explicabo ut aliquam dolor vitae maiores rerum. Dolores sed doloribus aliquam excepturi.', 'At voluptate dolorem consequatur omnis ab ut impedit. Quidem quia quia esse quaerat dolorem eius accusamus. Culpa quia est nihil veniam ullam est.', '183.00', NULL, 'PRD199', 'instock', 0, 46, 'product-11', NULL, 3, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(13, 'voluptate officia aut veniam earum et', 'voluptate-officia-aut-veniam-earum-et', 'Inventore delectus excepturi cumque est necessitatibus provident temporibus. Est est et vero ut omnis. Quasi est accusantium officia eaque quis alias et id.', 'Aperiam numquam sapiente voluptas esse nemo fuga. Delectus voluptas non non quibusdam consectetur optio eveniet. Eos ad et dicta quam sit unde dolores.', '216.00', NULL, 'PRD162', 'instock', 0, 16, 'product-9', NULL, 2, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(14, 'dignissimos earum omnis optio sit perspiciatis', 'dignissimos-earum-omnis-optio-sit-perspiciatis', 'Explicabo ab recusandae nisi. Aperiam molestiae sapiente rerum quis quasi. Perspiciatis qui nam laboriosam id. Minus laboriosam sequi est nemo cumque dolore et.', 'Id qui quo repellat odit saepe quo accusamus. Qui repellendus et sit dolorem nisi similique quis voluptas. Enim occaecati impedit repellat minus esse hic et beatae. Illo non at fugit magni suscipit debitis asperiores.', '184.00', NULL, 'PRD116', 'instock', 0, 27, 'product-15', NULL, 5, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(15, 'aliquid omnis suscipit enim eligendi rerum', 'aliquid-omnis-suscipit-enim-eligendi-rerum', 'Assumenda est officia qui culpa non veritatis magnam. Ducimus tempore qui sit accusantium eum. Quod est et quibusdam et ut autem. Qui dignissimos sed eaque quo cupiditate et.', 'Adipisci eligendi veniam voluptatem cupiditate architecto. Qui adipisci nisi cupiditate consectetur facere. Natus sequi ut aut in at dolore.', '161.00', NULL, 'PRD215', 'instock', 0, 47, 'product-12', NULL, 2, '2023-02-25 19:59:14', '2023-02-25 19:59:14'),
(16, 'fuga voluptatibus sed dolorem ipsam sapiente', 'fuga-voluptatibus-sed-dolorem-ipsam-sapiente', 'Eveniet quam nihil qui quidem ipsa omnis deserunt. Necessitatibus mollitia quia omnis sint sint consequuntur accusantium.', 'Ea inventore quod quasi et vel voluptatem eaque. Eveniet sequi saepe asperiores quos eum. Sequi et et et ut. Et perspiciatis hic porro sunt eveniet. Omnis aliquam reiciendis illo error tempore ipsa. Minus mollitia quia non alias.', '151.00', NULL, 'PRD237', 'instock', 0, 29, 'product-13', NULL, 5, '2023-02-25 19:59:14', '2023-02-25 19:59:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for Normal User',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Victor', 'admin@gmail.com', NULL, '$2y$10$1z.hBqMgz1ePz3nP1ETt1u8o1v82N2S.WYXvazobbfvwaUAusNUVm', 'ADM', NULL, '2023-02-24 17:46:43', '2023-02-24 17:46:43'),
(2, 'moises', 'vmoisescastro@gmail.com', NULL, '$2y$10$ZTbV74BA30GhJLJW.pp26O3HXiisjUA2ia77Lwp03wCn.KGLDv6PO', 'USR', NULL, '2023-02-24 17:48:40', '2023-02-24 17:48:40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
