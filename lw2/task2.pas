PROGRAM PaulRevere(INPUT, OUTPUT);
{Ïå÷àòü ñîîòâåòñòâóþùåãî ñîîáùåíèÿ ,çàâèñÿùåãî îò âåëè÷èíû
 íà âõîäå:  '...by land'  äëÿ 1;  '...by sea'  äëÿ 2;
 èíà÷å ïå÷àòü ñîîáùåíèÿ îá îøèáêå}
USES
  Dos;
VAR
  Lanterns: STRING;
  a: INTEGER;
BEGIN {PaulRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Lanterns := GetEnv('QUERY_STRING');
  a := POS('lanterns=', Lanterns);
  IF a <> 0
  THEN
    BEGIN
      DELETE(Lanterns, 1, a+8);
      IF Lanterns > '0'
      THEN
        IF Lanterns < '3'
        THEN
          WRITE('The British are coming ');
      IF Lanterns = '1'
      THEN
        WRITELN('by land.')
      ELSE 
        IF Lanterns = '2'
        THEN
          WRITELN('by sea.')
        ELSE
          WRITELN('The North Church shows only ''', Lanterns, '''.')
    END
  ELSE
    WRITELN('The North Church shows only ''', Lanterns, '''.')
END. {PaulRevere}
