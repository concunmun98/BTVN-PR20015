select reader_name 
	from reader inner join (select reader_id 
							from borrow_detail inner join borrow on borrow_detail.borrow_id=borrow.borrow_id
							group by reader_id   
							having count(distinct book_id)>=10) a on reader.reader_id=a.reader_id 