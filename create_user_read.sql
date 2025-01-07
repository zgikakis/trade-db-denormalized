-- Creates a user with read only access

-- Create user
CREATE USER enterusername WITH PASSWORD 'enterpassword';

-- Grant connect access to the 'materials' database
GRANT CONNECT ON DATABASE materials TO enterusername;

-- Grant USAGE on the schema 'public'
GRANT USAGE ON SCHEMA public TO enterusername;

-- Grant read only SELECT access to all existing tables in the schema 'public'
GRANT SELECT ON ALL TABLES IN SCHEMA public TO enterusername;

-- Grant future read only SELECT access to all future tables in the schema 'public'
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO enterusername;
