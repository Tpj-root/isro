[Ilwis]
Description=MapListApplic(lis4sub,MapResample(##,lis4resgeo,nearest))
Time=1288005306
Version=3.1
Class=Dependent Map List
Type=MapList
[MapList]
GeoRef=None
Size=-2147483647 -2147483647
Maps=0
BandPreFix=
Offset=0
Type=MapListVirtual
[MultiBandStat]
VarCov_Size=0
Correlation_Size=0
Mean_Size=1 1
Mean_Row0=0.000000 
StandardDev_Size=1 1
StandardDev_Row0=0.000000 
[IlwisObjectVirtual]
Expression=MapListApplic(lis4sub,MapResample(##,lis4resgeo,nearest))
DefOnlyPossible=No
[ObjectDependency]
NrDepObjects=0
[MapListVirtual]
Domain=Image.dom
DomainInfo=Image.dom;Byte;image;0;;
ValueRange=0:255:offset=0
Type=MapListApplic
[MapListApplic]
MapList=lis4sub.mpl
ApplicationExpression=MapResample(##,lis4resgeo,nearest)
