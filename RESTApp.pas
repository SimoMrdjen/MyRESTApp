unit RESTApp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FMX.Memo.Types, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, FMX.Grid.Style, FMX.Bind.Grid, FMX.Edit,
  Data.Bind.Grid, FMX.Grid, FMX.StdCtrls, Data.Bind.Components,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, REST.Client,
  Data.Bind.ObjectScope, System.JSON;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    MemoContent: TMemo;
    LinkControlToFieldContent: TLinkControlToField;
    BindingsList1: TBindingsList;
    Panel1: TPanel;
    StringGridRESTClient1: TStringGrid;
    LinkGridToDataSourceRESTClient1: TLinkGridToDataSource;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  jValue: TJSONValue;
begin
  //RESTClient1.BaseURL := 'customers';
  RESTRequest1.Params[0].Value := Edit1.Text;
  RESTRequest1.Execute;
  jValue := RESTResponse1.JSONValue;
  MemoContent.Text := jValue.ToString;

end;

end.
