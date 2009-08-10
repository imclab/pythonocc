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
%module StlAPI

%include StlAPI_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include StlAPI_dependencies.i


%include StlAPI_headers.i




%nodefaultctor StlAPI;
class StlAPI {
	public:
		%feature("autodoc", "1");
		StlAPI();
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape &aShape, const char * aFile, const Standard_Boolean aAsciiMode=1);
		%feature("autodoc", "1");
		void Read(TopoDS_Shape & aShape, const char * aFile);

};
%extend StlAPI {
	~StlAPI() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlAPI\n");}
	}
};


%nodefaultctor StlAPI_Writer;
class StlAPI_Writer {
	public:
		%feature("autodoc", "1");
		StlAPI_Writer();
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real aDeflection);
		%feature("autodoc", "1");
		void SetCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		Standard_Boolean & RelativeMode();
		%feature("autodoc", "1");
		Standard_Boolean & ASCIIMode();
		%feature("autodoc", "1");
		void Write(const TopoDS_Shape &aShape, const char * aFileName);

};
%extend StlAPI_Writer {
	~StlAPI_Writer() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlAPI_Writer\n");}
	}
};


%nodefaultctor StlAPI_Reader;
class StlAPI_Reader {
	public:
		%feature("autodoc", "1");
		StlAPI_Reader();
		%feature("autodoc", "1");
		void Read(TopoDS_Shape & aShape, const char * aFileName);

};
%extend StlAPI_Reader {
	~StlAPI_Reader() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of StlAPI_Reader\n");}
	}
};