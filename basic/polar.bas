10 BORDER 0 : PAPER 0 : INK 7 : CLS
12 DIM P$(3,5) : LET P$(1)="READY": LET P$(2)="AIM": LET P$(3)="FIRE"
15 LET X = 32 : LET K = 0 : LET L = 0 : LET R = 0 : LET P = 26 : LET A = 1
85 GOSUB 2500
130 PRINT AT 20,9;: INK 6 : PRINT K: PRINT AT 20,29;: INK 6 : PRINT L
140 PRINT AT 10,7;: INK 5 : PRINT "WAIT FOR IT SHERIFF!"
150 PAUSE 50: PRINT AT 10,7;: INK 5 : PRINT "PRESS A TO "; P$(A); "     ":GOSUB 1300
250 IF P > 4 THEN LET P = P - 1 : GOSUB 1300
260 IF P = 4 THEN LET L = L + 1 : GOSUB 1500: GOSUB 2000: GOSUB 2500 : GOTO 140
999 GOTO 250
1000 STOP
1300 INK 7
1310 PRINT AT 4, P;: PRINT CHR$ 143; CHR$ 143; CHR$ 143; CHR$ 143; CHR$ 143 + " "
1312 PRINT AT 5, P + 1;: PRINT CHR$ 143; CHR$ 143; CHR$ 143; CHR$ 143 + " "
1314 PRINT AT 6, P + 1;: PRINT CHR$ 143 + "  " + CHR$ 143 + " "
1320 RETURN
1500 FOR I = 0 TO 20
1510 PAPER 2: BORDER 2: CLS
1520 PAUSE 1
1530 PAPER 6: BORDER 6: CLS
1540 PAUSE 1
1550 NEXT I
1600 RETURN
2000 LET P = 26: LET A = 1
2100 RETURN
2500 PAPER 0: BORDER 0 : CLS
2505 PRINT AT 0,10;: INK 4 : PRINT "POLAR ATTACK"
2510 PRINT AT 20,3;: INK 4 : PRINT "KILLS"
2520 PRINT AT 20,23;: INK 4 : PRINT "LOSES"
2525 INK 6
2530 FOR I = 0 TO 31
2540 PRINT AT 8,I; : PRINT CHR$ 130
2550 PRINT AT 14,I; : PRINT CHR$ 130 
2560 NEXT I
2570 PRINT AT 4,4;: INK 3: PRINT CHR$ 143
2580 PRINT AT 5,4;: INK 4: PRINT CHR$ 143
2590 PRINT AT 5,5;: INK 1: PRINT CHR$ 138
2600 PRINT AT 6,4;: INK 5: PRINT CHR$ 142
2800 RETURN