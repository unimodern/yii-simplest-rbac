CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci,
  `roles` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

INSERT INTO `user` (`id`, `username`, `password`, `email`, `profile`, `roles`) VALUES
(NULL, 'admin', '$2a$10$YhPH4QbUdpq01zefRXPcReAo1.IQPdOhYAIJdm1TCMrQRhbIJIr7y', 'admin@example.com', '', 'admin'),
(NULL, 'demo', '$2a$10$Qy/NcU4vetQvY9DF03ZdJ.8t2TRvw.5PEdYdxL/Ub7qdBcvuCL65C', 'demo@example.com', '', 'demo');
