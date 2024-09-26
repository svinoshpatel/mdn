var
  a, b, c, Eps, Fa, Fb, Fc, xLeft, xRight, tabplus1, tabminus1, tabplus2, tabminus2, step : Real;
  counter : Integer;

Function f(x : Real) : Real;
begin
  // f := x * x - 4
  f := x*x*x - 6*x*x + 11*x - 6
end;

begin
  counter := 0;
  xLeft := 0;
  xRight := 0;
  tabplus1 := f(xRight);
  tabminus1 := f(xLeft);
  write('Input tabulation step and accuracy: ');
  readln(step, Eps);

  while True do
  begin
    xLeft := xLeft - step;
    xRight := xRight + step;
    tabplus2 := f(xRight);
    tabminus2 := f(xLeft);

    if Abs(tabplus2) < Eps then
    begin
      c := xRight;
      writeln('Root: ', c:0:10);
      exit;
    end;

    if Abs(tabminus2) < Eps then
    begin
      c := xLeft;
      writeln('Root: ', c:0:10);
      exit;
    end;

    if tabplus1 * tabplus2 < 0 then
    begin
      a := xRight - step;
      b := xRight;
      break;
    end

    else if tabminus1 * tabminus2 < 0 then
    begin
      a := xLeft;
      b := xLeft + step;
      break;
    end

    else
    begin
      tabplus1 := tabplus2;
      tabminus1 := tabminus2;
    end;
  end;


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
      exit
    end
  until b - a < Eps;

  writeln('Root: ', c:0:10);
  write('Iterations: ', counter);
    
end.
