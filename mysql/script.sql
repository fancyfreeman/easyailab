CREATE TABLE `easyailab`.`wp_course_enrollment` ( `course_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , `jupyterhub_user` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , PRIMARY KEY (`course_id`, `jupyterhub_user`)) ENGINE = InnoDB CHARSET=utf8 COLLATE utf8_general_ci;

INSERT INTO `wp_course_enrollment` (`course_id`, `jupyterhub_user`) VALUES ('DeepLearning', 'student1')
INSERT INTO `wp_course_enrollment` (`course_id`, `jupyterhub_user`) VALUES ('course001', 'test1')