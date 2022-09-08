#include "stdio.h"

__attribute__((constructor))  void beforeMainToRun(){
    printf("%s\n",__FUNCTION__ );
}

int main(int argc,char** argv){
    printf("%s\n",__FUNCTION__ );
    return 0;
}


