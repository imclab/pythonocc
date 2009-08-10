/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module BRepPrimAPI

%include BRepPrimAPI_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include BRepPrimAPI_dependencies.i


%include BRepPrimAPI_headers.i




%nodefaultctor BRepPrimAPI_MakeOneAxis;
class BRepPrimAPI_MakeOneAxis : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Address OneAxis();
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Face & Face();
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell();
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid();

};
%extend BRepPrimAPI_MakeOneAxis {
	~BRepPrimAPI_MakeOneAxis() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeOneAxis\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeTorus;
class BRepPrimAPI_MakeTorus : public BRepPrimAPI_MakeOneAxis {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const Standard_Real R1, const Standard_Real R2, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const Standard_Real R1, const Standard_Real R2, const Standard_Real angle1, const Standard_Real angle2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const Standard_Real R1, const Standard_Real R2, const Standard_Real angle1, const Standard_Real angle2, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2, const Standard_Real angle1, const Standard_Real angle2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeTorus(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2, const Standard_Real angle1, const Standard_Real angle2, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrim_Torus & Torus();

};
%extend BRepPrimAPI_MakeTorus {
	~BRepPrimAPI_MakeTorus() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeTorus\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeRevolution;
class BRepPrimAPI_MakeRevolution : public BRepPrimAPI_MakeOneAxis {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve &Meridian);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve &Meridian, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve &Meridian, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const Handle_Geom_Curve &Meridian, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const gp_Ax2 &Axes, const Handle_Geom_Curve &Meridian);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const gp_Ax2 &Axes, const Handle_Geom_Curve &Meridian, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const gp_Ax2 &Axes, const Handle_Geom_Curve &Meridian, const Standard_Real VMin, const Standard_Real VMax);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevolution(const gp_Ax2 &Axes, const Handle_Geom_Curve &Meridian, const Standard_Real VMin, const Standard_Real VMax, const Standard_Real angle);
		%feature("autodoc", "1");
		virtual		Standard_Address OneAxis();
		%feature("autodoc", "1");
		BRepPrim_Revolution & Revolution();

};
%extend BRepPrimAPI_MakeRevolution {
	~BRepPrimAPI_MakeRevolution() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeRevolution\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeSweep;
class BRepPrimAPI_MakeSweep : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		virtual		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape LastShape();

};
%extend BRepPrimAPI_MakeSweep {
	~BRepPrimAPI_MakeSweep() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeSweep\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeWedge;
class BRepPrimAPI_MakeWedge : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeWedge(const Standard_Real dx, const Standard_Real dy, const Standard_Real dz, const Standard_Real ltx);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeWedge(const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz, const Standard_Real ltx);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeWedge(const Standard_Real dx, const Standard_Real dy, const Standard_Real dz, const Standard_Real xmin, const Standard_Real zmin, const Standard_Real xmax, const Standard_Real zmax);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeWedge(const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz, const Standard_Real xmin, const Standard_Real zmin, const Standard_Real xmax, const Standard_Real zmax);
		%feature("autodoc", "1");
		BRepPrim_Wedge & Wedge();
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell();
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid();

};
%extend BRepPrimAPI_MakeWedge {
	~BRepPrimAPI_MakeWedge() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeWedge\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeCylinder;
class BRepPrimAPI_MakeCylinder : public BRepPrimAPI_MakeOneAxis {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCylinder(const Standard_Real R, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCylinder(const Standard_Real R, const Standard_Real H, const Standard_Real Angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCylinder(const gp_Ax2 &Axes, const Standard_Real R, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCylinder(const gp_Ax2 &Axes, const Standard_Real R, const Standard_Real H, const Standard_Real Angle);
		%feature("autodoc", "1");
		virtual		Standard_Address OneAxis();
		%feature("autodoc", "1");
		BRepPrim_Cylinder & Cylinder();

};
%extend BRepPrimAPI_MakeCylinder {
	~BRepPrimAPI_MakeCylinder() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeCylinder\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeCone;
class BRepPrimAPI_MakeCone : public BRepPrimAPI_MakeOneAxis {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCone(const Standard_Real R1, const Standard_Real R2, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCone(const Standard_Real R1, const Standard_Real R2, const Standard_Real H, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCone(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2, const Standard_Real H);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeCone(const gp_Ax2 &Axes, const Standard_Real R1, const Standard_Real R2, const Standard_Real H, const Standard_Real angle);
		%feature("autodoc", "1");
		virtual		Standard_Address OneAxis();
		%feature("autodoc", "1");
		BRepPrim_Cone & Cone();

};
%extend BRepPrimAPI_MakeCone {
	~BRepPrimAPI_MakeCone() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeCone\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeHalfSpace;
class BRepPrimAPI_MakeHalfSpace : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeHalfSpace(const TopoDS_Face &Face, const gp_Pnt &RefPnt);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeHalfSpace(const TopoDS_Shell &Shell, const gp_Pnt &RefPnt);
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid() const;

};
%extend BRepPrimAPI_MakeHalfSpace {
	~BRepPrimAPI_MakeHalfSpace() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeHalfSpace\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeBox;
class BRepPrimAPI_MakeBox : public BRepBuilderAPI_MakeShape {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeBox(const Standard_Real dx, const Standard_Real dy, const Standard_Real dz);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeBox(const gp_Pnt &P, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeBox(const gp_Pnt &P1, const gp_Pnt &P2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeBox(const gp_Ax2 &Axes, const Standard_Real dx, const Standard_Real dy, const Standard_Real dz);
		%feature("autodoc", "1");
		BRepPrim_Wedge & Wedge();
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell();
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid();
		%feature("autodoc", "1");
		const TopoDS_Face & BottomFace();
		%feature("autodoc", "1");
		const TopoDS_Face & BackFace();
		%feature("autodoc", "1");
		const TopoDS_Face & FrontFace();
		%feature("autodoc", "1");
		const TopoDS_Face & LeftFace();
		%feature("autodoc", "1");
		const TopoDS_Face & RightFace();
		%feature("autodoc", "1");
		const TopoDS_Face & TopFace();

};
%extend BRepPrimAPI_MakeBox {
	~BRepPrimAPI_MakeBox() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeBox\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeSphere;
class BRepPrimAPI_MakeSphere : public BRepPrimAPI_MakeOneAxis {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const Standard_Real R);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const Standard_Real R, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const Standard_Real R, const Standard_Real angle1, const Standard_Real angle2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const Standard_Real R, const Standard_Real angle1, const Standard_Real angle2, const Standard_Real angle3);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Pnt &Center, const Standard_Real R);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Pnt &Center, const Standard_Real R, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Pnt &Center, const Standard_Real R, const Standard_Real angle1, const Standard_Real angle2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Pnt &Center, const Standard_Real R, const Standard_Real angle1, const Standard_Real angle2, const Standard_Real angle3);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Ax2 &Axis, const Standard_Real R);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Ax2 &Axis, const Standard_Real R, const Standard_Real angle);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Ax2 &Axis, const Standard_Real R, const Standard_Real angle1, const Standard_Real angle2);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeSphere(const gp_Ax2 &Axis, const Standard_Real R, const Standard_Real angle1, const Standard_Real angle2, const Standard_Real angle3);
		%feature("autodoc", "1");
		virtual		Standard_Address OneAxis();
		%feature("autodoc", "1");
		BRepPrim_Sphere & Sphere();

};
%extend BRepPrimAPI_MakeSphere {
	~BRepPrimAPI_MakeSphere() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeSphere\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakeRevol;
class BRepPrimAPI_MakeRevol : public BRepPrimAPI_MakeSweep {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevol(const TopoDS_Shape &S, const gp_Ax1 &A, const Standard_Real D, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		BRepPrimAPI_MakeRevol(const TopoDS_Shape &S, const gp_Ax1 &A, const Standard_Boolean Copy=0);
		%feature("autodoc", "1");
		const BRepSweep_Revol & Revol() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		TopoDS_Shape LastShape(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		Standard_Boolean HasDegenerated() const;
		%feature("autodoc", "1");
		const TopTools_ListOfShape & Degenerated() const;

};
%extend BRepPrimAPI_MakeRevol {
	~BRepPrimAPI_MakeRevol() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakeRevol\n");}
	}
};


%nodefaultctor BRepPrimAPI_MakePrism;
class BRepPrimAPI_MakePrism : public BRepPrimAPI_MakeSweep {
	public:
		%feature("autodoc", "1");
		BRepPrimAPI_MakePrism(const TopoDS_Shape &S, const gp_Vec &V, const Standard_Boolean Copy=0, const Standard_Boolean Canonize=1);
		%feature("autodoc", "1");
		BRepPrimAPI_MakePrism(const TopoDS_Shape &S, const gp_Dir &D, const Standard_Boolean Inf=1, const Standard_Boolean Copy=0, const Standard_Boolean Canonize=1);
		%feature("autodoc", "1");
		const BRepSweep_Prism & Prism() const;
		%feature("autodoc", "1");
		virtual		void Build();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape FirstShape();
		%feature("autodoc", "1");
		virtual		TopoDS_Shape LastShape();
		%feature("autodoc", "1");
		virtual		const TopTools_ListOfShape & Generated(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shape FirstShape(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		TopoDS_Shape LastShape(const TopoDS_Shape &theShape);

};
%extend BRepPrimAPI_MakePrism {
	~BRepPrimAPI_MakePrism() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of BRepPrimAPI_MakePrism\n");}
	}
};