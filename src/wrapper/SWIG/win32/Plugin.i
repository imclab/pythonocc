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
%module Plugin

%include Plugin_renames.i
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include Plugin_dependencies.i


%include Plugin_headers.i




%nodefaultctor Handle_Plugin_DataMapNodeOfMapOfFunctions;
class Handle_Plugin_DataMapNodeOfMapOfFunctions : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions();
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions(const Handle_Plugin_DataMapNodeOfMapOfFunctions &aHandle);
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions(const Plugin_DataMapNodeOfMapOfFunctions *anItem);
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions & operator=(const Handle_Plugin_DataMapNodeOfMapOfFunctions &aHandle);
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions & operator=(const Plugin_DataMapNodeOfMapOfFunctions *anItem);
		%feature("autodoc", "1");
		Handle_Plugin_DataMapNodeOfMapOfFunctions const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plugin_DataMapNodeOfMapOfFunctions {
	Plugin_DataMapNodeOfMapOfFunctions* GetObject() {
	return (Plugin_DataMapNodeOfMapOfFunctions*)$self->Access();
	}
};
%extend Handle_Plugin_DataMapNodeOfMapOfFunctions {
	~Handle_Plugin_DataMapNodeOfMapOfFunctions() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Plugin_DataMapNodeOfMapOfFunctions\n");}
	}
};


%nodefaultctor Handle_Plugin_Failure;
class Handle_Plugin_Failure : public Handle_Standard_Failure {
	public:
		%feature("autodoc", "1");
		Handle_Plugin_Failure();
		%feature("autodoc", "1");
		Handle_Plugin_Failure(const Handle_Plugin_Failure &aHandle);
		%feature("autodoc", "1");
		Handle_Plugin_Failure(const Plugin_Failure *anItem);
		%feature("autodoc", "1");
		Handle_Plugin_Failure & operator=(const Handle_Plugin_Failure &aHandle);
		%feature("autodoc", "1");
		Handle_Plugin_Failure & operator=(const Plugin_Failure *anItem);
		%feature("autodoc", "1");
		Handle_Plugin_Failure const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Plugin_Failure {
	Plugin_Failure* GetObject() {
	return (Plugin_Failure*)$self->Access();
	}
};
%extend Handle_Plugin_Failure {
	~Handle_Plugin_Failure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_Plugin_Failure\n");}
	}
};


%nodefaultctor Plugin_DataMapIteratorOfMapOfFunctions;
class Plugin_DataMapIteratorOfMapOfFunctions : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		Plugin_DataMapIteratorOfMapOfFunctions();
		%feature("autodoc", "1");
		Plugin_DataMapIteratorOfMapOfFunctions(const Plugin_MapOfFunctions &aMap);
		%feature("autodoc", "1");
		void Initialize(const Plugin_MapOfFunctions &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;

};
%extend Plugin_DataMapIteratorOfMapOfFunctions {
	~Plugin_DataMapIteratorOfMapOfFunctions() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Plugin_DataMapIteratorOfMapOfFunctions\n");}
	}
};


%nodefaultctor Plugin_DataMapNodeOfMapOfFunctions;
class Plugin_DataMapNodeOfMapOfFunctions : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Plugin_DataMapNodeOfMapOfFunctions(const TCollection_AsciiString &K, const OSD_Function &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Plugin_DataMapNodeOfMapOfFunctions {
	Handle_Plugin_DataMapNodeOfMapOfFunctions GetHandle() {
	return *(Handle_Plugin_DataMapNodeOfMapOfFunctions*) &$self;
	}
};
%extend Plugin_DataMapNodeOfMapOfFunctions {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Plugin_DataMapNodeOfMapOfFunctions {
	~Plugin_DataMapNodeOfMapOfFunctions() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Plugin_DataMapNodeOfMapOfFunctions\n");}
	}
};


%nodefaultctor Plugin_Failure;
class Plugin_Failure : public Standard_Failure {
	public:
		%feature("autodoc", "1");
		Plugin_Failure();
		%feature("autodoc", "1");
		Plugin_Failure(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_Plugin_Failure NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend Plugin_Failure {
	Handle_Plugin_Failure GetHandle() {
	return *(Handle_Plugin_Failure*) &$self;
	}
};
%extend Plugin_Failure {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend Plugin_Failure {
	~Plugin_Failure() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Plugin_Failure\n");}
	}
};


%nodefaultctor Plugin_MapOfFunctions;
class Plugin_MapOfFunctions : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		Plugin_MapOfFunctions(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		Plugin_MapOfFunctions & Assign(const Plugin_MapOfFunctions &Other);
		%feature("autodoc", "1");
		Plugin_MapOfFunctions & operator=(const Plugin_MapOfFunctions &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TCollection_AsciiString &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TCollection_AsciiString &K);

};
%extend Plugin_MapOfFunctions {
	~Plugin_MapOfFunctions() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Plugin_MapOfFunctions\n");}
	}
};


%nodefaultctor Plugin;
class Plugin {
	public:
		%feature("autodoc", "1");
		Plugin();
		%feature("autodoc", "1");
		Handle_Standard_Transient Load(const Standard_GUID &aGUID);

};
%extend Plugin {
	~Plugin() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Plugin\n");}
	}
};