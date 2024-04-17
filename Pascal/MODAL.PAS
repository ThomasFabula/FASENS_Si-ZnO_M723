program modal;

{ Einlesen von Spektrumdaten und Zuordnung von Radialparameterwerten
  6 Schwingungsmoden
  Eingabedateien: Mnn.DAT , nn=00,05,10,...,95
  Ausgabedateien: fn-ampl.dat, n=1-6
}

var datname             : string;
    i                   : integer;
    freq,ampl           : real;
    infile,outf         : text;
    a1,a2,a3,a4,a5,a6,p : array [1..19] of real;
    test                : boolean;

procedure einlesen;
begin
 write('Einlesen der Daten...');

 datname:='M00.DAT';
 i:=1;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M05.DAT';
 i:=2;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M10.DAT';
 i:=3;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M15.DAT';
 i:=4;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M25.DAT';
 i:=5;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M30.DAT';
 i:=6;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M35.DAT';
 i:=7;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M40.DAT';
 i:=8;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M45.DAT';
 i:=9;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M50.DAT';
 i:=10;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M55.DAT';
 i:=11;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M60.DAT';
 i:=12;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M65.DAT';
 i:=13;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M70.DAT';
 i:=14;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M75.DAT';
 i:=15;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M80.DAT';
 i:=16;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M85.DAT';
 i:=17;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);


{ ======================================}
 datname:='M90.DAT';
 i:=18;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

{ ======================================}
 datname:='M95.DAT';
 i:=19;
 assign(infile,datname);
 reset(infile);
 repeat
  readln(infile,freq,ampl);
  if freq=7244.39   then a1[i]:=ampl;
  if freq=11359.10  then a2[i]:=ampl;
  if freq=15224.44  then a3[i]:=ampl;
  if freq=28566.08  then a4[i]:=ampl;
  if freq=34551.12  then a5[i]:=ampl;
  if freq=46022.44  then a6[i]:=ampl;
 until EOF(infile);
 close(infile);

 writeln(' b e e n d e t !');
end;

procedure init;
begin
{ Zuordnung der X-Komponenten }
 p[1]:=0.0;
 p[2]:=0.5;
 p[3]:=1.0;
 p[4]:=1.5;
 p[5]:=2.5;
 p[6]:=3.0;
 p[7]:=3.5;
 p[8]:=4.0;
 p[9]:=4.5;
 p[10]:=5.0;
 p[11]:=5.5;
 p[12]:=6.0;
 p[13]:=6.5;
 p[14]:=7.0;
 p[15]:=7.5;
 p[16]:=8.0;
 p[17]:=8.5;
 p[18]:=9.0;
 p[19]:=9.5;
end;

procedure schreiben;
begin
 write('Ausgabedaten schreiben...');

{ ======================================}
 assign(outf,'f1-ampl.dat');
 rewrite(outf);
 for i:=1 to 19 do
  begin
   writeln(outf,p[i],a1[i]);
  end;
 close(outf);

{ ======================================}
 assign(outf,'f2-ampl.dat');
 rewrite(outf);
 for i:=1 to 19 do
  begin
   writeln(outf,p[i],a2[i]);
  end;
 close(outf);

{ ======================================}
 assign(outf,'f3-ampl.dat');
 rewrite(outf);
 for i:=1 to 19 do
  begin
   writeln(outf,p[i],a3[i]);
  end;
 close(outf);

{ ======================================}
 assign(outf,'f4-ampl.dat');
 rewrite(outf);
 for i:=1 to 19 do
  begin
   writeln(outf,p[i],a4[i]);
  end;
 close(outf);

{ ======================================}
 assign(outf,'f5-ampl.dat');
 rewrite(outf);
 for i:=1 to 19 do
  begin
   writeln(outf,p[i],a5[i]);
  end;
 close(outf);

{ ======================================}
 assign(outf,'f6-ampl.dat');
 rewrite(outf);
 for i:=1 to 19 do
  begin
   writeln(outf,p[i],a6[i]);
  end;
 close(outf);
writeln('Beendet.');
end;

procedure testout;
begin
 if test then
 begin
  for i:=1 to 19 do
  begin
   writeln(outf,a1[i]:10:6,a2[i],a3[i],a4[i],a5[i],a6[i]);
  end;
  readln;
 end;
end;

{ ==== MAIN  ==== }

begin
 test:=FALSE;
 init;
 einlesen;
 testout;
 schreiben;
end.

