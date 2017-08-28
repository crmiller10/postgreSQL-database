-- CREATE TABLE todos (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(255) NOT NULL,
--   details VARCHAR(100) NULL,
--   priority INTEGER NOT NULL DEFAULT '1',
--   created_at timestamp [ (4) ] [ without time zone ] DEFAULT current_timestamp NOT NULL,
--   completed_at timestamp DEFAULT current_timestamp NULL
-- );
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(100) NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at timestamp DEFAULT current_timestamp NOT NULL,
  completed_at timestamp NULL
);
INSERT INTO todos (title, priority) VALUES
('Clean Car', '1'),
('Do Laundry', '2'),
('Clean Room', '3'),
('Mow Lawn', '4'),
('Grocery Shop', '5')
;
SELECT * FROM todos;

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;