/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module DsgPrs

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include DsgPrs_dependencies.i


%include DsgPrs_headers.i


enum DsgPrs_ArrowSide {
	DsgPrs_AS_NONE,
	DsgPrs_AS_FIRSTAR,
	DsgPrs_AS_LASTAR,
	DsgPrs_AS_BOTHAR,
	DsgPrs_AS_FIRSTPT,
	DsgPrs_AS_LASTPT,
	DsgPrs_AS_BOTHPT,
	DsgPrs_AS_FIRSTAR_LASTPT,
	DsgPrs_AS_FIRSTPT_LASTAR,
	};



%nodefaultctor DsgPrs_SymbPresentation;
class DsgPrs_SymbPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_SymbPresentation();
		%feature("autodoc", "1");
		DsgPrs_SymbPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &OffsetPoint);

};

%nodefaultctor DsgPrs_FilletRadiusPresentation;
class DsgPrs_FilletRadiusPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_FilletRadiusPresentation();
		%feature("autodoc", "1");
		DsgPrs_FilletRadiusPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real thevalue, const TCollection_ExtendedString &aText, const gp_Pnt &aPosition, const gp_Dir &aNormalDir, const gp_Pnt &aBasePnt, const gp_Pnt &aFirstPoint, const gp_Pnt &aSecondPoint, const gp_Pnt &aCenter, const DsgPrs_ArrowSide ArrowPrs, const Standard_Boolean drawRevers, gp_Pnt & DrawPosition, gp_Pnt & EndOfArrow, Handle_Geom_TrimmedCurve & TrimCurve, Standard_Boolean & HasCircle);

};

%nodefaultctor DsgPrs_MidPointPresentation;
class DsgPrs_MidPointPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_MidPointPresentation();
		%feature("autodoc", "1");
		DsgPrs_MidPointPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Ax2 &theAxe, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Ax2 &theAxe, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Circ &aCircle, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Elips &anElips, const gp_Pnt &MidPoint, const gp_Pnt &Position, const gp_Pnt &AttachPoint, const gp_Pnt &Point1, const gp_Pnt &Point2, const Standard_Boolean first);

};

%nodefaultctor DsgPrs_ShapeDirPresentation;
class DsgPrs_ShapeDirPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_ShapeDirPresentation();
		%feature("autodoc", "1");
		DsgPrs_ShapeDirPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &prs, const Handle_Prs3d_Drawer &aDrawer, const TopoDS_Shape &shape, const Standard_Integer mode);

};

%nodefaultctor DsgPrs_ShadedPlanePresentation;
class DsgPrs_ShadedPlanePresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_ShadedPlanePresentation();
		%feature("autodoc", "1");
		DsgPrs_ShadedPlanePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPt1, const gp_Pnt &aPt2, const gp_Pnt &aPt3);

};

%nodefaultctor DsgPrs_LengthPresentation;
class DsgPrs_LengthPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_LengthPresentation();
		%feature("autodoc", "1");
		DsgPrs_LengthPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Pln &PlaneOfFaces, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const Handle_Geom_Surface &SecondSurf, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &Pt1, const gp_Pnt &Pt2, const DsgPrs_ArrowSide ArrowSide);

};

%nodefaultctor DsgPrs_RadiusPresentation;
class DsgPrs_RadiusPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_RadiusPresentation();
		%feature("autodoc", "1");
		DsgPrs_RadiusPresentation();

};

%nodefaultctor DsgPrs_EqualDistancePresentation;
class DsgPrs_EqualDistancePresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_EqualDistancePresentation();
		%feature("autodoc", "1");
		DsgPrs_EqualDistancePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &Point1, const gp_Pnt &Point2, const gp_Pnt &Point3, const gp_Pnt &Point4, const Handle_Geom_Plane &Plane);
		%feature("autodoc", "1");
		void AddInterval(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPoint1, const gp_Pnt &aPoint2, const gp_Dir &aDir, const gp_Pnt &aPosition, const DsgPrs_ArrowSide anArrowSide, gp_Pnt & anExtremePnt1, gp_Pnt & anExtremePnt2);
		%feature("autodoc", "1");
		void AddIntervalBetweenTwoArcs(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Circ &aCircle1, const gp_Circ &aCircle2, const gp_Pnt &aPoint1, const gp_Pnt &aPoint2, const gp_Pnt &aPoint3, const gp_Pnt &aPoint4, const DsgPrs_ArrowSide anArrowSide);

};

%nodefaultctor DsgPrs_XYZPlanePresentation;
class DsgPrs_XYZPlanePresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_XYZPlanePresentation();
		%feature("autodoc", "1");
		DsgPrs_XYZPlanePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPt1, const gp_Pnt &aPt2, const gp_Pnt &aPt3);

};

%nodefaultctor DsgPrs_IdenticPresentation;
class DsgPrs_IdenticPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_IdenticPresentation();
		%feature("autodoc", "1");
		DsgPrs_IdenticPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &aPntAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Ax2 &aAx2, const gp_Pnt &aCenter, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Ax2 &aAx2, const gp_Pnt &aCenter, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset, const gp_Pnt &aPntOnCirc);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Elips &anEllipse, const gp_Pnt &aFAttach, const gp_Pnt &aSAttach, const gp_Pnt &aPntOffset, const gp_Pnt &aPntOnElli);

};

%nodefaultctor DsgPrs_DiameterPresentation;
class DsgPrs_DiameterPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_DiameterPresentation();
		%feature("autodoc", "1");
		DsgPrs_DiameterPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Circ &aCircle, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean IsDiamSymbol);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Circ &aCircle, const Standard_Real uFirst, const Standard_Real uLast, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean IsDiamSymbol);

};

%nodefaultctor DsgPrs_FixPresentation;
class DsgPrs_FixPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_FixPresentation();
		%feature("autodoc", "1");
		DsgPrs_FixPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const gp_Dir &aNormPln, const Standard_Real aSymbSize);

};

%nodefaultctor DsgPrs_EllipseRadiusPresentation;
class DsgPrs_EllipseRadiusPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_EllipseRadiusPresentation();
		%feature("autodoc", "1");
		DsgPrs_EllipseRadiusPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const gp_Elips &anEllipse, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Real uFirst, const Standard_Boolean IsInDomain, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &aText, const Handle_Geom_OffsetCurve &aCurve, const gp_Pnt &AttachmentPoint, const gp_Pnt &anEndOfArrow, const gp_Pnt &aCenter, const Standard_Real uFirst, const Standard_Boolean IsInDomain, const Standard_Boolean IsMaxRadius, const DsgPrs_ArrowSide ArrowSide);

};

%nodefaultctor DsgPrs_DatumPrs;
class DsgPrs_DatumPrs : public Prs3d_Root {
	public:
		%feature("autodoc", "1");
		~DsgPrs_DatumPrs();
		%feature("autodoc", "1");
		DsgPrs_DatumPrs();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const gp_Ax2 &aDatum, const Handle_Prs3d_Drawer &aDrawer);

};

%nodefaultctor DsgPrs_AnglePresentation;
class DsgPrs_AnglePresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_AnglePresentation();
		%feature("autodoc", "1");
		DsgPrs_AnglePresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real aVal, const TCollection_ExtendedString &aText, const gp_Circ &aCircle, const gp_Pnt &aPosition, const gp_Pnt &Apex, const gp_Circ &VminCircle, const gp_Circ &VmaxCircle, const Standard_Real aArrowSize);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const TCollection_ExtendedString &thevalstring, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const Standard_Boolean isPlane, const gp_Ax1 &AxisOfSurf, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const Standard_Real theval, const gp_Pnt &theCenter, const gp_Pnt &AttachmentPoint1, const gp_Ax1 &theAxe, const DsgPrs_ArrowSide ArrowSide);

};

%nodefaultctor DsgPrs_TangentPresentation;
class DsgPrs_TangentPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_TangentPresentation();
		%feature("autodoc", "1");
		DsgPrs_TangentPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &OffsetPoint, const gp_Dir &aDirection, const Standard_Real aLength);

};

%nodefaultctor DsgPrs_DatumTool;
class DsgPrs_DatumTool {
	public:
		%feature("autodoc", "1");
		~DsgPrs_DatumTool();
		%feature("autodoc", "1");
		DsgPrs_DatumTool();
		%feature("autodoc", "1");
		gp_Ax2 Ax2(const gp_Ax2 &aDatum);

};

%nodefaultctor DsgPrs_Chamf2dPresentation;
class DsgPrs_Chamf2dPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_Chamf2dPresentation();
		%feature("autodoc", "1");
		DsgPrs_Chamf2dPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const TCollection_ExtendedString &aText);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aPntAttach, const gp_Pnt &aPntEnd, const TCollection_ExtendedString &aText, const DsgPrs_ArrowSide ArrowSide);

};

%nodefaultctor DsgPrs_ParalPresentation;
class DsgPrs_ParalPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_ParalPresentation();
		%feature("autodoc", "1");
		DsgPrs_ParalPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Pnt &OffsetPoint, const DsgPrs_ArrowSide ArrowSide);

};

%nodefaultctor DsgPrs_EqualRadiusPresentation;
class DsgPrs_EqualRadiusPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_EqualRadiusPresentation();
		%feature("autodoc", "1");
		DsgPrs_EqualRadiusPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &FirstCenter, const gp_Pnt &SecondCenter, const gp_Pnt &FirstPoint, const gp_Pnt &SecondPoint, const Handle_Geom_Plane &Plane);

};

%nodefaultctor DsgPrs_OffsetPresentation;
class DsgPrs_OffsetPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_OffsetPresentation();
		%feature("autodoc", "1");
		DsgPrs_OffsetPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Dir &aDirection2, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void AddAxes(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const TCollection_ExtendedString &aText, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection, const gp_Dir &aDirection2, const gp_Pnt &OffsetPoint);

};

%nodefaultctor DsgPrs_PerpenPresentation;
class DsgPrs_PerpenPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_PerpenPresentation();
		%feature("autodoc", "1");
		DsgPrs_PerpenPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &pAx1, const gp_Pnt &pAx2, const gp_Pnt &pnt1, const gp_Pnt &pnt2, const gp_Pnt &OffsetPoint, const Standard_Boolean intOut1, const Standard_Boolean intOut2);

};

%nodefaultctor DsgPrs;
class DsgPrs {
	public:
		%feature("autodoc", "1");
		~DsgPrs();
		%feature("autodoc", "1");
		DsgPrs();
		%feature("autodoc", "1");
		void ComputeSymbol(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_AngleAspect &anAspect, const gp_Pnt &pt1, const gp_Pnt &pt2, const gp_Dir &dir1, const gp_Dir &dir2, const DsgPrs_ArrowSide ArrowSide);
		%feature("autodoc", "1");
		void ComputeSymbol(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LengthAspect &anAspect, const gp_Pnt &pt1, const gp_Pnt &pt2, const gp_Dir &dir1, const gp_Dir &dir2, const DsgPrs_ArrowSide ArrowSide, const Standard_Boolean drawFromCenter=1);
		%feature("autodoc", "1");
		void ComputePlanarFacesLengthPresentation(const Standard_Real FirstArrowLength, const Standard_Real SecondArrowLength, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &DirAttach, const gp_Pnt &OffsetPoint, const gp_Pln &PlaneOfFaces, gp_Pnt & EndOfArrow1, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1);
		%feature("autodoc", "1");
		void ComputeCurvilinearFacesLengthPresentation(const Standard_Real FirstArrowLength, const Standard_Real SecondArrowLength, const Handle_Geom_Surface &SecondSurf, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &DirAttach, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1, Handle_Geom_Curve & VCurve, Handle_Geom_Curve & UCurve, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void ComputeFacesAnglePresentation(const Standard_Real ArrowLength, const Standard_Real Value, const gp_Pnt &CenterPoint, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &dir1, const gp_Dir &dir2, const gp_Dir &axisdir, const Standard_Boolean isPlane, const gp_Ax1 &AxisOfSurf, const gp_Pnt &OffsetPoint, gp_Circ & AngleCirc, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & EndOfArrow1, gp_Pnt & EndOfArrow2, gp_Dir & DirOfArrow1, gp_Dir & DirOfArrow2, gp_Pnt & ProjAttachPoint2, gp_Circ & AttachCirc, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void ComputeRadiusLine(const gp_Pnt &aCenter, const gp_Pnt &anEndOfArrow, const gp_Pnt &aPosition, const Standard_Boolean drawFromCenter, gp_Pnt & aRadLineOrign, gp_Pnt & aRadLineEnd);
		%feature("autodoc", "1");
		void ComputeFilletRadiusPresentation(const Standard_Real ArrowLength, const Standard_Real Value, const gp_Pnt &Position, const gp_Dir &NormalDir, const gp_Pnt &FirstPoint, const gp_Pnt &SecondPoint, const gp_Pnt &Center, const gp_Pnt &BasePnt, const Standard_Boolean drawRevers, Standard_Boolean & SpecCase, gp_Circ & FilletCirc, Standard_Real &OutValue, Standard_Real &OutValue, gp_Pnt & EndOfArrow, gp_Dir & DirOfArrow, gp_Pnt & DrawPosition);
		%feature("autodoc", "1");
		Standard_Real DistanceFromApex(const gp_Elips &elips, const gp_Pnt &Apex, const Standard_Real par);

};

%nodefaultctor DsgPrs_XYZAxisPresentation;
class DsgPrs_XYZAxisPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_XYZAxisPresentation();
		%feature("autodoc", "1");
		DsgPrs_XYZAxisPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LineAspect &anLineAspect, const gp_Dir &aDir, const Standard_Real aVal, const char * aText, const gp_Pnt &aPfirst, const gp_Pnt &aPlast);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_LineAspect &aLineAspect, const Handle_Prs3d_ArrowAspect &anArrowAspect, const Handle_Prs3d_TextAspect &aTextAspect, const gp_Dir &aDir, const Standard_Real aVal, const char * aText, const gp_Pnt &aPfirst, const gp_Pnt &aPlast);

};

%nodefaultctor DsgPrs_ConcentricPresentation;
class DsgPrs_ConcentricPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_ConcentricPresentation();
		%feature("autodoc", "1");
		DsgPrs_ConcentricPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &aCenter, const Standard_Real aRadius, const gp_Dir &aNorm, const gp_Pnt &aPoint);

};

%nodefaultctor DsgPrs_SymmetricPresentation;
class DsgPrs_SymmetricPresentation {
	public:
		%feature("autodoc", "1");
		~DsgPrs_SymmetricPresentation();
		%feature("autodoc", "1");
		DsgPrs_SymmetricPresentation();
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Dir &aDirection1, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Circ &aCircle1, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);
		%feature("autodoc", "1");
		void Add(const Handle_Prs3d_Presentation &aPresentation, const Handle_Prs3d_Drawer &aDrawer, const gp_Pnt &AttachmentPoint1, const gp_Pnt &AttachmentPoint2, const gp_Lin &aAxis, const gp_Pnt &OffsetPoint);

};