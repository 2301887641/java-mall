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
  account varchar(64) not null COMMENT '帐号',
  password varchar(50) not null COMMENT '密码',
  scope varchar(500) not null  COMMENT '登陆次数',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;