## 扩展 ER 数据库关系图使用

### 环境要求

预先安装 PHP 7.3+ 环境

### 步骤

1. 复制 DDL 到 .sql 文件：[样例](../c4/component/education/user_course.sql)
2. 创建关系，在 sql 文件同级建立同名的 .ruml 后缀文件，规则见下方“实体关系说明”：[样例](../c4/component/education/user_course.ruml)
3. 执行命令：`./ext/erd/bin/sql_convertor c4/component/education/education.sql`：[自动生成样例](../c4/component/education/user_course.puml)
4. 执行 `./generate.sh`，生成图片，[样例](../c4/component/education/output/user_course.png)
5. 将图片粘贴到 wiki，使图片随 git 版本更新

#### 实体关系说明

* 一对一 `user -- user_exts`
* 一对多 `user --> user_courses`
* 多对多 `shops <--> coaches`
* 自定义 `user "1" <--> "*" user_courses`
