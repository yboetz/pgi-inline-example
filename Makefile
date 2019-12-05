FC = pgfortran
FFLAGS = -O2 -Minfo=all -Mllvm

.PHONY: all

all: myprog

main.o: main.f90 utils.il
	$(FC) $(FFLAGS) -Minline=utils.il -c main.f90

utils.o: utils.f90
	$(FC) $(FFLAGS) -c utils.f90

utils.il: utils.f90
	$(FC) $(FFLAGS) -Mextract=15 -o utils.il utils.f90

myprog: main.o utils.o
	$(FC) -o myprog main.o utils.o

clean:
	@rm *.mod *.o
	@rm -r utils.il/
	@rm myprog
