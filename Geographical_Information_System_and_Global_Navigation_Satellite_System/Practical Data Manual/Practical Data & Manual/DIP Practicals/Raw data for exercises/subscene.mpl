[Ilwis]
Description=MapListApplic(fullscene,MapSubMap(##,2000,1000,500,500))
Time=1288004328
Version=3.1
Class=Dependent Map List
Type=MapList
[MapList]
GeoRef=subscene_1.grf
Size=500 500
Maps=3
BandPreFix=
Offset=0
Type=MapListVirtual
Map0=subscene_1.mpr
Map1=subscene_2.mpr
Map2=subscene_3.mpr
[MultiBandStat]
VarCov_Size=0
Correlation_Size=0
Mean_Size=1 1
Mean_Row0=0.000000  
StandardDev_Size=1 1
StandardDev_Row0=0.000000  
[IlwisObjectVirtual]
Expression=MapListApplic(fullscene,MapSubMap(##,2000,1000,500,500))
DefOnlyPossible=No
[ObjectDependency]
NrDepObjects=0
[MapListVirtual]
Type=MapListApplic
[MapListApplic]
MapList=fullscene.mpl
ApplicationExpression=MapSubMap(##,2000,1000,500,500)
