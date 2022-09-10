      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9999.
       01 NUM2 PIC 9999.
       01 RES PIC Z(8).
       01 MENU PIC 9.
       PROCEDURE DIVISION.


       MAIN-MENU.
            PERFORM MOSTRAR-MENU.
            GO TO MAIN-MENU.

       INSERTAR-NUMS.
           DISPLAY "NUM1:".
           ACCEPT NUM1.
           DISPLAY "NUM2".
           ACCEPT NUM2.

       SUMAR.
           PERFORM INSERTAR-NUMS.
           COMPUTE RES = NUM1 + NUM2.

       RESTAR.
           PERFORM INSERTAR-NUMS.
           COMPUTE RES = NUM1 - NUM2.

       MULTIPLICAR.
           PERFORM INSERTAR-NUMS.
           COMPUTE RES = NUM1 * NUM2.

       DIVIDIR.
           PERFORM INSERTAR-NUMS.
           COMPUTE RES = NUM1 / NUM2.


       MOSTRAR-MENU.
           DISPLAY "CALCULADORA".
           DISPLAY "1. SUMAR".
           DISPLAY "2. RESTAR".
           DISPLAY "3. MULTIPLICAR".
           DISPLAY "4. DIVIDIR".
           DISPLAY "5. SALIR".
           ACCEPT MENU.
           DISPLAY SPACE.
           IF MENU = 1
               PERFORM SUMAR.
           IF MENU = 2
               PERFORM RESTAR.
           IF MENU = 3
               PERFORM MULTIPLICAR.
           IF MENU = 4
               PERFORM DIVIDIR.
           IF MENU = 5
               STOP RUN.

           DISPLAY "EL RESULTADO ES" RES.
           DISPLAY SPACE.


       END PROGRAM CALCULADORA.
