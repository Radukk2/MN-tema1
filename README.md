Tema1 Metode Numerice

SOLICIT CORECTARE MANUALA *1

Pentru ficare problema voi descrie functiile

1. markov-is-coming
	-parse_labyrinth primeste un fisier pe care il deschide si citeste datele matricei din acesta(nr de linii nr de coloane si matricea in sine)
	-get_adjency_matrix formeaza matricea de adiacenta a grafului primit anterior sub forma de matrice. In cazurile in care se gaseste o conexiune intr un perete aflat sus sau jos se trece in win, iar cand se gaseste un perete la stanga sau la dreapata se trece in lose
	-get_link_matrix imparte toatae elementele de pe matricei de adiacemta la numarul de elemente de pe linie
	-get_Jacobi_parameters extrage matricea de adiacenta, matricea de care avem nevoie(matricea fara ultimele 2 linii si coloane) si vectorul (penultima coloana fara ultimele 2 elem)
	-perform_iterative aplica metoda iteratva dupa regulile date
	-heuristic_greedy gaseste calea pe care o ia robotelul formand un vector cu pozitiile pe care a se duce acesta. Algoritmul ia vecinul cu probabilitatea cea mai mare de castig calculata anterior. Daca nu exista vecini nevizitati se intoarce si il ia pe cel cu urmatoarea cea mai mare probabilitate
	-decoded_path prelucreaza vectorul facand o matrice cu doua coloane unde i si j urile casutelor
	
2. linera-regression
	-parse_dataset_file primeste dimensiunle unei matrice si ia prima colona, o transforma in vector, si restul ramane o matrice care este retinuta ca celula
	-prepare_for_regression este functia care prelucreaza matricea si pune doar inturi, transformand-o in matrice nomala
	-linear_regression_cost_function este functia care face regresie liniara conform formulelor din documentatie
	-prepare_data_csv citeste datele din format csv ca la primul prepare
	-gradient_descent face algoritmul dat in documentatie, folosind metoda Gradientului descendent
	-urmatoarele doua functii calculaeaza ridge si lasso regression, conform documnetatiei date 
	
3. Minst-101
	-load_dataset citeste fisierul de intrare
	-split_dataset se impart matricea X si vectorul y in setul de antrenare si cel de testare
	-initialize weights face o matrice cu valori la intamplare din intervalul dat
	-cost_function calculeaza Theta1, Theta2 reformand matricea de params(weights), apoi facem forward propagation creeand a1, a2, a3, z2, z3. Apoi se calculeaza suma costurilor(J). Se calculeaza apoi eroriel 2 si 3, delta1 si delta2, si apoi se calucleaza gradientul
	-ultima functie face forward propagation si dupa ia valorile maxime
	
*1 Ar trebui sa am 97 de puncte fara readme. Daca se dau aceste puncte pe vmchecker nu mai solicit corectare manuala
