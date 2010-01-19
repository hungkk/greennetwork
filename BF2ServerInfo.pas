{

    BattleField 2 Server Info Library v 0.4.1

    http:// blogspot.com



}

unit BF2ServerInfo;

interface
 uses
  Windows, Messages,  SysUtils,Forms, Classes, {ExtCtrls,} DSiWin32,
  OverbyteIcsWSocket, OverbyteIcsWndControl, OverbyteIcsWSocketS, OverbyteIcsPing, OverbyteIcsIcmp;
  
{$I defs.inc}


  const
  MAXTHREADS       = 1100;
  MAX_BF2PACK_SIZE = 1400;
  SPLITNUM_SIZE    = 16;
  MMSEC            = 1000; //Миллискунды
  ERC_TIMEOUT      = -101;
  ERC_SNDFAIL      = -100;
  ERC_NONE         = 0;


  GET_BACK_FROM_GS_MAX_INTERVAL = 1000; //  1 sec
  WAIT_FOR_GS_RESPONSE          = 10000; // 10 sec




 type

  ByteArray = Array of Byte;

  TPlayerInfo = record
    Name: string[26];
    Team: string[1];
    Pid,
    Score,
    Deaths,
    Skill,
    Ping : string[20];
  end;

   TBF2PingThread = class(TThread)
   private
     FPing      :  TPing;
     FServerIP  :  String;
     FDeadID    : Integer;
     FErrorCode : Integer;
     FRTT       : Integer;

     FTimeOut   : Integer;
     FTag       : Integer;
   protected
     procedure Execute; override;
     procedure BF2PingEchoReply(Sender: TObject; Icmp: TObject; Status: Integer);
   public
     property  DeadID   : integer   read FDeadID;
     property  RTT      : Integer   read FRTT;
     property  TimeOut  : Integer   read FTimeOut write FTimeOut;

     property  Tag      : Integer   read FTag write FTag;

     constructor Create(const sAddr: string; ThID: Integer);
     destructor Destroy; override;
   end;


  TGameSpy = class
     private
       FGameSpySocket : TWSocket;
       FTimer         : TDSiTimer;
       FRcvdBytes     : ByteArray;
       FErrorCode     : Integer;

       FQueryString   : String;
       FValidateStr   : String;
       //battlefield2.ms14.gamespy.com

     protected
       procedure GameSpyWSocketSessionConnected(Sender : TObject; ErrCode : WORD);
       procedure GameSpyWSocketChangeState(Sender: TObject; OldState, NewState: TSocketState);
       procedure GameSpyWSocketDataAvailable(Sender : TObject; ErrCode : WORD);
       procedure TimerEvent(Sender : TObject);

       function GetValidateStr : string;
       function GetSendStr : String;
     public
       property  ValidateStr : String read FValidateStr;

       function GetServersList : Integer;
       procedure SaveToFile(F : String);
       constructor Create(const QueryString: string );
       destructor  Destroy; //override;

   end;



   TBF2WSockThread = class(TThread)
  private
     FBF2WSocket: TWSocket;
     FTimer     : TDSiTimer;// TTimer;
     FRcvdBytes : ByteArray;
     FDeadID    : Integer;
     FErrorCode : Integer;
     FServerIP  : String;
     FServerPort: String;
     FTimeOut   : int64;
     FBlo       : Boolean;
     FTag       : Integer;
     FRetry     : Integer;

     procedure RefreshTable;
  protected
     procedure Execute; override;
     procedure BF2WSocketDataAvailable( Sender  : TObject; ErrCode : WORD);
     procedure BF2WSocketSessionConnected( Sender  : TObject; ErrCode : WORD);
     procedure BF2WSocketChangeState(Sender: TObject; OldState,  NewState: TSocketState);
     procedure ThStop;
     
     procedure TimerEvent(Sender : TObject);
  public

     property  WSocket   : TWSocket  read FBF2WSocket;

     property  DeadID    : integer   read FDeadID;
     property  LastError: integer   read FErrorCode;
     property  RcvdBytes: ByteArray read FRcvdBytes;
     property  Timeout  : Int64     read FTimeOut write FTimeOut;
     property  RetryCount : Integer read FRetry write FRetry;

     property  ServerIP  : String  read FServerIP;
     property  QueryPort : String  read FServerPort;
     Property  Tag       : Integer read FTag;

     constructor Create(const sAddr: string; sPort: string; ThID: Integer);
     destructor  Destroy; override;
  end;


 TBF2ServerInfo = class
  private
  protected
     FParamList         : TStrings;

     FRealPlayersCount  : Integer;
     FTotalPlayersCount : Integer;

     procedure AddGVal(const Index: integer; V: AnsiString );
     procedure AddPlayerInfo(const Index, No: integer; V: AnsiString );
     function SafeStrToInt(s: string): integer;
  public
     FErrCode: integer;

     FBF2Players: array of TPlayerInfo;
     property  RealPlayersCount  : integer read FRealPlayersCount;
     property  TotalPlayersCount : Integer read FTotalPlayersCount;

     function LoadFromByteArray(const B: array of byte; PlayLoad: Boolean = True ): Integer;
     function GValue(const Index: Integer ): AnsiString;    overload;
     function GValue(const Name: AnsiString ): AnsiString;  overload;
     function GValue2(const Index: Integer ): AnsiString;

     constructor Create;                          overload;
     constructor Create(const B: array of byte; PlayLoad: Boolean = True  ); overload;
     destructor  Destroy;
 end;

// PPlayersList = ^TPlayersList;
 TPlayersList  = array[0..63] of TPlayerInfo;

 type
 TBF2ServerInfoItem = class(TCollectionItem)
 private
    Fhostname              : string;
    Fgamename              : string;
    Fgamever               : string;
    Fmapname               : string;
    Fgametype              : string;//gpm_skirmish
    Fgamevariant           : string;//pr
    Fnumplayers            : string;
    Fmaxplayers            : string;
    Fgamemode              : string;// openplaying
    Fpassword              : string;// 1 - 0
    Ftimelimit             : string;
    Froundtime             : string;
    Fhostport              : string;
    Fbf2_dedicated         : string;
    Fbf2_ranked            : string;
    Fbf2_anticheat         : string;
    Fbf2_os                : string;   //win32  //linux //linux-64
    Fbf2_autorec           : string;
    Fbf2_d_idx             : string;
    Fbf2_d_dl              : string;
    Fbf2_voip              : string;
    Fbf2_autobalanced      : string;
    Fbf2_friendlyfire      : string;
    Fbf2_tkmode            : string;
    Fbf2_startdelay        : string;
    Fbf2_spawntime         : string;
    Fbf2_sponsortext       : string;
    Fbf2_sponsorlogo_url   : string;
    Fbf2_communitylogo_url : string;
    Fbf2_scorelimit        : string;
    Fbf2_ticketratio       : string;
    Fbf2_teamratio         : string;
    Fbf2_team1             : string;
    Fbf2_team2             : string;
    Fbf2_bots              : string;
    Fbf2_pure              : string;
    Fbf2_mapsize           : string;
    Fbf2_globalunlocks     : string;
    Fbf2_fps               : string;
    Fbf2_plasma            : string;
    Fbf2_reservedslots     : string;
    Fbf2_coopbotratio      : string;
    Fbf2_coopbotcount      : string;
    Fbf2_coopbotdiff       : string;
    Fbf2_novehicles        : string;
    FBF2PlayersList        : TPlayersList;

    FServerIP              : string;
    FServerQueryPort       : string;
    FErrorCode             : Integer;


    FRealPlayersCount      : Integer;      // Only alive players
    FTotalPlayersCount     : Integer;      // Alive players and Bots

    FPing                  : Integer;
  //  function GetPlayerInfo(Index: Integer) : TPlayerInfo;

 public
    property     hostname              : string read Fhostname;
    property     gamename              : string read Fgamename;
    property     gamever               : string read Fgamever;
    property     mapname               : string read Fmapname;
    property     gametype              : string read Fgametype;//gpm_skirmish
    property     gamevariant           : string read Fgamevariant;//pr
    property     numplayers            : string read Fnumplayers;
    property     maxplayers            : string read Fmaxplayers;
    property     gamemode              : string read Fgamemode;// openplaying
    property     password              : string read Fpassword;// 1 - 0
    property     timelimit             : string read Ftimelimit;
    property     roundtime             : string read Froundtime;
    property     hostport              : string read Fhostport;
    property     bf2_dedicated         : string read Fbf2_dedicated;
    property     bf2_ranked            : string read Fbf2_ranked;
    property     bf2_anticheat         : string read Fbf2_anticheat;
    property     bf2_os                : string read Fbf2_os;   //win32  //linux //linux-64
    property     bf2_autorec           : string read Fbf2_autorec;
    property     bf2_d_idx             : string read Fbf2_d_idx;
    property     bf2_d_dl              : string read Fbf2_d_dl;
    property     bf2_voip              : string read Fbf2_voip;
    property     bf2_autobalanced      : string read Fbf2_autobalanced;
    property     bf2_friendlyfire      : string read Fbf2_friendlyfire;
    property     bf2_tkmode            : string read Fbf2_tkmode;
    property     bf2_startdelay        : string read Fbf2_startdelay;
    property     bf2_spawntime         : string read Fbf2_spawntime;
    property     bf2_sponsortext       : string read Fbf2_sponsortext;
    property     bf2_sponsorlogo_url   : string read Fbf2_sponsorlogo_url;
    property     bf2_communitylogo_url : string read Fbf2_communitylogo_url;
    property     bf2_scorelimit        : string read Fbf2_scorelimit;
    property     bf2_ticketratio       : string read Fbf2_ticketratio;
    property     bf2_teamratio         : string read Fbf2_teamratio;
    property     bf2_team1             : string read Fbf2_team1;
    property     bf2_team2             : string read Fbf2_team2;
    property     bf2_bots              : string read Fbf2_bots;
    property     bf2_pure              : string read Fbf2_pure;
    property     bf2_mapsize           : string read Fbf2_mapsize;
    property     bf2_globalunlocks     : string read Fbf2_globalunlocks;
    property     bf2_fps               : string read Fbf2_fps;
    property     bf2_plasma            : string read Fbf2_plasma;
    property     bf2_reservedslots     : string read Fbf2_reservedslots;
    property     bf2_coopbotratio      : string read Fbf2_coopbotratio;
    property     bf2_coopbotcount      : string read Fbf2_coopbotcount;
    property     bf2_coopbotdiff       : string read Fbf2_coopbotdiff;
    property     bf2_novehicles        : string read Fbf2_novehicles;

    property     BF2Player             : TPlayersList Read FBF2PlayersList;      //[Index: Integer] : TPlayers read GetPlayerInfo; default;


    property     ServerIP              : string  read FServerIP;
    property     ServerQueryPort       : string  read FServerQueryPort;

    property     ErrorCode             : Integer read FErrorCode;

    property     RealPlayersCount      : Integer read FRealPlayersCount;
    property     TotalPlayersCount     : Integer read FTotalPlayersCount;

    property     Ping                  : Integer read FPing write FPing;




 end;



// TCollectionListItemClass = class (TBF2ServerInfoItem);

 TBF2ServerSList   = class (TCollection)
 private

   function GetListItem(Index : Integer) : TBF2ServerInfoItem;
 public
   Constructor Create(ItemClass: TCollectionItemClass);
   function   AddServerInfo(const RcvdBytes: array of byte; IP, Qport: string): TBF2ServerInfoItem ;
   function   UpdateServerInfo(const RcvdBytes: array of byte; IP, Qport: string; Index: Integer): TBF2ServerInfoItem ;

   Property  AnItems[Index : Integer] : TBF2ServerInfoItem read GetListItem; default;
 end;







     Function RandomBytes(var A: ByteArray):integer;
     function AppendByteArray(var V:  ByteArray; const R: Array of Byte): Integer;




   const


  sigNames: array [0..51] of string = (
    'hostname',
    'gamename',
    'gamever',
    'mapname',
    'gametype',     //gpm_skirmish
    'gamevariant',  //pr
    'numplayers',
    'maxplayers',
    'gamemode',    // openplaying
    'password',    // 1 - 0
    'timelimit',
    'roundtime',
    'hostport',
    'bf2_dedicated',
    'bf2_ranked',
    'bf2_anticheat',
    'bf2_os',        //win32  //linux //linux-64
    'bf2_autorec',
    'bf2_d_idx',
    'bf2_d_dl',
    'bf2_voip',     // 1 - 0
    'bf2_autobalanced',
    'bf2_friendlyfire',
    'bf2_tkmode',
    'bf2_startdelay',
    'bf2_spawntime',
    'bf2_sponsortext',
    'bf2_sponsorlogo_url',
    'bf2_communitylogo_url',
    'bf2_scorelimit',
    'bf2_ticketratio',
    'bf2_teamratio',
    'bf2_team1',
    'bf2_team2',
    'bf2_bots',
    'bf2_pure',
    'bf2_mapsize',
    'bf2_globalunlocks',
    'bf2_fps',
    'bf2_plasma',
    'bf2_reservedslots',
    'bf2_coopbotratio',
    'bf2_coopbotcount',
    'bf2_coopbotdiff',
    'bf2_novehicles',

    'player_',
    'score_',
    'ping_',
    'team_',
    'deaths_',
    'pid_',
    'skill_'
      );

  var
  BF2Thread : array [0 .. MAXTHREADS -1] of TBF2WSockThread;
  BF2PingThread : array [0 .. MAXTHREADS -1] of TBF2PingThread;

implementation

uses Unit1, UnitGrid;



Function RandomBytes(var A: ByteArray):integer;
begin
   SetLength(A, 11);
   Randomize;
   A[0]:=   $FE;
   A[1]:=   $FD;
   A[2]:=   $00;
   A[3]:=   Byte(Random(254) + 1 );    // $1A;
   A[4]:=   Byte(Random(254) + 1 );    // $A9;
   A[5]:=   Byte(Random(254) + 1 );    // $5E;  
   A[6]:=   $01;
   A[7]:=   $FF;
   A[8]:=   $FF;
   A[9]:=   $FF;
   A[10]:=  $01;
end;


function AppendByteArray(var V:  ByteArray; const R: Array of Byte): Integer;
var L : Integer;
begin
  Result := Length(V);
  L := Length(R);
  if L > 0 then
    begin
      SetLength(V, Result + L);
      Move(R[0], V[Result], Sizeof(Byte) * L);
    end;
end;

{**********************************************%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{**********************************************%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
{**********************************************%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}

constructor TBF2ServerInfo.Create(const B: array of byte; PlayLoad: Boolean = True  );
begin
  Inherited Create;
     SetLength(FBF2Players, 64);
     FParamList := TStringList.Create;
     FParamList.NameValueSeparator:= '|';
     FErrCode          := 0;
     FRealPlayersCount := 0;
     FTotalPlayersCount:= 0;
     FErrCode:= LoadFromByteArray(B, PlayLoad);
end;

constructor TBF2ServerInfo.Create;
begin
  Inherited;
  SetLength(FBF2Players, 64);
  FParamList := TStringList.Create;
  FParamList.NameValueSeparator:= '|';
  FErrCode:=0;
     FRealPlayersCount := 0;
     FTotalPlayersCount:= 0;
end;

destructor  TBF2ServerInfo.Destroy;
begin
  SetLength(FBF2Players,0);
  FParamList.Free;
  inherited Destroy;
end;

function TBF2ServerInfo.SafeStrToInt(s: string): integer;
begin
  if s <> EmptyStr then
    result := StrToInt(s)
  else
    result := -1;
end;

procedure TBF2ServerInfo.AddPlayerInfo(const Index, No: integer; V: AnsiString );
begin
 {DEBUG +}
 { Form1.Memo1.Lines.Add( 'Index: ' + IntToStr(Index) + ' No: ' + IntToStr(No) + ' P: ' + V);
     } 
  case Index of
   45: begin FBF2Players[No].Name  := Trim(V); Inc(FTotalPlayersCount); end;
   46: FBF2Players[No].Score := Trim(V);
   47: FBF2Players[No].Ping  := Trim(V);
   48: FBF2Players[No].Team  := Trim(V);
   49: FBF2Players[No].Deaths:= Trim(V);
   50: FBF2Players[No].Pid   := Trim(V);
   51: FBF2Players[No].Skill := Trim(V);
  end;
     
end;

procedure TBF2ServerInfo.AddGVal(const Index: integer; V: AnsiString );
begin
   FParamList.Add(sigNames[Index] + FParamList.NameValueSeparator + V );
 {DEBUG +} // Form1.Memo1.Lines.Add( sigNames[Index] + FParamList.NameValueSeparator + V  );
end;

function TBF2ServerInfo.LoadFromByteArray(const B: array of byte; PlayLoad: Boolean = True ): Integer;
var
   i, Stage  : Integer;
   Start, BytesCompleted , TotalBytes, PlayerNo :  Integer;
   Str: AnsiString;
   Val, IST, R : Boolean;
begin
      Result:= -1;   (* $$ *)
      Start := 0;
      BytesCompleted  := 0;              //Колличество обработанных байт   BytesCompleted
      TotalBytes      := Length(B);      //Общее Колличество байт   TotalBytes
      Stage := 0;
      IST   := True;
      R     := False;


        while TotalBytes <> BytesCompleted do
        begin

            if TotalBytes > (BytesCompleted + MAX_BF2PACK_SIZE) then begin
             Start:= BytesCompleted;
             BytesCompleted := Start + MAX_BF2PACK_SIZE;
            end else
            begin
             Start:= BytesCompleted;
             BytesCompleted := TotalBytes;
            end;

            i:= Start + SPLITNUM_SIZE-1;
            Val:= False;
            Str:= EmptyStr;

            while i <> BytesCompleted-1 do
            begin

              case Stage of
               0..44: begin
                        if Val then
                        begin
                          if B[i] = $00 then
                          begin
                            AddGVal(Stage, Str);
                            Inc(Stage);
                            Str:= EmptyStr;
                            Val:=False;
                          end
                            else
                               Str:= Str + Chr(B[i]);
                        end else
                        begin
                           Str:= Str + Chr(B[i]);
                           Val:= Pos(sigNames[STAGE], Str) > 0;
                           if Val then
                           begin
                             Str:= '';
                             Inc(i,2);
                             Continue;
                           end;
                        end;


               end;
               {***************************************************************}
               45..51: begin
                        if not PlayLoad then Exit;

                        if IST then
                        begin
                          Result:= 1;  (* $$ *)
                          PlayerNo:=0;
                          IST:= False;
                          Str:= EmptyStr;
                          FRealPlayersCount:= SafeStrToInt( GValue('numplayers') );

                         // SetLength(FBF2Players, 64);

                          if (FRealPlayersCount <= 0) and ( SafeStrToInt( GValue('bf2_bots')) <= 0 ) then
                           Exit;



                        end;


                        if Val then
                        begin

                           if B[i] = $00 then
                           begin

                             if R then
                             begin
                                Inc(Stage);
                                Val:=False;


                                PlayerNo:=0;
                                Str:= EmptyStr;
                                Continue;
                             end;
                             R:=True;
                             if (i = BytesCompleted-1) and (Str <> EmptyStr) then Continue;

                             {Потенциальная защита на случай если игроков нету и ботов нету но bf2_bots = 1 }
                             if (FRealPlayersCount <= 0) and ( SafeStrToInt( GValue('bf2_bots')) = 1 ) and (Str = sigNames[46]) then Exit;

                             AddPlayerInfo(Stage, PlayerNo, Str);
                             Inc(PlayerNo);
                             Str:= EmptyStr;
                           end
                           else
                           begin
                               Str:= Str + Chr(B[i]);
                               R:= False;
                           end;

                        end else
                        begin
                           Str:= Str + Chr(B[i]);
                           Val:= Pos(sigNames[STAGE], Str) > 0;
                           if Val then
                           begin
                             Str:= EmptyStr;
                             R:= False;
                             Inc(i,3);  //whas 3
                             Continue;
                           end;
                        end;
               end;

               52 : begin
                     Result:=1;
                     Exit;
                    end;
              end;


               Inc(i);

            end;
        end;



end;

function TBF2ServerInfo.GValue(const Index: Integer ): AnsiString;
begin
  Result:= FParamList.Values[ sigNames[Index] ];
end;

function TBF2ServerInfo.GValue2(const Index: Integer ): AnsiString;
begin
  Result:= FParamList.ValueFromIndex[ Index ];
end;

function TBF2ServerInfo.GValue(const Name: AnsiString ): AnsiString;
begin
  Result:= FParamList.Values[ Name ];
end;

{******************************************************************************}
{******************************************************************************}
{******************************************************************************}
{******************************************************************************}
// BF2WSOCK
{******************************************************************************}
{******************************************************************************}
{******************************************************************************}
{******************************************************************************}

constructor TBF2PingThread.Create(const sAddr: string; ThID: Integer);
begin
 inherited Create(True);

    FDeadID           := ThID;
    FErrorCode        := ERC_NONE;
    FPing             := TPing.Create(nil);
    FPing.OnEchoReply := BF2PingEchoReply;
    FreeOnTerminate   := True;
    FServerIP         := sAddr;

end;

procedure TBF2PingThread.BF2PingEchoReply(Sender: TObject; Icmp: TObject; Status: Integer);
begin

    if Status <> 0 then
 //      { Success }
              FRTT :=  FPing.Reply.RTT
              else FRTT := 999;


       //   Form1.Memo1.Lines.Add( FPing.ErrorString + ' ' + IntToStr(   Status ) );  }

      //   FErrorCode := Status;
      //   Sleep(10);
         FPing.Free;
         Terminate;

end;

procedure TBF2PingThread.Execute;
begin


    with FPing do
    begin
      Address := FServerIP;
      Timeout := FTimeOut;
      Size    := 56;
      TTL     := 64;
    end;

    FPing.Ping;

   while not Terminated and Assigned(FPing) do FPing.ProcessMessages;

end;


destructor TBF2PingThread.Destroy;
begin
   //FPing.Free;

  inherited Destroy;
end;










 constructor TGameSpy.Create(const QueryString: string );
 begin
   inherited Create;//(True);

     FErrorCode         := ERC_NONE;
     FGameSpySocket     := TWSocket.Create(nil);

      with FGameSpySocket do
      begin
          ////battlefield2.ms14.gamespy.com
          Port  := '28910';
          Addr  := '207.38.11.181';

          OnDataAvailable      :=  GameSpyWSocketDataAvailable;
          OnSessionConnected   :=  GameSpyWSocketSessionConnected;
          OnChangeState        :=  GameSpyWSocketChangeState;

          Proto := 'tcp';
          LineMode := False;
          LineLimit := 65536;
          LineEnd := #13#10;
          LineEcho := False;
          LineEdit := False;
          Proto := 'tcp';
          LocalAddr := '0.0.0.0';
          LocalPort := '0';
          MultiThreaded := True;
          MultiCast := False;
          MultiCastIpTTL := 1;
          FlushTimeout := 60;
          SendFlags := wsSendNormal;
          LingerOnOff := wsLingerNoSet;
          LingerTimeout := 0;
          KeepAliveOnOff := wsKeepAliveOff;
          KeepAliveTime := 0;
          KeepAliveInterval := 0;
          SocksLevel := '5';
          SocksAuthentication := socksNoAuthentication;
          LastError := 0;
          ReuseAddr := False;
          ComponentOptions := [wsoSIO_RCVALL];
          ListenBacklog := 5;
          ReqVerLow := 1;
          ReqVerHigh := 1;
      end;

       FQueryString   := QueryString;
       FValidateStr   := GetValidateStr;

       SetLength(FRcvdBytes,0);
       FTimer := TDSiTimer.Create( False, WAIT_FOR_GS_RESPONSE, TimerEvent, 0  );
 end;

 destructor TGameSpy.Destroy;
 begin
   inherited Destroy;
      FreeAndNil(FTimer);
      FreeAndNil(FGameSpySocket);
 end;

 function TGameSpy.GetValidateStr : string;
 var  x, r : Integer;
 begin
   Randomize;
   for x:= 1 to 8 do
   begin
    {For Exclude xdec bug}
    R := (Random(93)+33);
    if r in [34, 47, 92] then R:= 65;

    Result:= Result + Chr( R );
   end;

 end;

 procedure TGameSpy.SaveToFile(F : String);
 var Fi: TFileStream;
 begin
   Fi := TFileStream.Create(F, fmCreate);
   try
      Fi.Write(FRcvdBytes[0], Length(FRcvdBytes) );
   finally
      Fi.Free;
   end;
 end;





 function TGameSpy.GetSendStr : string;
 var a,b,c : Integer;
 begin
    a:=  Length(#00 + #00#01#03#00#00#00#00 + 'battlefield2' + #00 + 'gslive' + #00 + FValidateStr + FQueryString + #00 + '\hostname' + #00#00#00#00#01);
    b:=  Length(Chr(a));
    c:=  Length( Chr ( a + b ) );

    Result :=  #00 + Chr( a + c) + #00#01#03#00#00#00#00 + 'battlefield2' + #00 + 'gslive' + #00 + FValidateStr + FQueryString + #00 + '\hostname' + #00#00#00#00#01;
 end;


 function TGameSpy.GetServersList : Integer;
 begin

    FGameSpySocket.Connect;

    FErrorCode:= FGameSpySocket.LastError;
    if FErrorCode <> 0 then
    begin
      Result := -1; //Connection error
      Exit;
    end;

    {Wait for connect}
    while FGameSpySocket.State in [wsOpened, wsConnecting] do
     FGameSpySocket.ProcessMessages;


    if FGameSpySocket.State = wsConnected then
    begin
      FTimer.Enabled := True;
      FGameSpySocket.SendStr( GetSendStr );

    end
    else begin
     Result := -2; //Connection Error
     Exit;
    end;

    {Wait for End}
     while FGameSpySocket.State <> wsClosed do
      FGameSpySocket.ProcessMessages;

  //   Form1.Memo1.Lines.Add('Weeeeeeeeheeeeee');
     Result:= Length(FRcvdBytes);
 end;

  procedure  TGameSpy.GameSpyWSocketDataAvailable(Sender : TObject; ErrCode : WORD);
  var   Buf     : ByteArray;
        Len     : Integer;
  begin
       SetLength(Buf, FGameSpySocket.RcvdCount );
       Len := (Sender as TWSocket).Receive(Buf, Length(Buf));
       if Len <= 0 then Exit;
       
       FTimer.Enabled  := False;
       FTimer.Interval := GET_BACK_FROM_GS_MAX_INTERVAL;
       AppendByteArray(FRcvdBytes, Buf);
       FTimer.Enabled := True;
  end;

  procedure TGameSpy.GameSpyWSocketChangeState(Sender: TObject; OldState, NewState: TSocketState);
  begin                 {
        case FGameSpySocket.state of
        wsInvalidState:    Form1.Memo1.Lines.Add('wsInvalidState ');
        wsOpened:          Form1.Memo1.Lines.Add('wsOpened ');
        wsBound:           Form1.Memo1.Lines.Add('wsBound ');
        wsConnecting:      Form1.Memo1.Lines.Add('wsConnecting ');
        wsSocksConnected:  Form1.Memo1.Lines.Add('wsSocksConnected ');
        wsConnected:       Form1.Memo1.Lines.Add('wsConnected ');
        wsAccepting:       Form1.Memo1.Lines.Add('wsAccepting ');
        wsListening:       Form1.Memo1.Lines.Add('wsListening ');
        wsClosed :         Form1.Memo1.Lines.Add('wsClosed ' );
       end              }
   //   ------------------------------------------------------------------------
  end;

  procedure TGameSpy.GameSpyWSocketSessionConnected(Sender : TObject; ErrCode : WORD);
  begin
   //   ------------------------------------------------------------------------
  end;

  procedure TGameSpy.TimerEvent(Sender : TObject);
  begin
    FTimer.Enabled := False;
    FGameSpySocket.CloseDelayed;
  end;


{*************************************************************************}
{*************************************************************************}
{*************************************************************************}
{*************************************************************************}
{*************************************************************************}
{*************************************************************************}
{*************************************************************************}


 constructor TBF2WSockThread.Create(const sAddr: string; sPort: string; ThID: Integer);
 begin
  inherited Create(True);
    FDeadID         := ThID;
    FErrorCode      := ERC_NONE;
    FBF2WSocket     := TWSocket.Create(nil);
    FreeOnTerminate := True;
    FServerIP       := sAddr;
    FServerPort     := sPort;
   // FTimeOut        := MMSEC;

      with FBF2WSocket do
      begin
        Proto := 'udp';
        Port  := FServerPort;
        Addr  := FServerIP;

        OnDataAvailable      :=  BF2WSocketDataAvailable;
        OnSessionConnected   :=  BF2WSocketSessionConnected;
        OnChangeState        :=  BF2WSocketChangeState;

        LineMode        := True;
        LineLimit       := 65536;
        LineEnd         := #0#13#10;
        LineEcho        := False;
        LineEdit        := False;
        MultiThreaded   := True;
        MultiCast       := False;
        MultiCastIpTTL  := 1;
        FlushTimeout    := 6000;
        SendFlags       := wsSendNormal;
        LingerOnOff     := wsLingerNoSet;
        LingerTimeout   := 0;
        KeepAliveOnOff  := wsKeepAliveOnCustom;
        KeepAliveTime   := 0;
        KeepAliveInterval := 0;
        SocksLevel        := '5';
        SocksAuthentication := socksNoAuthentication;
        LastError         := 0;
        ReuseAddr         := False;
        ComponentOptions  := [wsoSIO_RCVALL];
        ListenBacklog     := 5;
        ReqVerLow         := 1;
        ReqVerHigh        := 1;
      end;

    SetLength(FRcvdBytes,0);
    FTimer := TDSiTimer.Create( False, MMSEC, TimerEvent, 0  );
   // FTimer.OnTimer  := TimerEvent;
   //  FTimer.Enabled  := False;
 end;

 destructor TBF2WSockThread.Destroy;
 begin
   inherited Destroy;
   //SetLength(FRcvdBytes,0);
 end;

 procedure TBF2WSockThread.ThStop;
 begin
   FreeAndNil(FTimer);
   FreeAndNil(FBF2WSocket);
  // if WaitForSingleObject(Handle, 100) = WAIT_TIMEOUT then
   Terminate;
 end;

 procedure TBF2WSockThread.Execute;
 var  Rbytes: ByteArray;
 begin
    FTimer.Interval :=  FTimeOut;

    FBF2WSocket.Connect;

    FErrorCode:= FBF2WSocket.LastError;
    if FErrorCode <> 0 then
    begin
      ThStop;
      Exit;
    end;
                     {TEst  }
    while FBF2WSocket.State in [wsOpened, wsConnecting] do
     FBF2WSocket.ProcessMessages; 


    RandomBytes(Rbytes);
    try
     FBF2WSocket.Send( Pointer(Rbytes), 11);
    except
      FErrorCode := ERC_SNDFAIL;
      ThStop;
      Exit;
    end;
   
     FTimer.Enabled := True;

    while not Terminated and Assigned(FBF2WSocket) do
      FBF2WSocket.ProcessMessages;


 end;


 procedure  TBF2WSockThread.BF2WSocketDataAvailable(Sender : TObject; ErrCode : WORD);
 var
    Buf     : ByteArray;
    Len     : Integer;
    SLen    : Integer;
 begin
       SetLength(Buf, FBF2WSocket.RcvdCount );
       Len := (Sender as TWSocket).Receive(Buf, Length(Buf));
       if Len <= 0 then Exit;
        AppendByteArray(FRcvdBytes, Buf);
        SLen:= Length(FRcvdBytes);
      If
       (FRcvdBytes[ SLen -1]= $00)and(FRcvdBytes[ SLen -2]= $30)and(FRcvdBytes[ SLen -3]= $00)and(FRcvdBytes[ SLen -4]= $30)and
       (FRcvdBytes[ SLen -5]= $00)and(FRcvdBytes[ SLen -6]= $00)and(FRcvdBytes[ SLen -7]= $74)
      then
      begin
         (Sender as TWSocket).CloseDelayed;
         TimerEvent(Self);
       end;
 end;

 procedure TBF2WSockThread.RefreshTable;
 var A   : TBF2ServerInfoItem;
    Inx : Integer;
    tmpIP, tmpPort : string;
 begin

   // TimerEvent(Self);
   // ThStop;
  { Form1.Memo2.Lines.Add( 'OnDestroy' );

    case FBF2WSocket.state of
        wsInvalidState:    Form1.Memo2.Lines.Add('wsInvalidState '+ IntToStr(FDeadID));
        wsOpened:          Form1.Memo2.Lines.Add('wsOpened '+ IntToStr(FDeadID));
        wsBound:           Form1.Memo2.Lines.Add('wsBound '+ IntToStr(FDeadID));
        wsConnecting:      Form1.Memo2.Lines.Add('wsConnecting '+ IntToStr(FDeadID));
        wsSocksConnected:  Form1.Memo2.Lines.Add('wsSocksConnected '+ IntToStr(FDeadID));
        wsConnected:       Form1.Memo2.Lines.Add('wsConnected '+ IntToStr(FDeadID));
        wsAccepting:       Form1.Memo2.Lines.Add('wsAccepting '+ IntToStr(FDeadID));
        wsListening:       Form1.Memo2.Lines.Add('wsListening '+ IntToStr(FDeadID));
        wsClosed :         Form1.Memo2.Lines.Add('wsClosed ' + IntToStr(FDeadID));
    end
        }
 end;

 procedure TBF2WSockThread.BF2WSocketChangeState(Sender: TObject; OldState, NewState: TSocketState);
 begin
   //   ------------------------------------------------------------------------
 end;
 procedure TBF2WSockThread.BF2WSocketSessionConnected(Sender : TObject; ErrCode : WORD);
 begin
   //   ------------------------------------------------------------------------
 end;
 procedure TBF2WSockThread.TimerEvent(Sender : TObject);
 begin
   FErrorCode:= 0; //ERC_TIMEOUT;
   FTimer.Enabled := False;
   ThStop;
 end;



Constructor TBF2ServerSList.Create(ItemClass: TCollectionItemClass);
Begin
     Inherited Create(ItemClass);
End;
//------------------------------------------------------------------------------
function TBF2ServerSList.GetListItem(Index : Integer) : TBF2ServerInfoItem;
Begin
    Result:=TBF2ServerInfoItem(Items[Index]);
End;


Function TBF2ServerSList.UpdateServerInfo(const RcvdBytes: array of byte; IP, Qport: string; Index: Integer): TBF2ServerInfoItem ;
var BF2SInf : TBF2ServerInfo;   i: Integer;
begin


   try
    BF2SInf := TBF2ServerInfo.Create( RcvdBytes );



      Result  := Self.AnItems[index];//TBF2ServerInfoItem(Self.GetListItem(Index));
      Result.FErrorCode :=  BF2SInf.FErrCode;

    if BF2SInf.FErrCode  = 1  then
    begin

      with Result, BF2SInf do
      begin

        Fhostname              :=GValue(0);
        Fgamename              :=GValue(1);
        Fgamever               :=GValue(2);
        Fmapname               :=GValue(3);
        Fgametype              :=GValue(4);     //gpm_skirmish
        Fgamevariant           :=GValue(5);     //pr
        Fnumplayers            :=GValue(6);
        Fmaxplayers            :=GValue(7);
        Fgamemode              :=GValue(8);    // openplaying
        Fpassword              :=GValue(9);    // 1 - 0
        Ftimelimit             :=GValue(10);
        Froundtime             :=GValue(11);
        Fhostport              :=GValue(12);
        Fbf2_dedicated         :=GValue(13);
        Fbf2_ranked            :=GValue(14);
        Fbf2_anticheat         :=GValue(15);
        Fbf2_os                :=GValue(16);   //win32  //linux //linux-64
       Fbf2_autorec           :=GValue(17);
       Fbf2_d_idx             :=GValue(18);
       Fbf2_d_dl              :=GValue(19);
       Fbf2_voip              :=GValue(20);
       Fbf2_autobalanced      :=GValue(21);
       Fbf2_friendlyfire      :=GValue(22);
       Fbf2_tkmode            :=GValue(23);
       Fbf2_startdelay        :=GValue(24);
       Fbf2_spawntime         :=GValue(25);
       Fbf2_sponsortext       :=GValue(26);
       Fbf2_sponsorlogo_url   :=GValue(27);
       Fbf2_communitylogo_url :=GValue(28);
       Fbf2_scorelimit        :=GValue(29);
       Fbf2_ticketratio       :=GValue(30);
       Fbf2_teamratio         :=GValue(31);
       Fbf2_team1             :=GValue(32);
       Fbf2_team2             :=GValue(33);
       Fbf2_bots              :=GValue(34);
       Fbf2_pure              :=GValue(35);
       Fbf2_mapsize           :=GValue(36);
       Fbf2_globalunlocks     :=GValue(37);
       Fbf2_fps               :=GValue(38);
       Fbf2_plasma            :=GValue(39);
       Fbf2_reservedslots     :=GValue(40);
       Fbf2_coopbotratio      :=GValue(41);
       Fbf2_coopbotcount      :=GValue(42);
       Fbf2_coopbotdiff       :=GValue(43);
       Fbf2_novehicles        :=GValue(44);


       Result.FTotalPlayersCount     := BF2SInf.FTotalPlayersCount;
       Result.FRealPlayersCount      := BF2SInf.FRealPlayersCount;
       Result.FPing                  := 0;
       FServerIP                     := IP;
       FServerQueryPort              := QPort;

       if BF2SInf.FTotalPlayersCount > 0 then
       for i:=0 to FTotalPlayersCount-1 do
       FBF2PlayersList[i] := FBF2Players[i];

     end;


    end else
    begin

      Result.FErrorCode             := -1;
      Result.FServerIP              := IP;
      Result.FServerQueryPort       := QPort;
           
    end;



  finally
    BF2SInf.Destroy;
  end;


end;



Function TBF2ServerSList.AddServerInfo(const RcvdBytes: array of byte; IP, Qport: string): TBF2ServerInfoItem ;
var BF2SInf : TBF2ServerInfo;   i: Integer;
begin


  // if Length(RcvdBytes) <= 0 then Exit;
   {
   Form1.Memo1.Lines.Add('Len: ' + IntToStr(Length(RcvdBytes)) );
   BF2SInf := TBF2ServerInfo.Create( RcvdBytes );
    BF2SInf.Destroy;

   Result  := TBF2ServerInfoItem(Self.Add);

   Exit;    }

  try
    BF2SInf := TBF2ServerInfo.Create( RcvdBytes );
    Result  := TBF2ServerInfoItem(Self.Add);

    if BF2SInf.FErrCode  = 1  then
    begin

      with Result, BF2SInf do
      begin
        Fhostname              :=GValue(0);
        Fgamename              :=GValue(1);
        Fgamever               :=GValue(2);
        Fmapname               :=GValue(3);
        Fgametype              :=GValue(4);     //gpm_skirmish
        Fgamevariant           :=GValue(5);     //pr
        Fnumplayers            :=GValue(6);
        Fmaxplayers            :=GValue(7);
        Fgamemode              :=GValue(8);    // openplaying
        Fpassword              :=GValue(9);    // 1 - 0
        Ftimelimit             :=GValue(10);
        Froundtime             :=GValue(11);
        Fhostport              :=GValue(12);
        Fbf2_dedicated         :=GValue(13);
        Fbf2_ranked            :=GValue(14);
        Fbf2_anticheat         :=GValue(15);
        Fbf2_os                :=GValue(16);   //win32  //linux //linux-64
       Fbf2_autorec           :=GValue(17);
       Fbf2_d_idx             :=GValue(18);
       Fbf2_d_dl              :=GValue(19);
       Fbf2_voip              :=GValue(20);
       Fbf2_autobalanced      :=GValue(21);
       Fbf2_friendlyfire      :=GValue(22);
       Fbf2_tkmode            :=GValue(23);
       Fbf2_startdelay        :=GValue(24);
       Fbf2_spawntime         :=GValue(25);
       Fbf2_sponsortext       :=GValue(26);
       Fbf2_sponsorlogo_url   :=GValue(27);
       Fbf2_communitylogo_url :=GValue(28);
       Fbf2_scorelimit        :=GValue(29);
       Fbf2_ticketratio       :=GValue(30);
       Fbf2_teamratio         :=GValue(31);
       Fbf2_team1             :=GValue(32);
       Fbf2_team2             :=GValue(33);
       Fbf2_bots              :=GValue(34);
       Fbf2_pure              :=GValue(35);
       Fbf2_mapsize           :=GValue(36);
       Fbf2_globalunlocks     :=GValue(37);
       Fbf2_fps               :=GValue(38);
       Fbf2_plasma            :=GValue(39);
       Fbf2_reservedslots     :=GValue(40);
       Fbf2_coopbotratio      :=GValue(41);
       Fbf2_coopbotcount      :=GValue(42);
       Fbf2_coopbotdiff       :=GValue(43);
       Fbf2_novehicles        :=GValue(44);


       Result.FTotalPlayersCount     := BF2SInf.TotalPlayersCount;
       Result.FRealPlayersCount      := BF2SInf.RealPlayersCount;
       Result.FPing                  := 0;  
       FServerIP              := IP;
       FServerQueryPort       := QPort;

       if BF2SInf.FTotalPlayersCount > 0 then
       for i:=0 to FTotalPlayersCount-1 do
       FBF2PlayersList[i] := FBF2Players[i];

     end;


    end else
    begin

      Result.FErrorCode             := -1;
      Result.FServerIP              := IP;
      Result.FServerQueryPort       := QPort;
           
    end;



  finally
    BF2SInf.Destroy;
  end;


end;




end.
