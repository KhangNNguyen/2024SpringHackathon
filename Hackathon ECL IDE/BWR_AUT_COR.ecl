IMPORT $.File_AllData, $.STATEDATA;

CTSTATE := STATEDATA.CT_ST;
AUT := File_AllData.ChildAutismDS;

JOIN (CTSTATE, AUT, LEFT.MissingState = RIGHT.State);
TEMP := JOIN (CTSTATE, AUT, LEFT.missingstate = RIGHT.State);

OUTPUT(CTSTATE);

CORRELATION (TEMP, cnt , autismrate);