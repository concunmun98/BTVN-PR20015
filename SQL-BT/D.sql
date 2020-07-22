select distinct title 
	from author inner join book_author on author.author_id=book_author.author_id inner join book on book_author.book_id=book.book_id left join borrow_detail on book.book_id=borrow_detail.book_id
    where author_name="Stephen King" and borrow_id is null