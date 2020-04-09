PROGRAM PrintHello(INPUT, OUTPUT);
USES
  Dos;
VAR
  Name: STRING;
  a: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := GetEnv('QUERY_STRING');
  a := POS('name=', Name);
  DELETE(Name, 1, a + 5);
  IF Name = ''
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    WRITELN('Hello dear, ', Name, '!')
END.
