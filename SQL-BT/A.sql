select title 
	from book inner join borrow_detail on book.book_id=borrow_detail.book_id inner join borrow on borrow_detail.borrow_id=borrow.borrow_id
	where year(borrow_date)=2011
    group by title 
    having SUM(quantity)>=10