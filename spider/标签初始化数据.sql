drop table `hoho_sysdata`.`t_tag`;

CREATE TABLE `hoho_sysdata`.`t_tag`  (
  `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签编号',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `p_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级ID',
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标签大类，USER-用户标签，ROOM-娱乐房间标签',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标签内容',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序 ',
  `is_deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否被删除',
  `is_disabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否被禁用',
  `content` json NULL COMMENT '标签其它信息',
  `mark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签标识',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签图片',
  `bg_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '标签表' ROW_FORMAT = Dynamic;



-- 用户标签初始化数据
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(4, '2020-07-10 16:15:58', '2020-07-10 16:16:01', 1, 'USER', '和平精英', 0, 0, 0 );
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(6, '2020-07-10 15:10:52', '2020-07-10 15:10:55', 2, 'USER', '扩列交友', 0, 0, 0 );
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(7, '2020-07-10 15:10:17', '2020-07-10 15:10:20', 2, 'USER', '游戏开黑', 0, 0, 0 );
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(2, '2020-07-10 15:09:36', '2020-07-10 15:09:38', 0, 'USER', '社交', 0, 0, 0 );
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(5, '2020-07-10 14:52:50', '2020-07-10 14:52:53', 1, 'USER', '传奇私服', 0, 0, 0 );
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(3, '2020-07-10 14:51:34', '2020-07-10 14:51:36', 1, 'USER', '王者荣耀', 0, 0, 0 );
INSERT INTO `hoho_sysdata`.`t_tag` (`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled` ) VALUES(1, '2020-07-10 14:50:20', '2020-07-10 14:50:23', 0, 'USER', '游戏', 0, 0, 0 );

-- 房间标签初始化数据
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (9, '2020-08-12 20:26:31', '2020-08-12 20:26:34', 0, 'ROOM', '开黑房', 0, 0, 0, NULL, 'TEAM_UP', NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (10, '2020-08-12 20:27:41', '2020-08-12 20:27:44', 0, 'ROOM', '娱乐房', 1, 0, 0, NULL, 'ENTERTAINMENT', NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (11, '2020-08-12 20:28:20', '2020-08-12 20:28:22', 0, 'ROOM', 'AA房', 2, 0, 0, NULL, 'AA', NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (12, '2020-08-12 20:30:25', '2020-08-12 20:30:28', 9, 'ROOM', '游戏开黑', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (13, '2020-08-12 20:31:04', '2020-08-12 20:31:06', 9, 'ROOM', '娱乐交友', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (14, '2020-08-12 20:58:28', '2020-08-12 20:58:28', 12, 'ROOM', '王者荣耀', 0, 0, 0, NULL, 'ROOM_TAG', 'topic/9c5150cfc27647b9961ac173a3d900aa.jpg', NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (15, '2020-08-13 16:20:57', '2020-08-13 16:21:00', 14, 'ROOM', '区服', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (16, '2020-08-13 16:22:22', '2020-08-13 16:22:25', 14, 'ROOM', '模式', 2, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (17, '2020-08-13 16:22:51', '2020-08-13 16:22:54', 14, 'ROOM', '人数', 3, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (18, '2020-08-13 16:28:45', '2020-08-13 16:28:47', 15, 'ROOM', '微信区', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (19, '2020-08-13 16:29:42', '2020-08-13 16:29:45', 15, 'ROOM', 'QQ区', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (20, '2020-08-13 16:30:56', '2020-08-13 16:30:58', 16, 'ROOM', '娱乐匹配', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (21, '2020-08-13 16:31:23', '2020-08-13 16:31:26', 16, 'ROOM', '排位上分', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (22, '2020-08-13 16:32:07', '2020-08-13 16:32:09', 17, 'ROOM', '三排', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (23, '2020-08-13 16:32:31', '2020-08-13 16:32:33', 17, 'ROOM', '五排', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (24, '2020-08-13 16:34:39', '2020-08-13 16:34:42', 12, 'ROOM', '和平精英', 1, 0, 0, NULL, 'ROOM_TAG', 'topic/973751d06dfe4092b615cd765ab719a3.jpg', NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (25, '2020-08-13 16:36:20', '2020-08-13 16:36:22', 13, 'ROOM', '扩列聊天', 1, 0, 0, NULL, 'ROOM_TAG', 'topic/72e0895cb0c340a0b61cfed577010de7.jpg', NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (26, '2020-08-21 15:05:38', '2020-08-21 15:05:40', 24, 'ROOM', '区服', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (27, '2020-08-21 15:07:19', '2020-08-21 15:07:22', 24, 'ROOM', '模式', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (28, '2020-08-21 15:08:03', '2020-08-21 15:08:04', 24, 'ROOM', '人数', 2, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (29, '2020-08-21 15:08:30', '2020-08-21 15:08:32', 26, 'ROOM', 'QQ区', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (30, '2020-08-21 15:10:01', '2020-08-21 15:10:04', 26, 'ROOM', '微信区', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (31, '2020-08-21 15:10:35', '2020-08-21 15:10:37', 26, 'ROOM', '国际服', 2, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (32, '2020-08-21 15:11:10', '2020-08-21 15:11:12', 27, 'ROOM', '娱乐匹配', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (33, '2020-08-21 15:11:45', '2020-08-21 15:11:47', 27, 'ROOM', '排位上分', 1, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (34, '2020-08-21 15:12:10', '2020-08-21 15:12:12', 28, 'ROOM', '双排', 0, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO `hoho_sysdata`.`t_tag`(`tag_id`, `create_time`, `update_time`, `p_id`, `category`, `name`, `sort`, `is_deleted`, `is_disabled`, `content`, `mark`, `image`, `bg_image`) VALUES (35, '2020-08-21 15:12:59', '2020-08-21 15:13:02', 28, 'ROOM', '四排', 1, 0, 0, NULL, NULL, NULL, NULL);

