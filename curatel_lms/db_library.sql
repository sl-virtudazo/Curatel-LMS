-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2025 at 06:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` enum('Available','Borrowed') NOT NULL DEFAULT 'Available',
  `added_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `isbn`, `category`, `status`, `added_at`, `updated_at`) VALUES
('BK-002', 'To Kill a Mockingbird', 'Harper Lee', '978-0-061-12008-4', 'Fiction', 'Borrowed', '2025-11-08 08:27:39', '2025-12-06 16:01:26'),
('BK-003', '1984', 'George Orwell', '978-0-452-28423-4', 'Fiction', 'Borrowed', '2025-11-08 08:27:39', '2025-12-06 15:59:09'),
('BK-004', 'The Great Gatsby', 'F. Scott Fitzgerald', '978-0-743-27356-5', 'Fiction', 'Available', '2025-11-08 08:27:39', '2025-12-06 13:50:16'),
('BK-005', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '978-0-590-35340-3', 'Fiction', 'Available', '2025-11-08 08:27:39', '2025-12-06 13:50:23'),
('BK-006', 'The Catcher in the Rye', 'J.D. Salinger', '978-0-316-76948-0', 'Fiction', 'Available', '2025-11-08 08:27:39', '2025-12-05 16:10:08'),
('BK-007', 'The Hobbit', 'J.R.R. Tolkien', '978-0-547-92822-7', 'Art', 'Available', '2025-11-08 08:27:39', '2025-12-17 13:51:45'),
('BK-008', 'Fahrenheit 451', 'Ray Bradbury', '978-1-451-67331-9', 'Fiction', 'Available', '2025-11-08 08:27:39', '2025-12-03 02:19:49'),
('BK-009', 'Jane Eyre', 'Charlotte Bronte', '978-0-141-44114-6', 'Fiction', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-010', 'Animal Farm', 'George Orwell', '978-0-452-28424-1', 'Fiction', 'Borrowed', '2025-11-08 08:27:39', '2025-12-06 16:27:10'),
('BK-011', 'A Brief History of Time', 'Stephen Hawking', '978-0-553-38016-3', 'Science', 'Available', '2025-11-08 08:27:39', '2025-11-18 11:47:04'),
('BK-012', 'Sapiens', 'Yuval Noah Harari', '978-0-062-31609-1', 'History', 'Borrowed', '2025-11-08 08:27:39', '2025-12-06 16:24:39'),
('BK-013', 'Educated', 'Tara Westover', '978-0-399-59050-4', 'Biography', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-014', 'The Selfish Gene', 'Richard Dawkins', '978-0-199-29114-4', 'Science', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-015', 'Thinking, Fast and Slow', 'Daniel Kahneman', '978-0-374-53355-7', 'Non-Fiction', 'Borrowed', '2025-11-08 08:27:39', '2025-12-17 14:31:57'),
('BK-016', 'The Origin of Species', 'Charles Darwin', '978-0-451-52906-0', 'Science', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-017', 'Guns, Germs, and Steel', 'Jared Diamond', '978-0-393-31755-8', 'History', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-018', 'The Diary of a Young Girl', 'Anne Frank', '978-0-553-29698-3', 'Biography', 'Available', '2025-11-08 08:27:39', '2025-12-03 02:20:04'),
('BK-019', 'Steve Jobs', 'Walter Isaacson', '978-1-451-64853-9', 'Biography', 'Available', '2025-11-08 08:27:39', '2025-12-17 14:09:52'),
('BK-020', 'The Art of War', 'Sun Tzu', '978-1-590-30244-8', 'History', 'Available', '2025-11-08 08:27:39', '2025-12-06 14:35:45'),
('BK-021', 'Clean Code', 'Robert C. Martin', '978-0-132-35088-4', 'Technology', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-022', 'The Pragmatic Programmer', 'Andrew Hunt', '978-0-135-95705-9', 'Technology', 'Available', '2025-11-08 08:27:39', '2025-12-03 02:20:13'),
('BK-023', 'Introduction to Algorithms', 'Thomas H. Cormen', '978-0-262-03384-8', 'Technology', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-024', 'Design Patterns', 'Erich Gamma', '978-0-201-63361-0', 'Technology', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-025', 'The Lean Startup', 'Eric Ries', '978-0-307-88789-4', 'Non-Fiction', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-026', 'Atomic Habits', 'James Clear', '978-0-735-21129-2', 'Non-Fiction', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-027', 'The 7 Habits of Highly Effective People', 'Stephen Covey', '978-1-982-13727-6', 'Non-Fiction', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-028', 'How to Win Friends and Influence People', 'Dale Carnegie', '978-0-671-02703-2', 'Non-Fiction', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-029', 'The Power of Now', 'Eckhart Tolle', '978-1-577-31480-6', 'Non-Fiction', 'Available', '2025-11-08 08:27:39', '2025-11-08 08:27:39'),
('BK-030', 'Man\'s Search for Meaning', 'Viktor Frankl', '978-0-807-01429-5', 'Non-Fiction', 'Borrowed', '2025-11-08 08:27:39', '2025-12-09 17:25:13'),
('BK-031', 'The Elegant Universe', 'Brian Greene', '978-0-393-33810-2', 'Science', 'Available', '2025-11-08 09:56:39', '2025-12-16 16:25:21'),
('BK-032', 'The Hobbit', 'J.R.R. Tolkien', '978-0-618-26030-0', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-033', 'Treasure Island', 'Robert Louis Stevenson', '978-0-141-19615-5', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-034', 'Twenty Thousand Leagues Under the Sea', 'Jules Verne', '978-0-140-44910-6', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-035', 'Moby Dick', 'Herman Melville', '978-0-142-43724-7', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-12-16 16:26:01'),
('BK-036', 'Gulliver\'s Travels', 'Jonathan Swift', '978-0-199-53746-9', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-037', 'The Count of Monte Cristo', 'Alexandre Dumas', '978-0-140-44926-7', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-038', 'Journey to the Center of the Earth', 'Jules Verne', '978-0-140-44921-2', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-039', 'Robinson Crusoe', 'Daniel Defoe', '978-0-486-42354-2', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-040', 'King Solomon\'s Mines', 'H. Rider Haggard', '978-1-503-24157-1', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-041', 'Hatchet', 'Gary Paulsen', '978-1-416-93647-3', 'Adventure', 'Available', '2025-11-12 13:45:18', '2025-11-12 13:45:18'),
('BK-042', 'The Story of Art', 'E.H. Gombrich', '978-0-714-83276-8', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-043', 'Ways of Seeing', 'John Berger', '978-0-140-13515-2', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-044', 'Leonardo da Vinci', 'Walter Isaacson', '978-1-501-16391-8', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-045', 'Art Since 1900: Modernism, Antimodernism, Postmodernism', 'Hal Foster et al.', '978-0-500-23812-3', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-046', 'A Little History of Art', 'H.W. Janson', '978-0-500-29177-7', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-047', 'Color and Light: A Guide for the Realist Painter', 'James Gurney', '978-0-740-00109-0', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-048', 'Drawing on the Right Side of the Brain', 'Betty Edwards', '978-1-585-42921-1', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-049', 'The Art Book', 'Phaidon Press', '978-0-714-83984-2', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-050', 'Understanding Comics: The Invisible Art', 'Scott McCloud', '978-0-060-97625-1', 'Art', 'Borrowed', '2025-11-12 13:50:12', '2025-12-17 03:28:39'),
('BK-051', 'The Pocket Complete Works', 'Vincent van Gogh', '978-1-568-52210-9', 'Art', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-052', 'Start With Why', 'Simon Sinek', '978-1-591-84640-2', 'Business', 'Available', '2025-11-12 13:50:12', '2025-11-12 13:50:12'),
('BK-053', 'Good to Great', 'Jim Collins', '978-0-066-62099-2', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-054', 'The 4-Hour Workweek', 'Timothy Ferriss', '978-0-307-46535-1', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-055', 'Zero to One', 'Peter Thiel', '978-0-804-13929-8', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-056', 'Blue Ocean Strategy', 'Chan Kim & Renee Mauborgne', '978-1-591-39474-1', 'Business', 'Available', '2025-11-12 13:52:54', '2025-12-02 13:55:38'),
('BK-057', 'Rich Dad Poor Dad', 'Robert Kiyosaki', '978-0-446-67745-6', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-058', 'The Intelligent Investor', 'Benjamin Graham', '978-0-060-55566-5', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-059', 'The Hard Thing About Hard Things', 'Ben Horowitz', '978-0-062-27320-8', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-060', 'High Output Management', 'Andrew S. Grove', '978-0-679-76288-7', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-061', 'Drive: The Surprising Truth About What Motivates Us', 'Daniel H. Pink', '978-1-594-20625-2', 'Business', 'Available', '2025-11-12 13:52:54', '2025-11-12 13:52:54'),
('BK-062', 'A People\'s History of the United States', 'Howard Zinn', '978-0-060-83865-2', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-063', 'SPQR: A History of Ancient Rome', 'Mary Beard', '978-1-631-49222-9', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-064', 'The Rise and Fall of the Third Reich', 'William L. Shirer', '978-1-451-64259-9', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-065', '1776', 'David McCullough', '978-0-743-22672-1', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-066', 'Dead Wake: The Last Crossing of the Lusitania', 'Erik Larson', '978-0-307-94732-7', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-067', 'Team of Rivals: The Political Genius of Abraham Lincoln', 'Doris Kearns Goodwin', '978-0-743-27075-5', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-068', 'The Second World War', 'Antony Beevor', '978-0-143-12503-8', 'History', 'Available', '2025-11-12 13:58:02', '2025-11-12 13:58:02'),
('BK-069', 'Becoming', 'Michelle Obama', '978-1-5247-6313-9', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-070', 'Alexander Hamilton', 'Ron Chernow', '978-1-59420-009-0', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-071', 'Unbroken: A World War II Story of Survival', 'Laura Hillenbrand', '978-1-4000-3471-6', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-072', 'Savage Beauty: The Life of Edna St. Vincent Millay', 'Nancy Milford', '978-0-375-70585-4', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-073', 'Grant', 'Ron Chernow', '978-0-525-42639-4', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-074', 'Team of Rivals: The Political Genius of Abraham Lincoln', 'Doris Kearns Goodwin', '978-0-7432-5332-6', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-075', 'Frida: A Biography of Frida Kahlo', 'Hayden Herrera', '978-0-06-008589-6', 'Biography', 'Available', '2025-11-12 14:14:23', '2025-11-12 14:14:23'),
('BK-076', 'Mastering the Art of French Cooking, Vol. 1', 'Julia Child', '978-0-307-23769-0', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-077', 'Salt, Fat, Acid, Heat', 'Samin Nosrat', '978-1-5011-4331-8', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-078', 'The Food Lab: Better Home Cooking', 'J. Kenji L?pez-Alt', '978-0-393-08145-8', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-079', 'Dessert Person', 'Claire Saffitz', '978-1-9848-3455-1', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-080', 'Joy of Cooking: 75th Anniversary Edition', 'Irma S. Rombauer', '978-0-7432-8746-8', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-081', 'Six Seasons: A New Way with Vegetables', 'Joshua McFadden', '978-1-57965-631-7', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-082', 'Flour Water Salt Yeast', 'Ken Forkish', '978-1-60774-273-9', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-083', 'Nopi: The Cookbook', 'Yotam Ottolenghi', '978-0-399-57463-5', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-084', 'The Complete Mediterranean Cookbook', 'America\'s Test Kitchen', '978-1-940352-88-5', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-085', 'Plenty More', 'Yotam Ottolenghi', '978-1-60774-621-8', 'Cooking', 'Available', '2025-11-12 14:14:58', '2025-11-12 14:14:58'),
('BK-086', 'The Way of Kings', 'Brandon Sanderson', '978-0-7653-2635-5', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-087', 'Mistborn: The Final Empire', 'Brandon Sanderson', '978-0-7653-5390-0', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-088', 'The Name of the Wind', 'Patrick Rothfuss', '978-0-7564-0474-1', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-089', 'The Golden Compass', 'Philip Pullman', '978-0-375-81424-2', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-090', 'The Fellowship of the Ring', 'J.R.R. Tolkien', '978-0-618-00222-8', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-091', 'Circe', 'Madeline Miller', '978-0-316-55644-9', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-092', 'American Gods', 'Neil Gaiman', '978-0-380-97365-2', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-093', 'The Magicians', 'Lev Grossman', '978-0-670-02055-3', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-094', 'Jonathan Strange & Mr Norrell', 'Susanna Clarke', '978-0-7653-0568-8', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-095', 'A Darker Shade of Magic', 'V.E. Schwab', '978-0-7653-7645-7', 'Fantasy', 'Available', '2025-11-12 14:15:30', '2025-11-12 14:15:30'),
('BK-096', 'It', 'Stephen King', '978-1-5011-8893-7', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-097', 'Dracula', 'Bram Stoker', '978-0-14-143984-6', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-098', 'The Shining', 'Stephen King', '978-0-385-12167-5', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-099', 'The Haunting of Hill House', 'Shirley Jackson', '978-0-14-303998-3', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-100', 'Frankenstein', 'Mary Shelley', '978-1-59308-115-7', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-101', 'Mexican Gothic', 'Silvia Moreno-Garcia', '978-0-525-62021-2', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-102', 'Bird Box', 'Josh Malerman', '978-0-06-225965-2', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-103', 'The Exorcist', 'William Peter Blatty', '978-0-06-100722-3', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-104', 'Rosemary\'s Baby', 'Ira Levin', '978-1-59463-089-7', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-105', 'Something Wicked This Way Comes', 'Ray Bradbury', '978-0-380-78636-8', 'Horror', 'Available', '2025-11-12 14:16:04', '2025-11-12 14:16:04'),
('BK-106', 'Gone Girl', 'Gillian Flynn', '978-0-307-58836-0', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-107', 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '978-0-307-45484-9', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-108', 'The Silent Patient', 'Alex Michaelides', '978-1-250-30484-0', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-109', 'The Woman in Cabin 10', 'Ruth Ware', '978-1-5011-4217-5', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-110', 'The Cuckoo\'s Calling', 'Robert Galbraith', '978-0-316-20684-6', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-111', 'The Big Sleep', 'Raymond Chandler', '978-0-394-75789-3', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-112', 'The Maltese Falcon', 'Dashiell Hammett', '978-0-679-72246-1', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-113', 'In the Woods', 'Tana French', '978-0-14-311349-2', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-114', 'The Hound of the Baskervilles', 'Arthur Conan Doyle', '978-0-14-103432-4', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-115', 'Where the Crawdads Sing', 'Delia Owens', '978-0-7352-1909-0', 'Mystery', 'Available', '2025-11-12 14:16:35', '2025-11-12 14:16:35'),
('BK-116', 'Between the World and Me', 'Ta-Nehisi Coates', '978-0-8129-9354-7', 'Non-Fiction', 'Available', '2025-11-12 14:16:45', '2025-11-12 14:28:06'),
('BK-117', 'Into the Wild', 'Jon Krakauer', '978-0-385-48680-4', 'Non-Fiction', 'Available', '2025-11-12 14:16:45', '2025-11-12 14:28:16'),
('BK-118', 'The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', '978-1-4000-5218-9', 'Non-Fiction', 'Available', '2025-11-12 14:16:45', '2025-11-12 14:28:36'),
('BK-119', 'The Collected Poems of Langston Hughes', 'Langston Hughes', '978-0-679-72887-9', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-120', 'Leaves of Grass', 'Walt Whitman', '978-0-19-518342-9', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-121', 'The Waste Land and Other Poems', 'T.S. Eliot', '978-0-15-694877-7', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-122', 'Where the Sidewalk Ends', 'Shel Silverstein', '978-0-06-025667-7', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-123', 'A Thousand Mornings', 'Mary Oliver', '978-1-59420-477-7', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-124', 'The Prophet', 'Kahlil Gibran', '978-0-394-70701-1', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-125', 'The Complete Poems of Emily Dickinson', 'Emily Dickinson', '978-0-316-18447-0', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-126', 'Love Poems', 'Pablo Neruda', '978-0-8112-0164-9', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-127', 'Devotions: The Selected Poems of Mary Oliver', 'Mary Oliver', '978-0-399-56325-6', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-128', 'Citizen: An American Lyric', 'Claudia Rankine', '978-1-55597-693-9', 'Poetry', 'Available', '2025-11-12 14:17:13', '2025-11-12 14:17:13'),
('BK-129', 'The Notebook', 'Nicholas Sparks', '978-0-446-52080-6', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-130', 'Me Before You', 'Jojo Moyes', '978-0-14-312454-2', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-131', 'The Love Hypothesis', 'Ali Hazelwood', '978-0-593-33682-1', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-132', 'The Time Traveler\'s Wife', 'Audrey Niffenegger', '978-0-385-66869-9', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-133', 'Red, White & Royal Blue', 'Casey McQuiston', '978-1-250-31777-3', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-134', 'People We Meet on Vacation', 'Emily Henry', '978-1-9848-0675-9', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-135', 'Outlander', 'Diana Gabaldon', '978-0-385-12110-2', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-136', 'Call Me By Your Name', 'Andr? Aciman', '978-0-374-28009-3', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-137', 'One Last Stop', 'Casey McQuiston', '978-1-250-24449-6', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-138', 'Book Lovers', 'Emily Henry', '978-0-593-44030-6', 'Romance', 'Available', '2025-11-12 14:17:47', '2025-11-12 14:17:47'),
('BK-139', 'Cosmos', 'Carl Sagan', '978-0-345-34762-9', 'Science', 'Available', '2025-11-12 14:18:11', '2025-11-12 14:18:11'),
('BK-140', 'Astrophysics for People in a Hurry', 'Neil deGrasse Tyson', '978-0-393-60939-4', 'Science', 'Available', '2025-11-12 14:18:11', '2025-11-12 14:18:11'),
('BK-141', 'Pale Blue Dot: A Vision of the Human Future in Space', 'Carl Sagan', '978-0-345-37659-6', 'Science', 'Available', '2025-11-12 14:18:11', '2025-11-12 14:18:11'),
('BK-142', 'The Martian', 'Andy Weir', '978-0-8041-3902-1', 'Science', 'Available', '2025-11-12 14:18:11', '2025-11-12 14:18:11'),
('BK-143', 'Silent Spring', 'Rachel Carson', '978-0-395-14123-0', 'Science', 'Available', '2025-11-12 14:18:11', '2025-11-12 14:18:11'),
('BK-144', 'Chaos: Making a New Science', 'James Gleick', '978-0-140-09218-9', 'Science', 'Available', '2025-11-12 14:18:11', '2025-11-12 14:18:11'),
('BK-145', 'Code: The Hidden Language of Computer Hardware and Software', 'Charles Petzold', '978-0-7356-1967-8', 'Technology', 'Available', '2025-11-12 14:21:33', '2025-11-12 14:21:33'),
('BK-146', 'The Pragmatic Programmer: Your Journey To Mastery', 'Andrew Hunt', '978-0-13-595705-9', 'Technology', 'Available', '2025-11-12 14:21:33', '2025-11-12 14:21:33'),
('BK-147', 'The Mythical Man-Month: Essays on Software Engineering', 'Frederick P. Brooks Jr.', '978-0-201-83595-3', 'Technology', 'Available', '2025-11-12 14:21:33', '2025-11-12 14:21:33'),
('BK-148', 'Working Effectively with Legacy Code', 'Michael C. Feathers', '978-0-131-17705-5', 'Technology', 'Available', '2025-11-12 14:21:33', '2025-11-12 14:21:33'),
('BK-149', 'Don\'t Make Me Think, Revisited', 'Steve Krug', '978-0-321-96551-6', 'Technology', 'Available', '2025-11-12 14:21:33', '2025-11-12 14:21:33'),
('BK-150', 'The Phoenix Project', 'Gene Kim et al.', '978-1-934226-63-7', 'Technology', 'Available', '2025-11-12 14:21:33', '2025-11-12 14:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `borrow_id` int(11) NOT NULL,
  `book_id` varchar(15) NOT NULL,
  `member_id` varchar(15) NOT NULL,
  `borrow_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `return_date` timestamp NULL DEFAULT NULL,
  `status` enum('Borrowed','Returned','Overdue') NOT NULL DEFAULT 'Borrowed',
  `fine_amount` decimal(10,2) DEFAULT 0.00,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed_books`
--

INSERT INTO `borrowed_books` (`borrow_id`, `book_id`, `member_id`, `borrow_date`, `due_date`, `return_date`, `status`, `fine_amount`, `updated_at`) VALUES
(28, 'BK-002', 'MEM-005', '2025-12-10 16:01:26', '2025-12-14 16:01:26', '2025-12-19 16:02:33', 'Overdue', 150.00, '2025-12-06 16:02:33'),
(29, 'BK-010', 'MEM-021', '2026-01-04 16:04:10', '2026-01-09 16:04:10', '2026-01-08 16:05:41', 'Returned', 0.00, '2025-12-06 16:05:41'),
(31, 'BK-012', 'MEM-022', '2026-01-10 16:13:49', '2026-01-14 16:13:49', '2026-01-12 16:14:27', 'Returned', 0.00, '2025-12-06 16:14:27'),
(32, 'BK-015', 'MEM-005', '2026-01-31 16:15:32', '2026-02-09 16:15:32', '2025-01-12 03:29:37', 'Overdue', 100.00, '2025-12-17 03:29:37'),
(33, 'BK-010', 'MEM-005', '2026-02-10 16:17:34', '2026-02-19 16:17:34', '2026-02-17 16:25:16', 'Returned', 0.00, '2025-12-06 16:25:16'),
(34, 'BK-030', 'MEM-030', '2026-02-20 16:20:42', '2026-02-24 16:20:42', '2026-02-23 16:21:41', 'Returned', 0.00, '2025-12-06 16:21:41'),
(35, 'BK-012', 'MEM-003', '2026-03-04 16:24:39', '2026-03-14 16:24:39', NULL, 'Borrowed', 0.00, '2025-12-06 16:24:39'),
(39, 'BK-035', 'MEM-037', '2025-12-16 16:25:03', '2025-12-24 16:25:03', '2025-12-22 16:26:01', 'Returned', 0.00, '2025-12-16 16:26:01'),
(40, 'BK-050', 'MEM-001', '2025-12-17 03:28:39', '2025-12-20 03:28:39', '2025-12-25 14:07:07', 'Overdue', 150.00, '2025-12-17 14:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `librarians`
--

CREATE TABLE `librarians` (
  `librarian_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `librarians`
--

INSERT INTO `librarians` (`librarian_id`, `username`, `password`, `created_at`) VALUES
(1, 'slav', '554893', '2025-11-12 12:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` varchar(15) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `borrowed_books` int(11) DEFAULT 0,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `full_name`, `email`, `mobile_number`, `status`, `borrowed_books`, `added_at`, `updated_at`) VALUES
('MEM-001', 'John Smith', 'john.smith@gmail.com', '+63 912 345 6789', 'Active', 0, '2025-11-08 09:45:27', '2025-12-07 13:40:19'),
('MEM-002', 'Maria Garcia', 'maria.garcia@yahoo.com', '+63 923 456 7890', 'Active', 0, '2025-11-08 09:45:27', '2025-12-17 11:38:06'),
('MEM-003', 'Robert Johnson', 'robert.j@hotmail.com', '+63 934 567 8901', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-004', 'Emily Davis', 'emily.davis@gmail.com', '+63 945 678 9012', 'Active', 0, '2025-11-08 09:45:27', '2025-12-17 03:31:06'),
('MEM-005', 'Michael Brown', 'michael.brown@outlook.com', '+63 956 789 0123', 'Active', 0, '2025-11-08 09:45:27', '2025-12-03 01:23:27'),
('MEM-006', 'Sarah Wilson', 'sarah.wilson@gmail.com', '+63 967 890 1234', 'Active', 0, '2025-11-08 09:45:27', '2025-12-17 03:31:01'),
('MEM-007', 'David Martinez', 'david.martinez@yahoo.com', '+63 978 901 2345', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-008', 'Jennifer Lopez', 'jennifer.lopez@hotmail.com', '+63 919 012 3456', 'Active', 0, '2025-11-08 09:45:27', '2025-12-17 11:37:03'),
('MEM-009', 'James Anderson', 'james.anderson@gmail.com', '+63 920 123 4567', 'Active', 0, '2025-11-08 09:45:27', '2025-11-18 11:45:24'),
('MEM-010', 'Linda Taylor', 'linda.taylor@outlook.com', '+63 931 234 5678', 'Inactive', 0, '2025-11-08 09:45:27', '2025-12-05 15:30:32'),
('MEM-011', 'Christopher Thomas', 'chris.thomas@gmail.com', '+63 942 345 6789', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-013', 'Daniel White', 'daniel.white@hotmail.com', '+63 964 567 8901', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:16'),
('MEM-014', 'Barbara Harris', 'barbara.harris@gmail.com', '+63 975 678 9012', 'Inactive', 0, '2025-11-08 09:45:27', '2025-12-05 15:30:43'),
('MEM-015', 'Matthew Martin', 'matthew.martin@outlook.com', '+63 916 789 0123', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:20'),
('MEM-016', 'Elizabeth Thompson', 'elizabeth.t@gmail.com', '+63 927 890 1234', 'Inactive', 0, '2025-11-08 09:45:27', '2025-12-05 15:31:24'),
('MEM-017', 'Anthony Garcia', 'anthony.garcia@yahoo.com', '+63 938 901 2345', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:24'),
('MEM-018', 'Susan Martinez', 'susan.martinez@hotmail.com', '+63 949 012 3456', 'Inactive', 0, '2025-11-08 09:45:27', '2025-12-05 15:31:28'),
('MEM-019', 'Mark Robinson', 'mark.robinson@gmail.com', '+63 910 123 4567', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:35'),
('MEM-020', 'Karen Clark', 'karen.clark@outlook.com', '+63 921 234 5678', 'Inactive', 0, '2025-11-08 09:45:27', '2025-12-05 15:31:33'),
('MEM-021', 'Paul Rodriguez', 'paul.rodriguez@gmail.com', '+63 932 345 6789', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:40'),
('MEM-022', 'Nancy Lewis', 'nancy.lewis@yahoo.com', '+63 943 456 7890', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:43'),
('MEM-023', 'Steven Lee', 'steven.lee@hotmail.com', '+63 954 567 8901', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:46'),
('MEM-024', 'Betty Walker', 'betty.walker@gmail.com', '+63 965 678 9012', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-025', 'Edward Hall', 'edward.hall@outlook.com', '+63 976 789 0123', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-026', 'Helen Allen', 'helen.allen@gmail.com', '+63 917 890 1234', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-027', 'Brian Young', 'brian.young@yahoo.com', '+63 928 901 2345', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:51'),
('MEM-028', 'Dorothy King', 'dorothy.king@hotmail.com', '+63 939 012 3456', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:31:00'),
('MEM-029', 'Ronald Wright', 'ronald.wright@gmail.com', '+63 940 123 4567', 'Active', 0, '2025-11-08 09:45:27', '2025-11-08 09:45:27'),
('MEM-030', 'Sandra Scott', 'sandra.scott@outlook.com', '+63 951 234 5678', 'Active', 0, '2025-11-08 09:45:27', '2025-12-04 11:30:56'),
('MEM-031', 'David Smith', 'david.smith@newmail.com', '+63 947 111 2222', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-032', 'Linda Brown', 'linda.brown@newmail.com', '+63 947 222 3333', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-033', 'James Wilson', 'james.wilson@newmail.com', '+63 947 333 4444', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-034', 'Patricia Lee', 'patricia.lee@newmail.com', '+63 947 444 5555', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-035', 'Robert Green', 'robert.green@newmail.com', '+63 947 555 6666', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-036', 'Sarah Adams', 'sarah.adams@newmail.com', '+63 947 666 7777', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-037', 'Michael Hall', 'michael.hall@newmail.com', '+63 947 777 8888', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-038', 'Jessica Clark', 'jessica.clark@newmail.com', '+63 947 888 9999', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-039', 'Thomas King', 'thomas.king@newmail.com', '+63 947 101 0101', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-040', 'Elizabeth Wright', 'elizabeth.wright@newmail.com', '+63 947 121 2121', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-041', 'Daniel Scott', 'daniel.scott@newmail.com', '+63 947 131 3131', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-042', 'Maria Lopez', 'maria.lopez@newmail.com', '+63 947 141 4141', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-043', 'Joseph Baker', 'joseph.baker@newmail.com', '+63 947 151 5151', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-044', 'Ashley Young', 'ashley.young@newmail.com', '+63 947 161 6161', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-045', 'George Foster', 'george.foster@newmail.com', '+63 947 171 7171', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-046', 'Nicole Hayes', 'nicole.hayes@newmail.com', '+63 947 181 8181', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-047', 'Kevin Murphy', 'kevin.murphy@newmail.com', '+63 947 191 9191', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-048', 'Tiffany Evans', 'tiffany.evans@newmail.com', '+63 947 202 0202', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-049', 'Andrew Turner', 'andrew.turner@newmail.com', '+63 947 212 1212', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-050', 'Megan Carter', 'megan.carter@newmail.com', '+63 947 222 2222', 'Active', 0, '2025-11-18 11:42:43', '2025-11-18 11:42:43'),
('MEM-051', 'Altheae Owe', 'altheae.o@gmailcom', '+63 960 315 0070', 'Active', 0, '2025-12-05 16:16:56', '2025-12-05 16:16:56'),
('MEM-052', 'Samantha Virtudazo', 'slav@gmail.com', '09603150070', 'Active', 0, '2025-12-17 11:39:26', '2025-12-17 11:39:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `librarians`
--
ALTER TABLE `librarians`
  ADD PRIMARY KEY (`librarian_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `librarians`
--
ALTER TABLE `librarians`
  MODIFY `librarian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=635;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowed_books`
--
ALTER TABLE `borrowed_books`
  ADD CONSTRAINT `borrowed_books_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowed_books_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
