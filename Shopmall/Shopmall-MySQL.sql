CREATE TABLE `users` (
  `id` bigserial PRIMARY KEY,
  `username` varchar(255) UNIQUE NOT NULL,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `products` (
  `id` bigserial PRIMARY KEY,
  `name` varchar(255) UNIQUE NOT NULL,
  `stock` int64 NOT NULL
);

CREATE TABLE `orders` (
  `id` bigserial PRIMARY KEY,
  `user_id` int,
  `product_id` int
);

CREATE INDEX `users_index_0` ON `users` (`username`);

CREATE INDEX `users_index_1` ON `users` (`name`);

CREATE INDEX `products_index_2` ON `products` (`name`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
