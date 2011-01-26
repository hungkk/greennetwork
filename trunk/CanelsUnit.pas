unit CanelsUnit;


{������ ������ �������:

        &%& - Delimiter
Chanel name (max 20 chars) &%&http://rss.xml



F=FileMD5Hash

}
interface
uses Windows, Classes, SysUtils, NativeXml, OverbyteIcsHttpProt, Unit1;


const
  CHANNELS_DIRNAME = 'channels';
  CAHNNELS_FILE = 'channels.lst';
  MASTER_ADDRESS = 'http://xmlsd.xml';
            (*
  type
    TNewsReader = class
    FHttpCli    : THttpCli;
    FChannelList: TStringList;
    FC_FILE: String;
    FC_DIR: string;

    FActiveCannelList: TStringList;
    FAPPDIR : String;
    FERRORCODE : Integer;
    private
      {��������� ���� � ��������� ��� ��� XML}
      function XMLDownload(addr: string; storein: string): Integer;
      function FullChannelPath(name: string): string;


    public
      procedure LoadChannelsFromFile;  //��������� ������ �������
      procedure LoadChannelsFromWeb;   //��������� ������ ������� � ��������� ���


      procedure UpdateChannelsDB; //��������� ����� XML ��� ��������� �������




      constructor Create(AppDir: string);
      destructor  Destroy;


    end;

  
 procedure ChannelsGridLoadFromFile(F: FileName);          *)

implementation

(*
procedure ChannelsGridLoadFromFile(F: FileName);
var List: TStringList; ROW: Integer;
begin
  List:= TStringList.Create;
  List.LoadFromFile(F);
  List.NameValueSeparator:= '\';

  for ROW:=0 to List.Count-1 do
  begin


   with Form1  do
   begin
    {ROW :=} ChannelsGrid.AddRow;
    ChannelsGrid.Cells[2, ROW] := List.Names[ROW];
   end;

  end;

  List.Free;

   // Form1.ChannelsGrid //�������� �� XML ����� � ���� �������
end;




constructor TNewsReader.Create(AppDir: string);
begin
   FAPPDIR           := AppDir;
   FC_DIR            := IncludeTrailingPathDelimiter(IncludeTrailingPathDelimiter(FAPPDIR) + CHANNELS_DIRNAME);
   FChannelList      := TStringList.Create;
   FActiveCannelList := TStringList.Create;
   FActiveCannelList.NameValueSeparator := '\';
   FActiveCannelList := '\';
   FC_FILE := IncludeTrailingPathDelimiter(FAPPDIR) + CAHNNELS_FILE;
end;

destructor TNewsReader.Destroy;
begin
  FChannelList.Free;
  FActiveCannelList.Free;
end;

procedure TNewsReader.LoadChannelsFromFile;
begin
  FChannelList.Clear;
  if FileExists(FC_FILE) then
  begin
   FChannelList.LoadFromFile( FC_FILE )
   ChannelsGridLoadFromFile( FC_FILE );  {EXTERNAL}
  end
  else
    LoadChannelsFromWeb;
end;

procedure TNewsReader.LoadChannelsFromWeb;
begin
  FERRORCODE := XMLDownload(MASTER_ADDRESS, FC_FILE);
  if FERRORCODE = 0 then LoadChannelsFromFile;
end;



function TNewsReader.XMLDownload(addr: string; storein: string): Integer;
begin
    FHttpCli                 := THttpCli.Create(nil);
    FHttpCli.RcvdStream      := TMemoryStream.Create;
    FHttpCli.MultiThreaded   := True;
    FHttpCli.FollowRelocation:= True;
    FHttpCli.URL             := addr;
    FHttpCli.RequestVer      := '1.0';
    FHttpCli.Timeout         := 3;

      try
        FHttpCli.Get;
        Application.ProcessMessages;
      except
       // LogRichEdit.Lines.Add(GetWORD(162) +{'Error code}': (' + IntToStr(FHttpCli.StatusCode) + ') ' + FHttpCli.ReasonPhrase);
       Exit;
      end;

     // check if Valid then save to file if not file in use


    FHttpCli.Abort;
    FHttpCli.RcvdStream.Free;
    FHttpCli.Free;

end;

function TNewsReader.FullChannelPath(name: string): string;
begin
 result:= FC_DIR + name
end;

procedure TNewsReader.UpdateChannelsDB;
var i: Integer;
begin
   //FActiveCannelList  XMLDownload


   for i:=0 to FActiveCannelList.Count -1 do
   begin
      

      XMLDownload( FActiveCannelList.ValueFromIndex[i], FullChannelPath(FActiveCannelListC)    );


   end;



end;



procedure Loadnewspanel;
begin
 //�������� ���������� ��������� ������ ��������


  CreateChanels;

end;


procedure GetCahnels;
begin
//��������� XML �� ������� ������� �� ����������� �� SVN

end;

procedure CreateChanels;
begin

 //��������� �� ������ canels.lst ������� ���������� ��� ������� ������, � ���� ������� ��� ��
  // ������ � ���������� "canels" ������������� � ��������� ������, �������� "Gamepolis"
  // � ���������� � ��������� Gamepolis ����� ��������� xml ���� RSS ����� �������������� gamepolis-� ������� �� blogger

end;



procedure DownloadChanelsXML;
begin
 //��������� XML ����� ��������� �������
   GNXMLDownload
end;

procedure UpdateChanels;
begin
  //������� ������� �� ������ ��������� �������

end;


procedure SaveUnreadNews;
begin
//��������� �� ������ ���� �������� �
//��������� ��������� ������� � � ���� ���� ��� �� ���� ���������
end;


function UnRead(Date, Caption: String):Boolean;
begin
  //  ��������� ������� ������ �� ������ �� ���������� ��������

end;

                *)
end.
