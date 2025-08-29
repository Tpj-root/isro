[Ilwis]
Description=MapListApplic(lis4sub2,MapResample(##,lis4_geo,nearest))
Time=1251269794
Version=3.1
Class=Dependent Map List
Type=MapList
[MapList]
GeoRef=lis4_geo.grf
Size=2010 2285
Maps=3
BandPreFix=
Offset=0
Type=MapListVirtual
Map0=LIS4_geo_1.mpr
Map1=LIS4_geo_2.mpr
Map2=LIS4_geo_3.mpr
[MultiBandStat]
VarCov_Size=0
Correlation_Size=0
Mean_Size=1 1
Mean_Row0=0.000000  
StandardDev_Size=1 1
StandardDev_Row0=0.000000  
[IlwisObjectVirtual]
Expression=MapListApplic(lis4sub2,MapResample(##,lis4_geo,nearest))
DefOnlyPossible=No
[ObjectDependency]
NrDepObjects=0
[MapListVirtual]
Domain=Image.dom
DomainInfo=Image.dom;Byte;image;0;;
ValueRange=0:255:offset=0
Type=MapListApplic
[MapListApplic]
MapList=lis4sub2.mpl
ApplicationExpression=MapResample(##,lis4_geo,nearest)
