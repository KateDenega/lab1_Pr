кинотеатр(101, "Белый", "строение 10", "тел:+799", 100).
кинотеатр(777, "Красный", "строение 11", "тел:+888", 40).
кинотеатр(200, "Чёрный", "строение 8", "тел:+544", 200).

кинофильм(97, "Улитки в законе", 2000, "Антонио П.", "комедия").
кинофильм(7, "Розовый сад", 2020, "Джордж К.", "драма").
кинофильм(1, "Тёмный переулок", 2009, "Гражданский И.", "ужасы").

показывают(101, 97, "20.05.23", 600.99).
показывают(777, 1, "22.05.23", 700.99).
показывают(200, 7, "29.05.23", 2000.99).

/*кинотеатр, показыв. опред. фильм*/
кинотеатр_опред_фильм(Наз_кин, Наз_фил):-
    показывают(ID_кин, ID2_фил, _, _),
    кинотеатр(ID_кин, Наз_кин, _, _, _),
    кинофильм(ID2_фил, Наз_фил, _, _, _).
    
/*адрес. кинотеатра, показыв. фильм опред.жанра*/
адрес_кин_жанр(Адрес_кин, Жанр):-
    показывают(ID_кин, ID2_фил, _, _),
    кинофильм(ID2_фил, _, _, _, Жанр),
    кинотеатр(ID_кин, _, Адрес_кин, _, _).
    
 /*адреса кинотеатров, показыв. фильмы опред. режиссёра*/   
адрес_кин_реж(Адрес_кин, Режиссёр):-
    показывают(ID_кин, ID2_фил, _, _),
    кинофильм(ID2_фил, _, _, Режиссёр, _),
    кинотеатр(ID_кин, _, Адрес_кин, _, _).
    
/*адреса кинотеатров*/  
адрес_кин(Адрес_кин):-
    кинотеатр(_, Наз_кин, Адрес_кин, _, _).