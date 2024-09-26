program mdn;

{$APPTYPE CONSOLE}

{$R *.res}

 var
  a, b, c, Eps, Fa, Fb, Fc : Real;
  counter : Integer;

Function f(x : Real) : Real;
begin
  // f := x * x - 4
  f := x*x*x - 6*x*x + 11*x - 6
end;

begin
  counter := 0;
  write('Input root interval and accuracy: ');
  readln(a, b, Eps);

  repeat
    Fa := f(a);
    Fb := f(b);

    if Abs(Fa) < Eps then
    begin
      c := a;
      break;
    end;

    if Abs(Fb) < Eps then
    begin
      c := b;
      break;
    end;

    if Fa * Fb < 0 then
    begin
      counter := counter + 1;
      c := a + 0.5*(b - a);
      Fc := f(c);
      if Abs(Fc) < Eps then
        break;
      if Fa * Fc < 0 then
        b := c
      else
        a := c
    end
    else
    begin
      writeln('Root is absent on the given interval');
      readln;
      exit
    end
  until b - a < Eps;

  writeln('Root: ', c:0:10);
  write('Iterations: ', counter);
  readln
end.
