ûö
îÐ
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
W
StringToNumber
string_tensor
output"out_type"
out_typetype0:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12
b'unknown'¤Ñ

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
²
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
L
inputssPlaceholder*
shape:*
dtype0*
_output_shapes
:
G
ConstConst*
value	B B,*
dtype0*
_output_shapes
: 
z
StringSplitStringSplitinputssConst*

skip_empty(*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_sliceStridedSliceStringSplit:1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
StringToNumber/string_tensorPackstrided_slice*
T0*

axis *
N*
_output_shapes
:
j
StringToNumberStringToNumberStringToNumber/string_tensor*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceStringSplit:1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
StringToNumber_1/string_tensorPackstrided_slice_1*
T0*

axis *
N*
_output_shapes
:
n
StringToNumber_1StringToNumberStringToNumber_1/string_tensor*
out_type0*
_output_shapes
:
_
strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_2StridedSliceStringSplit:1strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
StringToNumber_2/string_tensorPackstrided_slice_2*
T0*

axis *
N*
_output_shapes
:
n
StringToNumber_2StringToNumberStringToNumber_2/string_tensor*
out_type0*
_output_shapes
:
_
strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_3StridedSliceStringSplit:1strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
StringToNumber_3/string_tensorPackstrided_slice_3*
T0*

axis *
N*
_output_shapes
:
n
StringToNumber_3StringToNumberStringToNumber_3/string_tensor*
out_type0*
_output_shapes
:
q
&input_layer/PetalLength/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

"input_layer/PetalLength/ExpandDims
ExpandDimsStringToNumber_2&input_layer/PetalLength/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
n
input_layer/PetalLength/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
u
+input_layer/PetalLength/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-input_layer/PetalLength/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-input_layer/PetalLength/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ñ
%input_layer/PetalLength/strided_sliceStridedSliceinput_layer/PetalLength/Shape+input_layer/PetalLength/strided_slice/stack-input_layer/PetalLength/strided_slice/stack_1-input_layer/PetalLength/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'input_layer/PetalLength/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
·
%input_layer/PetalLength/Reshape/shapePack%input_layer/PetalLength/strided_slice'input_layer/PetalLength/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
¬
input_layer/PetalLength/ReshapeReshape"input_layer/PetalLength/ExpandDims%input_layer/PetalLength/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
p
%input_layer/PetalWidth/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

!input_layer/PetalWidth/ExpandDims
ExpandDimsStringToNumber_3%input_layer/PetalWidth/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
m
input_layer/PetalWidth/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
t
*input_layer/PetalWidth/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,input_layer/PetalWidth/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,input_layer/PetalWidth/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ì
$input_layer/PetalWidth/strided_sliceStridedSliceinput_layer/PetalWidth/Shape*input_layer/PetalWidth/strided_slice/stack,input_layer/PetalWidth/strided_slice/stack_1,input_layer/PetalWidth/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
h
&input_layer/PetalWidth/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
´
$input_layer/PetalWidth/Reshape/shapePack$input_layer/PetalWidth/strided_slice&input_layer/PetalWidth/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
©
input_layer/PetalWidth/ReshapeReshape!input_layer/PetalWidth/ExpandDims$input_layer/PetalWidth/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
q
&input_layer/SepalLength/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

"input_layer/SepalLength/ExpandDims
ExpandDimsStringToNumber&input_layer/SepalLength/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
n
input_layer/SepalLength/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
u
+input_layer/SepalLength/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
w
-input_layer/SepalLength/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
w
-input_layer/SepalLength/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ñ
%input_layer/SepalLength/strided_sliceStridedSliceinput_layer/SepalLength/Shape+input_layer/SepalLength/strided_slice/stack-input_layer/SepalLength/strided_slice/stack_1-input_layer/SepalLength/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
'input_layer/SepalLength/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
·
%input_layer/SepalLength/Reshape/shapePack%input_layer/SepalLength/strided_slice'input_layer/SepalLength/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
¬
input_layer/SepalLength/ReshapeReshape"input_layer/SepalLength/ExpandDims%input_layer/SepalLength/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
p
%input_layer/SepalWidth/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

!input_layer/SepalWidth/ExpandDims
ExpandDimsStringToNumber_1%input_layer/SepalWidth/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
m
input_layer/SepalWidth/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
t
*input_layer/SepalWidth/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,input_layer/SepalWidth/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,input_layer/SepalWidth/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ì
$input_layer/SepalWidth/strided_sliceStridedSliceinput_layer/SepalWidth/Shape*input_layer/SepalWidth/strided_slice/stack,input_layer/SepalWidth/strided_slice/stack_1,input_layer/SepalWidth/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
h
&input_layer/SepalWidth/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
´
$input_layer/SepalWidth/Reshape/shapePack$input_layer/SepalWidth/strided_slice&input_layer/SepalWidth/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
©
input_layer/SepalWidth/ReshapeReshape!input_layer/SepalWidth/ExpandDims$input_layer/SepalWidth/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
Y
input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
÷
input_layer/concatConcatV2input_layer/PetalLength/Reshapeinput_layer/PetalWidth/Reshapeinput_layer/SepalLength/Reshapeinput_layer/SepalWidth/Reshapeinput_layer/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
valueB
 *JQZ¾*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *JQZ>*
dtype0*
_output_shapes
: 
æ
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0*
_output_shapes
:	
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
£
dense/kernel
VariableV2*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
È
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	
v
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	

dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes	
:


dense/bias
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
³
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/MatMulMatMulinput_layer/concatdense/kernel/read*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a( 
x
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*
_output_shapes
:	
K

dense/ReluReludense/BiasAdd*
T0*
_output_shapes
:	
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *   ¾*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
valueB
 *   >*
dtype0*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0* 
_output_shapes
:

Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ê
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

©
dense_1/kernel
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ñ
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes	
:

dense_1/bias
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
»
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/MatMulMatMul
dense/Reludense_1/kernel/read*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a( 
~
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*
_output_shapes
:	
O
dense_1/ReluReludense_1/BiasAdd*
T0*
_output_shapes
:	
£
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *×³Ý½*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *×³Ý=*
dtype0*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_2/kernel*
seed2 *
dtype0* 
_output_shapes
:

Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
ê
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

©
dense_2/kernel
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
	container *
shape:
*
dtype0* 
_output_shapes
:

Ñ
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
valueB*    *
dtype0*
_output_shapes	
:

dense_2/bias
VariableV2*
shared_name *
_class
loc:@dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
»
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:
r
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:

dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a( 
~
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*
_output_shapes
:	
O
dense_2/ReluReludense_2/BiasAdd*
T0*
_output_shapes
:	
£
/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
valueB
 *VÛ¾*
dtype0*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
valueB
 *VÛ>*
dtype0*
_output_shapes
: 
ì
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@dense_3/kernel*
seed2 *
dtype0*
_output_shapes
:	
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
é
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
:	
Û
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
:	
§
dense_3/kernel
VariableV2*
shared_name *!
_class
loc:@dense_3/kernel*
	container *
shape:	*
dtype0*
_output_shapes
:	
Ð
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes
:	
|
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
:	

dense_3/bias/Initializer/zerosConst*
_class
loc:@dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:

dense_3/bias
VariableV2*
shared_name *
_class
loc:@dense_3/bias*
	container *
shape:*
dtype0*
_output_shapes
:
º
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
:
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:

dense_3/MatMulMatMuldense_2/Reludense_3/kernel/read*
transpose_b( *
T0*
_output_shapes

:*
transpose_a( 
}
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC*
_output_shapes

:
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
w
ArgMaxArgMaxdense_3/BiasAddArgMax/dimension*

Tidx0*
T0*
output_type0	*
_output_shapes
:
L
SoftmaxSoftmaxdense_3/BiasAdd*
T0*
_output_shapes

:

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_9eb935918ea1483ea69b067ae590568f/part*
dtype0*
_output_shapes
: 
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
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
ò
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueB	B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBglobal_step*
dtype0*
_output_shapes
:	

save/SaveV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kernelglobal_step"/device:CPU:0*
dtypes
2		
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
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
õ
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueB	B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBglobal_step*
dtype0*
_output_shapes
:	

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Ç
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2		*8
_output_shapes&
$:::::::::

save/AssignAssign
dense/biassave/RestoreV2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:
«
save/Assign_1Assigndense/kernelsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	
§
save/Assign_2Assigndense_1/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:
°
save/Assign_3Assigndense_1/kernelsave/RestoreV2:3*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:

§
save/Assign_4Assigndense_2/biassave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes	
:
°
save/Assign_5Assigndense_2/kernelsave/RestoreV2:5*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(* 
_output_shapes
:

¦
save/Assign_6Assigndense_3/biassave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
_output_shapes
:
¯
save/Assign_7Assigndense_3/kernelsave/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
_output_shapes
:	
 
save/Assign_8Assignglobal_stepsave/RestoreV2:8*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
¨
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ï
trainable_variables·´
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"
	variables
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08"%
saved_model_main_op


group_deps*
serving_default

inputsd
	inputss:0&
predict_pro
	Softmax:0!
predict_cls
ArgMax:0	tensorflow/serving/predict