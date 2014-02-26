/*

Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%{

// Headers necessary to define wrapped classes.

#include<DsgPrs.hxx>
#include<DsgPrs_AnglePresentation.hxx>
#include<DsgPrs_ArrowSide.hxx>
#include<DsgPrs_Chamf2dPresentation.hxx>
#include<DsgPrs_ConcentricPresentation.hxx>
#include<DsgPrs_DatumPrs.hxx>
#include<DsgPrs_DatumTool.hxx>
#include<DsgPrs_DiameterPresentation.hxx>
#include<DsgPrs_EllipseRadiusPresentation.hxx>
#include<DsgPrs_EqualDistancePresentation.hxx>
#include<DsgPrs_EqualRadiusPresentation.hxx>
#include<DsgPrs_FilletRadiusPresentation.hxx>
#include<DsgPrs_FixPresentation.hxx>
#include<DsgPrs_IdenticPresentation.hxx>
#include<DsgPrs_LengthPresentation.hxx>
#include<DsgPrs_MidPointPresentation.hxx>
#include<DsgPrs_OffsetPresentation.hxx>
#include<DsgPrs_ParalPresentation.hxx>
#include<DsgPrs_PerpenPresentation.hxx>
#include<DsgPrs_RadiusPresentation.hxx>
#include<DsgPrs_ShadedPlanePresentation.hxx>
#include<DsgPrs_ShapeDirPresentation.hxx>
#include<DsgPrs_SymbPresentation.hxx>
#include<DsgPrs_SymmetricPresentation.hxx>
#include<DsgPrs_TangentPresentation.hxx>
#include<DsgPrs_XYZAxisPresentation.hxx>
#include<DsgPrs_XYZPlanePresentation.hxx>

// Additional headers necessary for compilation.

#include<Image.hxx>
#include<Image_AlienPixMap.hxx>
#include<Image_AveragePixelInterpolation.hxx>
#include<Image_BalancedPixelInterpolation.hxx>
#include<Image_BilinearPixelInterpolation.hxx>
#include<Image_Color.hxx>
#include<Image_ColorImage.hxx>
#include<Image_ColorPixelDataMap.hxx>
#include<Image_ColorPixelMapHasher.hxx>
#include<Image_Convertor.hxx>
#include<Image_DColorImage.hxx>
#include<Image_DIndexedImage.hxx>
#include<Image_DataMapIteratorOfColorPixelDataMap.hxx>
#include<Image_DataMapIteratorOfLookupTable.hxx>
#include<Image_DataMapNodeOfColorPixelDataMap.hxx>
#include<Image_DataMapNodeOfLookupTable.hxx>
#include<Image_Diff.hxx>
#include<Image_DitheringMethod.hxx>
#include<Image_FlipType.hxx>
#include<Image_Image.hxx>
#include<Image_IndexPixelMapHasher.hxx>
#include<Image_LookupTable.hxx>
#include<Image_PixMap.hxx>
#include<Image_PixMapData.hxx>
#include<Image_PixMap_Handle.hxx>
#include<Image_PixelAddress.hxx>
#include<Image_PixelFieldOfDColorImage.hxx>
#include<Image_PixelInterpolation.hxx>
#include<Image_PixelRowOfDColorImage.hxx>
#include<Image_PixelRowOfDIndexedImage.hxx>
#include<Image_PlanarPixelInterpolation.hxx>
#include<Image_PseudoColorImage.hxx>
#include<Image_TypeOfImage.hxx>

// Needed headers necessary for compilation.

#include<Handle_Prs3d_Presentation.hxx>
#include<Handle_Prs3d_Drawer.hxx>
#include<gp_Pnt.hxx>
#include<TCollection_ExtendedString.hxx>
#include<gp_Dir.hxx>
#include<Handle_Geom_TrimmedCurve.hxx>
#include<gp_Ax2.hxx>
#include<gp_Circ.hxx>
#include<gp_Elips.hxx>
#include<TopoDS_Shape.hxx>
#include<DsgPrs.hxx>
#include<Handle_Prs3d_AngleAspect.hxx>
#include<Handle_Prs3d_LengthAspect.hxx>
#include<gp_Pln.hxx>
#include<Handle_Geom_Surface.hxx>
#include<Handle_Geom_Curve.hxx>
#include<gp_Ax1.hxx>
#include<Handle_Geom_Plane.hxx>
#include<Handle_Geom_OffsetCurve.hxx>
#include<gp_Lin.hxx>
#include<Handle_Prs3d_LineAspect.hxx>
#include<Handle_Prs3d_ArrowAspect.hxx>
#include<Handle_Prs3d_TextAspect.hxx>
%}