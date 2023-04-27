--검색을 위한 데미데이터 추가 입력
insert into board
	values (seq_board_num.nextval, '지금은 봄입니다', '봄의왈츠', 'ryan', sysdate, 0);
insert into board
	values (seq_board_num.nextval, '지금은 여름입니다', '여름향기', 'ryan', sysdate, 0);
insert into board
	values (seq_board_num.nextval, '지금은 가을입니다', '가을동화', 'ryan', sysdate, 0);
insert into board
	values (seq_board_num.nextval, '지금은 겨울입니다', '겨울연가', 'ryan', sysdate, 0);		

commit;