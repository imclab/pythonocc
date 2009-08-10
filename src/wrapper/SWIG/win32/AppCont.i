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
%module AppCont

%include AppCont_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include AppCont_dependencies.i


%include AppCont_headers.i




%nodefaultctor AppCont_FitFunction;
class AppCont_FitFunction {
	public:
		%feature("autodoc", "1");
		AppCont_FitFunction(const AppCont_Function &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc","Error()->[Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend AppCont_FitFunction {
	~AppCont_FitFunction() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FitFunction\n");}
	}
};


%nodefaultctor AppCont_FunctionTool2d;
class AppCont_FunctionTool2d {
	public:
		%feature("autodoc", "1");
		AppCont_FunctionTool2d();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppCont_Function2d &C);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec2d & tabV);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function2d &C, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};
%extend AppCont_FunctionTool2d {
	~AppCont_FunctionTool2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FunctionTool2d\n");}
	}
};


%nodefaultctor AppCont_Function;
class AppCont_Function {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real U, gp_Pnt & P, gp_Vec & V) const;

};
%extend AppCont_Function {
	~AppCont_Function() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_Function\n");}
	}
};


%nodefaultctor AppCont_Function2d;
class AppCont_Function2d {
	public:
		%feature("autodoc", "1");
		virtual		void Delete();
		%feature("autodoc", "1");
		virtual		Standard_Real FirstParameter() const;
		%feature("autodoc", "1");
		virtual		Standard_Real LastParameter() const;
		%feature("autodoc", "1");
		virtual		gp_Pnt2d Value(const Standard_Real U) const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean D1(const Standard_Real U, gp_Pnt2d & P, gp_Vec2d & V) const;

};
%extend AppCont_Function2d {
	~AppCont_Function2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_Function2d\n");}
	}
};


%nodefaultctor AppCont_FunctionTool;
class AppCont_FunctionTool {
	public:
		%feature("autodoc", "1");
		AppCont_FunctionTool();
		%feature("autodoc", "1");
		Standard_Real FirstParameter(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Real LastParameter(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Integer NbP2d(const AppCont_Function &C);
		%feature("autodoc", "1");
		Standard_Integer NbP3d(const AppCont_Function &C);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec & tabV);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		void Value(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfPnt & tabPt, TColgp_Array1OfPnt2d & tabPt2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec2d & tabV2d);
		%feature("autodoc", "1");
		Standard_Boolean D1(const AppCont_Function &C, const Standard_Real U, TColgp_Array1OfVec & tabV, TColgp_Array1OfVec2d & tabV2d);

};
%extend AppCont_FunctionTool {
	~AppCont_FunctionTool() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FunctionTool\n");}
	}
};


%nodefaultctor AppCont_FitFunction2d;
class AppCont_FitFunction2d {
	public:
		%feature("autodoc", "1");
		AppCont_FitFunction2d(const AppCont_Function2d &SSP, const Standard_Real U0, const Standard_Real U1, const AppParCurves_Constraint FirstCons, const AppParCurves_Constraint LastCons, const Standard_Integer Deg, const Standard_Integer NbPoints=24);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		const AppParCurves_MultiCurve & Value();
		%feature("autodoc","Error()->[Standard_Real, Standard_Real, Standard_Real]");
		void Error(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;

};
%extend AppCont_FitFunction2d {
	~AppCont_FitFunction2d() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of AppCont_FitFunction2d\n");}
	}
};