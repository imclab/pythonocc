// HXX wrapper generated by pythonOCC generate_code.py script.
#ifndef __AIS_wrapper__
#define __AIS_wrapper__

#include "/Library/OCE/0.14/include/oce/AIS.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_AngleDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_AttributeFilter.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Axis.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_BadEdgeFilter.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_C0RegularityFilter.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Chamf2dDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Chamf3dDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Circle.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ClearMode.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ConcentricRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ConnectStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ConnectedInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ConnectedShape.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapIteratorOfDataMapOfILC.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapIteratorOfDataMapOfIOStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapIteratorOfDataMapOfSelStat.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapIteratorOfDataMapofIntegerListOfinteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapNodeOfDataMapOfILC.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapNodeOfDataMapOfIOStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapNodeOfDataMapOfSelStat.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapNodeOfDataMapofIntegerListOfinteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapOfILC.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapOfIOStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapOfSelStat.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DataMapofIntegerListOfinteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DiameterDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DimensionOwner.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DisplayMode.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_DisplayStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Drawer.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_EllipseRadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_EqualDistanceRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_EqualRadiusRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ExclusionFilter.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_FixRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_GlobalStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_GraphicTool.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_IdenticRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_IndexedDataMapOfOwnerPrs.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_InteractiveContext.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_InteractiveObject.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_KindOfDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_KindOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_KindOfSurface.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_KindOfUnit.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_LengthDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Line.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ListIteratorOfListOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ListNodeOfListOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ListOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_LocalContext.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_LocalStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MapIteratorOfMapOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MapOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MaxRadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MidPointRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MinRadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MultipleConnectedInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_MultipleConnectedShape.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_NDataMapOfTransientIteratorOfListTransient.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_NListIteratorOfListTransient.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_NListTransient.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_OffsetDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_PToContext.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_ParallelRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_PerpendicularRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Plane.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_PlaneTrihedron.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Point.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_RadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Relation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SelectStatus.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Selection.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SequenceNodeOfSequenceOfDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SequenceNodeOfSequenceOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SequenceOfDimension.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SequenceOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Shape.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SignatureFilter.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_StandardDatum.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_StatusOfDetection.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_StatusOfPick.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_StdMapNodeOfMapOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_SymmetricRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TangentRelation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TexturedShape.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Triangulation.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_Trihedron.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TypeFilter.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TypeOfAttribute.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TypeOfAxis.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TypeOfDist.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TypeOfIso.hxx"
#include "/Library/OCE/0.14/include/oce/AIS_TypeOfPlane.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_AngleDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_AttributeFilter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Axis.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_BadEdgeFilter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_C0RegularityFilter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Chamf2dDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Chamf3dDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Circle.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_ConcentricRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_ConnectedInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_ConnectedShape.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_DataMapNodeOfDataMapOfILC.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_DataMapNodeOfDataMapOfIOStatus.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_DataMapNodeOfDataMapOfSelStat.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_DataMapNodeOfDataMapofIntegerListOfinteractive.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_DiameterDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_DimensionOwner.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Drawer.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_EllipseRadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_EqualDistanceRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_EqualRadiusRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_ExclusionFilter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_FixRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_GlobalStatus.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_IdenticRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_IndexedDataMapNodeOfIndexedDataMapOfOwnerPrs.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_InteractiveContext.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_InteractiveObject.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_LengthDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Line.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_ListNodeOfListOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_LocalContext.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_LocalStatus.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_MaxRadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_MidPointRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_MinRadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_MultipleConnectedInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_MultipleConnectedShape.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_OffsetDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_ParallelRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_PerpendicularRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Plane.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_PlaneTrihedron.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Point.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_RadiusDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Relation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Selection.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_SequenceNodeOfSequenceOfDimension.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_SequenceNodeOfSequenceOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Shape.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_SignatureFilter.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_StdMapNodeOfMapOfInteractive.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_SymmetricRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_TangentRelation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_TexturedShape.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Triangulation.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_Trihedron.hxx"
#include "/Library/OCE/0.14/include/oce/Handle_AIS_TypeFilter.hxx"

#endif __AIS_wrapper__