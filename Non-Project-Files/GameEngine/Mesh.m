////
////  Mesh.m
////  GameEngine
////
////  Created by Max on 28/03/2015.
////  Copyright (c) 2015 newcastlecv. All rights reserved.
////
//
//#include "Mesh.h"
//
//@implementation Mesh
//
//-(void) Mesh {
//    for( int i = 0; i < MAX_BUFFER ; ++ i ) {
//        bufferObject [ i ] = 0;
//        }
//    glGenVertexArrays (1 , &(arrayObject) );
//    
//    numVertices = 0;
//    vertices = NULL ;
//    colours = NULL ;
//    type = GL_TRIANGLES ;
//    }
//-(Mesh*) GenerateTriangle {
//    Mesh * m;
//    [m numVertices] = 3;
//    23
//    24 m - > vertices = new Vector3 [m - > numVertices ];
//    25 m - > vertices [0] = Vector3 (0.0 f , 0.5 f , 0.0 f );
//    26 m - > vertices [1] = Vector3 (0.5 f , -0.5 f , 0.0 f );
//    27 m - > vertices [2] = Vector3 ( -0.5 f , -0.5 f , 0.0 f );
//    28
//    29 m - > colours = new Vector4 [m - > numVertices ];
//    m - > colours [0] = Vector4 (1.0 f , 0.0 f , 0.0 f ,1.0 f );
//    31 m - > colours [1] = Vector4 (0.0 f , 1.0 f , 0.0 f ,1.0 f );
//    32 m - > colours [2] = Vector4 (0.0 f , 0.0 f , 1.0 f ,1.0 f );
//    33
//    34 m - > BufferData ();
//    35 return m ;
//    36 }
//@end
