unit KOLTrans;

interface
Uses Kol, Windows;


function Str2Int(Str: string): Integer;
function RegKeyOpenRead( Key: HKey; const SubKey: String ): HKey;
function RegKeyGetStr( Key: HKey; const ValueName: String ): String;

implementation

function Str2Int(Str: string): Integer;
begin
   result:= KOL.Str2Int(Str);
end;

function RegKeyOpenRead( Key: HKey; const SubKey: String ): HKey;
begin
   result := KOL.RegKeyOpenRead(Key, SubKey);
end;

function RegKeyGetStr( Key: HKey; const ValueName: String ): String;
begin
   Result :=  KOL.RegKeyGetStr(Key, ValueName);
end;

end.
