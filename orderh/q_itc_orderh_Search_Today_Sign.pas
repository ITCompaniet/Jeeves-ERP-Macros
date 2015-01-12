function q_itc_orderh_Search_Today_Sign: boolean;
begin
  If(SearchMode(0)) Then
  Begin
    oh.OrdDatum := Today;
    oh.RowCreatedBy := sy2.PersSign;
    MarkField('oh','orddatum');
    MarkField('oh','rowcreatedby');
    MenuCommand(905);
  End
  Else
  Begin
    Message('Formuläret är ej i sökläge!');
  End;
End;                                                  