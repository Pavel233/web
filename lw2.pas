PROGRAM Test(INPUT, OUTPUT);
USES
  Dos;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'));
  WRITELN(GetEnv('REQUEST_METHOD'));
  WRITELN(GetEnv('HTTP_USER_AGENT'));
  WRITELN(GetEnv('HTTP_HOST'));
  WRITELN
END.
