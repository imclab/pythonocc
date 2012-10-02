// Copyright (C) 2007-2012  CEA/DEN, EDF R&D, OPEN CASCADE
//
// Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
// CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//

//  SMESH SMESH : implementaion of SMESH idl descriptions
//  File   : SMESH_2D_Algo.hxx
//  Author : Paul RASCLE, EDF
//  Module : SMESH
//  $Header: /home/server/cvs/SMESH/SMESH_SRC/src/SMESH/SMESH_2D_Algo.hxx,v 1.10.20.2.8.1 2012-04-13 09:31:08 vsr Exp $
//
#ifndef _SMESH_2D_ALGO_HXX_
#define _SMESH_2D_ALGO_HXX_

#include "SMESH_SMESH.hxx"

#include "SMESH_Algo.hxx"
#include "SMESH_subMesh.hxx"
#include "TopoDS_Wire.hxx"

class SMESH_EXPORT SMESH_2D_Algo:
  public SMESH_Algo
{
public:
  SMESH_2D_Algo(int hypId, int studyId, SMESH_Gen* gen);
  virtual ~SMESH_2D_Algo();

  int NumberOfWires(const TopoDS_Shape& S);
  int NumberOfPoints(SMESH_Mesh& aMesh,const TopoDS_Wire& W);

};

#endif