-- Check if the table exists
-- Create the users table if it doesn't exist
IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'users') THEN
CREATE TABLE users (
		id SERIAL PRIMARY KEY,
		email VARCHAR(255) NOT NULL UNIQUE,
		name VARCHAR(255)
		);
	END IF;

