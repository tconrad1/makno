CREATE TABLE `vote`(
    `member_id` INTEGER UNSIGNED NOT NULL ,
    `post_id` INTEGER NOT NULL,
    `id` INTEGER NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `communities`(
    `id` INTEGER UNSIGNED NOT NULL PRIMARY KEY,
    `owner` INTEGER NOT NULL
);
CREATE TABLE `members_to_communities`(
    `id` INTEGER UNSIGNED NOT NULL PRIMARY KEY,
    `member_id` INTEGER NOT NULL,
    `community_id` INTEGER NOT NULL
);
CREATE TABLE `media`(
    `id` INTEGER UNSIGNED NOT NULL PRIMARY KEY,
    `content` BLOB NOT NULL
);
CREATE TABLE `posts`(
    `id` INTEGER UNSIGNED NOT NULL PRIMARY KEY,
    `parent_id` INTEGER NULL,
    `title` TEXT NOT NULL,
    `content` TEXT NOT NULL,
    `media` INTEGER NULL,
    `community_id` INTEGER NOT NULL,
    `votes` INTEGER NOT NULL,
    `author` INTEGER NOT NULL
);
CREATE TABLE `members`(
    `id` INTEGER UNSIGNED NOT NULL PRIMARY KEY
);
-- ALTER TABLE
--     `members_to_communities` ADD CONSTRAINT `members_to_communities_member_id_foreign` FOREIGN KEY(`member_id`) REFERENCES `members`(`id`);
-- ALTER TABLE
--     `posts` ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY(`author`) REFERENCES `members`(`id`);
-- ALTER TABLE
--     `posts` ADD CONSTRAINT `posts_votes_foreign` FOREIGN KEY(`votes`) REFERENCES `vote`(`post_id`);
-- ALTER TABLE
--     `posts` ADD CONSTRAINT `posts_community_id_foreign` FOREIGN KEY(`community_id`) REFERENCES `communities`(`id`);
-- ALTER TABLE
--     `vote` ADD CONSTRAINT `vote_member_id_foreign` FOREIGN KEY(`member_id`) REFERENCES `members`(`id`);
-- ALTER TABLE
--     `members_to_communities` ADD CONSTRAINT `members_to_communities_community_id_foreign` FOREIGN KEY(`community_id`) REFERENCES `communities`(`id`);
-- ALTER TABLE
--     `posts` ADD CONSTRAINT `posts_media_foreign` FOREIGN KEY(`media`) REFERENCES `media`(`id`);
-- ALTER TABLE
--     `communities` ADD CONSTRAINT `communities_owner_foreign` FOREIGN KEY(`owner`) REFERENCES `members`(`id`);