 const
   WIN32_MAX_APP_THREADS = 10;


 type
    TImageIdx = record
      ImageIndex  : integer;
      MagicString : string;
     end;


    TServerLoc = record
     Addr : string[127];
     Port : string[6];
     Sort : Integer;
    end;

   TServersLocs  = array of TServerLoc;
   TImagesIdx     = array of TImageIdx;