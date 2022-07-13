
//Author: Rohit Mathew Samuel
// Roll : Am.EN.P2WNA21010
// Program: calculaor that takes multiple user defined input 
//          and can do addition subbtraction and division.

pragma solidity >= 0.5.0;

contract operation{
    //variables thet hold the digit value.
    int public a;
    int public b;
    int public c;
    int public d;
    int public e;
    //other variables
    int public number;
    int public cou;
    int public val1;
    int public val2;
    int public inp_var;
    int public inp_var1;
    int public inp_var2;
    int public sum = 0;
 
    
  // variable: a b c d e 
    // index : 1 2 3 4 5 
    // value :---user input---

// Assign value to variables a-e based on index value
//based on index value corresponding values are stored(variables can be increased)
    function input_init(int index, int value) public returns(int, int){
        if (index == 1 ){
            a = value;
            return (index, a);
        }
        else if(index == 2){
            b = value;
            return (index, b);
        }
        else if (index == 3){
            c = value;
            return (index, c);
        }
        else if(index == 4){
            d = value;
            return (index, d);
        }
        else if(index == 5){
            e = value;
            return (index, e);
        }
    }

   // counter function to limit the addition operation of multiple input.
   //eg. 2 varibale, 3 variable,4 variable etc.
    function counter(int count) public returns (int){
        cou = count;
        return cou;
    }

// Adds the value of the variable when the index is given as input.
    function addition (int var_val) public returns (int, int){
        inp_var = var_val;
        while (cou!=0){ // To do the operation for n number of variables.
            if(inp_var == 1){
                sum = sum +a;
                cou = cou-1;
                return (sum,cou);// sum returns the sum of all the values of the input variable
            }
            if(inp_var == 2){
                sum = sum +b;
                cou = cou-1;
                return (sum,cou);
            }
            if(inp_var == 3){
                sum = sum +c;
                cou = cou-1;
                return (sum,cou);
            }
            if(inp_var == 4){
                sum = sum +d;
                cou = cou-1;
                return (sum,cou);
            }
            if(inp_var == 5){
                sum = sum +e;
                cou = cou-1;
                return (sum,cou);
           
            } 
        }
            
        
    }
    

//subtraction function 
    function subtraction() public returns(int){
        return val1-val2;
    }

// division function
    function divide() public returns(int){
        //special cases
        if (val2 == 0){
            return 0;
        }
        else {
            return val1/val2;
        }
        
    }


// The 2 function value1 and value2 gets index value as input and assign value to val1 and val2


    function value1(int input_1) public{
        inp_var1 = input_1;
        if(inp_var1 == 1){
            val1 = a;
                //return a;
        }
        else if(inp_var1 == 2){
            val1 = b;
                //return b;
        }
        else if(inp_var1 == 3){
            val1 = c;
                //return c;
        }
        else if(inp_var1 == 4){
            val1 = d;
               // return d;
        }
        else if(inp_var1 == 5){
            val1 = e;
               // return e;
        }
    }


    function value2(int input_2) public{
        inp_var2 = input_2;
        if(inp_var2 == 1){
            val2 = a;
               // return a;
        }
        else if(inp_var2 == 2){
            val2 = b;
               // return b;
        }
        else if(inp_var2 == 3){
            val2 = c;
                //return c;
        }
        else if(inp_var2 == 4){
            val2 = d;
               // return d;
        }
        else if(inp_var2== 5){
            val2 = e;
               // return e;
        }  
    }


}
