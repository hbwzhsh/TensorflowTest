æŁ
Ż³
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
¶
AsString

input"T

output"
Ttype:
	2	
"
	precisionint’’’’’’’’’"

scientificbool( "
shortestbool( "
widthint’’’’’’’’’"
fillstring 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ļ
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.9.02b'v1.9.0-0-g25c197e023'ó

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
	container *
shape: 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
h
input_tensorsPlaceholder*#
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
U
ParseExample/ConstConst*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_1Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_2Const*
valueB *
_output_shapes
: *
dtype0
W
ParseExample/Const_3Const*
valueB *
_output_shapes
: *
dtype0
b
ParseExample/ParseExample/namesConst*
valueB *
_output_shapes
: *
dtype0
r
&ParseExample/ParseExample/dense_keys_0Const*
valueB BPetalLength*
_output_shapes
: *
dtype0
q
&ParseExample/ParseExample/dense_keys_1Const*
valueB B
PetalWidth*
_output_shapes
: *
dtype0
r
&ParseExample/ParseExample/dense_keys_2Const*
valueB BSepalLength*
_output_shapes
: *
dtype0
q
&ParseExample/ParseExample/dense_keys_3Const*
valueB B
SepalWidth*
_output_shapes
: *
dtype0
¢
ParseExample/ParseExampleParseExampleinput_tensorsParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3*
sparse_types
 **
dense_shapes
::::*
Ndense*`
_output_shapesN
L:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
Nsparse *
Tdense
2

<dnn/input_from_feature_columns/input_layer/PetalLength/ShapeShapeParseExample/ParseExample*
out_type0*
T0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Ldnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Ldnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0

Ddnn/input_from_feature_columns/input_layer/PetalLength/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/PetalLength/ShapeJdnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stackLdnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/PetalLength/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 

Fdnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0

Ddnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/PetalLength/strided_sliceFdnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
ź
>dnn/input_from_feature_columns/input_layer/PetalLength/ReshapeReshapeParseExample/ParseExampleDdnn/input_from_feature_columns/input_layer/PetalLength/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

;dnn/input_from_feature_columns/input_layer/PetalWidth/ShapeShapeParseExample/ParseExample:1*
out_type0*
T0*
_output_shapes
:

Idnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Kdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Kdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0

Cdnn/input_from_feature_columns/input_layer/PetalWidth/strided_sliceStridedSlice;dnn/input_from_feature_columns/input_layer/PetalWidth/ShapeIdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stackKdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_1Kdnn/input_from_feature_columns/input_layer/PetalWidth/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 

Ednn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0

Cdnn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shapePackCdnn/input_from_feature_columns/input_layer/PetalWidth/strided_sliceEdnn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
ź
=dnn/input_from_feature_columns/input_layer/PetalWidth/ReshapeReshapeParseExample/ParseExample:1Cdnn/input_from_feature_columns/input_layer/PetalWidth/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

<dnn/input_from_feature_columns/input_layer/SepalLength/ShapeShapeParseExample/ParseExample:2*
out_type0*
T0*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Ldnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Ldnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0

Ddnn/input_from_feature_columns/input_layer/SepalLength/strided_sliceStridedSlice<dnn/input_from_feature_columns/input_layer/SepalLength/ShapeJdnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stackLdnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_1Ldnn/input_from_feature_columns/input_layer/SepalLength/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 

Fdnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0

Ddnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shapePackDdnn/input_from_feature_columns/input_layer/SepalLength/strided_sliceFdnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
ģ
>dnn/input_from_feature_columns/input_layer/SepalLength/ReshapeReshapeParseExample/ParseExample:2Ddnn/input_from_feature_columns/input_layer/SepalLength/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

;dnn/input_from_feature_columns/input_layer/SepalWidth/ShapeShapeParseExample/ParseExample:3*
out_type0*
T0*
_output_shapes
:

Idnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0

Kdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0

Kdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0

Cdnn/input_from_feature_columns/input_layer/SepalWidth/strided_sliceStridedSlice;dnn/input_from_feature_columns/input_layer/SepalWidth/ShapeIdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stackKdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_1Kdnn/input_from_feature_columns/input_layer/SepalWidth/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 

Ednn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shape/1Const*
value	B :*
_output_shapes
: *
dtype0

Cdnn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shapePackCdnn/input_from_feature_columns/input_layer/SepalWidth/strided_sliceEdnn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shape/1*

axis *
T0*
N*
_output_shapes
:
ź
=dnn/input_from_feature_columns/input_layer/SepalWidth/ReshapeReshapeParseExample/ParseExample:3Cdnn/input_from_feature_columns/input_layer/SepalWidth/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
ŗ
1dnn/input_from_feature_columns/input_layer/concatConcatV2>dnn/input_from_feature_columns/input_layer/PetalLength/Reshape=dnn/input_from_feature_columns/input_layer/PetalWidth/Reshape>dnn/input_from_feature_columns/input_layer/SepalLength/Reshape=dnn/input_from_feature_columns/input_layer/SepalWidth/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
T0*
N*'
_output_shapes
:’’’’’’’’’*

Tidx0
Å
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
·
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *ģQæ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
·
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *ģQ?*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:*
dtype0*

seed 

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
¬
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ē
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:

&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
®
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
®
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
»
dnn/hiddenlayer_0/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:*
dtype0*
	container *
shape:
ž
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
¤
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*
T0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:
Ē
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
T0*
_output_shapes
:

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0

dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:’’’’’’’’’
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

DstT0*'
_output_shapes
:’’’’’’’’’*

SrcT0

h
dnn/zero_fraction/ConstConst*
valueB"       *
_output_shapes
:*
dtype0

dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: *
dtype0
«
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: *
dtype0

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
Å
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
·
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *ųKFæ*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
·
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *ųKF?*
_output_shapes
: *
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
seed2 *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:*
dtype0*

seed 

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
¬
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
Ē
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:

&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
®
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
®
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
»
dnn/hiddenlayer_1/bias/part_0
VariableV2*
shared_name *0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:*
dtype0*
	container *
shape:
ž
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
¤
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*
T0*
_output_shapes
:*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:
¬
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
T0*
_output_shapes
:

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
]
dnn/zero_fraction_1/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0

dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:’’’’’’’’’
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

DstT0*'
_output_shapes
:’’’’’’’’’*

SrcT0

j
dnn/zero_fraction_1/ConstConst*
valueB"       *
_output_shapes
:*
dtype0

dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: *
dtype0
­
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: *
dtype0

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
·
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
valueB
 *×³]æ*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0
©
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
valueB
 *×³]?*
_output_shapes
: *
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0

Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
seed2 *+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes

:*
dtype0*

seed 
ž
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *+
_class!
loc:@dnn/logits/kernel/part_0

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
¹
dnn/logits/kernel/part_0
VariableV2*
shared_name *+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:*
dtype0*
	container *
shape
:
÷
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0

dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*
T0*
_output_shapes

:*+
_class!
loc:@dnn/logits/kernel/part_0
 
(dnn/logits/bias/part_0/Initializer/zerosConst*
valueB*    *
_output_shapes
:*
dtype0*)
_class
loc:@dnn/logits/bias/part_0
­
dnn/logits/bias/part_0
VariableV2*
shared_name *)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:*
dtype0*
	container *
shape:
ā
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0

dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*
T0*
_output_shapes
:*)
_class
loc:@dnn/logits/bias/part_0
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
T0*
_output_shapes

:

dnn/logits/MatMulMatMuldnn/hiddenlayer_1/Reludnn/logits/kernel*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
]
dnn/zero_fraction_2/zeroConst*
valueB
 *    *
_output_shapes
: *
dtype0

dnn/zero_fraction_2/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_2/zero*
T0*'
_output_shapes
:’’’’’’’’’
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

DstT0*'
_output_shapes
:’’’’’’’’’*

SrcT0

j
dnn/zero_fraction_2/ConstConst*
valueB"       *
_output_shapes
:*
dtype0

dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: *
dtype0

&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: *
dtype0

dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
g
dnn/head/logits/ShapeShapednn/logits/BiasAdd*
out_type0*
T0*
_output_shapes
:
k
)dnn/head/logits/assert_rank_at_least/rankConst*
value	B :*
_output_shapes
: *
dtype0
[
Sdnn/head/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
L
Ddnn/head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
s
(dnn/head/predictions/class_ids/dimensionConst*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
³
dnn/head/predictions/class_idsArgMaxdnn/logits/BiasAdd(dnn/head/predictions/class_ids/dimension*
output_type0	*
T0*#
_output_shapes
:’’’’’’’’’*

Tidx0
n
#dnn/head/predictions/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
_output_shapes
: *
dtype0
°
dnn/head/predictions/ExpandDims
ExpandDimsdnn/head/predictions/class_ids#dnn/head/predictions/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:’’’’’’’’’
Ż
 dnn/head/predictions/str_classesAsStringdnn/head/predictions/ExpandDims*
	precision’’’’’’’’’*
shortest( *

scientific( *
T0	*'
_output_shapes
:’’’’’’’’’*
width’’’’’’’’’*

fill 
s
"dnn/head/predictions/probabilitiesSoftmaxdnn/logits/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
p
dnn/head/ShapeShape"dnn/head/predictions/probabilities*
out_type0*
T0*
_output_shapes
:
f
dnn/head/strided_slice/stackConst*
valueB: *
_output_shapes
:*
dtype0
h
dnn/head/strided_slice/stack_1Const*
valueB:*
_output_shapes
:*
dtype0
h
dnn/head/strided_slice/stack_2Const*
valueB:*
_output_shapes
:*
dtype0
¦
dnn/head/strided_sliceStridedSlicednn/head/Shapednn/head/strided_slice/stackdnn/head/strided_slice/stack_1dnn/head/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
_output_shapes
: *
ellipsis_mask 
V
dnn/head/range/startConst*
value	B : *
_output_shapes
: *
dtype0
V
dnn/head/range/limitConst*
value	B :*
_output_shapes
: *
dtype0
V
dnn/head/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0

dnn/head/rangeRangednn/head/range/startdnn/head/range/limitdnn/head/range/delta*
_output_shapes
:*

Tidx0
°
dnn/head/AsStringAsStringdnn/head/range*
	precision’’’’’’’’’*
shortest( *

scientific( *
T0*
_output_shapes
:*
width’’’’’’’’’*

fill 
Y
dnn/head/ExpandDims/dimConst*
value	B : *
_output_shapes
: *
dtype0

dnn/head/ExpandDims
ExpandDimsdnn/head/AsStringdnn/head/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
[
dnn/head/Tile/multiples/1Const*
value	B :*
_output_shapes
: *
dtype0

dnn/head/Tile/multiplesPackdnn/head/strided_slicednn/head/Tile/multiples/1*

axis *
T0*
N*
_output_shapes
:

dnn/head/TileTilednn/head/ExpandDimsdnn/head/Tile/multiples*
T0*'
_output_shapes
:’’’’’’’’’*

Tmultiples0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d188f30c178c460c80b60ded3b3bd5bf/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*Ŗ
value BBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
_output_shapes
:*
dtype0
°
save/SaveV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB5 0,5B4 5 0,4:0,5B5 0,5B5 5 0,5:0,5B3 0,3B5 3 0,5:0,3B *
_output_shapes
:*
dtype0
ę
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step"/device:CPU:0*
dtypes
	2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*Ŗ
value BBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
_output_shapes
:*
dtype0
³
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB5 0,5B4 5 0,4:0,5B5 0,5B5 5 0,5:0,5B3 0,3B5 3 0,5:0,3B *
_output_shapes
:*
dtype0
Õ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
	2	*H
_output_shapes6
4:::::::
Ä
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
Š
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2:1*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Č
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2:2*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
Š
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2:3*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
ŗ
save/Assign_4Assigndnn/logits/bias/part_0save/RestoreV2:4*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
Ā
save/Assign_5Assigndnn/logits/kernel/part_0save/RestoreV2:5*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
 
save/Assign_6Assignglobal_stepsave/RestoreV2:6*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6
-
save/restore_allNoOp^save/restore_shard
R
save_1/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_9f879890f2ee4c5c9ff740427121cad7/part*
_output_shapes
: *
dtype0
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*Ŗ
value BBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
_output_shapes
:*
dtype0
²
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB5 0,5B4 5 0,4:0,5B5 0,5B5 5 0,5:0,5B3 0,3B5 3 0,5:0,3B *
_output_shapes
:*
dtype0
ī
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step"/device:CPU:0*
dtypes
	2	
Ø
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
²
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*Ŗ
value BBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/logits/biasBdnn/logits/kernelBglobal_step*
_output_shapes
:*
dtype0
µ
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*Q
valueHBFB5 0,5B4 5 0,4:0,5B5 0,5B5 5 0,5:0,5B3 0,3B5 3 0,5:0,3B *
_output_shapes
:*
dtype0
Ż
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
	2	*H
_output_shapes6
4:::::::
Č
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0
Ō
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2:1*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0
Ģ
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2:2*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0
Ō
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2:3*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0
¾
save_1/Assign_4Assigndnn/logits/bias/part_0save_1/RestoreV2:4*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0
Ę
save_1/Assign_5Assigndnn/logits/kernel/part_0save_1/RestoreV2:5*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0
¤
save_1/Assign_6Assignglobal_stepsave_1/RestoreV2:6*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
legacy_init_op


group_deps"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"Ē	
trainable_variablesÆ	¬	
Ū
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel  "2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
Å
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias "21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
Ū
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel  "2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
Å
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias "21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ø
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:08
¢
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:08"
	summariesō
ń
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0"

	variables


X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
Ū
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernel  "2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
Å
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/bias "21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
Ū
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kernel  "2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
Å
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/bias "21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ø
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel  "25dnn/logits/kernel/part_0/Initializer/random_uniform:08
¢
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:08*ņ
predictę
6
predictor_inputs"
input_tensors:0’’’’’’’’’E
	class_ids8
!dnn/head/predictions/ExpandDims:0	’’’’’’’’’L
probabilities;
$dnn/head/predictions/probabilities:0’’’’’’’’’D
classes9
"dnn/head/predictions/str_classes:0’’’’’’’’’5
logits+
dnn/logits/BiasAdd:0’’’’’’’’’tensorflow/serving/predict*Ł
serving_defaultÅ
,
inputs"
input_tensors:0’’’’’’’’’1
classes&
dnn/head/Tile:0’’’’’’’’’E
scores;
$dnn/head/predictions/probabilities:0’’’’’’’’’tensorflow/serving/classify*Ų
classificationÅ
,
inputs"
input_tensors:0’’’’’’’’’1
classes&
dnn/head/Tile:0’’’’’’’’’E
scores;
$dnn/head/predictions/probabilities:0’’’’’’’’’tensorflow/serving/classify