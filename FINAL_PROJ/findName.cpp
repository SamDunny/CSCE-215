//written by Sam Dunny

#include <string>
#include <cstdlib>
#include <iostream>

int main(int wordcount, char* name[]){

        //string variables
        std::string command = "./findName.sh";
        std::string error = "Invalid Number of Command Arguments";

        //condition if command line arguments are valid
        //passes ./findName.sh along to system
        if(wordcount == 2)
                std::system((command + " " + name[1]).c_str());
                exit;

        //condition if command line arguments are invalid
        if(wordcount != 2)
                std::cout << error << "\n";
                exit;
}
