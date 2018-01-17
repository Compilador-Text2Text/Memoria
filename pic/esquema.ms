.PS
N0tipus: box "Tipus" "valor";	move;
N0valor: box "Valor";		move;
N0localitzacions: box "Localitzacions" width 1;

up; 
N0descriptor: box with .sw at N0tipus .nw "Descriptor" "valor"; arc cw <-;
N0line: line to (N0valor, Here) - (arcrad, 0); arc cw; arrow to N0valor .n;
N0localitzat: box with .sw at N0localitzacions .nw width 1 "Localitzat";

up;
line at N0line .c <-;
right;
N1line: line at (N0tipus, Here) + (arcrad, 0) to (N0localitzacions, Here) - (arcrad, 0); arc; # fer arc <-
N1paraula: box "Paraula";
N1frase: box "Frase";
N1codi: box "Codi"; arrow at N1paraula.s to N0localitzat.n;
N1variable: box at (N0valor, N1paraula) "Variable";
N1variables:box "Variables";
N1element: box at (N0tipus, N1paraula) "Element" "d'execuci\('o";
N1memoria: box "Mem\(`oria" "d'execuci\('o";

down; move to N1element.s; arc; down; move to N1variable.s; arc cw;

# Definim punts
P0Variables: 1/4 <N1variables.nw, N1variables.ne>
P1Variables: 2/4 <N1variables.nw, N1variables.ne>
P2Variables: 3/4 <N1variables.nw, N1variables.ne>

Q0Variables: 1/3 <N1variables.ne, N1variables.se>
Q1Variables: 2/3 <N1variables.ne, N1variables.se>

up; move at N1memoria .n;
N2basic: box "Base" "funci\('o"; left; move to N2basic.w "Retorn " rjust above; arc; line to (Here, N0descriptor) + (0, arcrad);
	arc ->; move to N2basic.e; line "Arg." above to (P0Variables, Here) - (arcrad, 0); # TODO
	arc cw; arrow;
N2decriptor: box "Descriptor" "de funci\('o" with .s at (N0valor, N2basic.n);
	arrow to P1Variables;
	left; move to N2decriptor.w; line to (N2basic, Here) + (arcrad, 0); arc ->;
	right; move to N2decriptor.e; line to (N1codi, Here) - (arcrad, 0); arc cw; arrow;
#N2dinamic: box "Funci\('o" "din\(`amica" with .s at (1/2 <N0valor, N0localitzacions>, N2decriptor.n) + (0, 0.1);
N2dinamic: box "Funci\('o" "din\(`amica" with .s at (N0valor.e, N2decriptor.n) + (arcrad, 0.1);
	line to (Here, Q1Variables) + (0, arcrad); arc cw ->;
	right; move to Q0Variables; arc <-;
	left; move to N2dinamic.w; line to (N0tipus.w, Here) - (arcrad, 0);
		arc; line to (Here, N1element) + (0, arcrad); arc; arrow to N1element.w;
	left; move to N1memoria.w; line <- to Here - (arcrad, 0); arc cw;
	up; move to N2decriptor.n; line <- to (Here, N2dinamic) - (0, arcrad); arc cw;
.PE
