#学生表
CREATE TABLE student(
	id INT,#学号
	sname VARCHAR(20),#姓名
	sex ENUM('男','女')
);

DESC student;
#教师表
CREATE TABLE teacher(
	id INT,
	tname VARCHAR(20),
	class VARCHAR(20)
);
	
DESC teacher;

#增
INSERT INTO student VALUES(1, '张三', '男');
INSERT INTO student VALUES(2, '李四', '男');
INSERT INTO student VALUES(3, '王五', '女');
INSERT INTO student VALUES(4, '赵六', '女');


#删
DELETE FROM student WHERE id = 1 ;


#改
UPDATE student SET id = 1 WHERE sname = '李四';


#查
SELECT * FROM student;#查看改动后的表格
SELECT id,sex FROM student;#查看学号对应性别


#事务
BEGIN;
DELETE FROM student WHERE id = 1;
COMMIT;

