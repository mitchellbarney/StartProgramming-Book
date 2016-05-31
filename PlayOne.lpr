program PlayOne;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

type

  { Playground }

  Playground = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

{ Playground }

procedure Playground.DoRun;
var
  //ErrorMsg: String; //Got rid of that annoying shit.
  Humpadump: String;
  Firstname: String;
  Lastname: String;
  Finalname: String;
begin


  { add your program here }


  Writeln('Well, the kangaroos hop a lot, don''t they?');

  Writeln('Well, this is another fucking line, isn''t it?!');

  Writeln('What is your kangaroos name?');

  Readln(Humpadump);

  Writeln('Cool!');

  Writeln(Humpadump);

  Writeln('What is the kangaroos first name?');

  Readln(Firstname);

  Writeln('Cool!!! What about his last name?');

  Readln(Lastname);

  Finalname:= ' ' + Firstname + ' ' + Lastname + ' ';

  Writeln('Cool, so his name is ', Finalname );

  Writeln('It would be nice to have ', 5*5, ' kangaroos!');

  Writeln('Or ',5*5-96/2, ' Perhaps?');

  Writeln(9*8-2, ' Yay! Kangaroo!');

  Writeln('I like to hop with ', Finalname, ' Don''t you?');

  Writeln('Well, at least we know that ', 5*5, ' is 25...');

  //Make sure that we don't close it at the end...!
  Readln();

  // stop program loop
  Terminate;
end;

constructor Playground.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor Playground.Destroy;
begin
  inherited Destroy;
end;

procedure Playground.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ', ExeName, ' -h');
end;

var
  Application: Playground;
begin
  Application:=Playground.Create(nil);
  Application.Title:='Playground App';
  Application.Run;
  Application.Free;
end.

