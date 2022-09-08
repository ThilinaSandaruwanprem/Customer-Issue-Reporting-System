-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 07, 2022 at 09:49 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `issue`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `record` varchar(255) DEFAULT NULL,
  `record_status` varchar(255) DEFAULT NULL,
  `record_title` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `issue_id` bigint(20) NOT NULL,
  `record_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKowf3j3j30xcu7ljwxmq2ovl0j` (`issue_id`),
  KEY `FK63opf8vgp46fc2ykngddghotg` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `created_at`, `record`, `record_status`, `record_title`, `record_type`, `issue_id`, `record_id`) VALUES
(1, '2022-09-08 02:49:29', 'Describe the technical support process.  How do you submit issues, receive help, etc…', 'open', 'technical support ', 'question', 11, 11),
(2, '2022-09-08 03:04:37', 'One of the best ways to avoid delay in timelines is to brainstorm at the beginning of the project. Ask the team, “What will break during this process?”', 'open', 'Unrealistic Or Mismanaged Timelines', 'improvement', 16, 16),
(3, '2022-09-08 03:05:20', ' Let’s face it, the chances that your boss is a Steve Jobs visionary are pretty slim, despite what they might think of themselves.', 'open', 'Lack Of Alignment Between Sponsor And User Needs', 'improvement', 18, 18),
(4, '2022-09-08 03:05:48', 'It behooves developers and product managers to have security built into the development lifecycle and built into their go-to-market strategies, including any security certifications and/or other industry requirements', 'open', 'Security-Related Release Delays', 'improvement', 23, 23),
(5, '2022-09-08 03:06:15', 'it’s important to define your target audience before launching your new software', 'open', 'Not Defining A Target Audience', 'improvement', 24, 24),
(6, '2022-09-08 03:06:39', 'If links on a website don\'t work or take users to the wrong page, this would be considered a broken link bug.', 'in_progress', 'Broken Links', 'bug', 2, 2),
(7, '2022-09-08 03:06:48', 'If important elements of a system are missing or not properly configured, this can create difficulties for users.', 'in_progress', 'Missing Information', 'bug', 4, 4),
(8, '2022-09-08 03:06:56', 'How responsive is the vendor to issues?', 'in_progress', 'Implementation and Support', 'question', 8, 8),
(9, '2022-09-08 03:07:04', 'Any bug that allows someone unauthorized access to data or systems is classified as a security bug.', 'in_progress', 'Security Bugs', 'bug', 6, 6),
(10, '2022-09-08 03:07:13', 'When and why did you decide to look for (type of software) software?', 'in_progress', 'Background', 'bug', 13, 13),
(11, '2022-09-08 03:07:21', 'What is the quality of support?', 'in_progress', 'Quality', 'question', 10, 10),
(12, '2022-09-08 03:07:30', 'be more specialized rather than more general—look for sub-niches. Remember, less is more when we are trying to solve a problem. -', 'in_progress', 'Feature Overload', 'improvement', 17, 17),
(13, '2022-09-08 03:07:38', 'Businesses need to understand not just what a customer is asking for, but “why” they’re asking for this specifically. The driver of a horse and cart may ask for a better whip to go faster', 'in_progress', 'Not Pinpointing The Real ‘Why’', 'improvement', 20, 20),
(14, '2022-09-08 03:07:45', 'The most effective way to combat this issue is to consistently and thoroughly conduct customer development interviews to validate each feature and make sure it meaningfully targets the issue you set out to solve.', 'open', 'Feature Creep', 'improvement', 22, 22),
(15, '2022-09-08 03:07:48', 'The most effective way to combat this issue is to consistently and thoroughly conduct customer development interviews to validate each feature and make sure it meaningfully targets the issue you set out to solve.', 'in_progress', 'Feature Creep', 'improvement', 22, 22),
(16, '2022-09-08 03:08:20', 'It behooves developers and product managers to have security built into the development lifecycle and built into their go-to-market strategies, including any security certifications and/or other industry requirements', 'in_progress', 'Security-Related Release Delays', 'improvement', 23, 23),
(17, '2022-09-08 03:08:26', 'Any bug that allows someone unauthorized access to data or systems is classified as a security bug.', 'waiting_on_client', 'Security Bugs', 'bug', 6, 6),
(18, '2022-09-08 03:08:34', 'How responsive is the vendor to issues?', 'waiting_on_client', 'Implementation and Support', 'question', 8, 8),
(19, '2022-09-08 03:08:44', 'What is the quality of support?', 'resolved', 'Quality', 'question', 10, 10),
(20, '2022-09-08 03:08:50', 'be more specialized rather than more general—look for sub-niches. Remember, less is more when we are trying to solve a problem. -', 'resolved', 'Feature Overload', 'improvement', 17, 17),
(21, '2022-09-08 03:09:00', 'Describe the technical support process.  How do you submit issues, receive help, etc…', 'in_progress', 'technical support ', 'question', 11, 11),
(22, '2022-09-08 03:09:08', 'Every member has to know a project’s coding strategy, objective and goals. Otherwise, the fallout affects the manager’s reputation and the team’s output', 'in_progress', 'Communication Breakdowns', 'improvement', 15, 15),
(23, '2022-09-08 03:09:20', 'When and why did you decide to look for (type of software) software?', 'resolved', 'Background', 'bug', 13, 13),
(24, '2022-09-08 03:09:35', 'it’s important to define your target audience before launching your new software', 'resolved', 'Not Defining A Target Audience', 'improvement', 24, 24),
(25, '2022-09-08 03:09:49', ' Let’s face it, the chances that your boss is a Steve Jobs visionary are pretty slim, despite what they might think of themselves.', 'waiting_on_client', 'Lack Of Alignment Between Sponsor And User Needs', 'improvement', 18, 18);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`id`, `issue`, `status`, `title`, `type`) VALUES
(1, 'This type of bug occurs when the system fails to perform as expected. For example, if a website is supposed to allow users to submit their taxes online, but instead causes them to receive an error message, this would qualify as a faulty functionality bug.', 'open', 'Faulty Functionality', 'bug'),
(2, 'If links on a website don\'t work or take users to the wrong page, this would be considered a broken link bug.', 'in_progress', 'Broken Links', 'bug'),
(3, 'If data entered into a system is incorrect or incomplete, this could lead to problems in functionality.', 'open', 'Incorrect Data', 'bug'),
(4, 'If important elements of a system are missing or not properly configured, this can create difficulties for users.', 'in_progress', 'Missing Information', 'bug'),
(5, 'Bugs that occur when different pieces of software don\'t work together correctly are known  as incompatible software bugs.', 'open', 'Incompatible Software', 'bug'),
(6, 'Any bug that allows someone unauthorized access to data or systems is classified as a security bug.', 'waiting_on_client', 'Security Bugs', 'bug'),
(7, 'What are the best features and limitations?', 'open', 'Product Questions', 'question'),
(8, 'How responsive is the vendor to issues?', 'waiting_on_client', 'Implementation and Support', 'question'),
(9, 'What was the total cost of ownership (software, hardware, services, training, etc…)?', 'open', 'Wrap-up Question', 'question'),
(10, 'What is the quality of support?', 'resolved', 'Quality', 'question'),
(11, 'Describe the technical support process.  How do you submit issues, receive help, etc…', 'in_progress', 'technical support ', 'question'),
(12, 'What are the best features and limitations?', 'open', 'features and limitations', 'question'),
(13, 'When and why did you decide to look for (type of software) software?', 'resolved', 'Background', 'bug'),
(14, 'You need to find ways to make your product compatible using application program interfaces (APIs) or partnering with these other tech brands on ways to work together', 'open', 'Integration ', 'improvement'),
(15, 'Every member has to know a project’s coding strategy, objective and goals. Otherwise, the fallout affects the manager’s reputation and the team’s output', 'in_progress', 'Communication Breakdowns', 'improvement'),
(16, 'One of the best ways to avoid delay in timelines is to brainstorm at the beginning of the project. Ask the team, “What will break during this process?”', 'open', 'Unrealistic Or Mismanaged Timelines', 'improvement'),
(17, 'be more specialized rather than more general—look for sub-niches. Remember, less is more when we are trying to solve a problem. -', 'resolved', 'Feature Overload', 'improvement'),
(18, ' Let’s face it, the chances that your boss is a Steve Jobs visionary are pretty slim, despite what they might think of themselves.', 'waiting_on_client', 'Lack Of Alignment Between Sponsor And User Needs', 'improvement'),
(19, 'Save yourself some time and hardship by scheduling in some extra cushion time in case it is needed. In the worst-case scenario, that space is used to conduct tests on the project or take some much-needed time off.', 'open', 'Underestimating The Task At Hand', 'bug'),
(20, 'Businesses need to understand not just what a customer is asking for, but “why” they’re asking for this specifically. The driver of a horse and cart may ask for a better whip to go faster', 'in_progress', 'Not Pinpointing The Real ‘Why’', 'improvement'),
(21, 'To obtain high-performing and secure products, code quality has to be reviewed and tested continuously throughout the development stages.', 'open', 'Quality Assurance', 'improvement'),
(22, 'The most effective way to combat this issue is to consistently and thoroughly conduct customer development interviews to validate each feature and make sure it meaningfully targets the issue you set out to solve.', 'in_progress', 'Feature Creep', 'improvement'),
(23, 'It behooves developers and product managers to have security built into the development lifecycle and built into their go-to-market strategies, including any security certifications and/or other industry requirements', 'in_progress', 'Security-Related Release Delays', 'improvement'),
(24, 'it’s important to define your target audience before launching your new software', 'resolved', 'Not Defining A Target Audience', 'improvement'),
(25, 'underestimate the volume of traffic their infrastructure may experience with the launch of a new product.', 'open', 'Underestimating The Demand', 'improvement');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK63opf8vgp46fc2ykngddghotg` FOREIGN KEY (`record_id`) REFERENCES `issue` (`id`),
  ADD CONSTRAINT `FKowf3j3j30xcu7ljwxmq2ovl0j` FOREIGN KEY (`issue_id`) REFERENCES `issue` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
