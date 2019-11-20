SET NAMES UTF8;
DROP DATABASE IF EXISTS suipai;
#创建“随拍”的数据库

CREATE DATABASE suipai CHARSET=UTF8;
USE suipai;

#1-u 创建"用户"的表格        //插入五个用户
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  phone	CHAR(11),		#电话号码
  upwd CHAR(6),	#密码
  uname VARCHAR(10),	#昵称
  sex BOOL,		#性别
  headimage VARCHAR(100),	#头像
  autograph VARCHAR(30),	#签名
  brithday DATE,	#生日
  hometown VARCHAR(30),	#家乡
  look INT(100)	#浏览
);

INSERT INTO user VALUES('','18345678910','123456','徐','1','./img/head/1.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-1-1','杭州','100');
INSERT INTO user VALUES('','18345678911','123456','谢','1','./img/head/2.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-2-1','杭州','100');
INSERT INTO user VALUES('','18345678912','123456','张','1','./img/head/3.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-3-1','杭州','100');
INSERT INTO user VALUES('','18345678913','123456','何','1','./img/head/4.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-4-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','佛','1','./img/head/5.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/6.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/7.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');
INSERT INTO user VALUES('','18345678914','123456','测试','1','./img/head/8.jpg','勿念昨宵黄花去,今夜暗香自徘徊','1998-5-1','杭州','100');



#1-f 创建"用户 粉丝"的表格
CREATE TABLE user_follower(
  u_fid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,		#用户的 ID 
  u_ta INT		#用来获取ID人的信息
);
INSERT INTO user_follower VALUES('','1','2');
INSERT INTO user_follower VALUES('','1','3');
INSERT INTO user_follower VALUES('','1','4');
INSERT INTO user_follower VALUES('','1','5');
INSERT INTO user_follower VALUES('','1','6');
INSERT INTO user_follower VALUES('','1','7');
INSERT INTO user_follower VALUES('','1','8');
INSERT INTO user_follower VALUES('','1','9');
INSERT INTO user_follower VALUES('','1','10');
INSERT INTO user_follower VALUES('','1','11');
INSERT INTO user_follower VALUES('','1','12');
INSERT INTO user_follower VALUES('','1','13');
INSERT INTO user_follower VALUES('','1','14');
INSERT INTO user_follower VALUES('','1','15');
INSERT INTO user_follower VALUES('','2','1');
INSERT INTO user_follower VALUES('','2','3');
INSERT INTO user_follower VALUES('','2','4');
INSERT INTO user_follower VALUES('','2','5');
INSERT INTO user_follower VALUES('','3','2');
INSERT INTO user_follower VALUES('','3','1');
INSERT INTO user_follower VALUES('','3','4');
INSERT INTO user_follower VALUES('','3','5');
INSERT INTO user_follower VALUES('','4','2');
INSERT INTO user_follower VALUES('','4','3');
INSERT INTO user_follower VALUES('','4','1');
INSERT INTO user_follower VALUES('','4','5');
INSERT INTO user_follower VALUES('','5','2');
INSERT INTO user_follower VALUES('','5','3');
INSERT INTO user_follower VALUES('','5','4');
INSERT INTO user_follower VALUES('','5','1');


#1-g 创建"用户 关注"的表格
CREATE TABLE user_follow(
  u_gid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,		  #用户的 ID  
  u_ta INT		#用来获取ID人的信息  
);
INSERT INTO user_follow VALUES('','1','2');
INSERT INTO user_follow VALUES('','1','3');
INSERT INTO user_follow VALUES('','1','4');
INSERT INTO user_follow VALUES('','1','5');
INSERT INTO user_follow VALUES('','1','6');
INSERT INTO user_follow VALUES('','1','7');
INSERT INTO user_follow VALUES('','1','8');
INSERT INTO user_follow VALUES('','1','9');
INSERT INTO user_follow VALUES('','1','10');
INSERT INTO user_follow VALUES('','1','11');
INSERT INTO user_follow VALUES('','1','12');
INSERT INTO user_follow VALUES('','1','13');
INSERT INTO user_follow VALUES('','1','14');
INSERT INTO user_follow VALUES('','1','15');
INSERT INTO user_follow VALUES('','2','1');
INSERT INTO user_follow VALUES('','2','3');
INSERT INTO user_follow VALUES('','2','4');
INSERT INTO user_follow VALUES('','2','5');
INSERT INTO user_follow VALUES('','3','2');
INSERT INTO user_follow VALUES('','3','1');
INSERT INTO user_follow VALUES('','3','4');
INSERT INTO user_follow VALUES('','3','5');
INSERT INTO user_follow VALUES('','4','2');
INSERT INTO user_follow VALUES('','4','3');
INSERT INTO user_follow VALUES('','4','1');
INSERT INTO user_follow VALUES('','4','5');
INSERT INTO user_follow VALUES('','5','2');
INSERT INTO user_follow VALUES('','5','3');
INSERT INTO user_follow VALUES('','5','4');
INSERT INTO user_follow VALUES('','5','1');

#2-lv 创建"作品表_旅途美食"的表格
CREATE TABLE z_lvtu(
  z_lvid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,			#用户编码
  time DATE,			#创作的时间
  titile VARCHAR(20),		#标题
  class2 INT,      #类型 1-早餐 2-午餐 3-晚餐 4-下午茶
  classl INT,      #类型  1-肉类 2-蔬菜 3-甜品 4-烘焙
  shoupic VARCHAR(100),		#首页图片
  summary VARCHAR(50),		#简介
  area VARCHAR(50),		#你在哪里
  look INT	#浏览
);
INSERT INTO z_lvtu VALUES('','1','2019-1-1','蝴蝶兰','4','3','./img/image/1 (1).png','一家不错的甜品店,好吃','','100');
INSERT INTO z_lvtu VALUES('','5','2019-1-10','超好吃的宫保鸡丁','3','1','./img/image/2 (1).png','比去吃肉质鲜美非常棒','','10');
INSERT INTO z_lvtu VALUES('','1','2019-1-25','糖醋里脊','2','1','./img/image/2 (4).png','还不错','','500');
INSERT INTO z_lvtu VALUES('','1','2019-2-15','牛肉寿司','2','1','./img/image/4 (3).png','中午偷闲出去逛了逛,发现了这个','','300');
INSERT INTO z_lvtu VALUES('','1','2019-5-15','草莓蛋糕','4','3','./img/image/1 (6).png','好吃的草莓蛋糕','','328');
INSERT INTO z_lvtu VALUES('','5','2019-9-1','蛋塔','4','3','./img/image/1 (7).png','蛋挞你的最爱，无法拒绝的美味','','996');
INSERT INTO z_lvtu VALUES('','3','2018-8-25','宫保鸡丁','2','1','./img/image/2 (1).png','还不错，很美味','','566');
INSERT INTO z_lvtu VALUES('','5','2019-7-15','酿黄瓜','2','1','./img/image/4 (1).png','发现了这个好吃的','','330');
INSERT INTO z_lvtu VALUES('','3','2019-3-1','手抓羊肉','4','3','./img/image/2 (6).png','美味好吃的手抓羊肉','','1120');
INSERT INTO z_lvtu VALUES('','2','2018-11-10','鱼香肉丝','3','1','./img/image/2 (2).png','鲜美可口的鱼香肉丝','','546');
INSERT INTO z_lvtu VALUES('','3','2019-5-5','酱香排骨','2','1','./img/image/2 (5).png','还不错的酱香排骨','','500');
INSERT INTO z_lvtu VALUES('','4','2019-6-5','酿肉蘑菇','2','2','./img/image/4 (2).png','出去逛逛吃酿肉蘑菇','','300');
INSERT INTO z_lvtu VALUES('','3','2019-7-13','鸡块烧芋头','3','3','./img/image/1 (8).png','好吃鸡块烧芋头','','450');
INSERT INTO z_lvtu VALUES('','5','2018-9-11','南瓜甜点','3','1','./img/image/1 (9).png','去吃鲜美南瓜甜点','','10');
INSERT INTO z_lvtu VALUES('','1','2018-11-2','红烧全鱼','2','1','./img/image/2 (7).png','还不错红烧全鱼','','412');
INSERT INTO z_lvtu VALUES('','4','2019-6-19','鸡块烧芋头','3','3','./img/image/2 (8).png','鸡块烧芋头不可错过','','361');

INSERT INTO z_lvtu VALUES('','4','2019-2-11','自制曲奇','1','4','./img/image/5 (1).jpg','卖相有点差，但味道还不错','','33');
INSERT INTO z_lvtu VALUES('','1','2019-3-29','小酥饼','1','4','./img/image/5 (2).jpg','真的超有料','','323');
INSERT INTO z_lvtu VALUES('','2','2019-4-30','牛角面包','1','4','./img/image/5 (3).jpg','当早餐刚刚好','','56');
INSERT INTO z_lvtu VALUES('','1','2019-3-16','儿童饼干','1','4','./img/image/5 (4).jpg','不管好不好吃，就这形状就给满分','','31');
INSERT INTO z_lvtu VALUES('','3','2019-1-19','蛋黄酥','1','4','./img/image/5 (5).jpg','好吃没话说，吃过一次忘不掉','','61');
INSERT INTO z_lvtu VALUES('','3','2019-6-19','香肠面包','1','4','./img/image/5 (6).jpg','身藏香肠，满口好滋味','','61');
INSERT INTO z_lvtu VALUES('','3','2019-6-19','小点心','1','4','./img/image/5 (7).jpg','买了个模具感觉还挺好用的','','61');

INSERT INTO z_lvtu VALUES('','1','2019-6-29','蔬菜萨拉','3','2','./img/image/6 (1).jpg','减肥走起','','61');
INSERT INTO z_lvtu VALUES('','1','2019-7-9','油豆腐毛毛菜','3','2','./img/image/6 (2).jpg','油豆腐和毛毛菜真的绝配','','161');
INSERT INTO z_lvtu VALUES('','5','2019-6-21','油浇菜心','3','2','./img/image/6 (3).jpg','至少看起来不错','','631');
INSERT INTO z_lvtu VALUES('','3','2019-1-1','丸子青菜汤','3','2','./img/image/6 (4).jpg','清淡好吃','','161');
INSERT INTO z_lvtu VALUES('','2','2019-3-6','炸花球','3','2','./img/image/6 (5).jpg','挺花功夫但真的不错','','361');
INSERT INTO z_lvtu VALUES('','4','2019-4-8','干煸长干豆','3','2','./img/image/6 (6).jpg','家常小炒，手艺还没丢','','91');










# 创建 食旅 作品的评论表  
CREATE TABLE z_lvtu_ping(
  lvp_id INT PRIMARY KEY AUTO_INCREMENT,
  lvtu_id INT,    #作品的专属id
  uid INT,        #评论的用户id
  time DATE,      #评论的时间
  details VARCHAR(100)    #评论的内容
);
INSERT INTO z_lvtu_ping VALUES('','1','2',"2019-1-1","这家甜品看起来不错，下次我也去尝尝");




#2-diy 创建"作品表——DIY"的表格
CREATE TABLE z_diy(
  z_diyid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,			#用户编码
  time DATE,			#创作的时间
  title VARCHAR(20),		#标题
  titlepic VARCHAR(100),	#标题图片
  summary VARCHAR(50),		#简介
  technology INT,		#工艺
  taste INT,			#口味
  duration INT		#制作时长
);

#时间
CREATE TABLE duration(
  d_id INT,
  time VARCHAR(20)
);
INSERT INTO duration VALUES("1","15分钟");
INSERT INTO duration VALUES("2","30分钟");
INSERT INTO duration VALUES("3","1小时");
INSERT INTO duration VALUES("4","2小时");
INSERT INTO duration VALUES("5","4小时");
INSERT INTO duration VALUES("6","超过4小时");

#工艺表
CREATE TABLE tech(
  te_id INT,
  technology VARCHAR(10)  #工艺
);
INSERT INTO tech VALUES("1","炖");
INSERT INTO tech VALUES("2","炒");
INSERT INTO tech VALUES("3","炸");
INSERT INTO tech VALUES("4","煮");
INSERT INTO tech VALUES("5","煎");
INSERT INTO tech VALUES("6","蒸");
INSERT INTO tech VALUES("7","烘培");

#口味表
CREATE TABLE taste(
  ta_id INT,
  taste VARCHAR(10)  #口味
);
INSERT INTO taste VALUES("1","咸鲜味");
INSERT INTO taste VALUES("2","甜味");
INSERT INTO taste VALUES("3","香辣味");
INSERT INTO taste VALUES("4","麻辣味");
INSERT INTO taste VALUES("5","酱香味");
INSERT INTO taste VALUES("6","蒜香味");
INSERT INTO taste VALUES("7","酸味");

INSERT INTO z_diy VALUES('','1','2019-2-15','东坡肉','','自己制作一波美食','1','1','4');

#2-diy-step 创建"作品表——DIY 步骤"的表格
CREATE TABLE z_diy_step(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  z_lvid INT,
  pic VARCHAR(100),		#图片
  note VARCHAR(200)		#说明
);
INSERT INTO z_diy_step VALUES('','1','','先把肉洗净然后切成适当的大小');
INSERT INTO z_diy_step VALUES('','1','','然后将肉放进水中煮几分钟,将白沫去除');
INSERT INTO z_diy_step VALUES('','1','','倒入油,放入八角香叶等香料,将其炒香，接着倒入酱油、料酒、水、盐，制作汤汁');
INSERT INTO z_diy_step VALUES('','1','','将大葱切成一段一段，并铺在砂锅的底部');
INSERT INTO z_diy_step VALUES('','1','','汤汁倒入砂锅，并用筷子将肉块放入砂锅');
INSERT INTO z_diy_step VALUES('','1','','四周放上几块冰糖,盖盖小火煮一个半小时');
INSERT INTO z_diy_step VALUES('','1','','大火煮10分钟,进行收汁,装盘');












