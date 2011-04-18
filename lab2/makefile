#####
# Autor: Pedro Batista
# Data: 10/04/2011
#####

LATEX = latex
BIBTEX = bibtex
DVIPDF = dvipdf
RM = rm -f

MAIN = relatorio
TARGET = $(MAIN).pdf
DVI = $(MAIN).dvi

SOURCE = relatorio.tex \
		logs/confs/r6/running-config \
		logs/confs/s6/running-config \
		logs/confs/g2/zebra.conf \
		logs/confs/g2/interfaces \
		logs/confs/g2/daemons \
		logs/confs/g2/ospfd.conf \
		logs/confs/g2/debian.conf \
		logs/confs/g3/zebra.conf \
		logs/confs/g3/interfaces \
		logs/confs/g3/daemons \
		logs/confs/g3/ospfd.conf \
		logs/confs/g3/debian.conf \
		logs/confs/g1/zebra.conf \
		logs/confs/g1/interfaces \
		logs/confs/g1/daemons \
		logs/confs/g1/ospfd.conf \
		logs/confs/g1/debian.conf \
		logs/c1/g3_ospf \
		logs/c1/g1_ospf \
		logs/c1/g3_zebra \
		logs/c1/g2_ospf \
		logs/c1/g1_zebra \
		logs/c1/r6_zebra \
		logs/c1/r6_ospf \
		logs/c1/g2_zebra \
		logs/c2/g3_ospf \
		logs/c2/g1_ospf \
		logs/c2/g1_z \
		logs/c2/g3_zebra \
		logs/c2/g2_ospf \
		logs/c2/g1_zebra \
		logs/c2/r6_zebra \
		logs/c2/r6_ospf \
		logs/c2/trace_route \
		logs/c2/trace_route/g1_r6.61 \
		logs/c2/trace_route/g1_g2.62 \
		logs/c2/trace_route/g2_r6.62 \
		logs/c2/trace_route/g1_g2.61 \
		logs/c2/trace_route/g3_r6.62 \
		logs/c2/trace_route/g3_g2.61 \
		logs/c2/trace_route/g3_g2.62 \
		logs/c2/trace_route/g3_g1 \
		logs/c2/trace_route/g3_g1.alternative \
		logs/c2/trace_route/g1_g3 \
		logs/c2/trace_route/g2_g3 \
		logs/c2/trace_route/g2_r6.61 \
		logs/c2/trace_route/g3_r6.61 \
		logs/c2/trace_route/g1_r6.62 \
		logs/c2/trace_route/g2_g1 \
		logs/c2/g2_zebra \
		logs/c3/g3_ospf \
		logs/c3/g1_ospf \
		logs/c3/g3_zebra \
		logs/c3/g2_ospf \
		logs/c3/g1_zebra \
		logs/c3/r6_zebra \
		logs/c3/r6_ospf \
		logs/c3/trace_route \
		logs/c3/trace_route/g1_r6.61 \
		logs/c3/trace_route/g1_g2 \
		logs/c3/trace_route/g2_r6.62 \
		logs/c3/trace_route/g3_r6.62 \
		logs/c3/trace_route/g3_g1 \
		logs/c3/trace_route/g1_g3 \
		logs/c3/trace_route/g2_g3 \
		logs/c3/trace_route/g2_r6.61 \
		logs/c3/trace_route/g3_r6.61 \
		logs/c3/trace_route/g1_r6.62 \
		logs/c3/trace_route/g2_g1 \
		logs/c3/trace_route/g3_g2 \
		logs/c3/g2_zebra


all : $(TARGET)

$(TARGET) : $(DVI)
	$(DVIPDF) $(MAIN)

$(DVI) : $(SOURCE)
	$(LATEX) $(MAIN)
	-$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean :
	$(RM) *.aux *.bbl *.blg *.dvi *.log *~

distclean :
	$(RM) $(TARGET)
