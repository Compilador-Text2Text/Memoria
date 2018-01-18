.PS
N1init: box width 0.8 "Inicialitzador"; arrow "1" "";
N1sist: box "Funcions" "Sistema";
	down; arrow at N1init.s " 2" ljust;
N2lexi: box "L\(`exic"; right; arrow;
N2sint: box "Sint\(`actic"; arrow;
N2sema: box "Sem\(`antic";

	left;
N0main: box "Main" at 1/2 <N1init, N1sist> + (0, 2*moveht);
	line to (N1init, Here) + (arcrad, 0); arc; arrow;
.PE
