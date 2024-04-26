IMPORT $.File_AllData, $.STATEDATA;

CTSTATE := STATEDATA.CT_ST;
CRIME := File_AllData.CrimeRateDS;

JOIN (CTSTATE, CRIME, LEFT.MissingState = RIGHT.State);
TEMP := JOIN (CTSTATE, CRIME, LEFT.missingstate = RIGHT.State);

CORRELATION (TEMP, cnt , crimerate);