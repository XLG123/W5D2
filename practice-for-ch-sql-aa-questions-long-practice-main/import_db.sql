PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS replies;
-- DROP TABLE IF EXISTS question_likes;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL
);

CREATE TABLE questions (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  author_id INTEGER NOT NULL,

  FOREIGN KEY (author_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
  id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  question_id INTEGER NOT NULL

  -- FOREIGN KEY (user_id) REFERENCES users(id)
  -- FOREIGN KEY (question_id) REFERENCES questions(id)
);

-- CREATE TABLE replies (
--   id INTEGER PRIMARY KEY,
--   parent INTEGER,
--   user_id INTEGER NOT NULL,
--   body TEXT NOT NULL,

--   FOREIGN KEY (parent) REFERENCES replies(id),
--   FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- CREATE TABLE question_likes (
--   id INTEGER PRIMARY KEY,
--   user TEXT NOT NULL,
--   question TEXT NOT NULL,

--   FOREIGN KEY (user) REFERENCES users(id),
--   FOREIGN KEY (question) REFERENCES questions(id)
-- );

INSERT INTO
  users (fname, lname)
VALUES
  ('XIAO LIN', 'GUAN'),
  ('JASON', 'STAUBACH');

INSERT INTO
  questions (title, body, author_id)
VALUES
  ('I don''t get it', 'heap sort', 1),
  ('I can''t solve ', 'counting sort', 2);

INSERT INTO
  question_follows (user_id, question_id)
VALUES
  (1, 1),
  (2, 2);

-- INSERT INTO
--   replies (parent, user_id, body)
-- VALUES
--   (NULL, 1, 'I don''t care!'),
--   (1, 2, 'I know how to do it!'),
--   (2, 1, 'I can solve it!');
