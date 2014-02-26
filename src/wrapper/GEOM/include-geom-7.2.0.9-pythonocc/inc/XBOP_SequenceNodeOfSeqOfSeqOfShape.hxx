// This file is generated by WOK (CPPExt).
// Please do not edit this file; modify original file instead.
// The copyright and license terms as defined for the original file apply to 
// this header file considered to be the "object code" form of the original source.

#ifndef _XBOP_SequenceNodeOfSeqOfSeqOfShape_HeaderFile
#define _XBOP_SequenceNodeOfSeqOfSeqOfShape_HeaderFile

#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_DefineHandle_HeaderFile
#include <Standard_DefineHandle.hxx>
#endif
#ifndef _Handle_XBOP_SequenceNodeOfSeqOfSeqOfShape_HeaderFile
#include <Handle_XBOP_SequenceNodeOfSeqOfSeqOfShape.hxx>
#endif

#ifndef _TopTools_SequenceOfShape_HeaderFile
#include <TopTools_SequenceOfShape.hxx>
#endif
#ifndef _TCollection_SeqNode_HeaderFile
#include <TCollection_SeqNode.hxx>
#endif
#ifndef _TCollection_SeqNodePtr_HeaderFile
#include <TCollection_SeqNodePtr.hxx>
#endif
class TopTools_SequenceOfShape;
class XBOP_SeqOfSeqOfShape;



class XBOP_SequenceNodeOfSeqOfSeqOfShape : public TCollection_SeqNode {

public:

  
      XBOP_SequenceNodeOfSeqOfSeqOfShape(const TopTools_SequenceOfShape& I,const TCollection_SeqNodePtr& n,const TCollection_SeqNodePtr& p);
  
        TopTools_SequenceOfShape& Value() const;




  DEFINE_STANDARD_RTTI(XBOP_SequenceNodeOfSeqOfSeqOfShape)

protected:




private: 


TopTools_SequenceOfShape myValue;


};

#define SeqItem TopTools_SequenceOfShape
#define SeqItem_hxx <TopTools_SequenceOfShape.hxx>
#define TCollection_SequenceNode XBOP_SequenceNodeOfSeqOfSeqOfShape
#define TCollection_SequenceNode_hxx <XBOP_SequenceNodeOfSeqOfSeqOfShape.hxx>
#define Handle_TCollection_SequenceNode Handle_XBOP_SequenceNodeOfSeqOfSeqOfShape
#define TCollection_SequenceNode_Type_() XBOP_SequenceNodeOfSeqOfSeqOfShape_Type_()
#define TCollection_Sequence XBOP_SeqOfSeqOfShape
#define TCollection_Sequence_hxx <XBOP_SeqOfSeqOfShape.hxx>

#include <TCollection_SequenceNode.lxx>

#undef SeqItem
#undef SeqItem_hxx
#undef TCollection_SequenceNode
#undef TCollection_SequenceNode_hxx
#undef Handle_TCollection_SequenceNode
#undef TCollection_SequenceNode_Type_
#undef TCollection_Sequence
#undef TCollection_Sequence_hxx


// other Inline functions and methods (like "C++: function call" methods)


#endif