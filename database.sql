/* Please	write	a	sql	statement	to	set	t_buttons(page_id) as	the	foreign key	refer	t	t_pages(id) */

CREATE TABLE t_pages (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  project_id INTEGER NOT NULL
);

CREATE TABLE t_buttons (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  page_id  INTEGER NOT NULL
    REFERENCES t_pages ON DELETE CASCADE,
  project_id INTEGER
);

/* Please	write	sql	statement	to	fill in	t_buttons(project_id)	with	correct	values. */

INSERT INTO t_pages (title, project_id)
VALUES ('Page One', 1),
       ('Page Two', 1),
       ('Page Three', 2);


INSERT INTO t_buttons (title, page_id, project_id)
VALUES ('Button One', 1, NULL),
       ('Button  Two', 1, NULL),
       ('Button  Three', 2, NULL),
       ('Button  Four', 2, NULL),
       ('Button  Five', 3, NULL);