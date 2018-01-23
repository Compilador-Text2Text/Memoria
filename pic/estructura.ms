.PS
N1init: box width 0.8 "Inicialitzador"; arrow "1" "";
N1sist: box "Funcions" "de Sistema";
	down; arrow at N1init.s "2 " rjust;
N2lexi: box "Analitzador" "L\(`exic"; right; move to last box.e; move;
N2sint: box "Analitzador" "Sint\(`actic"; move;
N2sema: box "Analitzador" "Sem\(`antic";
	down; move to N1init.s; arc;
	line to (N2sema, Here) - (arcrad, 0); arc cw ->; move to (last arc.end, last arc.start); "4";
	up; move to N2sint.n; arc <-; move to (last arc.end, Here) - (0, arcrad /2); "3";

	left;
N0main: box "Main" at 1/2 <N1init, N1sist> + (0, 2*moveht);
	line to (N1init, Here) + (arcrad, 0); arc; arrow;
	down; move to N2lexi.s; arc ->;

	# Depurador
	down; arrow at N2sint.s;
N3depu: box "Depurador";

# Final
	left; move to N1init .w; Ali: arc; line to (Here, N3depu) + (0, arcrad); arc ->;
box "Executor"; arrow to N3depu .w;
	move to (last arc.start, last arc.end); "5"

	# Arc
	down; move to (Ali.end, N2lexi .s); arc ->; line to (N2sema, Here) - (arcrad, 0); arc <-;
.PE
