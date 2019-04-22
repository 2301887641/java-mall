-- 解决Mysql TIMESTAMP 字段「Invalid default value」问题
SET SQL_MODE = 'ALLOW_INVALID_DATES';
-- ----------------------------
--  Table structure for mall_merchant  商家表
-- ----------------------------
DROP TABLE IF EXISTS mall_merchant;
CREATE TABLE mall_merchant (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  create_time timestamp  not null  default CURRENT_TIMESTAMP,
	update_time timestamp  not null default '0000-00-00 00:00:00',
  name varchar(50) not null COMMENT '商家名称',
  store_name varchar(50) not null COMMENT '店铺名称',
  password varchar(64) not null COMMENT '用户密码，MD5加密或sha256散列加密',
  email varchar(50) not null default '' COMMENT '邮箱',
  login_count int(10) not null default 0 COMMENT '登陆次数',
  is_admin tinyint(1) not null default 0 COMMENT '是否管理员 0不是 1是',
  last_login_ip varchar(30) not null default '' COMMENT 'ip地址',
  PRIMARY KEY (id),
  UNIQUE KEY user_name_unique (username) USING BTREE,
  UNIQUE KEY nickname(nickname) using BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;