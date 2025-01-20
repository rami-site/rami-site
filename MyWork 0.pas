program aaa;
function f(n:string):integer;
var
i,s:integer;
begin
	i:=1;
	s:=0;
    while i<=length(n) do
    begin
	if n[i]<>' ' then
	begin
		s:=s+1;
		while ((n[i]<>' ')and(i<=length(n))) or (i=length(n)) do
		i:=i+1;
    end
		else i:=i+1;
		f:=s;		
    end;
    
end;
function v(n:string):boolean;
var
i,s,c:integer;
begin
	s:=0;
	c:=0;
	for i:= 1 to length(n) do
	begin
	if n[i]='(' then
	 s:=s+1
	 else if n[i]=')' then
	 c:=c+1;
     end;
     if c=s then
     v:=true
     else v:=false;
 end;
 var
 n,g:string;
 begin
 	readln(n);
 	writeln(f(n));
 	readln(g);
 	if v(g) then
 	writeln('la chaine de caractere est bien parenthes„')
 	else writeln('la chaine de caractere est male parenthes„');
end.