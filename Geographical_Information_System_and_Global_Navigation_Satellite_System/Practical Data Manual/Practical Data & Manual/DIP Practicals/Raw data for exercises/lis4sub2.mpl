[Ilwis]
Description=MapListApplic(lis4sub,MapSubMap(##,350,1,2000,2000))
Time=1188298684
Version=3.1
Class=Dependent Map List
Type=MapList
[MapList]
GeoRef=lis4g.grf
Size=2000 2000
Maps=3
BandPreFix=
Offset=0
Type=MapListVirtual
Map0=lis4sub2_1.mpr
Map1=lis4sub2_2.mpr
Map2=lis4sub2_3.mpr
[MultiBandStat]
VarCov_Size=0
Correlation_Size=0
Mean_Size=1 1
Mean_Row0=0.000000    
StandardDev_Size=1 1
StandardDev_Row0=0.000000    
[IlwisObjectVirtual]
Expression=MapListApplic(lis4sub,MapSubMap(##,350,1,2000,2000))
DefOnlyPossible=No
[ObjectDependency]
NrDepObjects=0
[MapListVirtual]
Type=MapListApplic
[MapListApplic]
MapList=lis4sub.mpl
ApplicationExpression=MapSubMap(##,350,1,2000,2000)
