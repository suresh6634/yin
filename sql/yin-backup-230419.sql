-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2023 at 04:34 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yin`
--

-- --------------------------------------------------------

--
-- Table structure for table `dayscore`
--

CREATE TABLE `dayscore` (
  `id` int(2) NOT NULL,
  `dayscore` varchar(14) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `modified_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dayscore`
--

INSERT INTO `dayscore` (`id`, `dayscore`, `created_datetime`, `modified_datetime`) VALUES
(1, 'Stressed-out', '2018-01-31 14:33:00', '2018-01-31 14:33:00'),
(2, 'Frustrated', '2018-01-31 14:33:00', '2018-01-31 14:33:00'),
(3, 'Depressed', '2018-01-31 14:33:00', '2018-01-31 14:33:00'),
(4, 'Exhausted', '2018-01-31 14:33:00', '2018-01-31 14:33:00'),
(5, 'Normal', '2018-01-31 14:33:00', '2018-01-31 14:33:00'),
(6, 'Good', '2018-01-31 14:33:00', '2018-01-31 14:33:00'),
(7, 'Amazing', '2018-01-31 14:33:00', '2018-01-31 14:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `image_name` varchar(72) NOT NULL,
  `image_path` varchar(72) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `modified_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `id` int(122) UNSIGNED NOT NULL,
  `user_type` varchar(250) DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `user_type`, `data`) VALUES
(1, 'Member', '{\"users\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\"}}'),
(2, 'admin', '{\"users\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_create\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(122) UNSIGNED NOT NULL,
  `keys` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `keys`, `value`) VALUES
(1, 'website', 'Year In Pixels'),
(2, 'logo', ''),
(3, 'favicon', ''),
(4, 'SMTP_EMAIL', 'alerts@imsuresh.com'),
(5, 'HOST', 'smtp.zoho.com'),
(6, 'PORT', '80'),
(7, 'SMTP_SECURE', '465'),
(8, 'SMTP_PASSWORD', 'Tom79Cat]Jery'),
(9, 'mail_setting', 'php_mailer'),
(10, 'company_name', 'Year In Pixels'),
(11, 'crud_list', 'users,User'),
(12, 'EMAIL', ''),
(13, 'UserModules', 'yes'),
(14, 'register_allowed', '1'),
(15, 'email_invitation', '1'),
(16, 'admin_approval', '0'),
(17, 'user_type', '[\"admin\"]');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `Tag` varchar(50) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `modified_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(121) UNSIGNED NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `html` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `module`, `code`, `template_name`, `html`) VALUES
(1, 'forgot_pass', 'forgot_password', 'Forgot password', '<html xmlns=\"http://www.w3.org/1999/xhtml\"><head>\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n  <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n    /* Base ------------------------------ */\r\n    *:not(br):not(tr):not(html) {\r\n      font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;\r\n      -webkit-box-sizing: border-box;\r\n      box-sizing: border-box;\r\n    }\r\n    body {\r\n      \r\n    }\r\n    a {\r\n      color: #3869D4;\r\n    }\r\n\r\n\r\n    /* Masthead ----------------------- */\r\n    .email-masthead {\r\n      padding: 25px 0;\r\n      text-align: center;\r\n    }\r\n    .email-masthead_logo {\r\n      max-width: 400px;\r\n      border: 0;\r\n    }\r\n    .email-footer {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      text-align: center;\r\n    }\r\n    .email-footer p {\r\n      color: #AEAEAE;\r\n    }\r\n  \r\n    .content-cell {\r\n      padding: 35px;\r\n    }\r\n    .align-right {\r\n      text-align: right;\r\n    }\r\n\r\n    /* Type ------------------------------ */\r\n    h1 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 19px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h2 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h3 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 14px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    p {\r\n      margin-top: 0;\r\n      color: #74787E;\r\n      font-size: 16px;\r\n      line-height: 1.5em;\r\n      text-align: left;\r\n    }\r\n    p.sub {\r\n      font-size: 12px;\r\n    }\r\n    p.center {\r\n      text-align: center;\r\n    }\r\n\r\n    /* Buttons ------------------------------ */\r\n    .button {\r\n      display: inline-block;\r\n      width: 200px;\r\n      background-color: #3869D4;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\r\n    }\r\n    .button--green {\r\n      background-color: #22BC66;\r\n    }\r\n    .button--red {\r\n      background-color: #dc4d2f;\r\n    }\r\n    .button--blue {\r\n      background-color: #3869D4;\r\n    }\r\n  </style>\r\n</head>\r\n<body style=\"width: 100% !important;\r\n      height: 100%;\r\n      margin: 0;\r\n      line-height: 1.4;\r\n      background-color: #F2F4F6;\r\n      color: #74787E;\r\n      -webkit-text-size-adjust: none;\">\r\n  <table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"\r\n    width: 100%;\r\n    margin: 0;\r\n    padding: 0;\">\r\n    <tbody><tr>\r\n      <td align=\"center\">\r\n        <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;\r\n      margin: 0;\r\n      padding: 0;\">\r\n          <!-- Logo -->\r\n\r\n          <tbody>\r\n          <!-- Email Body -->\r\n          <tr>\r\n            <td class=\"email-body\" width=\"100%\" style=\"width: 100%;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-top: 1px solid #edeef2;\r\n    border-bottom: 1px solid #edeef2;\r\n    background-color: #edeef2;\">\r\n              <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\" width: 570px;\r\n    margin:  14px auto;\r\n    background: #fff;\r\n    padding: 0;\r\n    border: 1px outset rgba(136, 131, 131, 0.26);\r\n    box-shadow: 0px 6px 38px rgb(0, 0, 0);\r\n       \">\r\n                <!-- Body content -->\r\n                <thead style=\"background: #3869d4;\"><tr><th><div align=\"center\" style=\"padding: 15px; color: #000;\"><a href=\"{var_action_url}\" class=\"email-masthead_name\" style=\"font-size: 16px;\r\n      font-weight: bold;\r\n      color: #bbbfc3;\r\n      text-decoration: none;\r\n      text-shadow: 0 1px 0 white;\">{var_sender_name}</a></div></th></tr>\r\n                </thead>\r\n                <tbody><tr>\r\n                  <td class=\"content-cell\" style=\"padding: 35px;\">\r\n                    <h1>Hi {var_user_name},</h1>\r\n                    <p>You recently requested to reset your password for your {var_website_name} account. Click the button below to reset it.</p>\r\n                    <!-- Action -->\r\n                    <table class=\"body-action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"\r\n      width: 100%;\r\n      margin: 30px auto;\r\n      padding: 0;\r\n      text-align: center;\">\r\n                      <tbody><tr>\r\n                        <td align=\"center\">\r\n                          <div>\r\n                            <!--[if mso]><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"{{var_action_url}}\" style=\"height:45px;v-text-anchor:middle;width:200px;\" arcsize=\"7%\" stroke=\"f\" fill=\"t\">\r\n                              <v:fill type=\"tile\" color=\"#dc4d2f\" />\r\n                              <w:anchorlock/>\r\n                              <center style=\"color:#ffffff;font-family:sans-serif;font-size:15px;\">Reset your password</center>\r\n                            </v:roundrect><![endif]-->\r\n                            <a href=\"{var_varification_link}\" class=\"button button--red\" style=\"background-color: #dc4d2f;display: inline-block;\r\n      width: 200px;\r\n      background-color: #3869D4;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\">Reset your password</a>\r\n                          </div>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                    <p>If you did not request a password reset, please ignore this email or reply to let us know.</p>\r\n                    <p>Thanks,<br>{var_sender_name} and the {var_website_name} Team</p>\r\n                   <!-- Sub copy -->\r\n                    <table class=\"body-sub\" style=\"margin-top: 25px;\r\n      padding-top: 25px;\r\n      border-top: 1px solid #EDEFF2;\">\r\n                      <tbody><tr>\r\n                        <td> \r\n                          <p class=\"sub\" style=\"font-size:12px;\">If you are having trouble clicking the password reset button, copy and paste the URL below into your web browser.</p>\r\n                          <p class=\"sub\"  style=\"font-size:12px;\"><a href=\"{var_varification_link}\">{var_varification_link}</a></p>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n  </tbody></table>\r\n\r\n\r\n</body></html>'),
(3, 'users', 'invitation', 'Invitation', '<p>Hello <strong>{var_user_email}</strong></p>\r\n\r\n<p>Click below link to register&nbsp;<br />\r\n{var_inviation_link}</p>\r\n\r\n<p>Thanks&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(121) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `var_key` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `user_id`, `var_key`, `status`, `is_deleted`, `name`, `password`, `email`, `profile_pic`, `user_type`) VALUES
(1, '1', '$2y$10$WgcupYMkcti/61rILg.7uujvhwKQm1VsjCptRKqdV4hraAsPNllpO', 'active', '0', 'admin', '$2y$10$lz0LqXn2rKIf6gqiTQZege1asw8Tuxqhla894In8cmzfs5mPxNDvS', 'phoenix.suresh@gmail.com', 'logo_1516851651.png', 'admin'),
(2, '1', NULL, 'active', '0', 'Suresh Manickam', '$2y$10$pyw1FG7wvrQk1TctLuNRG.bXpxoV4Tm51vrQbWLU7RE78bDoyKDri', 'sursoft@gmail.com', 'fullsizeoutput_1eb9_1516852356.jpeg', 'Member'),
(3, '1', NULL, 'active', '0', 'Suresh', '$2y$10$d.g2GLLz8uAKQZhc1jmV1ue6GVpfVJFycNY7ucXizA.C8hc6E93sS', 'suresh@pecko.com', 'user.png', 'Member'),
(0, NULL, '$2y$10$oLVRdrKI.JKIDzPCaD.dGu4eDm/Htwa0dSv9Gf48IzC5wvm5Io5FO', NULL, NULL, NULL, NULL, 'me@imsuresh.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yin`
--

CREATE TABLE `yin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `dayscore_id` int(2) NOT NULL,
  `comment` varchar(4096) NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `did_workout` tinyint(1) NOT NULL,
  `pics` int(11) NOT NULL,
  `created_datetime` datetime NOT NULL,
  `modified_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Yin Table created with basic fields';

--
-- Dumping data for table `yin`
--

INSERT INTO `yin` (`id`, `user_id`, `date`, `year`, `month`, `day`, `dayscore_id`, `comment`, `tag_id`, `did_workout`, `pics`, `created_datetime`, `modified_datetime`) VALUES
(85, 3, 20180109, 2018, 1, 9, 7, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3YmRDQ3hKQWxFRnZkaWtjdXo5alIxSU5ONCtTQlpLR0tZU0JnalZTQ3pGMGdVbVAvT000bDhRMzhxUUJEQmNIN0pDVU1DUkl5cThSaHJWakdrK2ZiWUdZeXVTOXhubE9FV0NWajJHeHBmZjFJVE5mNlR6RmE4b0VlelVYclp5a1o1dHcrZis2dlBhUzdTZEtMUFlzRDhUeVUwd0VqdFdTblZWTmJjNHNicXBKV29XME1nRmdZcFlRMzFKY3lHTEd3dHVzY1NLcC94dGJaaWgybWlYSlYwNFdJeFA1Q2hFRmUzN3NYejRjMzVvaDRJQXU4YTAzK3NCLzZaanJMbU5tUmc9PQ==', NULL, 0, 0, '2018-02-06 19:14:25', '2018-02-08 17:20:43'),
(86, 3, 20180110, 2018, 1, 10, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3WHlWUHdYcUxzWWV4dFd5aEpZOTloUlVITWhHUm5nTDFGMElneWNQS3FwMjA5QVhyYTFuQTJ3aVhPZFBRemVLSXc9PQ==', NULL, 0, 0, '2018-02-08 20:22:26', '2018-02-08 20:22:26'),
(87, 3, 20180108, 2018, 1, 8, 3, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3WHlWUHdYcUxzWWV4dFd5aEpZOTloUlVITWhHUm5nTDFGMElneWNQS3FwMjA5QVhyYTFuQTJ3aVhPZFBRemVLSXc9PQ==', NULL, 0, 0, '2018-02-08 20:26:31', '2018-02-08 20:26:31'),
(88, 3, 20180107, 2018, 1, 7, 6, 'MGg2QmplVENKaW92TEF3ejBXQXFOeDBEbUkwZHIyRVEvbDdFUngvdDdSaz0=', NULL, 0, 0, '2018-02-08 20:29:01', '2018-02-08 20:29:01'),
(89, 3, 20180101, 2018, 1, 1, 7, 'OVFVTnk2QXZJVWN5TlBscWVibFR5bHgwdC9xUHZnS09EcmozVnFPZm5FOVlvMmxWMHAxeTBuQ3RrYkVkLzAwV1pzREgrTXpmTno1OXU0V1J5bWU3Z3BiY2pOeHlOVlFpM0VNVnhCeWwvRlNrYjF3d3NHTmtWclJmL2ZsMXhSODJFbHY4Y3JFZm01elQwWXVmTHFadGtwY2Vyc0pnUHJmV24vN2Jpemt6dEVpN0t5T2s0NXhzMmdsb1FPMlczQ1pxYVZPUE9DY2QrYlAxMElYK3RzK3A2b0pPbC80L0NSVllBZ3YwR0J2VXJsTlJvM3RzRFhJSTNHbDdaSnY4NmV0RjQ3TU0wSnFVWm0vN1dyMFRXMUttc0xMR2ZMK0VjYnZlbnRIRGloYTNwZ1Z0cXRleDlOdHFITFZRZnU1V2dXcjNGdERaQzYvMzFKeUZXeGU5WjJrR3p3L21zM01sWmhaSFpjUktnN2k1eTlBY1ljUzFzUWNSMXlkWDFIVWxGUE1WVFRVTW5talhEMkdEWWJoaDVyM3F0VVMxTFJrZ3JOYnp1Z0kreXQ5WERDUFVjSEVTYWV5YXFCOXNnVGJYbHBHeUhUM1UwNlMwWkJuSjd4ZnVKdGJldzFqVXNhQUJsUVJicVM2ZUZIb1pnYWNtekU1dm43UlAvNS9IMTZnVTZsN05oOFhWS1pDSjIrREdMTWhndWpiTlFWS2dLMlV5ME9TZ1E4VGtBTVdkd0p6TnZQamlDVjRWc3c3U1BkdVcxd1VKVWxkbFMwazhzQllGbFFvV2hmb2FlSWMzWnRmYmdIZHhwN29hUVg4WWVPamNodW43T3I1b2VGQ1JNVlhzQXJoYU9wU0xOcWRpaUY5aWZWb0JSUkFVUHpDR0pEVUtxN3JYY0g1aWhvSXVpZGZ4MWE3TFhUYXdRb1NHcE80RlplanRZWk50dUI0aEEwckw5d2xZZEZkNnlEQSt5eTdQRHVjMGNOdGNpRHdIWi85VFF6Zlh2SG0yVG9ydlFtWE5oejg3TmdkUGFjYVo1NCtNaCtxbkNheGRmaW4xekVRK3cvNVA1bElFZW42TTdhU2lEdmtaQS9vdXJjZEFYNEs4eG1VeWNCY2MyUHJlV2swRWZYNGxBenYrTGxLQ240blRMcnUxWnlpQ3d1TktkTTFiVkQyb0locGhGdmszTHZaY2Nyb2VwV1NHeExSdm90Y01MaU1zSXo2WW54WnpYYm14bU4vVUZmZmZEMUJMaXZLV3JWbzJpUFd1bmhlZWFpWWMva2xSdldXem1zWFJaY2xBbHdhQ252dmN3V203OGN6MFVMbEJJeHVvSmJkTGs5KzJoeWJUd25XZ3ByL1lwanFxSzVMTGUyTGZkWWcyWTgwRFZOZm8vOStqVXBoNXRDczYwcklhZ0todnBsdTJNbmtOQXZFNWFtc3ByTFRuUjBoakE0U0JOS2EwaCtLb1k0OU94QmFOaC9icHg4UUxjM01nUnhMWmUrVTFHOElsbHJBSFhDWi9URnBvSHhlRnQ4MHJ1Q1kxeDBTV0tzcGpPeUlPOXphckY0SDhvRlI1a1pQb24yZHJ2WThEREwxeE1JZlVqN1ZFSlhXdVVUa2FCSVcvM215VUdSYW9wZldKZUNZN0xjQm1lN0NYV3NUZzg3RXFaeTVyVHkrbkExSXFiaE40Y3VRRE9BWVNySElScTAxcWxXU1JrUDlVcDdsZ2x1YzMvNENDK0tCWGtPTis0bStxN0x4Sll5bGFJamNnODh2cHZHdlVUa1B3WEJtbjdVeG1hSGY4SFFWNkxUOHJjeG5PMTJlYldQcFhqZkl6VEllSzA2REpJdlc3RXQzUzRwUTgvOE84YjJIWGloL1lTV0E4UnFoVUQyWkZXRjYyQW1oRml0SSs4c2htbFFBYlIyT0JBc0xQNzFOeWxqMHAxUEg1akdPZFRyUnpJUU5ReStnMjZ1SnZaNElBMW5sa1JHQVZUY1ZMUkZmZFV1U29XNmFNWktkRUV0Z3gzT3JNaEw1bCthM2FhZURadHk5ZDYyaXRCbVVyZkxuUW5kN1FHb3A2TWkzZDJXSE16VVFDTjFLemkvS2FMTXNUNHJWcE1lWGtpYlY5RWpuUkhWV0t0a2NESTVMWVpsclZMWitzSFdGTit4NDI5cSsrcHJ4Vkc3UHNJamVFcGJZd3ZNeVVkVlNleHhYckg2OTZKMEdZeGkwYVM3dDhhRE1yUmNpcHFxUU83bW9DRVhiS2N3SmxHcnJpUlI0dFYyb1ZUL2tKUURKd1dlYXlva3FnVVRiYjlOYy9qM0xnQXZyOUoyS3BBcVlwU2w2b3BpeDFZT2swaTFTUXhxYndFWSs0cStMS1E4NWNvVmxHY254T0RyMmxrZjR4dkFubkEyZTY1WGI4K0RnbVd1aDkvQmRUR1JLUUxiV0pyTEdvM05haWZvTktWVTZSWG9OTkcwQkdoN0g4THZ4dE04YW1WcVF0aHNaUDlocGR3OWJqamE1dUc3bmkydC9DakVsWDRoUFQ2S0FyNkU1UXFZYTFmd0JUck9iRGgzQTg0TnFYVDZVRkpGSUwwWDNHWjNSOUxUeWF6bkZxWmpSV1FEWFlCT2phcm5YWGxsdkgreFQvNzJKYUJabWpiYzI2ckpwZU92QTdZMXpMQkswYitydHJKd0NMbXR6WkpjQWpOQzhhMHZoTURoRlIwS0tvbHZtU3ZCTjI4TkppRTdTNXRPSS9LMXNTYkxoeGJUQXZicEhyM1NwcE44ZWRnbHNxK3JvQXJuMHRSQUlybnV4YkhpYkQ2RXRIR0ZMSEtwOUl4K1U3UUlFems1TW1mMEMxbWFVNkhrZ0gwZGFUV0Z0anIrMG1sclNtakFMY3lnRHB6Y1FRL285Vk0vVUhnNkV0T1puUmRRaHdaTm55L0paVmZTNWlkRU41NEdIWVBnSktLdGo4cjhZeEF3SVRQRWRHVWVUdzRxK1pBVXo0bm92dDJJVFlzM0VRQjRvNW01Mmw1djg0Y250UHh3QVRESlJSYlBiN0lpZHRlVE4zd1h2ZzdUMkhwd2dIbjY5c2c3Yit1em9MdEtNbHRZQWxWUWVZK2pnZ083R1FrVUNjNEdRSGx1M1NIVVFWUXlveXJYT2dYdDMrTFZtVVpUYm1CS213SEZwYkNZcEQ2dDdhUFNCVWt6VlkvaUJUWWtiVGlFVjVIOERpTldlTzZZQ3NhWlVXS1hJKzdURGg1NDhmb2QrcCtieEp0dzRQMjV5elZVWm9tYW02RTN5SEszcTFWRTFrRVJ2N2hET2VidEFSUXB3Mm5LbmlxckhrWmQwVnVHRjBYVEhlQlphdDNPTUQwazMzVGdmdHdCTGlkWHZzOGlTMnhBUzR4QzFIU0d1T3VEVlNwempvRHgvUUh5UllFK1VFdWVPWXFSLzlsbG50elBreU9NcUFhNHk0OFljQUVxWnljQVdtbk81ODludWRmZGo0Ti9DM0ZXMjZWYU1GMnpoQU9pSjZHTG0xY0FVTS95ZVhlSER4MU1jTmc5WlpJc2JUSzFHUDR6ZWdkbS9OZUQxM2dxaFRuVTlQbkgxUjdUeURSWTRCSzlqVk0xd2IxRHEyOTM3YWRGK05YcnJyNGpRWllkR0Z0MU4zVG1TYVFXaWpqNDBEZXFNRE11YUpndXNyaCtZT3grcVkxWTBXZGZYQ24wWnRNMy9mL0RGL3ZsY3JaQWs5M2RsMGY1eHBRUHlWcjNldFBETkNsUlRROFZWWDNVTG5vVm16Wmp2amYvRmZCK3Y1cW14TElBaEVLUUd0cWo4bWJxRlJpUlhDWk0wOGw1bUVmdFVsVGwrbmthTTI3K2xjUnRxQ1FHUEZHOTFUNzM4aTZLODIzRC94YlExQzUzblUxYWovL1VJbTJaQ2dpeFVsRG9McVpWRGsrT2JZQk1LV29WTC9mbmJHWE1KZGdLZnovYmI4TXNzNGxaUDcrRDNxbFdMQjd3QWNBS3IvVjludjVXeWdMY2RCYVI2TlkyL2tDYlRwUjROeW5yUUxhV1p3OS9HMXJpaFhLM1Z0QWdYNldodEh3U1Nhc01Hd0FFT1VhbUlrK3Y5L09yK1djeEYz', NULL, 0, 0, '2018-02-08 20:31:35', '2018-02-09 08:48:38'),
(90, 3, 20180102, 2018, 1, 2, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3UWxqUHRzRkJTU1gvWEZaUEFtQ0RCTEZtKzh2WEVKUUZyQXh4Ym55K0VTcFlyU2VuVWh6WWZzWGhQYS9XL0VGallJWlF2ZVZQK3N2M280TTF4U2ZKZ0U9', NULL, 0, 0, '2018-02-08 20:38:09', '2018-02-08 20:38:09'),
(91, 3, 20180213, 2018, 2, 13, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3YkxzNENTSjdKZmZEakJqdWZqbVNyWUdGaWtLeXU4UDhiNkwzdU1qc3o4VTkwbU9PMmVXOGxPNkp6UzNmdUUxM3c9PQ==', NULL, 0, 0, '2018-02-13 18:53:46', '2018-02-13 18:53:46'),
(92, 3, 20180103, 2018, 1, 3, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3ZmMra2diRlFLZ1dCam56eExCcFV3MzdZVk00ekVseHBBcmpGaUJ3d2wzUlhGaWY3VXgxRVFtTUtWOEhpVlhseVE9PQ==', NULL, 0, 0, '2018-02-20 07:13:53', '2018-02-20 07:13:53'),
(93, 3, 20180104, 2018, 1, 4, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3WHlWUHdYcUxzWWV4dFd5aEpZOTloUlVITWhHUm5nTDFGMElneWNQS3FwMjA5QVhyYTFuQTJ3aVhPZFBRemVLSXc9PQ==', NULL, 0, 0, '2018-04-14 12:08:55', '2018-04-14 12:08:55'),
(94, 3, 20180414, 2018, 4, 14, 4, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3ZkljZnlNTHJaRkNTZHIxOXp5bmIyeFVlTnI1amhkcmhkdXMvcFF2ZEU3QnNXVXFMK2NuY2RqL0UrRHVmWlNUNGc9PQ==', NULL, 0, 0, '2018-04-14 12:13:27', '2018-04-14 12:13:27'),
(95, 2, 20180415, 2018, 4, 15, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VEN5aHk1Z0xvc2F0anp1VkM0WEkzeTlMYjdjMUxTNFUweDZyNWxCa3dyNkhreTRiY1JLY05MM3JSVXBDdEp1Umc9PQ==', NULL, 0, 0, '2018-04-15 11:17:29', '2018-04-15 11:17:29'),
(96, 2, 20180416, 2018, 4, 16, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3UUVMd1RNL2diYXlUbDBFNDA0TW1KcjJyYXMxUTRmV3c0SmJubUw2RFhSTw==', NULL, 0, 0, '2018-04-21 11:27:39', '2018-04-21 11:27:39'),
(97, 2, 20180417, 2018, 4, 17, 7, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3WVF1Z09aS2hKSUc5cVVnaGJnQzdYdEVsUTRQR3R1UUtvMEFzUlc5OGhaRjc3bFNLQ2RaekRnZ2FYV3JnYlRuaWYyU1VzSElNNTMrbXVYa05TMjh1bTQ9', NULL, 0, 0, '2018-04-21 11:28:19', '2018-04-21 11:28:19'),
(98, 2, 20180418, 2018, 4, 18, 7, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3UWxqUHRzRkJTU1gvWEZaUEFtQ0RCTFJCZXVLcVd2MXJSQWNkUVQzck1CK3VXMGJYbTlUOVFGQnlJQmNKTmdWNlVjajlCR09na3pxaGIwSVkzZ1YvYWJpR1VFNFEraG41cm8wdWNaV2NBSnp3bGRQQWJVb1I1YlZ1M0F0cHNBbmtuTUdUcU5CdDFkN0FMY0VkbW4zNi9nPQ==', NULL, 0, 0, '2018-04-21 12:04:39', '2018-04-21 12:04:39'),
(99, 2, 20180102, 2018, 1, 2, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3V1B3M1BUYkUrbHhoaXZmZXJrTlJWV2dBVFo1YTROSkhIV1gwUGdBdDVBV0lnc3RDcFRycXF2SVVhMUxWM0xMazRVZVFXdjQzSkI5M1RSVy9ONkZCZ0k9', NULL, 0, 0, '2018-04-22 11:48:54', '2018-04-22 11:48:54'),
(100, 1, 20200202, 2018, 2, 2, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3YTdzMTIwYkJKcXl3bnZkLzdrL0hwRmZML0NoTDY2TThHdUEwNGxTRjAxdg==', NULL, 0, 0, '2020-08-13 15:10:33', '2020-08-13 15:21:33'),
(101, 1, 20200813, 2018, 8, 13, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3Vm83THRGZWZIbnQvQWQxQjk4c2JEZzNXa3YxSHBiQVpLV1pRb2ZqT2RINnFVU3dNOUN1YU94ZDhvQzlyOVFPUGc9PQ==', NULL, 0, 0, '2020-08-13 15:59:22', '2020-08-13 15:59:22'),
(102, 1, 20200410, 2020, 4, 10, 3, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3ZktCZlFBZ2pURG9qZVdSZEpIYzZocGNQNGF4c0pUYmc1Qm5GY2FrbFBUTVNXc1BoMVNmbk4xcUpud1gvRFpkTHM3aFAvVDJDdmZaekp0Q2htcVpLdEdMVkF6TGEwemR6a0t2N1pYNVcyQkI=', NULL, 0, 0, '2020-08-13 16:00:31', '2020-08-13 16:00:31'),
(103, 1, 20200409, 2020, 4, 9, 7, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3Vk5ENDQwOGgrZFJaRHJiS25VZXJTQVY2Z1hZbFluQmxiM2JUUGNJN0hYNXVETXFNM0dJZyttczdTVUZuNjNIVk5pa0lyT3RrWHg2SDVkcHAxczBWOUk9', NULL, 0, 0, '2020-08-18 11:41:51', '2020-08-18 11:41:51'),
(104, 3, 20200818, 2020, 8, 18, 7, 'cFdmY0hSblNMT0V5REl4aGtkdTFOMDB6QmVXR1JhR3BpaTRkYWlCdXJDY2dKL2Y4WTVzamx4K1pHTG9TeHpaSUFqcmhsb1pqOFNHWFJ1L010aVFUU0c4SlEzcmxTL01TUDJnSHErNlZmaWZxdFB2cUFlRkZyRkdOUWxld1lBNUcvY0l6UmlpQkxpOEQrM005czRwOUpmVUlpaDZOa1o4c2toNVBHWnlSRHVJPQ==', NULL, 0, 0, '2020-08-18 15:18:08', '2020-09-01 17:21:20'),
(105, 3, 20190101, 2019, 1, 1, 7, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 15:39:35', '2020-08-18 15:39:35'),
(106, 3, 20190102, 2019, 1, 2, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:38', '2020-08-18 15:39:38'),
(107, 3, 20190103, 2019, 1, 3, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:40', '2020-08-18 15:39:40'),
(108, 3, 20190104, 2019, 1, 4, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:43', '2020-08-18 15:39:43'),
(109, 3, 20190105, 2019, 1, 5, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:45', '2020-08-18 15:39:45'),
(110, 3, 20190106, 2019, 1, 6, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:49', '2020-08-18 15:39:49'),
(111, 3, 20190107, 2019, 1, 7, 1, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:52', '2020-08-18 15:39:52'),
(112, 3, 20190108, 2019, 1, 8, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:39:55', '2020-08-18 15:39:58'),
(113, 3, 20190109, 2019, 1, 9, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:02', '2020-08-18 15:40:02'),
(114, 3, 20190110, 2019, 1, 10, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:06', '2020-08-18 15:40:06'),
(115, 3, 20190111, 2019, 1, 11, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:10', '2020-08-18 15:40:10'),
(116, 3, 20190112, 2019, 1, 12, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:14', '2020-08-18 15:40:14'),
(117, 3, 20190113, 2019, 1, 13, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:17', '2020-08-18 15:40:17'),
(118, 3, 20190114, 2019, 1, 14, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:23', '2020-08-18 15:40:23'),
(119, 3, 20190115, 2019, 1, 15, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:27', '2020-08-18 15:40:27'),
(120, 3, 20190116, 2019, 1, 16, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:30', '2020-08-18 15:40:30'),
(121, 3, 20190117, 2019, 1, 17, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:33', '2020-08-18 15:40:33'),
(122, 3, 20190118, 2019, 1, 18, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:37', '2020-08-18 15:40:37'),
(123, 3, 20190119, 2019, 1, 19, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:41', '2020-08-18 15:40:41'),
(124, 3, 20190120, 2019, 1, 20, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:45', '2020-08-18 15:40:45'),
(125, 3, 20190121, 2019, 1, 21, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:48', '2020-08-18 15:40:48'),
(126, 3, 20190122, 2019, 1, 22, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:52', '2020-08-18 15:40:52'),
(127, 3, 20190123, 2019, 1, 23, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:55', '2020-08-18 15:40:55'),
(128, 3, 20190124, 2019, 1, 24, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:40:58', '2020-08-18 15:40:58'),
(129, 3, 20190125, 2019, 1, 25, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:01', '2020-08-18 15:41:01'),
(130, 3, 20190126, 2019, 1, 26, 1, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:04', '2020-08-18 15:41:04'),
(131, 3, 20190127, 2019, 1, 27, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:08', '2020-08-18 15:41:08'),
(132, 3, 20190128, 2019, 1, 28, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:12', '2020-08-18 15:41:12'),
(133, 3, 20190129, 2019, 1, 29, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:16', '2020-08-18 15:41:16'),
(134, 3, 20190130, 2019, 1, 30, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:20', '2020-08-18 15:41:20'),
(135, 3, 20190131, 2019, 1, 31, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:41:24', '2020-08-18 15:41:24'),
(136, 3, 20190201, 2019, 2, 1, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 15:47:52', '2020-08-18 15:47:52'),
(137, 3, 20190202, 2019, 2, 2, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:47:55', '2020-08-18 15:47:55'),
(138, 3, 20190203, 2019, 2, 3, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:47:59', '2020-08-18 15:47:59'),
(139, 3, 20190204, 2019, 2, 4, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:48:02', '2020-08-18 15:48:02'),
(140, 3, 20190205, 2019, 2, 5, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:48:05', '2020-08-18 15:48:05'),
(141, 3, 20190206, 2019, 2, 6, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:48:07', '2020-08-18 15:48:07'),
(142, 3, 20190207, 2019, 2, 7, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:48:10', '2020-08-18 15:48:10'),
(143, 3, 20190208, 2019, 2, 8, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:48:14', '2020-08-18 15:48:14'),
(144, 3, 20190209, 2019, 2, 9, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:48:18', '2020-08-18 15:48:18'),
(145, 3, 20190210, 2019, 2, 10, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:59:54', '2020-08-18 15:59:54'),
(146, 3, 20190211, 2019, 2, 11, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 15:59:57', '2020-08-18 15:59:57'),
(147, 3, 20190212, 2019, 2, 12, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:00:00', '2020-08-18 16:00:00'),
(148, 3, 20190213, 2019, 2, 13, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:00:03', '2020-08-18 16:00:03'),
(149, 3, 20190214, 2019, 2, 14, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:00:06', '2020-08-18 16:00:06'),
(150, 3, 20190215, 2019, 2, 15, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:07:04', '2020-08-18 16:07:04'),
(151, 3, 20190216, 2019, 2, 16, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:07:07', '2020-08-18 16:07:07'),
(152, 3, 20190218, 2019, 2, 18, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:07:10', '2020-08-18 16:07:10'),
(153, 3, 20190217, 2019, 2, 17, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:07:14', '2020-08-18 16:07:14'),
(154, 3, 20190219, 2019, 2, 19, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:10:45', '2020-08-18 16:10:45'),
(155, 3, 20190220, 2019, 2, 20, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:10:49', '2020-08-18 16:10:49'),
(156, 3, 20190221, 2019, 2, 21, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:10:54', '2020-08-18 16:10:54'),
(157, 3, 20190222, 2019, 2, 22, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:17:22', '2020-08-18 16:17:22'),
(158, 3, 20190223, 2019, 2, 23, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:17:35', '2020-08-18 16:17:35'),
(159, 3, 20190224, 2019, 2, 24, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 16:18:19', '2020-08-18 16:18:19'),
(160, 3, 20190225, 2019, 2, 25, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:18:22', '2020-08-18 16:18:22'),
(161, 3, 20190226, 2019, 2, 26, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:18:25', '2020-08-18 16:18:25'),
(162, 3, 20190227, 2019, 2, 27, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:18:28', '2020-08-18 16:18:28'),
(163, 3, 20190228, 2019, 2, 28, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:18:32', '2020-08-18 16:18:32'),
(164, 3, 20190301, 2019, 3, 1, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:18:53', '2020-08-18 16:18:53'),
(165, 3, 20190302, 2019, 3, 2, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:19:05', '2020-08-18 16:19:05'),
(166, 3, 20190303, 2019, 3, 3, 6, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 16:22:08', '2020-08-18 16:22:08'),
(167, 3, 20190304, 2019, 3, 4, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:22:12', '2020-08-18 16:22:20'),
(168, 3, 20190305, 2019, 3, 5, 4, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 16:23:08', '2020-08-18 16:23:08'),
(169, 3, 20190306, 2019, 3, 6, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 16:23:21', '2020-08-18 16:23:21'),
(170, 3, 20190307, 2019, 3, 7, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:23:24', '2020-08-18 16:23:24'),
(171, 3, 20190308, 2019, 3, 8, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:23:27', '2020-08-18 16:23:27'),
(172, 3, 20190309, 2019, 3, 9, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:23:42', '2020-08-18 16:23:42'),
(173, 3, 20190310, 2019, 3, 10, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:23:49', '2020-08-18 16:23:49'),
(174, 3, 20190311, 2019, 3, 11, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:23:59', '2020-08-18 16:23:59'),
(175, 3, 20190312, 2019, 3, 12, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:24:06', '2020-08-18 16:24:06'),
(176, 3, 20190313, 2019, 3, 13, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:24:11', '2020-08-18 16:24:11'),
(177, 3, 20190314, 2019, 3, 14, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:25:11', '2020-08-18 16:25:11'),
(178, 3, 20190315, 2019, 3, 15, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:25:28', '2020-08-18 16:25:28'),
(179, 3, 20190316, 2019, 3, 16, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:25:32', '2020-08-18 16:25:32'),
(180, 3, 20190317, 2019, 3, 17, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:25:36', '2020-08-18 16:25:36'),
(181, 3, 20190318, 2019, 3, 18, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:26:14', '2020-08-18 16:26:14'),
(182, 3, 20190319, 2019, 3, 19, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3VWg0Ykk2cFhGYWMzQ3o5OEh6Wk1DST0=', NULL, 0, 0, '2020-08-18 16:27:06', '2020-08-18 16:27:06'),
(183, 3, 20190320, 2019, 3, 20, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:08', '2020-08-18 16:27:08'),
(184, 3, 20190321, 2019, 3, 21, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:10', '2020-08-18 16:27:17'),
(185, 3, 20190322, 2019, 3, 22, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:19', '2020-08-18 16:27:23'),
(186, 3, 20190323, 2019, 3, 23, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:26', '2020-08-18 16:27:26'),
(187, 3, 20190324, 2019, 3, 24, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:29', '2020-08-18 16:27:29'),
(188, 3, 20190325, 2019, 3, 25, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:32', '2020-08-18 16:27:32'),
(189, 3, 20190326, 2019, 3, 26, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:35', '2020-08-18 16:27:35'),
(190, 3, 20190327, 2019, 3, 27, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:38', '2020-08-18 16:27:38'),
(191, 3, 20190328, 2019, 3, 28, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:40', '2020-08-18 16:27:40'),
(192, 3, 20190329, 2019, 3, 29, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:42', '2020-08-18 16:27:42'),
(193, 3, 20190330, 2019, 3, 30, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:45', '2020-08-18 16:27:45'),
(194, 3, 20190331, 2019, 3, 31, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:47', '2020-08-18 16:27:47'),
(195, 3, 20190401, 2019, 4, 1, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:51', '2020-08-18 16:27:51'),
(196, 3, 20190402, 2019, 4, 2, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:53', '2020-08-18 16:27:53'),
(197, 3, 20190503, 2019, 5, 3, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:56', '2020-08-18 16:27:56'),
(198, 3, 20190403, 2019, 4, 3, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:27:58', '2020-08-18 16:27:58'),
(199, 3, 20190404, 2019, 4, 4, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:09', '2020-08-18 16:28:09'),
(200, 3, 20190405, 2019, 4, 5, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:12', '2020-08-18 16:28:12'),
(201, 3, 20190406, 2019, 4, 6, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:15', '2020-08-18 16:28:15'),
(202, 3, 20190407, 2019, 4, 7, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:17', '2020-08-18 16:28:17'),
(203, 3, 20190408, 2019, 4, 8, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:19', '2020-08-18 16:28:19'),
(204, 3, 20190409, 2019, 4, 9, 1, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:22', '2020-08-18 16:28:22'),
(205, 3, 20190410, 2019, 4, 10, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:24', '2020-08-18 16:28:24'),
(206, 3, 20190411, 2019, 4, 11, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:27', '2020-08-18 16:28:27'),
(207, 3, 20190412, 2019, 4, 12, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:29', '2020-08-18 16:28:29'),
(208, 3, 20190413, 2019, 4, 13, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:32', '2020-08-18 16:28:32'),
(209, 3, 20190414, 2019, 4, 14, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:35', '2020-08-18 16:28:35'),
(210, 3, 20190415, 2019, 4, 15, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:37', '2020-08-18 16:28:37'),
(211, 3, 20190416, 2019, 4, 16, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:40', '2020-08-18 16:28:40'),
(212, 3, 20190417, 2019, 4, 17, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:43', '2020-08-18 16:28:43'),
(213, 3, 20190418, 2019, 4, 18, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:28:46', '2020-08-18 16:28:46'),
(214, 3, 20190419, 2019, 4, 19, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:32', '2020-08-18 16:29:32'),
(215, 3, 20190420, 2019, 4, 20, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:35', '2020-08-18 16:29:35'),
(216, 3, 20190421, 2019, 4, 21, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:37', '2020-08-18 16:29:37'),
(217, 3, 20190422, 2019, 4, 22, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:40', '2020-08-18 16:29:42'),
(218, 3, 20190423, 2019, 4, 23, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:45', '2020-08-18 16:29:45'),
(219, 3, 20190424, 2019, 4, 24, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:47', '2020-08-18 16:29:47'),
(220, 3, 20190425, 2019, 4, 25, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:51', '2020-08-18 16:29:51'),
(221, 3, 20190426, 2019, 4, 26, 1, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:53', '2020-08-18 16:29:53'),
(222, 3, 20190427, 2019, 4, 27, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:55', '2020-08-18 16:29:55'),
(223, 3, 20190428, 2019, 4, 28, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:29:58', '2020-08-18 16:29:58'),
(224, 3, 20190429, 2019, 4, 29, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:00', '2020-08-18 16:30:00'),
(225, 3, 20190430, 2019, 4, 30, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:03', '2020-08-18 16:30:03'),
(226, 3, 20190501, 2019, 5, 1, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:06', '2020-08-18 16:30:06'),
(227, 3, 20190502, 2019, 5, 2, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:09', '2020-08-18 16:30:09'),
(228, 3, 20190504, 2019, 5, 4, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:12', '2020-08-18 16:30:12'),
(229, 3, 20190505, 2019, 5, 5, 1, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:14', '2020-08-18 16:30:14'),
(230, 3, 20190506, 2019, 5, 6, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:17', '2020-08-18 16:30:17'),
(231, 3, 20190507, 2019, 5, 7, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:19', '2020-08-18 16:30:19'),
(232, 3, 20190508, 2019, 5, 8, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:22', '2020-08-18 16:30:22'),
(233, 3, 20190509, 2019, 5, 9, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:24', '2020-08-18 16:30:24'),
(234, 3, 20190510, 2019, 5, 10, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:26', '2020-08-18 16:30:26'),
(235, 3, 20190511, 2019, 5, 11, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:28', '2020-08-18 16:30:28'),
(236, 3, 20190512, 2019, 5, 12, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:30', '2020-08-18 16:30:30'),
(237, 3, 20190513, 2019, 5, 13, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:33', '2020-08-18 16:30:33'),
(238, 3, 20190514, 2019, 5, 14, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:35', '2020-08-18 16:30:35'),
(239, 3, 20190515, 2019, 5, 15, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:38', '2020-08-18 16:30:38'),
(240, 3, 20190516, 2019, 5, 16, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:46', '2020-08-18 16:30:46'),
(241, 3, 20190517, 2019, 5, 17, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:49', '2020-08-18 16:30:49'),
(242, 3, 20190518, 2019, 5, 18, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:51', '2020-08-18 16:30:51'),
(243, 3, 20190519, 2019, 5, 19, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:54', '2020-08-18 16:30:54'),
(244, 3, 20190520, 2019, 5, 20, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:56', '2020-08-18 16:30:56'),
(245, 3, 20190521, 2019, 5, 21, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:30:59', '2020-08-18 16:30:59'),
(246, 3, 20190522, 2019, 5, 22, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:01', '2020-08-18 16:31:01'),
(247, 3, 20190523, 2019, 5, 23, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:04', '2020-08-18 16:31:04'),
(248, 3, 20190524, 2019, 5, 24, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:06', '2020-08-18 16:31:06'),
(249, 3, 20190525, 2019, 5, 25, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:09', '2020-08-18 16:31:09'),
(250, 3, 20190526, 2019, 5, 26, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:12', '2020-08-18 16:31:12'),
(251, 3, 20190527, 2019, 5, 27, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:14', '2020-08-18 16:31:14'),
(252, 3, 20190528, 2019, 5, 28, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:16', '2020-08-18 16:31:16'),
(253, 3, 20190529, 2019, 5, 29, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:19', '2020-08-18 16:31:19'),
(254, 3, 20190530, 2019, 5, 30, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:21', '2020-08-18 16:31:21'),
(255, 3, 20190531, 2019, 5, 31, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-18 16:31:24', '2020-08-18 16:31:24'),
(256, 3, 20180415, 2018, 4, 15, 5, 'bnh6cFk2UXNGdmVrNmJEdXdHdXY3U0JhazNsZzV2WW5NZnpJbHExbUFMQXlnMUZtSUc5ZlpMdVBGYjNOajhIL0lKYm5kNDRPNW02ZTVKWTdCeHp6UEE9PQ==', NULL, 0, 0, '2020-08-19 09:27:58', '2020-08-19 09:27:58'),
(257, 3, 20200817, 2020, 8, 17, 3, 'T21EUFBWVDM1Vmcrd1NZenAzR2w4TlBoVXhkQ3lFNkNTdXVIdnBkMWt3WlRwUFExZGxDNlVURTFteU11ZUgybC9WdzA5RzhSZGlmOTIxWFl0ajM2cDVsUlpFNzFZNU13WmVNMHBjMzdCQ05CeXVEQnJ3UjdCT1Y4RmdQSEgzZmNuTGUxdUNJU3g2ZFQ0SXl4WU1VMnZ3PT0=', NULL, 0, 0, '2020-08-19 15:18:16', '2020-08-26 17:53:35'),
(258, 3, 20200819, 2020, 8, 19, 7, 'TDZwN01MNWtaZmtJUjBzeDR6MTFNME5pZ3NPS0JLckdjTjlxSGdSR2FPYz0=', NULL, 0, 0, '2020-08-19 16:59:34', '2020-08-28 17:32:02'),
(259, 3, 20190601, 2019, 6, 1, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:33:22', '2020-08-19 17:33:22'),
(260, 3, 20190602, 2019, 6, 2, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:33:25', '2020-08-19 17:33:25'),
(261, 3, 20190603, 2019, 6, 3, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:33:27', '2020-08-19 17:33:27'),
(262, 3, 20190604, 2019, 6, 4, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:01', '2020-08-19 17:34:01'),
(263, 3, 20190605, 2019, 6, 5, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:04', '2020-08-19 17:34:04'),
(264, 3, 20190606, 2019, 6, 6, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:06', '2020-08-19 17:34:06'),
(265, 3, 20190607, 2019, 6, 7, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:09', '2020-08-19 17:34:09'),
(266, 3, 20190608, 2019, 6, 8, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:12', '2020-08-19 17:34:12'),
(267, 3, 20190609, 2019, 6, 9, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:14', '2020-08-19 17:34:14'),
(268, 3, 20190610, 2019, 6, 10, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:16', '2020-08-19 17:34:16'),
(269, 3, 20190611, 2019, 6, 11, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:18', '2020-08-19 17:34:18'),
(270, 3, 20190612, 2019, 6, 12, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:21', '2020-08-19 17:34:21'),
(271, 3, 20190613, 2019, 6, 13, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:23', '2020-08-19 17:34:23'),
(272, 3, 20190614, 2019, 6, 14, 2, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:25', '2020-08-19 17:34:25'),
(273, 3, 20190615, 2019, 6, 15, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-08-19 17:34:28', '2020-08-19 17:34:28'),
(276, 3, 20200101, 2020, 1, 1, 6, 'c2hFZnF1NDVQZk5JYy9KMGRaRmowdm55bDBtRDVleUczRE5rQVJwZ0V6bkJweVRTNEZIQ2VWbVNiS3RTMTg2bg==', NULL, 0, 0, '2020-08-26 17:48:23', '2020-08-26 17:48:23'),
(277, 3, 20200816, 2020, 8, 16, 7, 'c2hFZnF1NDVQZk5JYy9KMGRaRmowaFMveXFwYXVROG45V1lnZjh0VVJhYmpoYWFGVytGZ014R1Q3d2VoM2ZWUA==', NULL, 0, 0, '2020-08-28 17:29:46', '2020-08-28 17:30:50'),
(278, 3, 20200815, 2020, 8, 15, 4, 'UGR5Uk9zR2lPYmxxSm9rSldMbmhQZHFJaWpNZmh3YndYWk40bnlxOHR4OD0=', NULL, 0, 0, '2020-08-28 17:31:17', '2020-08-28 17:31:17'),
(279, 3, 20180917, 2018, 9, 17, 5, 'UGR5Uk9zR2lPYmxxSm9rSldMbmhQUXpRbWxub3Avby9VK2EyYkUzL3R2ND0=', NULL, 0, 0, '2020-08-28 17:32:26', '2020-08-28 17:32:26'),
(280, 3, 20190616, 2019, 6, 16, 5, 'aGcyb0R1cnlUcFV4aVkxZ1U1M3VpamNxa0U2TGN3Wk9jOEZ2NHRtWHczQT0=', NULL, 0, 0, '2020-08-28 17:32:51', '2020-08-28 17:32:51'),
(281, 3, 20200201, 2020, 2, 1, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:22:59', '2020-09-01 17:22:59'),
(282, 3, 20200426, 2020, 4, 26, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:24:21', '2020-09-01 17:24:21'),
(283, 3, 20200427, 2020, 4, 27, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:24:24', '2020-09-01 17:29:36'),
(284, 3, 20200428, 2020, 4, 28, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:24:27', '2020-09-01 17:29:23'),
(285, 3, 20200429, 2020, 4, 29, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:24:29', '2020-09-01 17:24:29'),
(286, 3, 20190617, 2019, 6, 17, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:15', '2020-09-01 17:32:15'),
(287, 3, 20190618, 2019, 6, 18, 1, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:17', '2020-09-01 17:32:17'),
(288, 3, 20190619, 2019, 6, 19, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:20', '2020-09-01 17:32:20'),
(289, 3, 20190620, 2019, 6, 20, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:22', '2020-09-01 17:32:22'),
(290, 3, 20190621, 2019, 6, 21, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:24', '2020-09-01 17:32:24'),
(291, 3, 20190622, 2019, 6, 22, 3, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:27', '2020-09-01 17:32:27'),
(292, 3, 20190623, 2019, 6, 23, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:29', '2020-09-01 17:32:29'),
(293, 3, 20190624, 2019, 6, 24, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:32', '2020-09-01 17:32:32'),
(294, 3, 20190625, 2019, 6, 25, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:35', '2020-09-01 17:32:35'),
(295, 3, 20190626, 2019, 6, 26, 6, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:37', '2020-09-01 17:32:37'),
(296, 3, 20190627, 2019, 6, 27, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:39', '2020-09-01 17:32:39'),
(297, 3, 20190628, 2019, 6, 28, 4, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:42', '2020-09-01 17:32:42'),
(298, 3, 20190629, 2019, 6, 29, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:46', '2020-09-01 17:32:46'),
(299, 3, 20190630, 2019, 6, 30, 7, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2020-09-01 17:32:49', '2020-09-01 17:32:49'),
(300, 1, 20230417, 2023, 4, 17, 5, 'ZkYzQ2dqTUgxWE13blg5K0JPQmJFdUhCRkV2bnRYMUlnMFp2TFVzTGVLMktmTXBxMmVUMCtVRS9vVlUxMENYNG0zYkh1aVZnZlZhcVR5ajI1bUx0Mnc9PQ==', NULL, 0, 0, '2023-04-17 15:52:23', '2023-04-17 15:52:23'),
(301, 1, 20230416, 2023, 4, 16, 6, 'WGgzd3VKQnJWOU9Qb2hGYTFKdTczZz09', NULL, 0, 0, '2023-04-17 15:55:59', '2023-04-17 15:55:59'),
(302, 1, 20230409, 2023, 4, 9, 6, 'cW9FcVpkUlFWcFF6UWtsc1JPZmc4MCtuRmkvVi9WeVdoVUhUZ0NJaytoR21QVVpmeS9lQkJFczNWbFJ1N1Jkag==', NULL, 0, 0, '2023-04-17 15:56:22', '2023-04-17 15:56:22'),
(303, 1, 20230407, 2023, 4, 7, 6, 'bndYVEJSdDhwSG5pWUJDVUVnZEhYOFdvSURWK2ZMc25tNXJHcWZlNUR5az0=', NULL, 0, 0, '2023-04-17 15:56:41', '2023-04-17 15:56:41'),
(304, 1, 20230330, 2023, 3, 30, 3, 'ZmRnT29sU1U5WDcvVzRtL3BpZ3o4ODZ3dldWekxCd1NFY1c4Z3FLRWN4STYxN0NORWNlWEY3NVhiUkFKUVdqbFFyVVBmYW1YbWxEZ2lFZmdIOWx6dzZzUXlmeTdoRkErejdhUk9sSG5ERVVpdU11SmEwVmFPcDNHaEhHSStaaFJVNUpWME5HcndURXdTVXVTMDJEUHVNYzJvQ1ZZVjU3elpRbENtalN4UlZmVUpFaGRlYzdMWEhkMUowcmtqbHJ4YnRYZGRoQm41cjRLVVAwbzBEcXMvUXhyMTMyODM2Ny9iTzk5TXNBeHlzbmN1amNKTmVWclJvTHhNQVcwbDY3NU1CVUp5ODV6cjk2ZFh1MTRJTUFVUzNFL1R3eUgybTNzQmVmaWNYakZmTlE9', NULL, 0, 0, '2023-04-17 16:02:58', '2023-04-17 16:02:58'),
(305, 1, 20230327, 2023, 3, 27, 3, 'a0pUR1pmU0FndHQ1RUVJd1Ftd2IwNUQvSnBvY1drTU5nMnRIVHV3NHVFYnpHVE1pVkRXMElXZ3RwcnFrd1BJcEFyMURsZHBZa2JXdFZJRGs4NHlOTVRISlVBUU1oZm85aVVFeCtQOXlzbXI0d2lUcSs2aElHM0hoRTdLdHNYUG4=', NULL, 0, 0, '2023-04-17 16:03:46', '2023-04-17 16:03:46'),
(306, 1, 20230326, 2023, 3, 26, 4, 'VnFvc3VRSFF1akEzT2JNZXVjQ1ZrUDVGTjY4c0lnaUtGZ25seW92V085SU05Vm9ZTmpCNlZiRHBnamxLaFA1K2RQRDdscGwzUGR6dzhVYXNDczQzVUE9PQ==', NULL, 0, 0, '2023-04-17 16:04:36', '2023-04-17 16:04:36'),
(307, 1, 20230323, 2023, 3, 23, 3, 'ZTNWcVR1OUdNTlFVZitLTmhsTE9MUT09', NULL, 0, 0, '2023-04-17 16:05:08', '2023-04-17 16:12:08'),
(308, 1, 20230307, 2023, 3, 7, 7, 'dGFkeXpPZmR0TGJZZTNvcGh3SngyL1NZMTROb0huZktWTUliRmw0dEhDZmt3cmRtd3RmRDVqTWU0QWVxY1VKS0pIQS8rekY5cUF0S2s3WmJzRVNoOGt1Y01JYjRZdFZUSndhM1BTTVM2dFFyanF3ekpnRDJGWmNKYzRtWGJWaTBXTk5NNFRsN1lIeStqNHQvWkZoZFAzeWhhTjMycjZHSmlDQU5ENGpuMWkyU2hCV2ZOd3NpWUxhdkJYOWFNQzd1MGVCanY5SlpYdFE0RVBFd1MwbTR1eUVidTYweGRndENoZDdrT3BjY2tRMldha2JPS0V2RFZ4MFM0c2RtcWo3aA==', NULL, 0, 0, '2023-04-17 16:06:57', '2023-04-17 16:08:46'),
(309, 1, 20230328, 2023, 3, 28, 3, 'UUl1NVh5TDVialZ3dnBiVmNodlQxZz09', NULL, 0, 0, '2023-04-17 16:07:13', '2023-04-17 16:07:13'),
(310, 1, 20230329, 2023, 3, 29, 3, 'cnBSK1Q2dzV5N0F5ZnNlUFlGMmZ4Mzl3a3A2b0E3dWRyd1FoRFRic2hpWT0=', NULL, 0, 0, '2023-04-17 16:07:19', '2023-04-17 16:07:19'),
(311, 1, 20230306, 2023, 3, 6, 6, 'MVhyNC80aUREKzRqOFE4RnI5dEhibng4VEpFUzBoM0h0dkEwRTZDVVNmaWRsQmFML3J6SXJsQ0o2THZiMDFCaw==', NULL, 0, 0, '2023-04-17 16:08:04', '2023-04-17 16:08:04'),
(312, 1, 20230302, 2023, 3, 2, 5, 'UzBxVkVoSjA0bWFoV3hBYTc3djE4WmpWT0k4VHUzRWh5M1g5MDVuYXMxST0=', NULL, 0, 0, '2023-04-17 16:09:39', '2023-04-17 16:09:39'),
(313, 1, 20230319, 2023, 3, 19, 6, 'Rm5uM2ZPaWd6cGVhN0dVeUQrelR0dE1Ib2pRVzRTK3gyeDZCWnRtMWFlUVBsS2ZYRDdSdVhCTUR2ZGZWKzZYdVRIdVlwOXBjTW9YbUNYaG5ORUJUSWc9PQ==', NULL, 0, 0, '2023-04-17 16:11:49', '2023-04-17 16:11:49'),
(314, 1, 20230303, 2023, 3, 3, 3, 'VDBUMFZZOC9NOWNGT21qYUFrcXF1ZnR3aWFBZjJQMy9PTU9ZTjd2Q3czRT0=', NULL, 0, 0, '2023-04-17 16:12:55', '2023-04-17 16:12:55'),
(315, 1, 20230304, 2023, 3, 4, 3, 'bkF5bkFZc0xDcU5lVjgzSURuWjNPdz09', NULL, 0, 0, '2023-04-17 16:13:05', '2023-04-17 16:13:05'),
(316, 1, 20230305, 2023, 3, 5, 3, 'bkF5bkFZc0xDcU5lVjgzSURuWjNPdz09', NULL, 0, 0, '2023-04-17 16:13:10', '2023-04-17 16:13:10'),
(317, 1, 20230308, 2023, 3, 8, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:13:23', '2023-04-17 16:13:23'),
(318, 1, 20230309, 2023, 3, 9, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:13:29', '2023-04-17 16:13:29'),
(319, 1, 20230310, 2023, 3, 10, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:13:33', '2023-04-17 16:13:33'),
(320, 1, 20230311, 2023, 3, 11, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:13:38', '2023-04-17 16:13:38'),
(321, 1, 20230313, 2023, 3, 13, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:13:43', '2023-04-17 16:13:43'),
(322, 1, 20230320, 2023, 3, 20, 2, 'eGpjY2RoRC9sWG8xd0JLblVNVkNQREloMmxBRGw5NHVvS2FMc2ZyOHJyQT0=', NULL, 0, 0, '2023-04-17 16:14:16', '2023-04-17 16:14:16'),
(323, 1, 20230314, 2023, 3, 14, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:14:23', '2023-04-17 16:14:23'),
(324, 1, 20230315, 2023, 3, 15, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:14:30', '2023-04-17 16:14:30'),
(325, 1, 20230316, 2023, 3, 16, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:14:34', '2023-04-17 16:14:34'),
(326, 1, 20230317, 2023, 3, 17, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:14:39', '2023-04-17 16:14:39'),
(327, 1, 20230318, 2023, 3, 18, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:14:44', '2023-04-17 16:14:44'),
(328, 1, 20230321, 2023, 3, 21, 7, 'WFBmOFhzbnROcnhtMVNzd3A5cjRBR1RtQWRaaG5OOVFrRTQvbGkrdmdrST0=', NULL, 0, 0, '2023-04-17 16:15:03', '2023-04-17 16:15:03'),
(329, 1, 20230322, 2023, 3, 22, 7, 'WGRvQU9SZlVHVytqNE53Z3hLQm5OUT09', NULL, 0, 0, '2023-04-17 16:15:07', '2023-04-17 16:15:07'),
(330, 1, 20230324, 2023, 3, 24, 3, 'aUJKdzdlWGt3bk5QZ0hQbHhDakVJaWl6Q1hxN1B2NnVjSmtGK2IvSjFkZnozWHVTTEVERGZXcDFtcHNEK1VoTg==', NULL, 0, 0, '2023-04-17 16:15:25', '2023-04-17 16:15:25'),
(331, 1, 20230325, 2023, 3, 25, 3, 'NVJNTklYOGVlbWZHOXJRd09hc3d1Zz09', NULL, 0, 0, '2023-04-17 16:15:32', '2023-04-17 16:15:32'),
(332, 1, 20230331, 2023, 3, 31, 3, 'cnBSK1Q2dzV5N0F5ZnNlUFlGMmZ4L1RGRVluZWdaMVdiS3VNYmE0emlFND0=', NULL, 0, 0, '2023-04-17 16:15:56', '2023-04-17 16:15:56'),
(333, 1, 20230301, 2023, 3, 1, 5, 'OWw4OCtBSDY5U3FMK0I0eldwZ1hlczFuQ2Mvc1E0a0dpSGFyOEN6dkRjRT0=', NULL, 0, 0, '2023-04-17 16:16:20', '2023-04-17 16:16:20'),
(334, 1, 20230415, 2023, 4, 15, 7, 'ZzNSZ25ua3NyNDBKQWQrODZ2dHlnSURPaWN0YzE5bllaZXlmU2tOanoyN2VIeHRoUVlNNnY0ZVk5MFdTbkdNclQxVTYxaW15UEpGVTg0UE9Telo5dVE9PQ==', NULL, 0, 0, '2023-04-17 16:16:48', '2023-04-17 16:16:48'),
(335, 1, 20230312, 2023, 3, 12, 6, 'bDNwempKb2hkeHlTS29YZXdMQlVYVldHaDU1Mkh0THR0MXJMbExFUDg1az0=', NULL, 0, 0, '2023-04-17 16:17:38', '2023-04-17 16:17:38'),
(336, 1, 20230401, 2023, 4, 1, 3, 'YXBaOElMZy9udWNvc21DSEwrT0JtQT09', NULL, 0, 0, '2023-04-17 16:18:14', '2023-04-17 16:18:14'),
(337, 1, 20230402, 2023, 4, 2, 3, 'YXBaOElMZy9udWNvc21DSEwrT0JtQT09', NULL, 0, 0, '2023-04-17 16:18:24', '2023-04-17 16:18:24'),
(338, 1, 20230414, 2023, 4, 14, 4, 'YlFueEJDNm83OHQ5YXA0VXp3NFJwMGxEanFtbnBVeXR0RHNkS284VTBVNjFRbjBTNEM0T2hYTzlNci95R2tzeWJDd2Z5WGlFOStNbnpVRXZjU0tFeXc9PQ==', NULL, 0, 0, '2023-04-17 16:20:16', '2023-04-17 16:28:04'),
(339, 1, 20230413, 2023, 4, 13, 4, 'Y0hoRkZFcVViVm0vYS83blExWGRZdm9EVmdycnVhMjRub3QwOXRwNmtyWjZGY2IyRHlQdlJVY3NweFFEaDIyaGlsZHJEbWNCeXZTMk1hdDlQKzVQenBpQm8vaVVWZDl4Si82Y3MrOFFOZGc9', NULL, 0, 0, '2023-04-17 16:20:39', '2023-04-17 16:20:39'),
(340, 1, 20230404, 2023, 4, 4, 3, 'YXBaOElMZy9udWNvc21DSEwrT0JtQT09', NULL, 0, 0, '2023-04-17 16:22:20', '2023-04-17 16:22:20'),
(341, 1, 20230405, 2023, 4, 5, 3, 'YXBaOElMZy9udWNvc21DSEwrT0JtQT09', NULL, 0, 0, '2023-04-17 16:22:25', '2023-04-17 16:22:25'),
(342, 1, 20230406, 2023, 4, 6, 3, 'S21pN2JGNmpTbXdMSmdvRkk0TXhrUT09', NULL, 0, 0, '2023-04-17 16:22:34', '2023-04-17 16:22:34'),
(343, 1, 20230408, 2023, 4, 8, 7, 'U1hDd2tQNDlXdWtmYWQ4akhxOFlhNTBrbS9vT1hZMURobmVrWnNDR3JXK0RkK3BCWi84dmhiZ21DSExuUmVnaA==', NULL, 0, 0, '2023-04-17 16:24:14', '2023-04-17 16:24:14'),
(344, 1, 20230403, 2023, 4, 3, 3, 'YXBaOElMZy9udWNvc21DSEwrT0JtQT09', NULL, 0, 0, '2023-04-17 16:27:25', '2023-04-17 16:27:25'),
(345, 1, 20230410, 2023, 4, 10, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2023-04-17 16:27:50', '2023-04-17 16:27:50'),
(346, 1, 20230411, 2023, 4, 11, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2023-04-17 16:27:53', '2023-04-17 16:27:53'),
(347, 1, 20230412, 2023, 4, 12, 5, 'd1lrRUM0YWRjQmZUaC91cTIvODZJdz09', NULL, 0, 0, '2023-04-17 16:27:56', '2023-04-17 16:27:56'),
(348, 1, 20230418, 2023, 4, 18, 5, 'MllqVllSaEVGOEtTazhXMlN4Mi9rdDVEQm5IRE5CSnk1elpzVk9NSWsxc1Q2VHFXR3V1QVQzY3R0NTFtb1JUVWU5KzJQbHAwV3AxQ2tIZkc2eWduNWNSTk16a0dtdmJGNFNlK1lzcXlYM2F5YVozYVBPNTRzUmxhNzZMRFVGaVFoNWp0TWdiTzFZOWlkdkovenVpZDVmV2xVd0lYUFhLMi9YRkZOM3dVUEZFPQ==', NULL, 0, 0, '2023-04-18 13:58:24', '2023-04-18 13:58:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yin`
--
ALTER TABLE `yin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `yin`
--
ALTER TABLE `yin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
