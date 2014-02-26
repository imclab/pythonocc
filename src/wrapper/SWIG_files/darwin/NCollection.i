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
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module NCollection
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include NCollection_renames.i


%include NCollection_required_python_modules.i


%include NCollection_dependencies.i


%include NCollection_headers.i

typedef NCollection_UtfString<unsigned int> NCollection_Utf32String;
typedef NCollection_UtfString<unsigned short> NCollection_Utf16String;
typedef NCollection_UtfIterator<short unsigned int> NCollection_Utf16Iter;
typedef NCollection_UtfString<char> NCollection_Utf8String;
typedef NCollection_UtfIterator<wchar_t> NCollection_UtfWideIter;
typedef NCollection_BaseCollection<double> NCollection_BaseCollReal;
typedef NCollection_UtfIterator<unsigned int> NCollection_Utf32Iter;
typedef NCollection_UtfIterator<char> NCollection_Utf8Iter;
typedef NCollection_BaseCollection<bool> NCollection_BaseCollBoolean;
typedef NCollection_BaseCollection<Handle_Standard_Transient> NCollection_BaseCollTransient;
typedef NCollection_BaseCollection<TCollection_ExtendedString> NCollection_BaseCollExtendedString;
typedef NCollection_BaseCollection<TCollection_AsciiString> NCollection_BaseCollAsciiString;
typedef NCollection_BaseCollection<int> NCollection_BaseCollInteger;
typedef NCollection_BaseCollection<char> NCollection_BaseCollCharacter;
typedef NCollection_Utf8String NCollection_String;
typedef NCollection_UtfString<wchar_t> NCollection_UtfWideString;



%nodefaultctor Handle_NCollection_BaseAllocator;
class Handle_NCollection_BaseAllocator : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_NCollection_BaseAllocator();
		%feature("autodoc", "1");
		Handle_NCollection_BaseAllocator(const Handle_NCollection_BaseAllocator &aHandle);
		%feature("autodoc", "1");
		Handle_NCollection_BaseAllocator(const NCollection_BaseAllocator *anItem);
		%feature("autodoc", "1");
		Handle_NCollection_BaseAllocator & operator=(const Handle_NCollection_BaseAllocator &aHandle);
		%feature("autodoc", "1");
		Handle_NCollection_BaseAllocator & operator=(const NCollection_BaseAllocator *anItem);
		%feature("autodoc", "1");
		static		Handle_NCollection_BaseAllocator DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NCollection_BaseAllocator {
	NCollection_BaseAllocator* GetObject() {
	return (NCollection_BaseAllocator*)$self->Access();
	}
};
%feature("shadow") Handle_NCollection_BaseAllocator::~Handle_NCollection_BaseAllocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NCollection_BaseAllocator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NCollection_IncAllocator;
class Handle_NCollection_IncAllocator : public Handle_NCollection_BaseAllocator {
	public:
		%feature("autodoc", "1");
		Handle_NCollection_IncAllocator();
		%feature("autodoc", "1");
		Handle_NCollection_IncAllocator(const Handle_NCollection_IncAllocator &aHandle);
		%feature("autodoc", "1");
		Handle_NCollection_IncAllocator(const NCollection_IncAllocator *anItem);
		%feature("autodoc", "1");
		Handle_NCollection_IncAllocator & operator=(const Handle_NCollection_IncAllocator &aHandle);
		%feature("autodoc", "1");
		Handle_NCollection_IncAllocator & operator=(const NCollection_IncAllocator *anItem);
		%feature("autodoc", "1");
		static		Handle_NCollection_IncAllocator DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NCollection_IncAllocator {
	NCollection_IncAllocator* GetObject() {
	return (NCollection_IncAllocator*)$self->Access();
	}
};
%feature("shadow") Handle_NCollection_IncAllocator::~Handle_NCollection_IncAllocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NCollection_IncAllocator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_NCollection_HeapAllocator;
class Handle_NCollection_HeapAllocator : public Handle_NCollection_BaseAllocator {
	public:
		%feature("autodoc", "1");
		Handle_NCollection_HeapAllocator();
		%feature("autodoc", "1");
		Handle_NCollection_HeapAllocator(const Handle_NCollection_HeapAllocator &aHandle);
		%feature("autodoc", "1");
		Handle_NCollection_HeapAllocator(const NCollection_HeapAllocator *anItem);
		%feature("autodoc", "1");
		Handle_NCollection_HeapAllocator & operator=(const Handle_NCollection_HeapAllocator &aHandle);
		%feature("autodoc", "1");
		Handle_NCollection_HeapAllocator & operator=(const NCollection_HeapAllocator *anItem);
		%feature("autodoc", "1");
		static		Handle_NCollection_HeapAllocator DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_NCollection_HeapAllocator {
	NCollection_HeapAllocator* GetObject() {
	return (NCollection_HeapAllocator*)$self->Access();
	}
};
%feature("shadow") Handle_NCollection_HeapAllocator::~Handle_NCollection_HeapAllocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_NCollection_HeapAllocator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_SparseArrayBase;


%nodefaultdtor NCollection_SparseArrayBase;
class NCollection_SparseArrayBase {
	public:
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Size Size() const;
		%feature("autodoc", "1");
		Standard_Boolean HasValue(const Standard_Size theIndex) const;
		%feature("autodoc", "1");
		Standard_Boolean UnsetValue(const Standard_Size theIndex);

};

%nodefaultctor NCollection_SeqNode;
class NCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		NCollection_SeqNode();
		%feature("autodoc", "1");
		const NCollection_SeqNode * Next() const;
		%feature("autodoc", "1");
		const NCollection_SeqNode * Previous() const;
		%feature("autodoc", "1");
		void SetNext(const NCollection_SeqNode *theNext);
		%feature("autodoc", "1");
		void SetPrevious(const NCollection_SeqNode *thePrev);

};
%feature("shadow") NCollection_SeqNode::~NCollection_SeqNode %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_SeqNode {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_StdAllocator<void>;
class NCollection_StdAllocator<void> {
	public:
		%feature("autodoc", "1");
		NCollection_StdAllocator();
		%feature("autodoc", "1");
		NCollection_StdAllocator(const Handle_NCollection_BaseAllocator &theAlloc);
		%feature("autodoc", "1");
		NCollection_StdAllocator(const NCollection_StdAllocator<void> &X);
		%feature("autodoc", "1");
		const Handle_NCollection_BaseAllocator & Allocator() const;

};
%feature("shadow") NCollection_StdAllocator<void>::~NCollection_StdAllocator<void> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_StdAllocator<void> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_BaseMap;
class NCollection_BaseMap {
	public:
		%feature("autodoc", "1");
		Standard_Integer NbBuckets() const;
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		%feature("autodoc", "1");
		%extend{
			std::string StatisticsToString() {
			std::stringstream s;
			self->Statistics(s);
			return s.str();}
		};

};
%feature("shadow") NCollection_BaseMap::~NCollection_BaseMap %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_BaseMap {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NCollection_BaseMap {
	NCollection_BaseMap () {}
};


%nodefaultctor NCollection_UtfString<unsigned int>;
class NCollection_UtfString<unsigned int> {
	public:
		%feature("autodoc", "1");
		NCollection_UtfIterator<unsigned int> Iterator() const;
		%feature("autodoc", "1");
		Standard_Integer Size() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Utf32Char GetChar(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		unsigned int const * GetCharBuffer(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		Standard_Utf32Char operator[](const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		NCollection_UtfString();
		%feature("autodoc", "1");
		NCollection_UtfString(NCollection_UtfString<unsigned int>theCopy);
		%feature("autodoc", "1");
		NCollection_UtfString(const char *theCopyUtf8, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf16Char *theCopyUtf16, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf32Char *theCopyUtf32, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_WideChar *theCopyUtfWide, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		void FromLocale(const char *theString, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		bool IsEqual(NCollection_UtfString<unsigned int>theCompare) const;
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned int> SubString(const Standard_Integer theStart, const Standard_Integer theEnd) const;
		%feature("autodoc", "1");
		unsigned int const * ToCString() const;
		%feature("autodoc", "1");
		NCollection_UtfString<char> const ToUtf8() const;
		%feature("autodoc", "1");
		short> NCollection_UtfString<unsigned const ToUtf16() const;
		%feature("autodoc", "1");
		int> NCollection_UtfString<unsigned const ToUtf32() const;
		%feature("autodoc", "1");
		NCollection_UtfString<wchar_t> const ToUtfWide() const;
		%feature("autodoc", "1");
		bool ToLocale(char* theBuffer, const Standard_Integer theSizeBytes) const;
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned int> const & operator=(NCollection_UtfString<unsigned int>theOther);
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned int> const & operator=(const char *theStringUtf8);
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned int> const & operator=(const Standard_WideChar *theStringUtfWide);
		%feature("autodoc", "1");
		int> NCollection_UtfString<unsigned & operator+=(NCollection_UtfString<unsigned int>theAppend);
		%extend{
			bool __eq_wrapper__(NCollection_UtfString<unsigned int>theCompare) {
				if (*self==theCompare) return true;
				else return false;
			}
		}
		%extend{
			bool __ne_wrapper__(NCollection_UtfString<unsigned int>theCompare) {
				if (*self!=theCompare) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}
		%pythoncode {
		def __ne__(self,right):
			try:
				return self.__ne_wrapper__(right)
			except:
				return True
		}

};
%feature("shadow") NCollection_UtfString<unsigned int>::~NCollection_UtfString<unsigned int> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_UtfString<unsigned int> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_UtfString<unsigned short>;
class NCollection_UtfString<unsigned short> {
	public:
		%feature("autodoc", "1");
		unsigned NCollection_UtfIterator<short int> Iterator() const;
		%feature("autodoc", "1");
		Standard_Integer Size() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Utf32Char GetChar(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		short unsigned int const * GetCharBuffer(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		Standard_Utf32Char operator[](const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		NCollection_UtfString();
		%feature("autodoc", "1");
		NCollection_UtfString(NCollection_UtfString<unsigned short>theCopy);
		%feature("autodoc", "1");
		NCollection_UtfString(const char *theCopyUtf8, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf16Char *theCopyUtf16, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf32Char *theCopyUtf32, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_WideChar *theCopyUtfWide, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		void FromLocale(const char *theString, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		bool IsEqual(NCollection_UtfString<unsigned short>theCompare) const;
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned short> SubString(const Standard_Integer theStart, const Standard_Integer theEnd) const;
		%feature("autodoc", "1");
		short unsigned int const * ToCString() const;
		%feature("autodoc", "1");
		NCollection_UtfString<char> const ToUtf8() const;
		%feature("autodoc", "1");
		short> NCollection_UtfString<unsigned const ToUtf16() const;
		%feature("autodoc", "1");
		int> NCollection_UtfString<unsigned const ToUtf32() const;
		%feature("autodoc", "1");
		NCollection_UtfString<wchar_t> const ToUtfWide() const;
		%feature("autodoc", "1");
		bool ToLocale(char* theBuffer, const Standard_Integer theSizeBytes) const;
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned short> const & operator=(NCollection_UtfString<unsigned short>theOther);
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned short> const & operator=(const char *theStringUtf8);
		%feature("autodoc", "1");
		NCollection_UtfString<unsigned short> const & operator=(const Standard_WideChar *theStringUtfWide);
		%feature("autodoc", "1");
		short> NCollection_UtfString<unsigned & operator+=(NCollection_UtfString<unsigned short>theAppend);
		%extend{
			bool __eq_wrapper__(NCollection_UtfString<unsigned short>theCompare) {
				if (*self==theCompare) return true;
				else return false;
			}
		}
		%extend{
			bool __ne_wrapper__(NCollection_UtfString<unsigned short>theCompare) {
				if (*self!=theCompare) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}
		%pythoncode {
		def __ne__(self,right):
			try:
				return self.__ne_wrapper__(right)
			except:
				return True
		}

};
%feature("shadow") NCollection_UtfString<unsigned short>::~NCollection_UtfString<unsigned short> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_UtfString<unsigned short> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_UtfString<char>;
class NCollection_UtfString<char> {
	public:
		%feature("autodoc", "1");
		NCollection_UtfIterator<char> Iterator() const;
		%feature("autodoc", "1");
		Standard_Integer Size() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Utf32Char GetChar(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		const char * GetCharBuffer(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		Standard_Utf32Char operator[](const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		NCollection_UtfString();
		%feature("autodoc", "1");
		NCollection_UtfString(const NCollection_UtfString<char> &theCopy);
		%feature("autodoc", "1");
		NCollection_UtfString(const char *theCopyUtf8, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf16Char *theCopyUtf16, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf32Char *theCopyUtf32, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_WideChar *theCopyUtfWide, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		void FromLocale(const char *theString, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		bool IsEqual(const NCollection_UtfString<char> &theCompare) const;
		%feature("autodoc", "1");
		NCollection_UtfString<char> SubString(const Standard_Integer theStart, const Standard_Integer theEnd) const;
		%feature("autodoc", "1");
		const char * ToCString() const;
		%feature("autodoc", "1");
		NCollection_UtfString<char> const ToUtf8() const;
		%feature("autodoc", "1");
		short> NCollection_UtfString<unsigned const ToUtf16() const;
		%feature("autodoc", "1");
		int> NCollection_UtfString<unsigned const ToUtf32() const;
		%feature("autodoc", "1");
		NCollection_UtfString<wchar_t> const ToUtfWide() const;
		%feature("autodoc", "1");
		bool ToLocale(char* theBuffer, const Standard_Integer theSizeBytes) const;
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const NCollection_UtfString<char> & operator=(const NCollection_UtfString<char> &theOther);
		%feature("autodoc", "1");
		const NCollection_UtfString<char> & operator=(const char *theStringUtf8);
		%feature("autodoc", "1");
		const NCollection_UtfString<char> & operator=(const Standard_WideChar *theStringUtfWide);
		%feature("autodoc", "1");
		NCollection_UtfString<char> & operator+=(const NCollection_UtfString<char> &theAppend);
		%extend{
			bool __eq_wrapper__(const NCollection_UtfString<char> &theCompare) {
				if (*self==theCompare) return true;
				else return false;
			}
		}
		%extend{
			bool __ne_wrapper__(const NCollection_UtfString<char> &theCompare) {
				if (*self!=theCompare) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}
		%pythoncode {
		def __ne__(self,right):
			try:
				return self.__ne_wrapper__(right)
			except:
				return True
		}

};
%feature("shadow") NCollection_UtfString<char>::~NCollection_UtfString<char> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_UtfString<char> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_BaseSequence;
class NCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;

};
%feature("shadow") NCollection_BaseSequence::~NCollection_BaseSequence %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_BaseSequence {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NCollection_BaseSequence {
	NCollection_BaseSequence () {}
};


%nodefaultctor NCollection_BaseVector;
class NCollection_BaseVector {
	public:
		%feature("autodoc", "1");
		void Clear();

};
%feature("shadow") NCollection_BaseVector::~NCollection_BaseVector %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_BaseVector {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NCollection_BaseVector {
	NCollection_BaseVector () {}
};


%nodefaultctor NCollection_BaseList;
class NCollection_BaseList {
	public:
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;

};
%feature("shadow") NCollection_BaseList::~NCollection_BaseList %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_BaseList {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NCollection_BaseList {
	NCollection_BaseList () {}
};


%nodefaultctor NCollection_UtfString<wchar_t>;
class NCollection_UtfString<wchar_t> {
	public:
		%feature("autodoc", "1");
		NCollection_UtfIterator<wchar_t> Iterator() const;
		%feature("autodoc", "1");
		Standard_Integer Size() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Utf32Char GetChar(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		const wchar_t * GetCharBuffer(const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		Standard_Utf32Char operator[](const Standard_Integer theCharIndex) const;
		%feature("autodoc", "1");
		NCollection_UtfString();
		%feature("autodoc", "1");
		NCollection_UtfString(const NCollection_UtfString<wchar_t> &theCopy);
		%feature("autodoc", "1");
		NCollection_UtfString(const char *theCopyUtf8, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf16Char *theCopyUtf16, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_Utf32Char *theCopyUtf32, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		NCollection_UtfString(const Standard_WideChar *theCopyUtfWide, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		void FromLocale(const char *theString, const Standard_Integer theLength=-1);
		%feature("autodoc", "1");
		bool IsEqual(const NCollection_UtfString<wchar_t> &theCompare) const;
		%feature("autodoc", "1");
		NCollection_UtfString<wchar_t> SubString(const Standard_Integer theStart, const Standard_Integer theEnd) const;
		%feature("autodoc", "1");
		const wchar_t * ToCString() const;
		%feature("autodoc", "1");
		NCollection_UtfString<char> const ToUtf8() const;
		%feature("autodoc", "1");
		short> NCollection_UtfString<unsigned const ToUtf16() const;
		%feature("autodoc", "1");
		int> NCollection_UtfString<unsigned const ToUtf32() const;
		%feature("autodoc", "1");
		NCollection_UtfString<wchar_t> const ToUtfWide() const;
		%feature("autodoc", "1");
		bool ToLocale(char* theBuffer, const Standard_Integer theSizeBytes) const;
		%feature("autodoc", "1");
		bool IsEmpty() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const NCollection_UtfString<wchar_t> & operator=(const NCollection_UtfString<wchar_t> &theOther);
		%feature("autodoc", "1");
		const NCollection_UtfString<wchar_t> & operator=(const char *theStringUtf8);
		%feature("autodoc", "1");
		const NCollection_UtfString<wchar_t> & operator=(const Standard_WideChar *theStringUtfWide);
		%feature("autodoc", "1");
		NCollection_UtfString<wchar_t> & operator+=(const NCollection_UtfString<wchar_t> &theAppend);
		%extend{
			bool __eq_wrapper__(const NCollection_UtfString<wchar_t> &theCompare) {
				if (*self==theCompare) return true;
				else return false;
			}
		}
		%extend{
			bool __ne_wrapper__(const NCollection_UtfString<wchar_t> &theCompare) {
				if (*self!=theCompare) return true;
				else return false;
			}
		}
		%pythoncode {
		def __eq__(self,right):
			try:
				return self.__eq_wrapper__(right)
			except:
				return False
		}
		%pythoncode {
		def __ne__(self,right):
			try:
				return self.__ne_wrapper__(right)
			except:
				return True
		}

};
%feature("shadow") NCollection_UtfString<wchar_t>::~NCollection_UtfString<wchar_t> %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_UtfString<wchar_t> {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_BaseAllocator;
class NCollection_BaseAllocator : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		void * Allocate(const size_t size);
		%feature("autodoc", "1");
		virtual		void Free(void* anAddress);
		%feature("autodoc", "1");
		static		const Handle_NCollection_BaseAllocator & CommonBaseAllocator();
		%feature("autodoc", "1");
		static		void StandardCallBack(const Standard_Boolean theIsAlloc, const Standard_Address theStorage, const Standard_Size theRoundSize, const Standard_Size theSize);
		%feature("autodoc", "1");
		static		void PrintMemUsageStatistics();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NCollection_BaseAllocator {
	Handle_NCollection_BaseAllocator GetHandle() {
	return *(Handle_NCollection_BaseAllocator*) &$self;
	}
};
%extend NCollection_BaseAllocator {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NCollection_BaseAllocator::~NCollection_BaseAllocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_BaseAllocator {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NCollection_BaseAllocator {
	NCollection_BaseAllocator () {}
};


%nodefaultctor NCollection_IncAllocator;
class NCollection_IncAllocator : public NCollection_BaseAllocator {
	public:
		%feature("autodoc", "1");
		NCollection_IncAllocator(const size_t theBlockSize=24600);
		%feature("autodoc", "1");
		size_t GetMemSize() const;
		%feature("autodoc", "1");
		void * Reallocate(void* anAddress, const size_t oldSize, const size_t newSize);
		%feature("autodoc", "1");
		void Reset(const Standard_Boolean doReleaseMem=true);

};
%extend NCollection_IncAllocator {
	Handle_NCollection_IncAllocator GetHandle() {
	return *(Handle_NCollection_IncAllocator*) &$self;
	}
};
%extend NCollection_IncAllocator {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NCollection_IncAllocator::~NCollection_IncAllocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_IncAllocator {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor NCollection_HeapAllocator;
class NCollection_HeapAllocator : public NCollection_BaseAllocator {
	public:
		%feature("autodoc", "1");
		virtual		void * Allocate(const Standard_Size theSize);
		%feature("autodoc", "1");
		virtual		void Free(void* anAddress);
		%feature("autodoc", "1");
		static		const Handle_NCollection_HeapAllocator & GlobalHeapAllocator();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend NCollection_HeapAllocator {
	Handle_NCollection_HeapAllocator GetHandle() {
	return *(Handle_NCollection_HeapAllocator*) &$self;
	}
};
%extend NCollection_HeapAllocator {
	Standard_Integer __hash__() {
	return HashCode((Standard_Address)$self,2147483647);
	}
};
%feature("shadow") NCollection_HeapAllocator::~NCollection_HeapAllocator %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend NCollection_HeapAllocator {
	void _kill_pointed() {
		delete $self;
	}
};
%extend NCollection_HeapAllocator {
	NCollection_HeapAllocator () {}
};