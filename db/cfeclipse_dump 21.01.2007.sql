# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.0.19-standard)
# Database: cfeclipse
# Generation Time: 2007-01-21 23:26:01 +0000
# ************************************************************

# Dump of table cms_article
# ------------------------------------------------------------

CREATE TABLE `cms_article` (
  `art_id` int(10) unsigned NOT NULL auto_increment,
  `art_title` varchar(255) NOT NULL default '',
  `art_description` text,
  `art_content` text,
  `art_img` varchar(255) default NULL,
  `art_type_id` int(11) NOT NULL,
  `dtcreated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `dtDisplay` timestamp NOT NULL default '0000-00-00 00:00:00',
  `userid` int(10) unsigned NOT NULL default '0',
  `bPublished` tinyint(1) NOT NULL default '0',
  `art_page_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`art_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('1','An Eclipse plugin for CFML',NULL,'Founded in February 2004, the goal of the CFEclipse project is to create a plugin for the Eclipse platform that provides a professional quality IDE for CFML developers. Currently the CFEclipse plugin is one of the top rated Eclipse plugins at http://www.eclipseplugincentral.com and is in use by developers across the globe. CFEclipse offers most of the features found in traditional CFML editors and quite a few more that they don\'t. As well as allowing developers to take advantage of the wealth of other Eclipse plugins, CFEclipse comes with a developer friendly price tag.It\'s FREE!',NULL,'3','2007-01-06 22:44:27','2007-01-06 22:44:52','1','1','0');
INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('2','Feature1','FeatDEscription, a small informational item about this feature. We can see how long its going to be... and then we shall determine what to do','A feature description of code colouring','/assets/img/imageholder.gif','1','2007-01-06 22:44:27','2007-01-06 22:44:52','1','1','20');
INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('3','Feature2','FeatDEscription, a small informational item about this feature. We can see how long its going to be... and then we shall determine what to do\n','A feature description of code colouring',NULL,'1','2007-01-06 22:44:27','2007-01-06 22:44:52','1','1','20');
INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('4','Feature3','FeatDEscription, a small informational item about this feature. We can see how long its going to be... and then we shall determine what to do','A feature description of code colouring','/assets/img/imageholder.gif','1','2007-01-06 22:44:00','2007-01-06 22:44:00','1','1','20');
INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('5','Code Colouring2','FeatDEscription, a small informational item about this feature. We can see how long its going to be... and then we shall determine what to do','A feature description of code colouring',NULL,'1','2007-01-06 22:44:27','2007-01-06 22:44:52','1','1','20');
INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('6','Code Colouring3','FeatDEscription, a small informational item about this feature. We can see how long its going to be... and then we shall determine what to do','A feature description of code colouring','/assets/img/imageholder.gif','1','2007-01-06 22:44:27','2007-01-06 22:44:52','1','1','0');
INSERT INTO `cms_article` (`art_id`,`art_title`,`art_description`,`art_content`,`art_img`,`art_type_id`,`dtcreated`,`dtDisplay`,`userid`,`bPublished`,`art_page_id`) VALUES ('7','Code Colouring4','FeatDEscription, a small informational item about this feature. We can see how long its going to be... and then we shall determine what to do','A feature description of code colouring',NULL,'1','2007-01-06 22:44:27','2007-01-06 22:44:52','1','1','0');


# Dump of table cms_article_type
# ------------------------------------------------------------

CREATE TABLE `cms_article_type` (
  `type_id` int(11) NOT NULL auto_increment,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `cms_article_type` (`type_id`,`type_name`) VALUES ('1','Feature');
INSERT INTO `cms_article_type` (`type_id`,`type_name`) VALUES ('2','Content');
INSERT INTO `cms_article_type` (`type_id`,`type_name`) VALUES ('3','Homepage');
INSERT INTO `cms_article_type` (`type_id`,`type_name`) VALUES ('4','News');


# Dump of table cms_image
# ------------------------------------------------------------

CREATE TABLE `cms_image` (
  `id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table cms_page
# ------------------------------------------------------------

CREATE TABLE `cms_page` (
  `pageid` int(10) unsigned NOT NULL auto_increment,
  `pagename` varchar(100) NOT NULL default '',
  `parentpage` int(10) unsigned NOT NULL default '0',
  `pagedescription` text,
  `orderid` int(10) unsigned NOT NULL default '0',
  `bPublished` tinyint(1) NOT NULL default '1',
  `layout` varchar(100) default NULL,
  PRIMARY KEY  (`pageid`),
  UNIQUE KEY `pagename` (`pagename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('1','home','0','this is the root page of the site','0','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('19','download','1',NULL,'1','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('20','features','1',NULL,'2','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('21','support','1',NULL,'3','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('22','news','1',NULL,'4','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('23','about','1',NULL,'5','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('24','sub1','23',NULL,'0','1',NULL);
INSERT INTO `cms_page` (`pageid`,`pagename`,`parentpage`,`pagedescription`,`orderid`,`bPublished`,`layout`) VALUES ('25','sub2','24',NULL,'0','1',NULL);


# Dump of table cms_testimonial
# ------------------------------------------------------------

CREATE TABLE `cms_testimonial` (
  `tes_id` int(11) NOT NULL auto_increment,
  `tes_teaser` text,
  `tes_text` text,
  `tes_person` varchar(255) default NULL,
  `tes_jobtitle` varchar(255) default NULL,
  `tes_company` varchar(255) default NULL,
  `tes_url` varchar(500) default NULL,
  `tes_image` varchar(255) default NULL,
  `bPublished` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('1','CFEclipse is a very good Eclipse plug-in for ColdFusion with powerful features like the snippets an snippet variables.','CFEclipse is a very good Eclipse plug-in for ColdFusion with powerful features like the snippets an snippet variables. CFEclipse is very customizable to suit your coding style. But to me the best feature is that its built on Eclipse. Like many developers I used to use a combination of IDE\'s for different things. Eclipse has so many plug-ins that I rarely have to leave it an the plug-ins save me time.','Ryan Thompson-Jewell ','Sr Web Developer ','Mayo Clinic Health Solutions ','',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('2','Using CFE lets me stay in the same IDE regardless of the language I am using - CF, Java, JS, CSS, XML - I can write it all in Eclipse.','I love CFE! I was a CFStudio/Homesite+ fan for a long time. I tried DWMX but never felt comfortable with it. I finally switched to CFE and it has made my life so much easier. Honestly, it isn\'t that CFE is so much better than Homesite+ at this point (although the Methods View is a very cool feature that Homesite+ can\'t touch). CFE certainly equals Homesite+ on its own, and CFE totally wipes out Homesite+ when it comes to the underlying platform. Using CFE lets me stay in the same IDE regardless of the language I am using - CF, Java, JS, CSS, XML - I can write it all in Eclipse. I can even stay in the IDE to build my UML models and database schemas. I will never go back to using another IDE for CF development; I am officially a CFE-er for life!','Rob Munn','Software Architect','Invitrogen','http://www.funkymojo.com/blog/',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('3','I currently work for a large Fortune 100 company where most of the developers use CFEclipse as their primary IDE of choice.','I currently work for a large Fortune 100 company where most of the developers use CFEclipse as their primary IDE of choice.  I personally have been using CFEclipse with Eclipse for almost a year now and I have found it to be the most flexible and extensible tool set that I have used to date.  I would recommend CFEclipse to any ColdFusion developer.  Adobe\'s commitment to using Eclipse for Flex Builder shows testament that one of the world\'s largest software vendors shows faith in the Eclipse platform.','Teddy R Payne','Adobe Certified ColdFusion MX 7 Developer','','http://cfpayne.wordpress.com/',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('4','I rebuilt my main workstation about a year ago.  I still haven\'t\n	installed Dreamweaver - CFEclipse is all I need','I rebuilt my main workstation about a year ago.  I still haven\'t\n	installed Dreamweaver - CFEclipse is all I need','Joe Rinehart','','','',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('5','We are using cfEclipse at the Bureau of Rural Sciences here in Australia to develop a GIS application.','We are using cfEclipse at the Bureau of Rural Sciences here in Australia to develop a GIS application. Bringing Eclipses collaboration features together with ColdFusions speed of development has really helped us to team build.','Mark Ireland','Contract Programmer','Bureau of Rural Sciences','http://www.nams.gov.au',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('6','My current company has made CFEclipse the standard IDE we use for all of our ColdFusion and Java development.','Three years ago the company I was working at was looking at ways to save money on Dreamweaver licenses. One of my colleages pointed out we could use the CFEclipse plugin with Eclipse, and have integrated subversion support as well. Since both plugins are free, that saved us the cost of a license, and gave us a gain in productivity.\n\n	Now with the release of Flex Builder 2, I can develop Flex and ColdFusion in the same IDE. My current company has made CFEclipse the standard IDE we use for all of our ColdFusion and Java development.\n\n	Thank you for all of your hard work on the CFEclipse project','David Fekke','Lead Software Engineer, API Team','Vurv Technology','http://www.vurv.com',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('7','The applications we work on are larger and more robust than ever before and CFEclipse continues to give us the power and flexibility to meet our customer\'s requirements. ','Just wanted to say that we\'ve benefited greatly by utilizing CFEclipse in our development process. The applications we work on are larger and more robust than ever before and CFEclipse continues to give us the power and flexibility to meet our customer\'s requirements. We take advantage of the improvements every time a new version is released and look forward to continuing to use CFEclipse as our primary IDE in the future. Thanks to everyone involved for keeping up the great work.','Jeff Smallwood','Operations Director','SABRE SYSTEMS, INC.','http://www.sabresystems.com',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('8','I don\'t know what I would do without it!','I don\'t know what I would do without it!  With the ease of use of eclipse\'s cvs/subversion integration and the features provided by cfeclipse for coldfusion development it\'s a wonder that Adobe hasn\'t just given up on Dreamweaver all together! ','Paul Roe','','','',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('9','CFEclipse is now an indispensable part of my toolset for developer ColdFusion applications.','CFEclipse is now an indispensable part of my toolset for developer ColdFusion applications.','Raymond Camden','VP of Technology','roundpeg','http://ray.camdenfamily.com',NULL,'1');
INSERT INTO `cms_testimonial` (`tes_id`,`tes_teaser`,`tes_text`,`tes_person`,`tes_jobtitle`,`tes_company`,`tes_url`,`tes_image`,`bPublished`) VALUES ('10','CFEclipse offers a powerful new choice for code-centric ColdFusion\ndevelopers, and Adobe is proud to support the project.',NULL,'Tim Buntel','Product Marketing Manager, ColdFusion','Adobe','http://www.adobe.com',NULL,'1');


# Dump of table cms_user
# ------------------------------------------------------------

CREATE TABLE `cms_user` (
  `userid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL default '',
  `password` varchar(45) NOT NULL default '',
  `DisplayName` varchar(100) NOT NULL default '',
  `bActive` tinyint(1) NOT NULL default '1',
  `bAdmin` tinyint(1) NOT NULL default '0',
  `dtLastLogin` datetime default NULL,
  `email` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `cms_user` (`userid`,`username`,`password`,`DisplayName`,`bActive`,`bAdmin`,`dtLastLogin`,`email`) VALUES ('1','markd','markd','Mark Drew','1','1',NULL,'mark.drew@gmail.com');


