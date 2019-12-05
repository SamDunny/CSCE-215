# written by Sam Dunny
# makefile to build program

#findName depends on findName.o
findName: findName.o
        g++ -g findName.o -o findName

#findName.o depends on findName.cpp program
findName.o: findName.cpp
        g++ -c -g findName.cpp

#remove all *.o files and findName
clean:
        rm -f findName *.o

#creates a backup directory, stores all source code
backup:
        mkdir ~/215/FINAL_PROJ/FINALBackup/
        cp *.cpp findName.sh Makefile readme ~/215/FINAL_PROJ/FINALBackup/

#tar all source code
tar:
        tar -cvf sdunny.findname.tar readme *.cpp findName.sh Makefile
