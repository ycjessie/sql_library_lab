-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
select * 
from authors a
join books b on a.id=b.author_id
where a.id=8

select * 
from authors a
join books b on a.id=b.author_id
where a.name like 'George%'

-- Find all fields (book and author related) for all books written by Milan Kundera.
select * 
from authors a
join books b on a.id=b.author_id
where a.name like 'Milan%'

select * 
from authors a, books b
where  a.id=b.author_id  and a.name like 'Milan%'

-- Find all books written by an author from China or the UK.
select * 
from authors a
join books b on a.id=b.author_id
where a.nationality = ('China') or a.nationality like ('United K%');
-- Find out how many books Albert Camus wrote.
select count(b.id) as count, b.title, a.name
from authors a
join books b on a.id=b.author_id
where a.name='Albert Camus'
group by b.title, a.name;
-- Find out how many books were written by US authors.


-- Find all books written after 1930 by authors from Argentina.

-- Find all books written before 1980 by authors not from the US.

-- Find all authors whose names start with 'J'.

-- Find all books whose titles contain 'the'.

-- Find all authors who have written books with that start with the letter 'N'.
