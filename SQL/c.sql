-- c. List the books are being borrowed by a reader in the preceding sentence (b)
select distinct title 
from book inner join borrow_detail on book.book_id=borrow_detail.book_id inner join borrow on borrow_detail.borrow_id=borrow.borrow_id 
where reader_id=(select reader_id 
					from book inner join borrow_detail on book.book_id=borrow_detail.book_id inner join borrow on borrow_detail.borrow_id=borrow.borrow_id
					group by reader_id   
					having count(borrow_detail_id)>=10)