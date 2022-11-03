CREATE TABLE `Users` (
  `id` bigserial PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL
);

CREATE TABLE `Books` (
  `id` bigserial PRIMARY KEY,
  `name` varchar(255) UNIQUE NOT NULL,
  `author` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `user_id` int
);

CREATE INDEX `Users_index_0` ON `Users` (`name`);

CREATE INDEX `Users_index_1` ON `Users` (`nickname`);

CREATE INDEX `Books_index_2` ON `Books` (`name`);

ALTER TABLE `Books` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);
