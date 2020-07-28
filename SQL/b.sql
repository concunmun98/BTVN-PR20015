-- b. List the readers has borrowed at least 10 different books
select reader_name 
from reader inner join (select reader_id 
						from book inner join borrow_detail on book.book_id=borrow_detail.book_id inner join borrow on borrow_detail.borrow_id=borrow.borrow_id
						group by reader_id   
						having count(borrow_detail_id)>=10) a on reader.reader_id=a.reader_id 