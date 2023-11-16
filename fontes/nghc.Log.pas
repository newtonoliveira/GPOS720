unit nghc.log;

interface

uses
  System.SysUtils,
  System.Classes,
  Androidapi.Log;

type
  TLog = class
  public
    class procedure I(AMsg: string);
    class procedure W(AMsg: string);
    class procedure E(AMsg: string);
  end;

implementation

{ TLog }

class procedure TLog.E(AMsg: string);
var
  M: TMarshaller;
begin
  AMsg := 'TEF->'+AMsg;
  LOGE(M.AsUtf8(AMsg).ToPointer);
end;

class procedure TLog.I(AMsg: string);
var
  M: TMarshaller;
begin
  AMsg := 'TEF->'+AMsg;
  LOGI(M.AsUtf8(AMsg).ToPointer);
end;

class procedure TLog.W(AMsg: string);
var
  M: TMarshaller;
begin
  AMsg := 'TEF->'+AMsg;
  LOGW(M.AsUtf8(AMsg).ToPointer);
end;

end.
