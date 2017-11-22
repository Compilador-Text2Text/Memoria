%.eps: %.ps
	ps2epsi $< $@

%.ps: %.ms
	groff -p -ms $< > $@

# Per evitar que elimini .PRECIOUS: %.ps
