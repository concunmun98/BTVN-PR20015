
-- d. List of Stephen King books present no one is borrowing 
select distinct title 
	from author inner join book_author on author.author_id=book_author.author_id inner join book on book_author.book_id=book.book_id left join borrow_detail on book.book_id=borrow_detail.book_id
    where borrow_id is null 
