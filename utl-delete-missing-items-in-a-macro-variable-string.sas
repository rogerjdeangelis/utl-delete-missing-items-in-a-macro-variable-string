%let pgm=utl-delete-missing-items-in-a-macro-variable-string;                                                      
                                                                                                                   
Delete missing items in a macro variable string                                                                    
                                                                                                                   
github                                                                                                             
https://tinyurl.com/y3nudls3                                                                                       
https://github.com/rogerjdeangelis/utl-delete-missing-items-in-a-macro-variable-string                             
                                                                                                                   
Change                                                                                                             
                                                                                                                   
   A,B,C,D,,,G,,I,,                                                                                                
                                                                                                                   
   to                                                                                                              
                                                                                                                   
   A,B,C,D,G,I,                                                                                                    
                                                                                                                   
Two related solutions                                                                                              
                                                                                                                   
     1. Programmatic solution by Bart                                                                              
        Bartosz Jablonski                                                                                          
        yabwon@gmail.com                                                                                           
     2. Editing command and the classic editor                                                                     
                                                                                                                   
Classic Editor Tips                                                                                                
https://tinyurl.com/y526hms9                                                                                       
https://github.com/rogerjdeangelis?utf8=%E2%9C%93&tab=repositories&q=classic+editor&type=&language=                
                                                                                                                   
                                                                                                                   
Related to                                                                                                         
https://tinyurl.com/y46unnpa                                                                                       
https://stackoverflow.com/questions/56801126/sas-delete-missing-items-in-a-macro-variable                          
                                                                                                                   
*_      ____             _                                                                                         
/ |    | __ )  __ _ _ __| |_                                                                                       
| |    |  _ \ / _` | '__| __|                                                                                      
| |_   | |_) | (_| | |  | |_                                                                                       
|_(_)  |____/ \__,_|_|   \__|                                                                                      
                                                                                                                   
;                                                                                                                  
                                                                                                                   
 %let x = A,B,C,,,D,E,,,,F,,G,;                                                                                    
 %put *before*&x.*;                                                                                                
data _null_;                                                                                                       
  do _N_ = 1 to 2;                                                                                                 
    call symputX('x',prxchange('s/,,/,/',-1,symget('x')),"G");                                                     
  end;                                                                                                             
run;                                                                                                               
 %put *after*&x.*;                                                                                                 
                                                                                                                   
*____           _               _                 _ _ _                                                            
|___ \      ___| | __ _ ___ ___(_) ___    ___  __| (_) |_ ___  _ __                                                
  __) |    / __| |/ _` / __/ __| |/ __|  / _ \/ _` | | __/ _ \| '__|                                               
 / __/ _  | (__| | (_| \__ \__ \ | (__  |  __/ (_| | | || (_) | |                                                  
|_____(_)  \___|_|\__,_|___/___/_|\___|  \___|\__,_|_|\__\___/|_|                                                  
                                                                                                                   
;                                                                                                                  
                                                                                                                   
If you are using the SAS classic editor just highlight the                                                         
let statement and type 'comg' on the clean command line.                                                           
                                                                                                                   
* fits on a function key;                                                                                          
                                                                                                                   
%macro comh/cmd;                                                                                                   
  %do i=1 %to 20;                                                                                                  
    c ',,' ',' all;                                                                                                
  %end;                                                                                                            
%mend comh;                                                                                                        
                                                                                                                   
                                                                                                                   
BEFORE                                                                                                             
%let str=A,B,C,D,,,G,,I,, ;                                                                                        
                                                                                                                   
AFTER COMH                                                                                                         
%let str=A,B,C,D,G,I, ;                                                                                            
                                                                                                                   
Another command macro  for aligning numbers                                                                        
                                                                                                                   
%macro comh/cmd;                                                                                                   
  %do i=1 %to 20;                                                                                                  
    c ' ' ' ' all;                                                                                                 
  %end;                                                                                                            
%mend comh;                                                                                                        
                                                                                                                   
                                                                                                                   
BEFORE                                                                                                             
                                                                                                                   
1  4          7 8                   0                                                                              
2 1        5          6      7                                                                                     
3                  4    6 7   7                                                                                    
                                                                                                                   
After CUTH                                                                                                         
                                                                                                                   
1 4 7 8 0                                                                                                          
2 1 5 6 7                                                                                                          
3 4 6 7 7                                                                                                          
                                                                                                                   
