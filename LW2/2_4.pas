PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParametr(Key: STRING): STRING;
VAR
  QueryString, Value: STRING;
  Index, ValueIndex: INTEGER;
BEGIN{GetQueryStringParametr}
  {Try to find 'key'}
  QueryString := (GetEnv('QUERY_STRING'));
  Index := POS(Key, QueryString);
  IF Index <> 0
  THEN
    BEGIN
      Value := Copy(QueryString, Index, (Length(QueryString) + 1) - Index);
      ValueIndex := POS('=', Value) + 1;
      Index := POS('&', Value);
      IF Index <> 0
      THEN
        Value := Copy(Value, ValueIndex, Index - ValueIndex)
      ELSE
        Value := Copy(Value, ValueIndex, Length(Value) + 1 - ValueIndex);
     GetQueryStringParametr := Value
    END
  ELSE
    GetQueryStringParametr := 'Can''t find parametr!'
END;{GetQueryStringParametr}
BEGIN{WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParametr('first_name'));
  WRITELN('Last Name: ', GetQueryStringParametr('last_name'));
  WRITELN('Age: ', GetQueryStringParametr('age'))
END.{WorkWithQueryString}