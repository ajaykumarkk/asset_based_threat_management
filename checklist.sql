-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2018 at 04:36 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `checklist`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `assetId` int(11) NOT NULL AUTO_INCREMENT,
  `assetName` varchar(50) NOT NULL,
  `catId` int(11) NOT NULL,
  PRIMARY KEY (`assetId`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`assetId`, `assetName`, `catId`) VALUES
(2, 'Authentication', 2),
(1, 'Input Validation', 2),
(3, 'Authorization', 2),
(4, 'Configuration Management', 2),
(5, 'Sensitive Data', 2),
(6, 'Session Management', 2),
(7, 'Cryptography', 2),
(8, 'Parameter Manipulation', 2),
(9, 'Exception Management', 2),
(10, 'Auditing and Logging', 2),
(11, 'Operations', 2),
(12, 'Change Management', 2),
(13, 'Software Development', 2),
(14, 'Firewall', 1),
(21, 'Data-Warehouse', 3),
(15, 'LAN/Domain Server Security', 1),
(16, 'Remote Connections, Wireless Networks, Bluetooth', 1),
(17, 'Computer', 1),
(18, 'Removable Media', 1),
(22, 'Data at rest ', 3),
(23, 'Encryption', 3),
(24, 'Incident Workflow', 3),
(25, 'Reporting, Auditing, and Compliance', 3),
(26, 'Hiring and On-boarding', 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(20) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catName`) VALUES
(1, 'Hardware'),
(2, 'Software'),
(3, 'Data'),
(4, 'Human Resource');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

DROP TABLE IF EXISTS `checklist`;
CREATE TABLE IF NOT EXISTS `checklist` (
  `checklistId` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `ques` text NOT NULL,
  `percent` float NOT NULL,
  PRIMARY KEY (`checklistId`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`checklistId`, `assetId`, `ques`, `percent`) VALUES
(1, 1, 'All entry points and trust boundaries are identified by the design.', 5.5),
(2, 1, 'The design identifies the identities that are used to access resources across the trust boundaries.', 5.5),
(3, 1, 'Input validation is applied whenever input is received from outside the current trust boundary.', 5.5),
(4, 1, 'The design assumes that user input is malicious.', 5.5),
(5, 1, 'Centralized input validation is used where appropriate.\r\n', 5.5),
(6, 1, 'The validation approach is to constrain, reject, and then sanitize input.\r\n(Looking for known, valid, and safe input is much easier than looking for known malicious or dangerous input.)', 6.5),
(7, 1, 'Data is validated for type, length, format, and range.\r\n\r\n', 0),
(8, 1, 'Input file names and file paths are avoided where possible.\r\n\r\n', 6.5),
(9, 1, 'The application is not susceptible to LDAP Injection, or that security controls prevent LDAP Injection.\r\n', 5.5),
(10, 1, 'The application is not susceptible to Remote File Inclusion (RFI) or Local File Inclusion (LFI) when content is used that is a path to a file.\r\n', 5.5),
(11, 1, 'The design addresses potential SQL injection issues.\r\n\r\n', 6.5),
(12, 1, 'The design addresses potential cross-site scripting issues.\r\n', 6.5),
(13, 1, 'The design does not rely on client-side validation.\r\n\r\n', 4.5),
(14, 1, 'The design applies defense in depth to the input validation strategy by providing input validation across tiers.\r\n', 5.5),
(15, 1, 'Output that contains input is encoded using HtmlEncode and UrltEncode.\r\n', 4.5),
(16, 1, 'The runtime environment is not susceptible to buffer overflows, or that security controls prevent buffer overflows.\r\n', 5.5),
(17, 1, 'The application has defenses against HTTP parameter pollution attacks, particularly if the application framework makes no distinction about the source of request parameters (GET, POST, cookies, headers, environment, etc.)\r\n', 5.5),
(18, 1, 'When parsing JSON in browsers, that JSON.parse is used to parse JSON on the client. Do not use eval() to parse JSON on the client.\r\n', 4.5),
(19, 1, 'Authenticated data is cleared from client storage, such as the browser DOM, after the session is terminated.\r\n', 5.5),
(21, 2, 'The design identifies the identities that are used to access resources across the trust boundaries.\r\n', 3.7),
(22, 2, 'The design partitions the Web site into public and restricted areas using separate folders.\r\n', 1.7),
(23, 2, 'The design identifies service account requirements.\r\n', 3.7),
(24, 2, 'The design identifies secure storage of credentials that are accepted from users.\r\n', 3.7),
(25, 2, 'The design identifies the mechanisms to protect the credentials over the wire (SSL, IPSec, encryption and so on).\r\n', 3.7),
(26, 2, '\"The design ensure that minimum error information is returned in the event of authentication failure.\r\n\"\r\n', 1.7),
(27, 2, 'If SQL authentication is used, credentials are adequately secured over the wire (SSL or IPSec) and in storage (DPAPI).\r\n', 3.7),
(28, 2, 'The design adopts a policy of using least-privileged accounts.\r\n', 1.7),
(29, 2, 'Password digests (with salt) are stored in the user store for verification.\r\n', 2.7),
(30, 2, 'Strong passwords are used.\r\n', 2.7),
(31, 2, 'Authentication tickets (cookies) are not transmitted over non-encrypted connections.\r\n', 2.7),
(32, 2, 'All pages and resources require authentication except those\r\nSpecifically intended to be public (Principle of complete mediation).\r\n', 2.7),
(33, 2, 'The forms containing credentials are not filled in by the application. Pre-filling by the application implies that credentials are stored in plaintext or a reversible format, which is explicitly prohibited.\r\n', 2.7),
(34, 2, 'All authentication controls are enforced on the server side.\r\n', 2.7),
(35, 2, 'All authentication controls fail securely to ensure attackers cannot log in.\r\n', 3.7),
(36, 2, 'Password entry fields allow, or encourage, the use of passphrases, and do not prevent password managers, long passphrases or highly complex passwords being entered.\r\n', 1.7),
(37, 2, 'All account identity authentication functions (such as update profile, forgot password, disabled / lost token, help desk or IVR) that might regain access to the account are at least as resistant to attack as the primary authentication mechanism.\r\n', 2.7),
(38, 2, 'The changing password functionality includes the old password, the new password, and a password confirmation.\r\n', 2.7),
(39, 2, 'All authentication decisions can be logged, without storing sensitive session identifiers or passwords. This should include requests with relevant metadata needed for security investigations.\r\n', 2.7),
(40, 2, 'Account passwords are one way hashed with a salt, and there is sufficient work factor to defeat brute force and password hash recovery attacks.\r\n', 1.7),
(41, 2, 'The credentials are transported using a suitable encrypted link and that all pages/functions that require a user to enter credentials are done so using an encrypted link.\r\n', 2.7),
(42, 2, 'The forgotten password function and other recovery paths do not reveal the current password and that the new password is not sent in clear text to the user.\r\n', 2.7),
(43, 2, 'Information enumeration is not possible via login, password reset, or forgot account functionality.\r\n', 2.7),
(44, 2, 'There are no default passwords in use for the application framework or any components used by the application (such as admin/password).\r\n', 3.7),
(45, 2, 'Anti-automation is in place to prevent breached credential testing, brute forcing, and account lockout attacks.\r\n', 1.7),
(46, 2, 'All authentication credentials for accessing services external to the application are encrypted and stored in a protected location.\r\n', 2.7),
(47, 2, 'Forgotten password and other recovery paths use a TOTP or other soft token, mobile push, or other offline recovery mechanism. Use of a random value in an e-mail or SMS should be a last resort and is known weak.\r\n', 1.7),
(48, 2, 'If shared knowledge based questions (also known as \"secret questions\") are required, the questions do not violate privacy laws and are sufficiently strong to protect accounts from malicious recovery.\r\n', 2.7),
(49, 2, 'The system can be configured to disallow the use of a configurable number of previous passwords.\r\n', 2.7),
(50, 2, 'The risk based re-authentication, two factor or transaction signing is in place for high value transactions.\r\n', 2.7),
(51, 2, 'The measures are in place to block the use of commonly chosen passwords and weak passphrases.\r\n', 2.7),
(52, 2, 'All authentication challenges, whether successful or failed, should respond in the same average response time.\r\n', 2.7),
(53, 2, 'The secrets, API keys, and passwords are not included in the source code, or online source code repositories.\r\n', 1.7),
(54, 2, 'if an application allows users to authenticate, they can authenticate using two-factor authentication or other strong authentication, or any similar scheme that provides protection against username + password disclosure.\r\n', 2.7),
(55, 2, 'Administrative interfaces are not accessible to untrusted parties\r\n', 3.7),
(56, 2, 'Browser autocomplete, and integration with password\r\nmanagers are permitted unless prohibited by risk based\r\npolicy.', 2.7),
(57, 3, 'The role design offers sufficient separation of privileges (the design considers authorization granularity).\r\n', 9.91),
(58, 3, 'The application\'s login is restricted in the database to access-specific stored procedures.\r\n', 13.68),
(59, 3, 'The application\'s login does not have permissions to access tables directly.\r\n\r\n', 11.79),
(60, 3, 'Access to system level resources is restricted.', 14.62),
(61, 3, 'The design identifies code access security requirements. Privileged resources and privileged operations are identified.\r\n', 11.79),
(62, 3, 'All identities that are used by the application are identified and the resources accessed by each identity are known.\r\n', 9.91),
(63, 3, 'All identities that are used by the application are identified and the resources accessed by each identity are known.\r\n\r\n', 14.62),
(64, 3, 'Usage of role based approach for access control\r\n', 13.68),
(65, 4, 'Administration interfaces are secured (strong authentication and authorization is used).\r\n', 6.25),
(66, 4, 'Remote administration channels are secured.\r\n', 6.25),
(67, 4, 'Configuration stores are secured.\r\n', 5.25),
(68, 4, 'Configuration secrets are not held in plain text in configuration files.\r\n\r\n', 7.25),
(69, 4, 'Administrator privileges are separated based on roles (for example, site content developer or system administrator).\r\n', 7.25),
(70, 4, 'Least-privileged process accounts and service accounts are used.\r\n\r\n', 7.25),
(71, 4, 'All components should be up to date with proper security configuration(s) and version(s). This should include removal of unneeded configurations and folders such as sample applications, platform documentation, and default or example users.\r\n', 6.25),
(72, 4, 'Communications between components, such as between the application server and the database server, should be encrypted, particularly when the components are in different containers or on different systems.\r\n', 6.25),
(73, 4, 'Communications between components, such as between the application server and the database server should be authenticated using an account with the least necessary privileges.\r\n', 5.25),
(74, 4, 'The application deployments are adequately sandboxed, containerized or isolated to delay and deter attackers from attacking other applications.\r\n', 5.25),
(75, 4, 'The application build and deployment processes are performed in a secure fashion.\r\n', 6.25),
(76, 4, 'Authorized administrators have the capability to verify the integrity of all security-relevant configurations to ensure that they have not been tampered with.\r\n', 6.25),
(77, 4, 'All application components are signed.\r\n', 6.25),
(78, 4, 'The third party components come from trusted repositories.\r\n', 7.25),
(79, 4, 'Ensure that build processes for system level languages have all security flags enabled, such as ASLR, DEP, and security checks.\r\n', 5.25),
(80, 4, 'All application assets are hosted by the application, such as JavaScript libraries, CSS stylesheets and web fonts are hosted by the application rather than rely on a CDN or external provider.\r\n', 6.25),
(81, 5, 'Secrets are not stored unless necessary. (Alternate methods have been explored at design time.)\r\n\r\n', 4.26),
(82, 5, 'Secrets are not stored in code.\r\n', 6.26),
(83, 5, 'Database connections, passwords, keys, or other secrets are not stored in plain text.\r\n', 6.26),
(84, 5, 'The design identifies the methodology to store secrets securely. (Appropriate algorithms and key sizes are used for encryption. It is preferable that DPAPI is used to store configuration data to avoid key management.)\r\n', 5.26),
(85, 5, 'Sensitive data is not logged in clear text by the application.\r\n', 6.26),
(86, 5, 'The design identifies protection mechanisms for sensitive data that is sent over the network.\r\n', 4.26),
(87, 5, 'Sensitive data is not stored in persistent cookies.\r\n', 5.26),
(88, 5, 'Sensitive data is not transmitted with the GET protocol.\r\n', 6.26),
(89, 5, 'All forms containing sensitive information have disabled client side caching, including autocomplete features.\r\n', 5.26),
(90, 5, 'The list of sensitive data processed by the application is identified, and that there is an explicit policy for how access to this data must be controlled, encrypted and enforced under relevant data protection directives.', 4.26),
(91, 5, 'All sensitive data is sent to the server in the HTTP message body or headers (i.e., URL parameters are never used to send sensitive data).\r\n', 4.26),
(92, 5, 'The application sets appropriate anti-caching headers as per the risk of the application, such as the following:\r\nExpires: Tue, 03 Jul 2018 06:00:00 GMT\r\nLast-Modified: {now} GMT\r\nCache-Control: no-store, no-cache, must-revalidate, max-age=0 Cache-Control: post-check=0, pre-check=0\r\nPragma: no-cache\r\n', 4.26),
(93, 5, 'On the server, all cached or temporary copies of sensitive data stored are protected from unauthorized access or purged/invalidated after the authorized user accesses the sensitive data.\r\n', 6.26),
(94, 5, 'There is a method to remove each type of sensitive data from the application at the end of the required retention policy.\r\n', 5.26),
(95, 5, 'The application minimizes the number of parameters in a request, such as hidden fields, Ajax variables, cookies and header values.\r\n', 4.26),
(96, 5, 'The application has the ability to detect and alert on abnormal numbers of requests for data harvesting for an example screen scraping.\r\n', 6.26),
(97, 5, 'The data stored in client side storage - such as HTML5 local storage, session storage, IndexedDB, regular cookies or Flash cookies - does not contain sensitive or PII).\r\n', 5.26),
(98, 5, 'Accessing sensitive data is logged, if the data is collected under relevant data protection directives or where logging of accesses is required.\r\n', 5.26),
(99, 5, 'The sensitive data is rapidly sanitized from memory as soon as it is no longer needed and handled in accordance to functions and techniques supported by the framework/library/operating system.\r\n', 4.26),
(100, 6, 'SSL is used to protect authentication cookies.\r\n', 6.5),
(101, 6, 'The contents of authentication cookies are encrypted.\r\n', 5.5),
(102, 6, 'Session lifetime is limited.\r\n', 5.5),
(103, 6, 'Session state is protected from unauthorized access.\r\n', 4.5),
(104, 6, 'Session identifiers are not passed in query strings.\r\n', 5.5),
(105, 6, 'There is no custom session manager, or that the custom session manager is resistant against all common session management attacks.\r\n', 4.5),
(106, 6, 'The sessions are invalidated when the user logs out.\r\n', 6.5),
(107, 6, 'The sessions timeout after a specified period of inactivity.\r\n', 6.5),
(108, 6, 'The sessions timeout after an administratively-configurable maximum time period regardless of activity (an absolute timeout).\r\n', 6.5),
(109, 6, 'All pages that require authentication have easy and visible access to logout functionality.\r\n', 6.5),
(110, 6, 'The session id is never disclosed in URLs, error messages, or logs. This includes verifying that the application does not support URL rewriting of session cookies.\r\n', 4.5),
(111, 6, 'All successful authentication and re-authentication generates a new session and session id.\r\n', 5.5),
(112, 6, 'Only session ids generated by the application framework are recognized as active by the application.\r\n', 5.5),
(113, 6, 'The session ids are sufficiently long, random and unique across the correct active session base.\r\n', 5.5),
(114, 6, 'The session ids stored in cookies have their path set to an appropriately restrictive value for the application, and authentication session tokens additionally set the “HttpOnly” and “secure” attributes\r\n', 4.5),
(115, 6, 'The application limits the number of active concurrent sessions.\r\n', 5.5),
(116, 6, 'An active session list is displayed in the account profile or similar of each user. The user should be able to terminate any active session.\r\n', 5.5),
(117, 6, 'The user is prompted with the option to terminate all other active sessions after a successful change password process.\r\n', 4.5),
(119, 7, 'Platform-level cryptography is used and it has no custom implementations.\r\n', 5.88),
(120, 7, 'The design identifies the correct cryptographic algorithm (and key size) for the application\'s data encryption requirements.\r\n', 6.88),
(121, 7, 'The methodology to secure the encryption keys is identified.\r\n', 5.88),
(122, 7, 'The design identifies the key recycle policy for the application.\r\n', 6.88),
(123, 7, 'Encryption keys are secured.\r\n', 4.88),
(124, 7, 'Keys are periodically recycled.\r\n', 6.88),
(125, 7, 'keys are changed at regular intervals\r\n', 4.88),
(126, 7, 'All cryptographic modules fail securely, and errors are handled in a way that does not enable oracle padding.\r\n', 5.88),
(127, 7, 'All random numbers, random file names, random GUIDs, and random strings are generated using the cryptographic module’s approved random number generator when these random values are intended to be not guessable by an attacker.\r\n', 4.88),
(128, 7, 'The cryptographic algorithms used by the application have been validated against FIPS 140-2 or an equivalent standard.\r\n', 5.88),
(129, 7, 'The cryptographic modules operate in their approved mode according to their published security policies.\r\n', 5.88),
(130, 7, 'There is an explicit policy for how cryptographic keys are managed (e.g., generated, distributed, revoked, and expired). Verify that this key lifecycle is properly enforced.\r\n', 6.88),
(131, 7, 'All consumers of cryptographic services do not have direct access to key material. Isolate cryptographic processes, including master secrets and consider the use of a virtualized or physical hardware key vault (HSM).\r\n', 6.88),
(132, 7, 'Personally Identifiable Information should be stored encrypted at rest and ensure that communication goes via protected channels.\r\n', 4.88),
(133, 7, 'Sensitive passwords or key material maintained in memory is overwritten with zeros as soon as it no longer required, to mitigate memory dumping attacks.\r\n', 4.88),
(134, 7, 'All keys and passwords are replaceable, and are generated or replaced at installation time.\r\n', 6.88),
(135, 7, 'Random numbers are created with proper entropy even when the application is under heavy load, or that the application degrades gracefully in such circumstances.\r\n', 4.88),
(136, 8, 'All input parameters are validated (including form fields, query strings, cookies, and HTTP headers).\r\n\r\n', 25),
(137, 8, 'Cookies with sensitive data are encrypted.\r\n', 35),
(138, 8, 'Sensitive data is not passed in query strings or form fields.\r\n', 15),
(139, 8, 'HTTP header information is not relied on to make security decisions.\r\n', 25),
(140, 9, 'The application does not output error messages or stack traces containing sensitive data that could assist an attacker, including session id, software/framework versions and personal information\r\n', 22.66),
(141, 9, 'Application exception handling minimizes the information disclosure in case of an exception.\r\n', 16.66),
(142, 9, 'The design identifies generic error messages that are returned to the client.\r\n', 13.66),
(143, 9, 'Application errors are logged to the error log.\r\n', 19.66),
(144, 9, '\"Private data (for example, passwords) is not logged.\r\n', 16.66),
(145, 9, 'The error handling logic in security controls denies access by default.\r\n', 10.66),
(146, 10, '\"The design identifies the level of auditing and logging necessary for the application and identifies the key parameters to be logged and audited.\r\n\"\r\n', 9.14),
(147, 10, 'The design considers how to flow caller identity across multiple tiers (at the operating system or application level) for auditing.\r\n', 7.14),
(148, 10, 'The design identifies the storage, security, and analysis of the application log files.\r\n', 7.14),
(149, 10, 'The security logging controls provide the ability to log success and particularly failure events that are identified as security-relevant.\r\n', 5.14),
(150, 10, 'Each log event includes necessary information that would allow for a detailed investigation of the timeline when an event happens.\r\n', 7.14),
(151, 10, 'All events that include untrusted data will not execute as code in the intended log viewing software.\r\n', 8.14),
(152, 10, 'Security logs are protected from unauthorized access and modification.\r\n', 8.14),
(153, 10, 'The application does not log sensitive data as defined under local privacy laws or regulations, organizational sensitive data as defined by a risk assessment, or sensitive authentication data that could assist an attacker, including user’s session identifiers, passwords, hashes, or API tokens.\r\n', 7.14),
(154, 10, 'All non-printable symbols and field separators are properly encoded in log entries, to prevent log injection.\r\n', 7.14),
(155, 10, 'The log fields from trusted and untrusted sources are distinguishable in log entries.\r\n', 5.14),
(156, 10, 'An audit log or similar allows for non-repudiation of key transactions.\r\n', 7.14),
(157, 10, 'The security logs have some form of integrity checking or controls to prevent unauthorized modification.\r\n', 7.14),
(158, 10, 'The logs are stored on a different partition than the application is running with proper log rotation.\r\n', 9.14),
(159, 10, 'Time sources should be synchronized to ensure logs have the correct time\r\n', 5.14),
(160, 11, 'What is the process for identifying and addressing vulnerabilities in the application?\r\n\r\n', 15),
(161, 11, 'What access to system and network administrators have to the application\'s sensitive data?\r\n', 25),
(162, 11, 'do administrators access production infrastructure securely to manage it?\r\n', 40),
(163, 11, 'Do physical controls restrict access to the application\'s components and data?\r\n', 20),
(164, 12, 'Are changes to the code controlled?\r\n\r\n', 33.33),
(165, 12, 'are changes to the infrastructure controlled?\r\n', 33.33),
(166, 12, 'How secure is code deployed to production?\r\n', 33.33),
(167, 13, 'Is data available to developers for testing confidential?\r\n', 22.66),
(168, 13, 'Do developers assist with troubleshooting and debugging the application?\r\n', 16.66),
(169, 13, 'Are requirements been defined for controlling access to the applications source code?\r\n', 13.66),
(170, 13, 'Is secure coding processes been established?\r\n', 19.66),
(171, 13, 'The application will only process business logic flows in sequential step order, with all steps being processed in realistic human time, and not process out of order, skipped steps, process steps from another user, or too quickly submitted transactions.\r\n', 16.66),
(172, 13, 'Verify the application has business limits and correctly enforces on a per user basis, with configurable alerting and automated reactions to automated or unusual attack.\r\n', 10.66),
(174, 14, 'The organisation should have a firewall or equivalent in place to protect their internal network and devices against unauthorised access\r\n', 9.14),
(175, 14, 'The password on the firewall device should be changed from the default to an alternative strong password\r\n', 7.28),
(176, 14, 'The firewall password is:\r\nat least 8 characters long\r\n', 6.14),
(177, 14, 'The firewall password is:\r\nnot the same as the username\r\n', 8.14),
(178, 14, 'The firewall password is:\r\ndoes not contain any identical characters next to each other\r\n', 9.14),
(179, 14, 'The firewall password is:\r\nis not a dictionary word\r\n', 9.14),
(180, 14, 'The firewall password is:\r\nincludes upper and lower case letters, numbers and special characters\r\n', 8.14),
(181, 14, 'The firewall password is:\r\nhas not been reused within a predetermined time period\r\n', 8.14),
(182, 14, 'The firewall password is:\r\nhas not been used for another account\r\n', 6.14),
(183, 14, 'Each rule set on the firewall must be approved by an authorized individual and documented including an explanation of the business need for this rule.\r\n\r\n\r\n', 7.14),
(184, 14, 'Unapproved or vulnerable services should be blocked at the gateway firewall\r\n', 7.14),
(185, 14, 'Any permissive firewall rules that are no longer required should be disabled as soon as possible\r\n', 9.14),
(186, 14, 'The firewall boundary administration settings should not be accessible from the internet\r\n', 5.14),
(187, 15, 'Remove unnecessary services\r\n', 4.55),
(188, 15, 'Remove unnecessary files/programs\r\n', 5.55),
(189, 15, 'Configure file system with proper file/folder access permissions\r\n', 6.55),
(190, 15, 'Disable anonymous user logon information\r\n', 6.55),
(191, 15, 'Configure account policy to restrict unauthorized logon attempts\r\n', 5.55),
(192, 15, 'Block account after too many failed logon attempts\r\n', 5.55),
(193, 15, 'Create administrators to perform different functions\r\n', 4.55),
(194, 15, 'Limit remote administrator rights\r\n', 5.55),
(195, 15, 'Disable administrator rights on remote server\r\n', 6.55),
(196, 15, ' Configure Remote Access Service security\r\n', 5.55),
(197, 15, ' Rename Administrator Account\r\n', 4.55),
(198, 15, ' Configure auditing of Administrator account logon attempts\r\n', 5.55),
(199, 15, ' Set a strong password for current administrator/root account\r\n', 5.55),
(200, 15, ' Use different passwords for domain/server accounts than for local workstation accounts\r\n', 4.55),
(201, 15, ' Restrict access permissions for the Everyone group\r\n', 5.55),
(202, 15, ' Disable Guest account if enabled\r\n', 6.55),
(203, 15, ' Create appropriate user and group accounts\r\n', 5.55),
(204, 15, ' Schedule periodic download and installation of operating system patches\r\n', 5.55),
(205, 16, 'Passwords should appear encrypted when viewed through the configuration file.\r\n', 6),
(206, 16, 'Is enable secret used for the router enable mode?\r\n', 4),
(207, 16, 'Does the enable secret password match any other username password; enable password, or the enable secret password of another router in the network?\r\n', 5),
(208, 16, 'Is a Message of the Day (MOTD) banner defined?\r\n', 4),
(209, 16, 'Is the aux port disabled?\r\n', 4),
(210, 16, 'Do any applications use telnet to perform management activities such as backing up configuration?\r\n', 6),
(211, 16, 'Do the router passwords meet with the required complexity as defined by the policy?\r\n', 5),
(212, 16, 'Are unused interfaces disabled?\r\n', 6),
(213, 16, 'Is DNS lookups for the router turned off?\r\n', 5),
(214, 16, 'Is Cisco Discovery Protocol disabled on the router?\r\n', 4),
(215, 16, 'Is directed broadcast disabled on all interfaces?\r\n', 5),
(216, 16, 'Is Proxy ARP disabled on the router?\r\n', 6),
(217, 16, 'Is ICMP redirects disabled on the router?\r\n', 5),
(218, 16, 'Does each router administrator have a unique account for himself/herself?\r\n', 6),
(219, 16, 'Are all user accounts assigned the lowest privilege level that allows them to perform their duties?\r\n', 5),
(220, 16, 'How often is the router configurations backed up?\r\n', 6),
(221, 16, 'Is the backup moved to an off-site/DR site?\r\n', 4),
(222, 16, 'Is the network engineer aware of the latest vulnerabilities that could affect the router?\r\n', 5),
(223, 16, 'Can admin access be limited to Ethernet only?\r\n', 4),
(224, 16, 'Does it time out? (it should) That is, if you forget to logout from the router, eventually your session should time out, and, you should be able to set the time limit, the shorter, the more secure.\r\n', 5),
(225, 17, 'Secure your laptop, especially when traveling. - (Not for Desktop)\r\n', 8.33),
(226, 17, 'Lock your laptop in a filing cabinet, docking station, or other secure place when going home from the office. Many thefts occur after hours or at lunchtime.\r\n', 8.33),
(227, 17, '    Watch out in airports, especially at the security checkpoints. \r\n', 8.33),
(228, 17, 'Carry your laptop in a nondescript unit such as a briefcase.\r\n', 8.33),
(229, 17, 'Watch out for diversions. A laptop thief may be lurking nearby.\r\n', 8.33),
(230, 17, 'Conspicuously label the laptop with the owner (like the business or an asset tag).\r\n', 8.33),
(231, 17, 'Keep your laptop in a hotel safe (get a receipt) or lock it in your suitcase.\r\n', 8.33),
(232, 17, 'Fill out the manufacturer\'s warranty card and send it in. A thief may send in a laptop to get repaired.\r\n', 8.33),
(233, 17, 'Disable the infrared port while out so someone cannot access your files.\r\n', 8.33),
(234, 17, 'Modify your laptop so that the last username used to log on is not displayed in the logon dialog box.\r\n', 8.33),
(235, 17, 'Don\'t put your laptop in checked luggage.\r\n', 8.33),
(236, 17, 'Use a padded carrying case for your laptop.\r\n', 8.33),
(237, 18, 'Never connect a found jump drive or media device to a PC. Give any unknown storage device to security or IT personnel near where you found it.\r\n', 14),
(238, 18, 'When you have finished transferring sensitive data from a USB drive, be sure to delete it using a secure delete utility.\r\n', 6),
(239, 18, 'Keep your personal and business data separate. Don’t plug your personal audio player into your work PC or your work jump drive into your home PC.\r\n', 15),
(240, 18, 'Secure all sensitive data stored on jump drives, CDs, and DVDs using strong encryption, such as AES 128/256 bit. Also, be sure to have a backup copy located in a secure location.\r\n', 8),
(241, 18, 'Run anti-malware software on the device and take the appropriate action when it identifies suspicious applications. Also, scan the entire device periodically for malware.\r\n', 13),
(242, 18, 'Create security and acceptable-use policies for all portable media devices  and educate your employees about those policies.\r\n', 7),
(243, 18, 'Teach your employees to report missing devices immediately so they can be wiped of all data.\r\n', 8),
(244, 18, 'Choose only a few devices to support, and consider their security features and vulnerabilities.\r\n', 8),
(245, 18, 'Educate employees about the value of using strong passwords and PINs, and require their use.\r\n', 8),
(246, 18, 'Only allow access to the organizational network through a secure VPN connection.\r\n', 9),
(247, 21, 'Requirements should define access rights, if any, and should also include requirements for data disposal so that sensitive data is protected after it leaves the staging area.\r\n', 12.28),
(248, 21, 'Access privileges must be specified.\r\n', 16.28),
(249, 21, 'Requirements need to specify which users have access to data and any data aggregation security specifications.\r\n', 11.28),
(250, 21, 'Should consider requirements for other sensitive corporate data e.g. human resource data;\r\n', 16.28),
(251, 21, 'Should consider test data requirements e.g a need to “black-out” sensitive data during testing;\r\n', 12.28),
(252, 21, 'Should consider security concerns for project documentation e.g. are detail design specifications of value to competitors and if so, what are the requirements to prevent unauthorized access\r\n', 17.28),
(253, 21, 'Should ensure that the requirements specifications refer to the information management data security policy to ensure common understanding of all data warehouse security requirements.\r\n', 14.28),
(254, 22, '\" Identify all relevant regulatory and other obligations that impact data security and\r\ndata privacy (e.g., Sarbanes-Oxley, HIPAA, Payment Card Industry Data\r\nSecurity Standard (PCI DSS), EU Data Privacy, CA SB 1386/AB 1950, etc.) \"\r\n', 10),
(255, 22, 'Identify all relevant legal obligations that impact data security (e.g., court orders, contractual obligations, due care, trade secrets, competitively sensitive information, national security, intellectual property, etc.)\r\n', 10),
(256, 22, '\"Identify all relevant executive management concerns (e.g., public image,\r\nthwarting and detecting criminal activity, protecting intellectual property) and\r\ntrace them back to quantifiable obligations and requirements.\"\r\n', 10),
(257, 22, 'Review organizational policies associated with data protection and data security (e.g., retention, destruction, privacy/confidentiality, etc.)\r\n', 10),
(258, 22, 'Review organizational IS/IT strategic plans to identify desired future states with defined data protection and data security dependencies\r\n', 10),
(259, 22, 'Review recent IS audit results/findings to identify data privacy/confidentiality deficiencies\r\n', 10),
(260, 22, 'Determine whether compliance or data security requirements serve as the primary need for confidentiality measures\r\n', 10),
(261, 22, 'Determine the role of monitoring and reporting (auditing)\r\n', 10),
(262, 22, 'Identify the organizational classifications of most sensitive data worthy of data security measures (confidentiality, access control, data integrity, immutability, etc.)\r\n', 10),
(263, 22, 'Determine the organization’s confidentiality categories (e.g., most confidential, competitively sensitive, personally identifiable information or PII, top secret, restricted financial, …, cafeteria menu) to be subjected to encryption measures.\r\n', 10),
(264, 23, 'Supports FIPS 140-1/140-2 algorithms (AES, RC5)\r\n', 4.55),
(265, 23, 'Supports strong key lengths (256-bit and up)\r\n', 5.55),
(266, 23, 'Common Criteria Certification Level of EAL2 – EAL4\r\n', 6.55),
(267, 23, 'Options of certificates, token and smart cards to protect keys (available for pre-boot and Windows)\r\n', 6.55),
(268, 23, 'Supports standards including ISO 7816-4 smart card scripting language\r\n', 5.55),
(269, 23, 'Centralized management for encryption policies and keys\r\n', 5.55),
(270, 23, 'No superuser administrative key to unlock all data for separation of duties; original key required to decrypt\r\n', 4.55),
(271, 23, 'No storage of keys in plaintext at the server side\r\n', 5.55),
(272, 23, 'Client-side key generation on PC/mobile computer\r\n', 6.55),
(273, 23, 'Client-side key generation on mobile phones\r\n', 5.55),
(274, 23, 'Authentication required to access keys\r\n', 4.55),
(275, 23, 'Keys available when offline\r\n', 5.55),
(276, 23, 'Temporary reset option for those who lose passwords, smart cards or tokens\r\n', 5.55),
(277, 23, 'Secure recovery of lost/forgotten tokens, even if system is offline\r\n', 4.55),
(278, 23, 'Maintenance of encrypted state even after sudden power loss\r\n', 5.55),
(279, 23, 'Notification on specified device, even in sleep/ suspend mode\r\n', 6.55),
(280, 23, 'Support for multiple two-factor authentication types like smart cards and hardware tokens, as well as certificates\r\n', 5.55),
(281, 23, 'Password protect and administrator control over uninstall at the client\r\n', 5.55),
(282, 24, 'Allows investigation of incidents involving data at rest, data in use, and data in motion from within a centralized management console\r\n', 12.28),
(283, 24, 'Allows definition and establishment of specific workflows (i.e., add all three event types to cases), assigns cases to individual users/owners, allows users to document cases (e.g., notes), and document management\r\n', 16.28),
(284, 24, 'Creation of cases (i.e., groups of incidents) and population into management system\r\n', 11.28),
(285, 24, 'User dashboard provides information to guide user in remediation of discovered problem\r\n', 16.28),
(286, 24, 'Classifies incidents/cases into user-defined categories\r\n', 12.28),
(287, 24, 'Assigns incidents/cases to users for data at rest, in use, and in motion\r\n', 17.28),
(288, 24, 'Provides security and access controls around case/ incident (user and group)\r\n', 14.28),
(289, 25, 'Central monitoring for all HDLP, NDLP, and Encryption alerts from within management console\r\n', 14),
(290, 25, 'Ability to tailor dashboard presentation to client needs\r\n', 6),
(291, 25, 'Ability to launch individual components from central management console\r\n', 15),
(292, 25, 'Variety of standard reports that can be tailored for client needs\r\n', 8),
(293, 25, 'Support of development of ad-hoc (i.e., custom) reports\r\n', 13),
(294, 25, 'Availability of all reports from within a single management console\r\n', 7),
(295, 25, 'Ability to meet all regulatory requirements that apply\r\n', 8),
(296, 25, 'Flexibility in determining what events to log\r\n', 8),
(297, 25, 'Ability to log all boot and logon events\r\n', 8),
(298, 25, 'Ability to secure logs against tampering\r\n', 9),
(299, 26, 'Identify your staffing needs\r\n', 4.55),
(300, 26, 'Review the position’s Job Description and have it evaluated, if required. Contact the Total Rewards Unit for support.\r\n', 5.55),
(301, 26, 'Review best practices resources about job postings\r\n', 6.55),
(302, 26, 'Establish and prepare the Selection Committee.\r\n', 6.55),
(303, 26, 'Determine the number of candidates to be interviewed\r\n', 5.55),
(304, 26, 'Set your selection criteria and develop a resume screening tool and interview questions\r\n', 5.55),
(305, 26, 'Review all applications using the agreed upon selection criteria. Ensure the candidate pool is diverse.\r\n', 4.55),
(306, 26, '\"Invite best qualified applicants for an interview. (There may be\r\nvalue in conducting a preliminary phone interview, especially for\r\npositions that receive a large number of applicants.) \"\r\n', 5.55),
(307, 26, 'Have applicants complete applicable consent forms for the collection of personal information.\r\n', 6.55),
(308, 26, 'Conduct the interviews/testing of applicants.\r\n', 5.55),
(309, 26, 'Rate candidates based on predefined selection criteria.\r\n', 4.55),
(310, 26, 'Debrief evaluation/ratings with Selection Committee\r\n', 5.55),
(311, 26, 'Identify preferred candidate(s).\r\n', 5.55),
(312, 26, 'Notify the lead candidate that they are the preferred choice and that you would like to proceed with checking their employmentrelated references. At the same time, you may wish to discuss potential start date availability with the candidate, in the event that you do extend an offer of employment\r\n', 4.55),
(313, 26, 'Check 2-3 references for the lead candidate. Please note that, for internal candidates, prior to extending an offer of employment to the lead candidate, the Hiring Manager is required to contact the candidate’s current supervisor at McMaster University for a reference check\r\n', 5.55),
(314, 26, 'Conduct any other clearances or checks required for the job (e.g., physical fitness requirements, criminal background checks).\r\n', 6.55),
(315, 26, 'The Hiring Manager advises the candidate that they are the successful applicant and that an offer of employment will be forthcoming.\r\n', 5.55),
(316, 26, 'The Hiring Manager notifies unsuccessful interviewed applicants\r\n', 5.55);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `reportId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `credtm` date NOT NULL,
  `title` varchar(32) NOT NULL,
  `descrip` text NOT NULL,
  PRIMARY KEY (`reportId`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`reportId`, `userId`, `credtm`, `title`, `descrip`) VALUES
(41, 1, '2018-06-06', 'f', 'f'),
(40, 1, '2018-06-06', 't', 't'),
(39, 1, '2018-06-06', 'TEMp', 'temp'),
(38, 1, '2018-06-05', 'TEST', 'TEST'),
(37, 1, '2018-06-04', 'TEST', 'TEST'),
(36, 1, '2018-06-04', 'REVIEW', 'REVIEW'),
(35, 1, '2018-06-04', 'tes', 'tes'),
(34, 1, '2018-06-04', 'TE', 'TE'),
(33, 1, '2018-06-04', 'REVIEW', 'REVIEW'),
(32, 1, '2018-06-04', 'REVIEW', 'REVIEW'),
(31, 1, '2018-06-04', 'T', 'T'),
(30, 1, '2018-06-04', 'TESTing ', 'TESTing'),
(42, 1, '2018-06-06', 'TEST', 'TEST1212'),
(43, 1, '2018-06-06', 'TEST', 'TEST'),
(44, 1, '2018-06-06', 'TEST', 'TEST'),
(45, 1, '2018-06-06', 'undefined', 'undefined'),
(46, 1, '2018-06-06', 'TR', 'GR'),
(47, 1, '2018-06-06', 'Test', 'j'),
(48, 1, '2018-08-02', 'sa', 'as'),
(49, 1, '2018-09-27', 'test', 'test12345'),
(50, 1, '2018-09-27', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `reportdetails`
--

DROP TABLE IF EXISTS `reportdetails`;
CREATE TABLE IF NOT EXISTS `reportdetails` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `reportId` int(11) NOT NULL,
  `checklistId` int(11) NOT NULL,
  `percent` float NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reportdetails`
--

INSERT INTO `reportdetails` (`sno`, `reportId`, `checklistId`, `percent`) VALUES
(63, 35, 27, 0),
(60, 35, 209, 0),
(61, 35, 212, 0),
(62, 35, 23, 0),
(59, 35, 208, 0),
(58, 34, 71, 0),
(57, 34, 68, 0),
(56, 33, 181, 0),
(55, 33, 179, 0),
(54, 33, 176, 0),
(53, 33, 175, 0),
(52, 32, 29, 0),
(51, 32, 28, 0),
(50, 32, 27, 0),
(49, 32, 26, 0),
(48, 32, 25, 0),
(47, 32, 24, 0),
(46, 32, 23, 0),
(45, 32, 21, 0),
(44, 31, 28, 0),
(43, 31, 26, 0),
(42, 31, 25, 0),
(41, 31, 23, 0),
(40, 31, 176, 0),
(39, 31, 174, 0),
(38, 30, 233, 0),
(37, 30, 230, 0),
(36, 30, 228, 0),
(35, 30, 27, 0),
(34, 30, 23, 0),
(64, 35, 29, 0),
(65, 35, 300, 0),
(66, 35, 303, 0),
(67, 35, 306, 0),
(68, 36, 23, 0),
(69, 36, 24, 0),
(70, 36, 28, 0),
(71, 36, 30, 0),
(72, 36, 32, 0),
(73, 36, 36, 0),
(74, 36, 83, 0),
(75, 36, 84, 0),
(76, 36, 86, 0),
(77, 36, 88, 0),
(78, 37, 176, 0),
(79, 37, 179, 0),
(80, 37, 180, 0),
(81, 37, 183, 0),
(82, 37, 184, 0),
(83, 37, 185, 0),
(84, 37, 229, 0),
(85, 37, 231, 0),
(86, 37, 232, 0),
(87, 37, 100, 0),
(88, 37, 101, 0),
(89, 37, 102, 0),
(90, 37, 117, 0),
(91, 42, 21, 3.7),
(92, 42, 24, -3.7),
(93, 42, 26, 1.7),
(94, 42, 30, 1.35),
(95, 42, 49, 1.35),
(96, 43, 247, 12.28),
(97, 43, 248, -16.28),
(98, 43, 250, 16.28),
(99, 43, 251, -12.28),
(100, 43, 253, -14.28),
(101, 43, 254, 101.818),
(102, 43, 254, 101.818),
(103, 43, 256, 101.818),
(104, 43, 257, 51.8182),
(105, 43, 257, 51.8182),
(106, 43, 263, 101.818),
(107, 43, 254, 101.818),
(108, 43, 254, 101.818),
(109, 43, 256, 101.818),
(110, 43, 257, 51.8182),
(111, 43, 257, 51.8182),
(112, 43, 263, 101.818),
(113, 43, 254, 101.818),
(114, 43, 254, 101.818),
(115, 43, 254, 101.818),
(116, 43, 258, 101.818),
(117, 43, 255, 101.818),
(118, 43, 256, 101.818),
(119, 43, 256, 101.818),
(120, 43, 258, 51.8182),
(121, 43, 254, 101.818),
(122, 43, 254, 101.818),
(123, 43, 256, 101.818),
(124, 43, 256, 101.818),
(125, 43, 254, 12),
(126, 43, 254, 12),
(127, 43, 256, 7),
(128, 43, 256, 7),
(129, 43, 289, 15.4),
(130, 43, 289, 15.4),
(131, 43, 289, 15.4),
(132, 43, 293, 14.4),
(133, 43, 296, 5.4),
(134, 43, 289, 14.8),
(135, 43, 289, 14.8),
(136, 43, 293, 13.8),
(137, 43, 296, 4.8),
(138, 44, 247, 16.6457),
(139, 44, 247, 16.6457),
(140, 44, 250, 12.5057),
(141, 44, 252, 21.6457),
(142, 44, 252, 21.6457),
(143, 45, 1, 6.42105),
(144, 45, 1, 6.42105),
(145, 45, 3, 3.67105),
(146, 45, 3, 3.67105),
(147, 45, 5, 6.42105),
(148, 45, 5, 6.42105),
(149, 46, 59, 14.9738),
(150, 46, 60, 10.4937),
(151, 46, 64, 16.8638),
(152, 47, 247, 14.6057),
(153, 47, 249, 7.96571),
(154, 48, 1, 5.78947),
(155, 49, 1, 5.78947),
(156, 49, 3, 3.03947),
(157, 50, 21, 3.74722),
(158, 50, 101, 5.5),
(159, 50, 102, 2.75);

-- --------------------------------------------------------

--
-- Table structure for table `threats`
--

DROP TABLE IF EXISTS `threats`;
CREATE TABLE IF NOT EXISTS `threats` (
  `s.no` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `threat` text NOT NULL,
  `remediation` text NOT NULL,
  PRIMARY KEY (`s.no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
