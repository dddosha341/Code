format PE Console

entry start

include 'win32ax.inc' 

section '.data' data readable writeable

stdin   dd      ?                  
stdout  dd      ?                  


section '.code' code    readable executable
start:
    invoke      GetStdHandle,STD_INPUT_HANDLE
    mov         [stdin], eax
    invoke      GetStdHandle,STD_OUTPUT_HANDLE
    mov         [stdout], eax

animate:
  
    cinvoke     printf,"                          .-------.       %s",<10,13,0>
    cinvoke     printf,"                        .'  .-.    `.     %s",<10,13,0>
    cinvoke     printf,"                      .'  .'  ; `.   \      %s",<10,13,0>
    cinvoke     printf,"                     /   /    :   \   \        %s",<10,13,0>
    cinvoke     printf,"                    /   /-.___;\   ;   ;        %s",<10,13,0>
    cinvoke     printf,"                   /   :;/_\.  ./_\.:   :        %s",<10,13,0>
    cinvoke     printf,"                  :    ;:`          :   :        %s",<10,13,0>
    cinvoke     printf,"                  ;   :;+          +;   ;        %s",<10,13,0>
    cinvoke     printf,"                  \   ; :   \__/   /  .'         %s",<10,13,0>
    cinvoke     printf,"                    \  ; \  --' .:s-//              %s",<10,13,0>
    cinvoke     printf,"                           :     :                %s",<10,13,0>
    cinvoke     printf,"                           ;     :                %s",<10,13,0>
    cinvoke     printf,"                    _..+-==._    _=t-.._          %s",<10,13,0>
    cinvoke     printf,"                 .-=    \    =  '  :    `.        %s",<10,13,0>


    push        ecx
    mov         ecx, 99999999
uselessloop:
    loop        uselessloop
    pop         ecx

    push        ecx
    mov         ecx, 99999999
uselessloop2:
    loop        uselessloop2
    pop         ecx

    push        ecx
    mov         ecx, 99999999
uselessloop3:
    loop        uselessloop3
    pop         ecx

    push        ecx
    mov         ecx, 99999999
uselessloop4:
    loop        uselessloop4
    pop         ecx

    cinvoke    system,<'cls'>

    cinvoke     printf,"                          .-------.         %s",<10,13,0>
    cinvoke     printf,"                        .'  .-.    `.                                  %s",<10,13,0>
    cinvoke     printf,"                      .'  .'  ; `.   \                                 %s",<10,13,0>
    cinvoke     printf,"                     /   /    :   \   \                                 %s",<10,13,0>
    cinvoke     printf,"                    /   /-.___;\   ;   ;                                %s",<10,13,0>
    cinvoke     printf,"                   /   :;--.  .-^-. :   :                                %s",<10,13,0>
    cinvoke     printf,"                  :    ;:           :   :                                %s",<10,13,0>
    cinvoke     printf,"                  ;   : ;           ;   ;                                %s",<10,13,0>
    cinvoke     printf,"                  \   ; :   \__/   /  .'                               %s",<10,13,0>
    cinvoke     printf,"                    \  ; \  --' .:s-//                                  %s",<10,13,0>
    cinvoke     printf,"                           :     :                                %s",<10,13,0>
    cinvoke     printf,"                           ;     :                               %s",<10,13,0>
    cinvoke     printf,"                    _..+-==._    _=t-.._                          %s",<10,13,0>
    cinvoke     printf,"                 .-=    \    =  '  :    `.                        %s",<10,13,0>

;
    push        ecx
    mov         ecx, 59999999
uselessloop1:
    loop        uselessloop1
    pop         ecx
    cinvoke     system,<'cls'>
    jmp         animate

Exit:
    cinvoke     getchar
    cinvoke     getchar
    invoke      ExitProcess, 0


section '.idata' import data readable writeable
library    kernel,'KERNEL32.DLL',\
           msvcrt,'msvcrt.dll'

import     kernel,\
           GetStdHandle,'GetStdHandle',\
           ReadConsole,'ReadConsoleA',\
           WriteConsole,'WriteConsoleA',\
           ExitProcess,'ExitProcess',\
           GetProcessHeap,'GetProcessHeap',\
           HeapCreate,'HeapCreate',\
           HeapDestroy,'HeapDestroy',\
           HeapAlloc,'HeapAlloc',\
           HeapFree,'HeapFree',\
           HeapReAlloc,'HeapReAlloc',\
           CreateFile,'CreateFileA',\
           CloseHandle,'CloseHandle',\
           WriteFile,'WriteFile',\
           ReadFile,'ReadFile',\
           GetFileSize,'GetFileSize'

import     msvcrt,\
           printf,'printf',\
           scanf,'scanf',\
           getchar,'getchar',\
           fscanf,'fscanf',\
           getch,'_getch',\
           system,'system'

