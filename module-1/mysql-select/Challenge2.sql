SELECT a.au_id as "AUTHOR ID", a.au_lname as "Last NAME", a.au_fname as "FIRST NAME", t.title as "TITLE", p.pub_name as "PUBLISHER", COUNT (p.pub_name) as "TITLE COUNT"
from publishers p 
inner join titles t on t.pub_id =p.pub_id 
INNER JOIN titleauthor t2 on t2.title_id =t.title_id 
INNER JOIN authors a on a.au_id =t2.au_id 
group by a.au_id
order by "AUTHOR ID" DESC 

--Challenge 2 terminado