PROGRAM SayHello(INPUT, OUTPUT);
USES dos;
VAR
  Name, QueryString: STRING;
  Index, NameIndex: INTEGER;
BEGIN {SayHello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Name := 'name';
  {Try to find 'name'}
  QueryString := (GetEnv('QUERY_STRING'));
  Index := POS(Name, QueryString);
  IF Index <> 0
  THEN
    BEGIN
      NameIndex := Index + 5;
      Index := POS('&', QueryString);
      IF Index <> 0
      THEN
        Name := Copy(QueryString, NameIndex, Index - NameIndex)
      ELSE
        Name := Copy(QueryString, NameIndex, (Length(QueryString) + 1) - NameIndex);
      WRITELN('Hello dear, ', Name, '!')
    END
  ELSE
    WRITELN('Hello Anonymous!')
END.{SayHello}