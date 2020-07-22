select distinct title 
from book inner join borrow_detail on book.book_id=borrow_detail.book_id inner join borrow on borrow_detail.borrow_id=borrow.borrow_id 
where reader_id=(select reader_id 
	from borrow_detail inner join borrow on borrow_detail.borrow_id=borrow.borrow_id
							group by reader_id   
							having count(distinct book_id)>=10)