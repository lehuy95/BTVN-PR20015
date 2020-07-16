drop table if exists Books_Borrows;
drop table if exists Books_Author;
drop table if exists Borrows;
drop table if exists Readers;
drop table if exists Books;
drop table if exists Author;


create table Books(
	Id int auto_increment primary key not null,
    Book_name varchar(100) not null,
    Public_date year not null,
    Public_company varchar(150) not null
);

create table Author(
	Id int auto_increment primary key not null,
    Author_name varchar(100) not null,
    Sex bit not null,
    Year_of_birth year not null,
    Year_of_death year,
    Adress varchar(200) not null
);
 create table Readers(
	Id int auto_increment primary key not null,
    Reader_name varchar(100),
    Sex bit,
    Phone varchar(15),
    Birth_day date not null,
    Address varchar(200) not null
 );
 
 create table Borrows(
	Id int auto_increment primary key not null,
    Book_code int not null,
	Reader_code int not null,
    Book_borrow date not null,
    Book_return date,
    foreign key(Book_code) references Books(Id),
    foreign key(Reader_code) references Readers(Id)
    
 );
 
 
 create table Books_Author(
	Id int auto_increment primary key not null,
	Book_id int not null,
    Author_id int not null,
    foreign key(Book_id) references Books(Id),
    foreign key(Author_id) references Author(Id)
 );
 
 create table Books_Borrows(
	Id int auto_increment primary key not null,
    Book_id int,
    Borrows_id int,
	Quality int,
    foreign key(Book_id) references Books(Id),
    foreign key(Borrows_id) references Borrows(Id)
 );
INSERT INTO Books(Book_name, Public_date, Public_company) 
		   VALUES("Nhà Giả Kim", "2013", "Nhà Xuất Bản Văn Học"),
				 ("Tuổi Trẻ Đáng Giá Bao Nhiêu", "2016", "Nhà Xuất Bản Hội Nhà Văn"),
                 ("Đắc Nhân Tâm", "2016", "Nhà Xuất Bản Tổng hợp TP.HCM"),
                 ("Khéo Ăn Nói Sẽ Có Được Thiên Hạ", "2014", "Nhà Xuất Bản Văn Học"),
                 ("7 Thói Quen Của Bạn Trẻ Thành Đạt", "2017", "Nhà Xuất Bản Tổng hợp TP.HCM"),
                 ("Dám Thất Bại ", "2019", "BIZBOOKS company"),
                 ("Sách Muôn Kiếp Nhân Sinh ", "2020", "Nhà Xuất Bản Tổng hợp TP.HCM"),
                 ("An Lạc Từng Bước Chân", "2018", "Nhà Xuất Bản Văn Học"),
                 ("Không Diệt Không Sinh Đừng Sợ Hãi", "2013", "Nhà Xuất Bản Văn Học"),
                 ("Thiền", "2013", "Nhà Xuất Bản Văn Học"),
                 ("The Long Walk", "1979", "Nhà xuất bản tuổi trẻ"),
                 ("The Dead Zone", "1979", "Nhà xuất bản tuổi trẻ"),
                 ("The Running Man", "1982", "Nhà xuất bản tuổi trẻ");
                 
INSERT INTO Readers(Reader_name, Sex, Phone, Birth_day, Address) 
		   VALUES("Đặng Tuấn Anh", 1,"0914162689","1990-01-07", "Vĩnh Phúc" ),
				 ("Hoàng Đức Anh",1,"0979809204", "1992-02-15", "Hà Nội" ),
                 ("Bùi Phương Thảo",0,"01679809204", "1992-07-16", "Hà Nội" ),
                 ("Phạm Hoàng Anh",0,"0983412681","1998-10-31", "Bắc Giang" ),
                 ("Phạm Thị Hiền Anh",1,"0976739552", "2000-11-25", "Quảng Ninh" ),
                 ("Đỗ Hoàng Gia Bảo",1,"01253212277", "1995-11-20", "Hải Phòng" ),
                 ("Trần Thị Minh Châu",0,"0975236626", "1996-08-03", "Hà Nội" ),
                 ("Phạm Tiến Dũng",1,"01248415126", "1998-11-02", "Bắc Ninh" ),
                 ("Vũ Hương Giang",0,"01686915981","1999-12-01", "Hà Nội" ),
                 ("Nguyễn Thị Tẹo",0,"0123456789","1999-02-20" , "Hà Nội"),
                 ("Nguyễn Lê Hiếu",1,"0975296509","1999-02-07" , "Vĩnh Phúc");             				
 
INSERT	INTO Author(Author_name,Sex,Year_of_birth,Year_of_death,Adress )
			VALUES("Nguyễn Văn A", 1, "1990", "1999", "Hà Nội"),
				  ("Nguyễn Thị B", 0, "1995", "1995", "Hà Nội"),
				  ("Nguyễn Văn C", 1, "1980", "1996", "Hà Nội"),
                  ("Nguyễn Thị D", 0, "1981", "1997", "Hà Nội"),
                  ("Nguyễn Văn E", 1, "1982", "1998", "Hà Nội"),
                  ("Nguyễn Văn F", 1, "1983", "1994", "Hà Nội"),
                  ("Stephen King", 1, "1947","2020", "America");

INSERT INTO Borrows(Book_code,Reader_code,Book_borrow,Book_return)
			VALUES("1", "1", "2011/02/02", "2020/03/03"),
				  ("1", "2", "2011/02/02", "2020/03/03"),
                  ("1", "3", "2012/02/02", "2020/03/03"),
                  ("1", "4", "2014/02/02", "2020/03/03"),
                  ("1", "5", "2011/02/02", "2020/03/03"),
                  ("1", "6", "2011/02/02", "2020/03/03"),
                  ("1", "7", "2011/02/02", "2020/03/03"),
                  ("1", "8", "2015/02/02", "2020/03/03"),
                  ("1", "9", "2014/02/02", "2020/03/03"),
                  ("1", "10", "2016/02/02", "2020/03/03"),
                  ("1", "11", "2020/02/02", "2020/03/03"),
                  ("6", "1", "2011/02/02", "2020/03/03"),
                  ("2", "1", "2020/02/02", "2020/03/03"),
                  ("3", "1", "2020/02/02", "2020/03/03"),
                  ("4", "1", "20/02/02", "2020/03/03"),
                  ("5", "1", "2020/02/02", "2020/03/03"),
                  ("7", "1", "2020/02/02", "2020/03/03"),
                  ("8", "1", "2011/02/02", "2020/03/03"),
                  ("9", "1", "2011/02/02", "2020/03/03"),
                  ("10", "1", "2011/02/02", "2020/03/03"),
                  ("11", "1", "2011/02/02", "2020/03/03"),
                  ("5", "4", "2011/02/02", "2020/03/03"),
                  ("6", "5", "2020/02/02", "2020/03/03"),
                  ("8", "7", "2020/02/02", "2020/03/03");
                  
INSERT INTO Books_Author(Book_id, Author_id)	
			VALUE("1","1"),
				 ("1","2"),
                 ("2","3"),
                 ("3","4"),
                 ("4","5"),
                 ("5","6"),
                 ("6","6"),
                 ("7","5"),
                 ("8","4"),
                 ("9","3"),
                 ("10","2"),
                 ("11","7"),
                 ("12","7"),
                 ("13","7");
			
INSERT INTO  Books_Borrows(Book_id,Borrows_id,Quality)   
			VALUES(1,1,1),
				  (1,2,10),
                  (1,3,12),
                  (1,4,1),
                  (1,5,9),
                  (1,6,1),
                  (1,7,15),
                  (1,8,11),
                  (1,9,1),
                  (1,10,1),
                  (1,11,7),
                  (2,3,1),
                  (3,11,8),
                  (4,12,1),
                  (5,13,5),
                  (6,14,6);
                  
/*a. List the books have been borrowed more than 10 times in 2011
			SELECT The_list
			FROM	Readers INNER JOIN Books_Borrows ON Books.Id = Books_Borrows.Book_id
							INNER JOIN Borrows ON Borrows.Id = Books_Borrows.Borrows_id
			WHERE 	year(Book_borrow) = 2011
			GROUP BY The_list
			HAVING SUM(Quality) >10

b. List the readers has borrowed at least 10 different books
			SELECT The_readers_name
            FROM Readers INNER JOIN (SELECT The_readers_id
									 FROM Books INNER JOIN Books_Borrows ON Books.Id = Books_Borrows.Id
												INNER JOIN Borrows ON Borrows.Id = Books_Borrows.Id
									 GROUP BY The_readers_id
                                     HAVING COUNT(Books_Borrows.Id) => 10)
           a ON Readers.Id = a.Id                          
								

c. List the books are being borrowed by a reader in the preceding sentence (b)
			NULL!!!
			
d. List of Stephen King books present no one is borrowing   
		   SELECT Title  	
		   FROM Author INNER JOIN Books_Author ON Author.Id = Books_Author.Id
					   INNER JOIN Books ON Books.Id = Books_Author.Id
					   LEFT JOIN Books_Borrows ON Books = Books_Borrows.ID
          WHERE Borrows.Id is null */
                 