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
%module ShapeCustom

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


%include ShapeCustom_dependencies.i


%include ShapeCustom_headers.i




%nodefaultctor Handle_ShapeCustom_DirectModification;
class Handle_ShapeCustom_DirectModification : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_DirectModification();
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification();
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification(const Handle_ShapeCustom_DirectModification &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification(const ShapeCustom_DirectModification *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_DirectModification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_DirectModification {
	ShapeCustom_DirectModification* GetObject() {
	return (ShapeCustom_DirectModification*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeCustom_SweptToElementary;
class Handle_ShapeCustom_SweptToElementary : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_SweptToElementary();
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary();
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary(const Handle_ShapeCustom_SweptToElementary &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary(const ShapeCustom_SweptToElementary *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_SweptToElementary const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_SweptToElementary {
	ShapeCustom_SweptToElementary* GetObject() {
	return (ShapeCustom_SweptToElementary*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeCustom_BSplineRestriction;
class Handle_ShapeCustom_BSplineRestriction : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_BSplineRestriction();
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction();
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction(const Handle_ShapeCustom_BSplineRestriction &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction(const ShapeCustom_BSplineRestriction *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_BSplineRestriction const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_BSplineRestriction {
	ShapeCustom_BSplineRestriction* GetObject() {
	return (ShapeCustom_BSplineRestriction*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeCustom_ConvertToRevolution;
class Handle_ShapeCustom_ConvertToRevolution : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_ConvertToRevolution();
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution();
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution(const Handle_ShapeCustom_ConvertToRevolution &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution(const ShapeCustom_ConvertToRevolution *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToRevolution const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_ConvertToRevolution {
	ShapeCustom_ConvertToRevolution* GetObject() {
	return (ShapeCustom_ConvertToRevolution*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeCustom_RestrictionParameters;
class Handle_ShapeCustom_RestrictionParameters : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_RestrictionParameters();
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters();
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters(const Handle_ShapeCustom_RestrictionParameters &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters(const ShapeCustom_RestrictionParameters *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_RestrictionParameters {
	ShapeCustom_RestrictionParameters* GetObject() {
	return (ShapeCustom_RestrictionParameters*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeCustom_ConvertToBSpline;
class Handle_ShapeCustom_ConvertToBSpline : public Handle_BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_ConvertToBSpline();
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline();
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline(const Handle_ShapeCustom_ConvertToBSpline &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline(const ShapeCustom_ConvertToBSpline *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_ConvertToBSpline const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_ConvertToBSpline {
	ShapeCustom_ConvertToBSpline* GetObject() {
	return (ShapeCustom_ConvertToBSpline*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeCustom_TrsfModification;
class Handle_ShapeCustom_TrsfModification : public Handle_BRepTools_TrsfModification {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeCustom_TrsfModification();
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification();
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification(const Handle_ShapeCustom_TrsfModification &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification(const ShapeCustom_TrsfModification *anItem);
		%feature("autodoc", "1");
		Handle_ShapeCustom_TrsfModification const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeCustom_TrsfModification {
	ShapeCustom_TrsfModification* GetObject() {
	return (ShapeCustom_TrsfModification*)$self->Access();
	}
};

%nodefaultctor ShapeCustom_ConvertToBSpline;
class ShapeCustom_ConvertToBSpline : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_ConvertToBSpline();
		%feature("autodoc", "1");
		void SetExtrusionMode(const Standard_Boolean extrMode);
		%feature("autodoc", "1");
		void SetRevolutionMode(const Standard_Boolean revolMode);
		%feature("autodoc", "1");
		void SetOffsetMode(const Standard_Boolean offsetMode);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_ConvertToBSpline();

};
%extend ShapeCustom_ConvertToBSpline {
	Handle_ShapeCustom_ConvertToBSpline GetHandle() {
	return *(Handle_ShapeCustom_ConvertToBSpline*) &$self;
	}
};

%nodefaultctor ShapeCustom_Curve2d;
class ShapeCustom_Curve2d {
	public:
		%feature("autodoc", "1");
		~ShapeCustom_Curve2d();
		%feature("autodoc", "1");
		ShapeCustom_Curve2d();
		%feature("autodoc", "1");
		Standard_Boolean IsLinear(const TColgp_Array1OfPnt2d &thePoles, const Standard_Real theTolerance, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Handle_Geom2d_Line ConvertToLine2d(const Handle_Geom2d_Curve &theCurve, const Standard_Real theFirstIn, const Standard_Real theLastIn, const Standard_Real theTolerance, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean SimplifyBSpline2d(Handle_Geom2d_BSplineCurve & theBSpline2d, const Standard_Real theTolerance);

};

%nodefaultctor ShapeCustom_RestrictionParameters;
class ShapeCustom_RestrictionParameters : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeCustom_RestrictionParameters();
		%feature("autodoc", "1");
		Standard_Integer & GMaxDegree();
		%feature("autodoc", "1");
		Standard_Integer & GMaxSeg();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertPlane();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertBezierSurf();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertRevolutionSurf();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertExtrusionSurf();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertOffsetSurf();
		%feature("autodoc", "1");
		Standard_Boolean & SegmentSurfaceMode();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertCurve3d();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertOffsetCurv3d();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertCurve2d();
		%feature("autodoc", "1");
		Standard_Boolean & ConvertOffsetCurv2d();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_RestrictionParameters();

};
%extend ShapeCustom_RestrictionParameters {
	Handle_ShapeCustom_RestrictionParameters GetHandle() {
	return *(Handle_ShapeCustom_RestrictionParameters*) &$self;
	}
};

%nodefaultctor ShapeCustom_Curve;
class ShapeCustom_Curve {
	public:
		%feature("autodoc", "1");
		~ShapeCustom_Curve();
		%feature("autodoc", "1");
		ShapeCustom_Curve();
		%feature("autodoc", "1");
		ShapeCustom_Curve(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Curve &C);
		%feature("autodoc", "1");
		Handle_Geom_Curve ConvertToPeriodic(const Standard_Boolean substitute, const Standard_Real preci=-0x000000001);

};

%nodefaultctor ShapeCustom_SweptToElementary;
class ShapeCustom_SweptToElementary : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_SweptToElementary();
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_SweptToElementary();

};
%extend ShapeCustom_SweptToElementary {
	Handle_ShapeCustom_SweptToElementary GetHandle() {
	return *(Handle_ShapeCustom_SweptToElementary*) &$self;
	}
};

%nodefaultctor ShapeCustom_ConvertToRevolution;
class ShapeCustom_ConvertToRevolution : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_ConvertToRevolution();
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_ConvertToRevolution();

};
%extend ShapeCustom_ConvertToRevolution {
	Handle_ShapeCustom_ConvertToRevolution GetHandle() {
	return *(Handle_ShapeCustom_ConvertToRevolution*) &$self;
	}
};

%nodefaultctor ShapeCustom_TrsfModification;
class ShapeCustom_TrsfModification : public BRepTools_TrsfModification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_TrsfModification(const gp_Trsf &T);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_TrsfModification();

};
%extend ShapeCustom_TrsfModification {
	Handle_ShapeCustom_TrsfModification GetHandle() {
	return *(Handle_ShapeCustom_TrsfModification*) &$self;
	}
};

%nodefaultctor ShapeCustom_BSplineRestriction;
class ShapeCustom_BSplineRestriction : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_BSplineRestriction();
		%feature("autodoc", "1");
		ShapeCustom_BSplineRestriction(const Standard_Boolean anApproxSurfaceFlag, const Standard_Boolean anApproxCurve3dFlag, const Standard_Boolean anApproxCurve2dFlag, const Standard_Real aTol3d, const Standard_Real aTol2d, const GeomAbs_Shape aContinuity3d, const GeomAbs_Shape aContinuity2d, const Standard_Integer aMaxDegree, const Standard_Integer aNbMaxSeg, const Standard_Boolean Degree, const Standard_Boolean Rational);
		%feature("autodoc", "1");
		ShapeCustom_BSplineRestriction(const Standard_Boolean anApproxSurfaceFlag, const Standard_Boolean anApproxCurve3dFlag, const Standard_Boolean anApproxCurve2dFlag, const Standard_Real aTol3d, const Standard_Real aTol2d, const GeomAbs_Shape aContinuity3d, const GeomAbs_Shape aContinuity2d, const Standard_Integer aMaxDegree, const Standard_Integer aNbMaxSeg, const Standard_Boolean Degree, const Standard_Boolean Rational, const Handle_ShapeCustom_RestrictionParameters &aModes);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean ConvertSurface(const Handle_Geom_Surface &aSurface, Handle_Geom_Surface & S, const Standard_Real UF, const Standard_Real UL, const Standard_Real VF, const Standard_Real VL, const Standard_Boolean IsOf=1);
		%feature("autodoc", "1");
		Standard_Boolean ConvertCurve(Handle_Geom_Curve & aCurve, Handle_Geom_Curve & C, const Standard_Boolean IsConvert, const Standard_Real First, const Standard_Real Last, Standard_Real &OutValue, const Standard_Boolean IsOf=1);
		%feature("autodoc", "1");
		Standard_Boolean ConvertCurve2d(Handle_Geom2d_Curve & aCurve, Handle_Geom2d_Curve & C, const Standard_Boolean IsConvert, const Standard_Real First, const Standard_Real Last, Standard_Real &OutValue, const Standard_Boolean IsOf=1);
		%feature("autodoc", "1");
		void SetTol3d(const Standard_Real Tol3d);
		%feature("autodoc", "1");
		void SetTol2d(const Standard_Real Tol2d);
		%feature("autodoc", "1");
		Standard_Boolean & ModifyApproxSurfaceFlag();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyApproxCurve3dFlag();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyApproxCurve2dFlag();
		%feature("autodoc", "1");
		void SetContinuity3d(const GeomAbs_Shape Continuity3d);
		%feature("autodoc", "1");
		void SetContinuity2d(const GeomAbs_Shape Continuity2d);
		%feature("autodoc", "1");
		void SetMaxDegree(const Standard_Integer MaxDegree);
		%feature("autodoc", "1");
		void SetMaxNbSegments(const Standard_Integer MaxNbSegments);
		%feature("autodoc", "1");
		void SetPriority(const Standard_Boolean Degree);
		%feature("autodoc", "1");
		void SetConvRational(const Standard_Boolean Rational);
		%feature("autodoc", "1");
		Handle_ShapeCustom_RestrictionParameters GetRestrictionParameters() const;
		%feature("autodoc", "1");
		void SetRestrictionParameters(const Handle_ShapeCustom_RestrictionParameters &aModes);
		%feature("autodoc", "1");
		Standard_Real Curve3dError() const;
		%feature("autodoc", "1");
		Standard_Real Curve2dError() const;
		%feature("autodoc", "1");
		Standard_Real SurfaceError() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		Standard_Real MaxErrors(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NbOfSpan() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_BSplineRestriction();

};
%extend ShapeCustom_BSplineRestriction {
	Handle_ShapeCustom_BSplineRestriction GetHandle() {
	return *(Handle_ShapeCustom_BSplineRestriction*) &$self;
	}
};

%nodefaultctor ShapeCustom_Surface;
class ShapeCustom_Surface {
	public:
		%feature("autodoc", "1");
		~ShapeCustom_Surface();
		%feature("autodoc", "1");
		ShapeCustom_Surface();
		%feature("autodoc", "1");
		ShapeCustom_Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		Standard_Real Gap() const;
		%feature("autodoc", "1");
		Handle_Geom_Surface ConvertToAnalytical(const Standard_Real tol, const Standard_Boolean substitute);
		%feature("autodoc", "1");
		Handle_Geom_Surface ConvertToPeriodic(const Standard_Boolean substitute, const Standard_Real preci=-0x000000001);

};

%nodefaultctor ShapeCustom;
class ShapeCustom {
	public:
		%feature("autodoc", "1");
		~ShapeCustom();
		%feature("autodoc", "1");
		ShapeCustom();
		%feature("autodoc", "1");
		TopoDS_Shape ApplyModifier(const TopoDS_Shape &S, const Handle_BRepTools_Modification &M, TopTools_DataMapOfShapeShape & context, BRepTools_Modifier & MD);
		%feature("autodoc", "1");
		TopoDS_Shape DirectFaces(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape ScaleShape(const TopoDS_Shape &S, const Standard_Real scale);

};

%nodefaultctor ShapeCustom_DirectModification;
class ShapeCustom_DirectModification : public BRepTools_Modification {
	public:
		%feature("autodoc", "1");
		ShapeCustom_DirectModification();
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewSurface(const TopoDS_Face &F, Handle_Geom_Surface & S, TopLoc_Location & L, Standard_Real &OutValue, Standard_Boolean & RevWires, Standard_Boolean & RevFace);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve(const TopoDS_Edge &E, Handle_Geom_Curve & C, TopLoc_Location & L, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewPoint(const TopoDS_Vertex &V, gp_Pnt & P, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewCurve2d(const TopoDS_Edge &E, const TopoDS_Face &F, const TopoDS_Edge &NewE, const TopoDS_Face &NewF, Handle_Geom2d_Curve & C, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		Standard_Boolean NewParameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		virtual		GeomAbs_Shape Continuity(const TopoDS_Edge &E, const TopoDS_Face &F1, const TopoDS_Face &F2, const TopoDS_Edge &NewE, const TopoDS_Face &NewF1, const TopoDS_Face &NewF2);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeCustom_DirectModification();

};
%extend ShapeCustom_DirectModification {
	Handle_ShapeCustom_DirectModification GetHandle() {
	return *(Handle_ShapeCustom_DirectModification*) &$self;
	}
};