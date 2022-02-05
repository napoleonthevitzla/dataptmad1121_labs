SELECT a.au_id as "AUTHOR ID", a.au_lname as "Last NAME", a.au_fname as "FIRST NAME", t.title as "TITLE", p.pub_name as "PUBLISHER"
FROM titleauthor
INNER JOIN authors as a on a.au_id = titleauthor.au_id 
INNER JOIN titles as t on t.title_id = titleauthor.title_id
INNER JOIN publishers as p on t.pub_id = p.pub_id 