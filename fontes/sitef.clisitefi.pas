unit sitef.CliSiTefI;

interface

uses
  Androidapi.JNI,
  Androidapi.JNI.App,
  Androidapi.JNI.Os,
  FMX.Platform.Android,
  Androidapi.JNI.Util,
  sitef.clisitef;

type

  Tdados = array of byte;

  TInformacoesPinpad = class
  strict private
    fnome_fabricante: string;
    fmodelo_versao_handware: string;
    fversao_software_basico: string;
    fversao_especificacao_compartilhada: string;
    fversao_aplicacao_basica: string;
    fnumero_serie: string;
  private
    function GetPinpad: boolean;
  public
    property nome_fabricante: string read fnome_fabricante write fnome_fabricante;
    property modelo_versao_handware: string read fmodelo_versao_handware write fmodelo_versao_handware;
    property versao_software_basico: string read fversao_software_basico write fversao_software_basico;
    property versao_especificacao_compartilhada: string read fversao_especificacao_compartilhada write fversao_especificacao_compartilhada;
    property versao_aplicacao_basica: string read fversao_aplicacao_basica write fversao_aplicacao_basica;
    property numero_serie: string read fnumero_serie write fnumero_serie;
    property localizado: boolean read GetPinpad;

  end;

  TCliSiTefI = class
    CliSiTefI: JCliSiTefI;
    constructor Create;
    procedure GeraTrace(P1: string; P2: string; P3: string); overload; // Deprecated
    procedure GeraTrace(P1: string; P2: string; P3: Integer); overload; // Deprecated
    function carregaArquivosTraducao(P1: string): Integer; overload; // Deprecated
    function carregaArquivosTraducao(P1: string; P2: string): Integer; overload; // Deprecated
    function configuraIntSiTefInterativoEx(P1: string; P2: string; P3: string; P4: string): Integer; // Deprecated
    function continuaFuncaoSiTefInterativo: Integer; overload; // Deprecated
    function continuaFuncaoSiTefInterativo(P1: string; P2: Integer): Integer; overload; // Deprecated
    function correspondenteBancarioSiTefInterativo(P1: string; P2: string; P3: string; P4: string; P5: string): Integer; // Deprecated
    function descarregaMensagens: Integer; // Deprecated
    function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: Tdados; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: string; P9: string;
      P10: string; P11: string; P12: SmallInt): Integer; // Deprecated
    function escreveMensagemPermanentePinPad(P1: string): Integer; // Deprecated
    function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: string; P5: string; P6: string; P7: string; P8: SmallInt): Integer;
    // Deprecated
    function fechaPinPad: Integer; // Deprecated
    function finalizaTransacaoSiTefInterativoEx(P1: Integer; P2: string; P3: string; P4: string; P5: string): Integer; // Deprecated
    function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: string; P3: SmallInt; P4: SmallInt): Integer; // Deprecated
    function getBuffer: string; // Deprecated
    function getCodigoResposta: SmallInt; // Deprecated
    function getCodigoServico: string; // Deprecated
    function getDadosRx: Tdados; // Deprecated
    function getDadosServico: string; // Deprecated
    function getProximoComando: Integer; // Deprecated
    function getTamanhoMaximo: SmallInt; // Deprecated
    function getTamanhoMinimo: SmallInt; // Deprecated
    function getTipoCampo: Integer; // Deprecated
    function getTipoCodigoEmBarras: Integer; // Deprecated
    function getTrilha1: string; // Deprecated
    function getTrilha2: string; // Deprecated
    function getVersaoCliSiTef: string; // Deprecated
    function getVersaoCliSiTefI: string; // Deprecated
    function getVersion: string; // Deprecated
    function iniciaFuncaoSiTefInterativo(P1: Integer; P2: string; P3: string; P4: string; P5: string; P6: string; P7: string): Integer; // Deprecated
    function interrompeLeCartaoDireto: Integer; // Deprecated
    function isDebugOn: boolean; // Deprecated
    function leCartaoDireto(P1: string): Integer; // Deprecated
    function leCartaoDiretoSeguro(P1: string): Integer; // Deprecated
    function leSenhaDireto(P1: string): Integer; // Deprecated
    function leSimNaoPinPad(P1: string): Integer; // Deprecated
    function obtemInformacoesPinPad: Integer; // Deprecated
    function obtemQuantidadeTransacoesPendentes(P1: string; P2: string): Integer; // Deprecated
    function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer; // Deprecated
    function obtemVersao: Integer; // Deprecated
    function pinpadConecta: Integer; // Deprecated
    function pinpadDesconecta: Integer; // Deprecated
    procedure setActivity(P1: JActivity); // Deprecated
    procedure setBuffer(P1: string); // Deprecated
    procedure setContinuaNavegacao(P1: Integer); // Deprecated
    procedure setDebug(P1: boolean); // Deprecated
    procedure setMessageHandler(P1: JHandler); // Deprecated
    function validaCampoCodigoEmBarras(P1: string): Integer; // Deprecated
    function verificaPresencaPinPad: Integer; // Deprecated
  protected
    destructor Destroy; reintroduce; overload;
  end;

  { exports }
function verificaPresencaPinPad: Integer;
function validaCampoCodigoEmBarras(P1: string): Integer;
procedure setMessageHandler(P1: JHandler);
procedure setDebug(P1: boolean);
procedure setContinuaNavegacao(P1: Integer);
procedure setBuffer(P1: string);
procedure setActivity(P1: JActivity);
function pinpadDesconecta: Integer;
function pinpadConecta: Integer;
function obtemVersao: Integer;
function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
function obtemQuantidadeTransacoesPendentes(P1, P2: string): Integer;
function obtemInformacoesPinPad: Integer;
function leSimNaoPinPad(P1: string): Integer;
function leSenhaDireto(P1: string): Integer;
function leCartaoDiretoSeguro(P1: string): Integer;
function leCartaoDireto(P1: string): Integer;
function isDebugOn: boolean;
function interrompeLeCartaoDireto: Integer;
function iniciaFuncaoSiTefInterativo(P1: Integer; P2, P3, P4, P5, P6, P7: string): Integer;
function getVersion: string;
function getVersaoCliSiTefI: string;
function getVersaoCliSiTef: string;
function getTrilha2: string;
function getTrilha1: string;
function getTipoCodigoEmBarras: Integer;
function getTipoCampo: Integer;
function getTamanhoMinimo: SmallInt;
function getTamanhoMaximo: SmallInt;
function getProximoComando: Integer;
function getDadosServico: string;
function getDadosRx: Tdados;
function getCodigoServico: string;
function getCodigoResposta: SmallInt;
function getBuffer: string;
procedure GeraTrace(P1, P2: string; P3: Integer); overload;
procedure GeraTrace(P1, P2, P3: string); overload;
function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: string; P3, P4: SmallInt): Integer;
function finalizaTransacaoSiTefInterativoEx(P1: Integer; P2, P3, P4, P5: string): Integer;
function fechaPinPad: Integer;
function executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4, P5, P6, P7: string; P8: SmallInt): Integer;
function escreveMensagemPermanentePinPad(P1: string): Integer;
function enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: Tdados; P5, P6, P7: SmallInt; P8, P9, P10, P11: string; P12: SmallInt): Integer;
function descarregaMensagens: Integer;
function correspondenteBancarioSiTefInterativo(P1, P2, P3, P4, P5: string): Integer;
function continuaFuncaoSiTefInterativo(P1: string; P2: Integer): Integer; overload;
function continuaFuncaoSiTefInterativo: Integer; overload;
function configuraIntSiTefInterativoEx(P1, P2, P3, P4: string): Integer;
function carregaArquivosTraducao(P1, P2: string): Integer; overload;
function carregaArquivosTraducao(P1: string): Integer; overload;

var
  CliSiTefI: TCliSiTefI;

implementation

uses
  System.Classes,
  System.SysUtils,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers;

{ TCliSiTefI }
function STJ(value: string): JString;
begin
  result := StringToJString(value);
end;

function JTS(value: JString): string;
begin
  result := JStringToString(value);
end;

function TCliSiTefI.carregaArquivosTraducao(P1: string): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(STJ(P1));
end;

function TCliSiTefI.carregaArquivosTraducao(P1, P2: string): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(STJ(P1), STJ(P2));
end;

function TCliSiTefI.configuraIntSiTefInterativoEx(P1, P2, P3, P4: string): Integer;
begin
  result := CliSiTefI.configuraIntSiTefInterativoEx(STJ(P1), STJ(P2), STJ(P3), STJ(P4));
end;

function TCliSiTefI.continuaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo;
end;

function TCliSiTefI.continuaFuncaoSiTefInterativo(P1: string; P2: Integer): Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo(STJ(P1), P2);
end;

function TCliSiTefI.correspondenteBancarioSiTefInterativo(P1, P2, P3, P4, P5: string): Integer;
begin
  result := CliSiTefI.correspondenteBancarioSiTefInterativo(STJ(P1), STJ(P2), STJ(P3), STJ(P4), STJ(P5));
end;

constructor TCliSiTefI.Create;
begin
  tthread.CreateAnonymousThread(
    procedure
    begin
      CliSiTefI := TJCliSiTefI.JavaClass.init(MainActivity);
    end).Start;
end;

function TCliSiTefI.descarregaMensagens: Integer;
begin
  result := CliSiTefI.descarregaMensagens;
end;

destructor TCliSiTefI.Destroy;
begin
  TCliSiTefI(CliSiTefI).DisposeOf;
end;

function TCliSiTefI.enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: Tdados; P5, P6, P7: SmallInt; P8, P9, P10, P11: string; P12: SmallInt): Integer;
var
  P4tmp: TJavaArray<byte>;
  i: Integer;
begin
  P4tmp := TJavaArray<byte>.Create(length(P4));
  for i := low(P4) to high(P4) do
    P4tmp.Items[i];
  result := CliSiTefI.enviaRecebeSiTefDireto(P1, P2, P3, P4tmp, P5, P6, P7, STJ(P8), STJ(P9), STJ(P10), STJ(P11), P12);
end;

function TCliSiTefI.escreveMensagemPermanentePinPad(P1: string): Integer;
begin
  result := CliSiTefI.escreveMensagemPermanentePinPad(STJ(P1));
end;

function TCliSiTefI.executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4, P5, P6, P7: string; P8: SmallInt): Integer;
begin
  result := CliSiTefI.executaEnviaRecebeSiTefDireto(P1, P2, P3, STJ(P4), STJ(P5), STJ(P6), STJ(P7), P8);
end;

function TCliSiTefI.fechaPinPad: Integer;
begin
  result := CliSiTefI.fechaPinPad;
end;

function TCliSiTefI.finalizaTransacaoSiTefInterativoEx(P1: Integer; P2, P3, P4, P5: string): Integer;
begin
  result := CliSiTefI.finalizaTransacaoSiTefInterativoEx(P1, STJ(P2), STJ(P3), STJ(P4), STJ(P5));
end;

function TCliSiTefI.forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: string; P3, P4: SmallInt): Integer;
begin
  result := CliSiTefI.forneceParametroExecutaEnviaRecebeSiTefDireto(P1, STJ(P2), P3, P4);
end;

procedure TCliSiTefI.GeraTrace(P1, P2, P3: string);
begin
  CliSiTefI.GeraTrace(STJ(P1), STJ(P2), STJ(P3));
end;

procedure TCliSiTefI.GeraTrace(P1, P2: string; P3: Integer);
begin
  CliSiTefI.GeraTrace(STJ(P1), STJ(P2), P3);
end;

function TCliSiTefI.getBuffer: string;
begin
  result := JTS(CliSiTefI.getBuffer);
end;

function TCliSiTefI.getCodigoResposta: SmallInt;
begin
  result := CliSiTefI.getCodigoResposta;
end;

function TCliSiTefI.getCodigoServico: string;
begin
  result := JTS(CliSiTefI.getCodigoServico);
end;

function TCliSiTefI.getDadosRx: Tdados;
var
  p1tmp: TJavaArray<byte>;
  i: Integer;
begin
  p1tmp := CliSiTefI.getDadosRx;
  setlength(result, p1tmp.length);
  for i := low(result) to high(result) do
    result[i] := p1tmp.Items[i];
end;

function TCliSiTefI.getDadosServico: string;
begin
  result := JTS(CliSiTefI.getDadosServico);
end;

function TCliSiTefI.getProximoComando: Integer;
begin
  result := CliSiTefI.getProximoComando;
end;

function TCliSiTefI.getTamanhoMaximo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMaximo;
end;

function TCliSiTefI.getTamanhoMinimo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMinimo;
end;

function TCliSiTefI.getTipoCampo: Integer;
begin
  result := CliSiTefI.getTipoCampo;
end;

function TCliSiTefI.getTipoCodigoEmBarras: Integer;
begin
  result := CliSiTefI.getTipoCodigoEmBarras;
end;

function TCliSiTefI.getTrilha1: string;
begin
  result := JTS(CliSiTefI.getTrilha1);
end;

function TCliSiTefI.getTrilha2: string;
begin
  result := JTS(CliSiTefI.getTrilha2);
end;

function TCliSiTefI.getVersaoCliSiTef: string;
begin
  result := JTS(CliSiTefI.getVersaoCliSiTef);
end;

function TCliSiTefI.getVersaoCliSiTefI: string;
begin
  result := JTS(CliSiTefI.getVersaoCliSiTefI);
end;

function TCliSiTefI.getVersion: string;
begin
  result := JTS(CliSiTefI.getVersion);
end;

function TCliSiTefI.iniciaFuncaoSiTefInterativo(P1: Integer; P2, P3, P4, P5, P6, P7: string): Integer;
begin
  result := CliSiTefI.iniciaFuncaoSiTefInterativo(P1, STJ(P2), STJ(P3), STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefI.interrompeLeCartaoDireto: Integer;
begin
  result := CliSiTefI.interrompeLeCartaoDireto;
end;

function TCliSiTefI.isDebugOn: boolean;
begin
  result := CliSiTefI.isDebugOn;
end;

function TCliSiTefI.leCartaoDireto(P1: string): Integer;
begin
  result := CliSiTefI.leCartaoDireto(STJ(P1));
end;

function TCliSiTefI.leCartaoDiretoSeguro(P1: string): Integer;
begin
  result := CliSiTefI.leCartaoDiretoSeguro(STJ(P1));
end;

function TCliSiTefI.leSenhaDireto(P1: string): Integer;
begin
  result := CliSiTefI.leSenhaDireto(STJ(P1));
end;

function TCliSiTefI.leSimNaoPinPad(P1: string): Integer;
begin
  result := CliSiTefI.leSimNaoPinPad(STJ(P1));
end;

function TCliSiTefI.obtemInformacoesPinPad: Integer;
begin
  result := CliSiTefI.obtemInformacoesPinPad;
end;

function TCliSiTefI.obtemQuantidadeTransacoesPendentes(P1, P2: string): Integer;
begin
  result := CliSiTefI.obtemQuantidadeTransacoesPendentes(STJ(P1), STJ(P2));
end;

function TCliSiTefI.obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
begin
  result := CliSiTefI.obtemRetornoExecutaEnviaRecebeSiTefDireto(P1);
end;

function TCliSiTefI.obtemVersao: Integer;
begin
  result := CliSiTefI.obtemVersao;
end;

function TCliSiTefI.pinpadConecta: Integer;
begin
  result := CliSiTefI.pinpadConecta;
end;

function TCliSiTefI.pinpadDesconecta: Integer;
begin
  result := CliSiTefI.pinpadDesconecta;
end;

procedure TCliSiTefI.setActivity(P1: JActivity);
begin
  CliSiTefI.setActivity(P1);
end;

procedure TCliSiTefI.setBuffer(P1: string);
begin
  CliSiTefI.setBuffer(STJ(P1));
end;

procedure TCliSiTefI.setContinuaNavegacao(P1: Integer);
begin
  CliSiTefI.setContinuaNavegacao(P1);
end;

procedure TCliSiTefI.setDebug(P1: boolean);
begin
  CliSiTefI.setDebug(P1);
end;

procedure TCliSiTefI.setMessageHandler(P1: JHandler);
begin
  CliSiTefI.setMessageHandler(P1);
end;

function TCliSiTefI.validaCampoCodigoEmBarras(P1: string): Integer;
begin
  result := CliSiTefI.validaCampoCodigoEmBarras(STJ(P1));
end;

function TCliSiTefI.verificaPresencaPinPad: Integer;
begin
  result := CliSiTefI.verificaPresencaPinPad;
end;

{ exports }
function verificaPresencaPinPad: Integer;
begin
  result := CliSiTefI.verificaPresencaPinPad;
end;

function validaCampoCodigoEmBarras(P1: string): Integer;
begin
  result := CliSiTefI.validaCampoCodigoEmBarras(P1);
end;

procedure setMessageHandler(P1: JHandler);
begin
  CliSiTefI.setMessageHandler(P1);
end;

procedure setDebug(P1: boolean);
begin
  CliSiTefI.setDebug(P1);
end;

procedure setContinuaNavegacao(P1: Integer);
begin
  CliSiTefI.setContinuaNavegacao(P1);
end;

procedure setBuffer(P1: string);
begin
  CliSiTefI.setBuffer(P1);
end;

procedure setActivity(P1: JActivity);
begin
  CliSiTefI.setActivity(P1);
end;

function pinpadDesconecta: Integer;
begin
  result := CliSiTefI.pinpadDesconecta;
end;

function pinpadConecta: Integer;
begin
  result := CliSiTefI.pinpadConecta;
end;

function obtemVersao: Integer;
begin
  result := CliSiTefI.obtemVersao;
end;

function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
begin
  result := CliSiTefI.obtemRetornoExecutaEnviaRecebeSiTefDireto(P1);
end;

function obtemQuantidadeTransacoesPendentes(P1, P2: string): Integer;
begin
  result := CliSiTefI.obtemQuantidadeTransacoesPendentes(P1, P2);
end;

function obtemInformacoesPinPad: Integer;
begin
  result := CliSiTefI.obtemInformacoesPinPad;
end;

function leSimNaoPinPad(P1: string): Integer;
begin
  result := CliSiTefI.leSimNaoPinPad(P1);
end;

function leSenhaDireto(P1: string): Integer;
begin
  result := CliSiTefI.leSenhaDireto(P1);
end;

function leCartaoDiretoSeguro(P1: string): Integer;
begin
  result := CliSiTefI.leCartaoDiretoSeguro(P1);
end;

function leCartaoDireto(P1: string): Integer;
begin
  result := CliSiTefI.leCartaoDireto(P1);
end;

function isDebugOn: boolean;
begin
  result := CliSiTefI.isDebugOn;
end;

function interrompeLeCartaoDireto: Integer;
begin
  result := CliSiTefI.interrompeLeCartaoDireto;
end;

function iniciaFuncaoSiTefInterativo(P1: Integer; P2, P3, P4, P5, P6, P7: string): Integer;
begin
  // funcao, valor, numero_operacao, data, hora,'',''
  result := CliSiTefI.iniciaFuncaoSiTefInterativo(P1, P2, P3, P4, P5, P6, P7);
end;

function getVersion: string;
begin
  result := CliSiTefI.getVersion;
end;

function getVersaoCliSiTefI: string;
begin
  result := CliSiTefI.getVersaoCliSiTefI;
end;

function getVersaoCliSiTef: string;
begin
  result := CliSiTefI.getVersaoCliSiTef;
end;

function getTrilha2: string;
begin
  result := CliSiTefI.getTrilha2;
end;

function getTrilha1: string;
begin
end;

function getTipoCodigoEmBarras: Integer;
begin
  result := CliSiTefI.getTipoCodigoEmBarras;
end;

function getTipoCampo: Integer;
begin
  result := CliSiTefI.getTipoCampo;
end;

function getTamanhoMinimo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMinimo;
end;

function getTamanhoMaximo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMaximo;
end;

function getProximoComando: Integer;
begin
  result := CliSiTefI.getProximoComando;
end;

function getDadosServico: string;
begin
  result := CliSiTefI.getDadosServico;
end;

function getDadosRx: Tdados;
begin
  result := CliSiTefI.getDadosRx;
end;

function getCodigoServico: string;
begin
  result := CliSiTefI.getCodigoServico;
end;

function getCodigoResposta: SmallInt;
begin
  result := CliSiTefI.getCodigoResposta;
end;

function getBuffer: string;
begin
  result := CliSiTefI.getBuffer;
end;

procedure GeraTrace(P1, P2: string; P3: Integer);
begin
  CliSiTefI.GeraTrace(P1, P2, P3);
end;

procedure GeraTrace(P1, P2, P3: string);
begin
  CliSiTefI.GeraTrace(P1, P2, P3);
end;

function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: string; P3, P4: SmallInt): Integer;
begin
  result := CliSiTefI.forneceParametroExecutaEnviaRecebeSiTefDireto(P1, P2, P3, P4);
end;

function finalizaTransacaoSiTefInterativoEx(P1: Integer; P2, P3, P4, P5: string): Integer;
begin
  result := CliSiTefI.finalizaTransacaoSiTefInterativoEx(P1, P2, P3, P4, P5);
end;

function fechaPinPad: Integer;
begin
  result := CliSiTefI.fechaPinPad;
end;

function executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4, P5, P6, P7: string; P8: SmallInt): Integer;
begin
  result := CliSiTefI.executaEnviaRecebeSiTefDireto(P1, P2, P3, P4, P5, P6, P7, P8);
end;

function escreveMensagemPermanentePinPad(P1: string): Integer;
begin
  result := CliSiTefI.escreveMensagemPermanentePinPad(P1);
end;

function enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: Tdados; P5, P6, P7: SmallInt; P8, P9, P10, P11: string; P12: SmallInt): Integer;
begin
  result := CliSiTefI.enviaRecebeSiTefDireto(P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, P11, P12);
end;

function descarregaMensagens: Integer;
begin
  result := CliSiTefI.descarregaMensagens;
end;

function correspondenteBancarioSiTefInterativo(P1, P2, P3, P4, P5: string): Integer;
begin
  result := CliSiTefI.correspondenteBancarioSiTefInterativo(P1, P2, P3, P4, P5);
end;

function continuaFuncaoSiTefInterativo(P1: string; P2: Integer): Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo(P1, P2);
end;

function continuaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo;
end;

function configuraIntSiTefInterativoEx(P1, P2, P3, P4: string): Integer;
begin
  result := CliSiTefI.configuraIntSiTefInterativoEx(P1, P2, P3, P4);
end;

function carregaArquivosTraducao(P1, P2: string): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(P1, P2);
end;

function carregaArquivosTraducao(P1: string): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(P1);
end;

{ TInformacoesPinpad }

function TInformacoesPinpad.GetPinpad: boolean;
var
  lResult: boolean;
  lValor, lBuffer: string;
  lobtemInformacoesPinPad, lCampo, lTamanho: Integer;
begin
  lResult := false;

  if configuraIntSiTefInterativoEx('127.0.0.1', '00000000', 'SE000001', '') = 0 then
  begin
    lobtemInformacoesPinPad := CliSiTefI.obtemInformacoesPinPad();
    lResult := (lobtemInformacoesPinPad = 0);
  end;

  if lResult then
  begin
    lResult := true;
    lBuffer := getBuffer();

    while lBuffer.length > 0 do
    begin

      lCampo := StrToInt(lBuffer.Substring(0, 2));
      lTamanho := StrToInt(lBuffer.Substring(2, 3));
      lValor := lBuffer.Substring(5, lTamanho);

      lBuffer := lBuffer.Substring(lTamanho + 5);

      case lCampo of
        1:
          fnome_fabricante := lValor;
        2:
          fmodelo_versao_handware := lValor;
        3:
          fversao_software_basico := lValor;
        4:
          fversao_especificacao_compartilhada := lValor;
        5:
          fversao_aplicacao_basica := lValor;
        6:
          fnumero_serie := lValor;
      end;
    end;
  end;

  result := lResult;

end;

initialization

CliSiTefI := TCliSiTefI.Create;

finalization

CliSiTefI.Free;

end.
