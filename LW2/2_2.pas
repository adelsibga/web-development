PROGRAM SarahRevere(INPUT, OUTPUT);
USES 
  dos;
VAR
  Lanterns: CHAR;
BEGIN {SarahRevere}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  {Read Lanterns}
  WRITELN(GetEnv('QUERY_STRING'));
  IF GetEnv('QUERY_STRING') = ('Lanterns=1')
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF GetEnv('QUERY_STRING') = ('Lanterns=2')
    THEN
      WRITELN('The British are coming by sea.')
    ELSE
      IF GetEnv('QUERY_STRING') = ('Lanterns=3')
      THEN
        WRITELN('The British are coming by air.')
      ELSE
         WRITELN('The North Church shows only ''''', GetEnv('QUERY_STRING'), '''''.')
END. {SarahRevere}
