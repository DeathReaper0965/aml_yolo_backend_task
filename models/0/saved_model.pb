ō

ŲŖ
:
Add
x"T
y"T
z"T"
Ttype:
2	
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

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%·Ń8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ĶĢL>"
Ttype0:
2
Ō
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2		"
align_cornersbool( "
half_pixel_centersbool( 
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
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5°	

yolov3-tiny/net1Placeholder*
dtype0*1
_output_shapes
:’’’’’’’’’  *&
shape:’’’’’’’’’  
Ń
Byolov3-tiny/convolutional1/kernel/Initializer/random_uniform/shapeConst*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
»
@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*
valueB
 *Š?¾
»
@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*
valueB
 *Š?>*
dtype0*
_output_shapes
: 
¬
Jyolov3-tiny/convolutional1/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional1/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:*

seed *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel
¢
@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*
_output_shapes
: 
¼
@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional1/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel
®
<yolov3-tiny/convolutional1/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional1/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*&
_output_shapes
:
Ū
!yolov3-tiny/convolutional1/kernel
VariableV2*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*
	container *
shape:*
dtype0*&
_output_shapes
:*
shared_name 
£
(yolov3-tiny/convolutional1/kernel/AssignAssign!yolov3-tiny/convolutional1/kernel<yolov3-tiny/convolutional1/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel
¼
&yolov3-tiny/convolutional1/kernel/readIdentity!yolov3-tiny/convolutional1/kernel*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*&
_output_shapes
:
y
(yolov3-tiny/convolutional1/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
Ø
!yolov3-tiny/convolutional1/Conv2DConv2Dyolov3-tiny/net1&yolov3-tiny/convolutional1/kernel/read*1
_output_shapes
:’’’’’’’’’  *
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME
Ē
;yolov3-tiny/convolutional1/BatchNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@yolov3-tiny/convolutional1/BatchNorm/gamma*
valueB*  ?
Õ
*yolov3-tiny/convolutional1/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes
:*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional1/BatchNorm/gamma*
	container *
shape:
±
1yolov3-tiny/convolutional1/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional1/BatchNorm/gamma;yolov3-tiny/convolutional1/BatchNorm/gamma/Initializer/ones*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional1/BatchNorm/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
Ė
/yolov3-tiny/convolutional1/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional1/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional1/BatchNorm/gamma*
_output_shapes
:
Ę
;yolov3-tiny/convolutional1/BatchNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@yolov3-tiny/convolutional1/BatchNorm/beta*
valueB*    
Ó
)yolov3-tiny/convolutional1/BatchNorm/beta
VariableV2*
dtype0*
_output_shapes
:*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional1/BatchNorm/beta*
	container *
shape:
®
0yolov3-tiny/convolutional1/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional1/BatchNorm/beta;yolov3-tiny/convolutional1/BatchNorm/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional1/BatchNorm/beta
Č
.yolov3-tiny/convolutional1/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional1/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional1/BatchNorm/beta*
_output_shapes
:
Ō
Byolov3-tiny/convolutional1/BatchNorm/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:*C
_class9
75loc:@yolov3-tiny/convolutional1/BatchNorm/moving_mean*
valueB*    
į
0yolov3-tiny/convolutional1/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes
:*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional1/BatchNorm/moving_mean*
	container *
shape:
Ź
7yolov3-tiny/convolutional1/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional1/BatchNorm/moving_meanByolov3-tiny/convolutional1/BatchNorm/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional1/BatchNorm/moving_mean
Ż
5yolov3-tiny/convolutional1/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional1/BatchNorm/moving_mean*
_output_shapes
:*
T0*C
_class9
75loc:@yolov3-tiny/convolutional1/BatchNorm/moving_mean
Ū
Eyolov3-tiny/convolutional1/BatchNorm/moving_variance/Initializer/onesConst*G
_class=
;9loc:@yolov3-tiny/convolutional1/BatchNorm/moving_variance*
valueB*  ?*
dtype0*
_output_shapes
:
é
4yolov3-tiny/convolutional1/BatchNorm/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional1/BatchNorm/moving_variance
Ł
;yolov3-tiny/convolutional1/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional1/BatchNorm/moving_varianceEyolov3-tiny/convolutional1/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional1/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:
é
9yolov3-tiny/convolutional1/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional1/BatchNorm/moving_variance*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional1/BatchNorm/moving_variance*
_output_shapes
:
Ė
3yolov3-tiny/convolutional1/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional1/Conv2D/yolov3-tiny/convolutional1/BatchNorm/gamma/read.yolov3-tiny/convolutional1/BatchNorm/beta/read5yolov3-tiny/convolutional1/BatchNorm/moving_mean/read9yolov3-tiny/convolutional1/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*I
_output_shapes7
5:’’’’’’’’’  ::::*
is_training( 
o
*yolov3-tiny/convolutional1/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
³
%yolov3-tiny/convolutional1/Activation	LeakyRelu3yolov3-tiny/convolutional1/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*1
_output_shapes
:’’’’’’’’’  
Ü
yolov3-tiny/maxpool1/MaxPoolMaxPool%yolov3-tiny/convolutional1/Activation*1
_output_shapes
:’’’’’’’’’ŠŠ*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
Ń
Byolov3-tiny/convolutional2/kernel/Initializer/random_uniform/shapeConst*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*%
valueB"             *
dtype0*
_output_shapes
:
»
@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/minConst*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*
valueB
 *ļ[ń½*
dtype0*
_output_shapes
: 
»
@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*
valueB
 *ļ[ń=
¬
Jyolov3-tiny/convolutional2/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional2/kernel/Initializer/random_uniform/shape*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
¢
@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*
_output_shapes
: 
¼
@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional2/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*&
_output_shapes
: 
®
<yolov3-tiny/convolutional2/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional2/kernel/Initializer/random_uniform/min*&
_output_shapes
: *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel
Ū
!yolov3-tiny/convolutional2/kernel
VariableV2*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name 
£
(yolov3-tiny/convolutional2/kernel/AssignAssign!yolov3-tiny/convolutional2/kernel<yolov3-tiny/convolutional2/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel
¼
&yolov3-tiny/convolutional2/kernel/readIdentity!yolov3-tiny/convolutional2/kernel*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel*&
_output_shapes
: 
y
(yolov3-tiny/convolutional2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
“
!yolov3-tiny/convolutional2/Conv2DConv2Dyolov3-tiny/maxpool1/MaxPool&yolov3-tiny/convolutional2/kernel/read*
paddingSAME*1
_output_shapes
:’’’’’’’’’ŠŠ *
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
Ē
;yolov3-tiny/convolutional2/BatchNorm/gamma/Initializer/onesConst*=
_class3
1/loc:@yolov3-tiny/convolutional2/BatchNorm/gamma*
valueB *  ?*
dtype0*
_output_shapes
: 
Õ
*yolov3-tiny/convolutional2/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes
: *
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional2/BatchNorm/gamma*
	container *
shape: 
±
1yolov3-tiny/convolutional2/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional2/BatchNorm/gamma;yolov3-tiny/convolutional2/BatchNorm/gamma/Initializer/ones*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional2/BatchNorm/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
Ė
/yolov3-tiny/convolutional2/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional2/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional2/BatchNorm/gamma*
_output_shapes
: 
Ę
;yolov3-tiny/convolutional2/BatchNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@yolov3-tiny/convolutional2/BatchNorm/beta*
valueB *    
Ó
)yolov3-tiny/convolutional2/BatchNorm/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional2/BatchNorm/beta*
	container *
shape: 
®
0yolov3-tiny/convolutional2/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional2/BatchNorm/beta;yolov3-tiny/convolutional2/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional2/BatchNorm/beta*
validate_shape(*
_output_shapes
: 
Č
.yolov3-tiny/convolutional2/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional2/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional2/BatchNorm/beta*
_output_shapes
: 
Ō
Byolov3-tiny/convolutional2/BatchNorm/moving_mean/Initializer/zerosConst*C
_class9
75loc:@yolov3-tiny/convolutional2/BatchNorm/moving_mean*
valueB *    *
dtype0*
_output_shapes
: 
į
0yolov3-tiny/convolutional2/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional2/BatchNorm/moving_mean*
	container *
shape: 
Ź
7yolov3-tiny/convolutional2/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional2/BatchNorm/moving_meanByolov3-tiny/convolutional2/BatchNorm/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional2/BatchNorm/moving_mean
Ż
5yolov3-tiny/convolutional2/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional2/BatchNorm/moving_mean*
_output_shapes
: *
T0*C
_class9
75loc:@yolov3-tiny/convolutional2/BatchNorm/moving_mean
Ū
Eyolov3-tiny/convolutional2/BatchNorm/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
: *G
_class=
;9loc:@yolov3-tiny/convolutional2/BatchNorm/moving_variance*
valueB *  ?
é
4yolov3-tiny/convolutional2/BatchNorm/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional2/BatchNorm/moving_variance*
	container *
shape: 
Ł
;yolov3-tiny/convolutional2/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional2/BatchNorm/moving_varianceEyolov3-tiny/convolutional2/BatchNorm/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional2/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
é
9yolov3-tiny/convolutional2/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional2/BatchNorm/moving_variance*
_output_shapes
: *
T0*G
_class=
;9loc:@yolov3-tiny/convolutional2/BatchNorm/moving_variance
Ė
3yolov3-tiny/convolutional2/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional2/Conv2D/yolov3-tiny/convolutional2/BatchNorm/gamma/read.yolov3-tiny/convolutional2/BatchNorm/beta/read5yolov3-tiny/convolutional2/BatchNorm/moving_mean/read9yolov3-tiny/convolutional2/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*I
_output_shapes7
5:’’’’’’’’’ŠŠ : : : : *
is_training( 
o
*yolov3-tiny/convolutional2/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
³
%yolov3-tiny/convolutional2/Activation	LeakyRelu3yolov3-tiny/convolutional2/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*1
_output_shapes
:’’’’’’’’’ŠŠ 
Ś
yolov3-tiny/maxpool2/MaxPoolMaxPool%yolov3-tiny/convolutional2/Activation*/
_output_shapes
:’’’’’’’’’hh *
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
Ń
Byolov3-tiny/convolutional3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*%
valueB"          @   
»
@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/minConst*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
valueB
 *«ŖŖ½*
dtype0*
_output_shapes
: 
»
@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
valueB
 *«ŖŖ=*
dtype0*
_output_shapes
: 
¬
Jyolov3-tiny/convolutional3/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
seed2 
¢
@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
_output_shapes
: 
¼
@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional3/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*&
_output_shapes
: @
®
<yolov3-tiny/convolutional3/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional3/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*&
_output_shapes
: @
Ū
!yolov3-tiny/convolutional3/kernel
VariableV2*
shared_name *4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
	container *
shape: @*
dtype0*&
_output_shapes
: @
£
(yolov3-tiny/convolutional3/kernel/AssignAssign!yolov3-tiny/convolutional3/kernel<yolov3-tiny/convolutional3/kernel/Initializer/random_uniform*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
¼
&yolov3-tiny/convolutional3/kernel/readIdentity!yolov3-tiny/convolutional3/kernel*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*&
_output_shapes
: @
y
(yolov3-tiny/convolutional3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
²
!yolov3-tiny/convolutional3/Conv2DConv2Dyolov3-tiny/maxpool2/MaxPool&yolov3-tiny/convolutional3/kernel/read*
paddingSAME*/
_output_shapes
:’’’’’’’’’hh@*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
Ē
;yolov3-tiny/convolutional3/BatchNorm/gamma/Initializer/onesConst*=
_class3
1/loc:@yolov3-tiny/convolutional3/BatchNorm/gamma*
valueB@*  ?*
dtype0*
_output_shapes
:@
Õ
*yolov3-tiny/convolutional3/BatchNorm/gamma
VariableV2*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional3/BatchNorm/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
±
1yolov3-tiny/convolutional3/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional3/BatchNorm/gamma;yolov3-tiny/convolutional3/BatchNorm/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional3/BatchNorm/gamma
Ė
/yolov3-tiny/convolutional3/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional3/BatchNorm/gamma*
_output_shapes
:@*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional3/BatchNorm/gamma
Ę
;yolov3-tiny/convolutional3/BatchNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*<
_class2
0.loc:@yolov3-tiny/convolutional3/BatchNorm/beta*
valueB@*    
Ó
)yolov3-tiny/convolutional3/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional3/BatchNorm/beta*
	container 
®
0yolov3-tiny/convolutional3/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional3/BatchNorm/beta;yolov3-tiny/convolutional3/BatchNorm/beta/Initializer/zeros*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional3/BatchNorm/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
Č
.yolov3-tiny/convolutional3/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional3/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional3/BatchNorm/beta*
_output_shapes
:@
Ō
Byolov3-tiny/convolutional3/BatchNorm/moving_mean/Initializer/zerosConst*C
_class9
75loc:@yolov3-tiny/convolutional3/BatchNorm/moving_mean*
valueB@*    *
dtype0*
_output_shapes
:@
į
0yolov3-tiny/convolutional3/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional3/BatchNorm/moving_mean*
	container 
Ź
7yolov3-tiny/convolutional3/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional3/BatchNorm/moving_meanByolov3-tiny/convolutional3/BatchNorm/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional3/BatchNorm/moving_mean
Ż
5yolov3-tiny/convolutional3/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional3/BatchNorm/moving_mean*
_output_shapes
:@*
T0*C
_class9
75loc:@yolov3-tiny/convolutional3/BatchNorm/moving_mean
Ū
Eyolov3-tiny/convolutional3/BatchNorm/moving_variance/Initializer/onesConst*G
_class=
;9loc:@yolov3-tiny/convolutional3/BatchNorm/moving_variance*
valueB@*  ?*
dtype0*
_output_shapes
:@
é
4yolov3-tiny/convolutional3/BatchNorm/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional3/BatchNorm/moving_variance*
	container *
shape:@
Ł
;yolov3-tiny/convolutional3/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional3/BatchNorm/moving_varianceEyolov3-tiny/convolutional3/BatchNorm/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional3/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
é
9yolov3-tiny/convolutional3/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional3/BatchNorm/moving_variance*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional3/BatchNorm/moving_variance*
_output_shapes
:@
É
3yolov3-tiny/convolutional3/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional3/Conv2D/yolov3-tiny/convolutional3/BatchNorm/gamma/read.yolov3-tiny/convolutional3/BatchNorm/beta/read5yolov3-tiny/convolutional3/BatchNorm/moving_mean/read9yolov3-tiny/convolutional3/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*G
_output_shapes5
3:’’’’’’’’’hh@:@:@:@:@*
is_training( 
o
*yolov3-tiny/convolutional3/BatchNorm/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *fff?
±
%yolov3-tiny/convolutional3/Activation	LeakyRelu3yolov3-tiny/convolutional3/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*/
_output_shapes
:’’’’’’’’’hh@
Ś
yolov3-tiny/maxpool3/MaxPoolMaxPool%yolov3-tiny/convolutional3/Activation*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’44@
Ń
Byolov3-tiny/convolutional4/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*%
valueB"      @      
»
@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*
valueB
 *ļ[q½
»
@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*
valueB
 *ļ[q=*
dtype0*
_output_shapes
: 
­
Jyolov3-tiny/convolutional4/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional4/kernel/Initializer/random_uniform/shape*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*
seed2 *
dtype0*'
_output_shapes
:@*

seed 
¢
@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*
_output_shapes
: 
½
@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional4/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*'
_output_shapes
:@
Æ
<yolov3-tiny/convolutional4/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional4/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*'
_output_shapes
:@
Ż
!yolov3-tiny/convolutional4/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
shared_name *4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*
	container *
shape:@
¤
(yolov3-tiny/convolutional4/kernel/AssignAssign!yolov3-tiny/convolutional4/kernel<yolov3-tiny/convolutional4/kernel/Initializer/random_uniform*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel
½
&yolov3-tiny/convolutional4/kernel/readIdentity!yolov3-tiny/convolutional4/kernel*'
_output_shapes
:@*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel
y
(yolov3-tiny/convolutional4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
³
!yolov3-tiny/convolutional4/Conv2DConv2Dyolov3-tiny/maxpool3/MaxPool&yolov3-tiny/convolutional4/kernel/read*
paddingSAME*0
_output_shapes
:’’’’’’’’’44*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
É
;yolov3-tiny/convolutional4/BatchNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*=
_class3
1/loc:@yolov3-tiny/convolutional4/BatchNorm/gamma*
valueB*  ?
×
*yolov3-tiny/convolutional4/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional4/BatchNorm/gamma*
	container *
shape:
²
1yolov3-tiny/convolutional4/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional4/BatchNorm/gamma;yolov3-tiny/convolutional4/BatchNorm/gamma/Initializer/ones*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional4/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
Ģ
/yolov3-tiny/convolutional4/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional4/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional4/BatchNorm/gamma*
_output_shapes	
:
Č
;yolov3-tiny/convolutional4/BatchNorm/beta/Initializer/zerosConst*<
_class2
0.loc:@yolov3-tiny/convolutional4/BatchNorm/beta*
valueB*    *
dtype0*
_output_shapes	
:
Õ
)yolov3-tiny/convolutional4/BatchNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional4/BatchNorm/beta*
	container *
shape:
Æ
0yolov3-tiny/convolutional4/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional4/BatchNorm/beta;yolov3-tiny/convolutional4/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional4/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
É
.yolov3-tiny/convolutional4/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional4/BatchNorm/beta*
_output_shapes	
:*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional4/BatchNorm/beta
Ö
Byolov3-tiny/convolutional4/BatchNorm/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*C
_class9
75loc:@yolov3-tiny/convolutional4/BatchNorm/moving_mean*
valueB*    
ć
0yolov3-tiny/convolutional4/BatchNorm/moving_mean
VariableV2*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional4/BatchNorm/moving_mean*
	container *
shape:*
dtype0*
_output_shapes	
:
Ė
7yolov3-tiny/convolutional4/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional4/BatchNorm/moving_meanByolov3-tiny/convolutional4/BatchNorm/moving_mean/Initializer/zeros*
T0*C
_class9
75loc:@yolov3-tiny/convolutional4/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
Ž
5yolov3-tiny/convolutional4/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional4/BatchNorm/moving_mean*
T0*C
_class9
75loc:@yolov3-tiny/convolutional4/BatchNorm/moving_mean*
_output_shapes	
:
Ż
Eyolov3-tiny/convolutional4/BatchNorm/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:*G
_class=
;9loc:@yolov3-tiny/convolutional4/BatchNorm/moving_variance*
valueB*  ?
ė
4yolov3-tiny/convolutional4/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional4/BatchNorm/moving_variance*
	container 
Ś
;yolov3-tiny/convolutional4/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional4/BatchNorm/moving_varianceEyolov3-tiny/convolutional4/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional4/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ź
9yolov3-tiny/convolutional4/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional4/BatchNorm/moving_variance*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional4/BatchNorm/moving_variance*
_output_shapes	
:
Ī
3yolov3-tiny/convolutional4/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional4/Conv2D/yolov3-tiny/convolutional4/BatchNorm/gamma/read.yolov3-tiny/convolutional4/BatchNorm/beta/read5yolov3-tiny/convolutional4/BatchNorm/moving_mean/read9yolov3-tiny/convolutional4/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’44::::*
is_training( 
o
*yolov3-tiny/convolutional4/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
²
%yolov3-tiny/convolutional4/Activation	LeakyRelu3yolov3-tiny/convolutional4/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’44
Ū
yolov3-tiny/maxpool4/MaxPoolMaxPool%yolov3-tiny/convolutional4/Activation*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:’’’’’’’’’
Ń
Byolov3-tiny/convolutional5/kernel/Initializer/random_uniform/shapeConst*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*%
valueB"            *
dtype0*
_output_shapes
:
»
@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*
valueB
 *«Ŗ*½
»
@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*
valueB
 *«Ŗ*=*
dtype0*
_output_shapes
: 
®
Jyolov3-tiny/convolutional5/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional5/kernel/Initializer/random_uniform/shape*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
¢
@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*
_output_shapes
: 
¾
@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional5/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*(
_output_shapes
:
°
<yolov3-tiny/convolutional5/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional5/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*(
_output_shapes
:
ß
!yolov3-tiny/convolutional5/kernel
VariableV2*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name *4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel
„
(yolov3-tiny/convolutional5/kernel/AssignAssign!yolov3-tiny/convolutional5/kernel<yolov3-tiny/convolutional5/kernel/Initializer/random_uniform*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*
validate_shape(*(
_output_shapes
:
¾
&yolov3-tiny/convolutional5/kernel/readIdentity!yolov3-tiny/convolutional5/kernel*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*(
_output_shapes
:
y
(yolov3-tiny/convolutional5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
³
!yolov3-tiny/convolutional5/Conv2DConv2Dyolov3-tiny/maxpool4/MaxPool&yolov3-tiny/convolutional5/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*0
_output_shapes
:’’’’’’’’’*
	dilations
*
T0
É
;yolov3-tiny/convolutional5/BatchNorm/gamma/Initializer/onesConst*=
_class3
1/loc:@yolov3-tiny/convolutional5/BatchNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
×
*yolov3-tiny/convolutional5/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional5/BatchNorm/gamma*
	container *
shape:
²
1yolov3-tiny/convolutional5/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional5/BatchNorm/gamma;yolov3-tiny/convolutional5/BatchNorm/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional5/BatchNorm/gamma
Ģ
/yolov3-tiny/convolutional5/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional5/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional5/BatchNorm/gamma*
_output_shapes	
:
Č
;yolov3-tiny/convolutional5/BatchNorm/beta/Initializer/zerosConst*<
_class2
0.loc:@yolov3-tiny/convolutional5/BatchNorm/beta*
valueB*    *
dtype0*
_output_shapes	
:
Õ
)yolov3-tiny/convolutional5/BatchNorm/beta
VariableV2*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional5/BatchNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:
Æ
0yolov3-tiny/convolutional5/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional5/BatchNorm/beta;yolov3-tiny/convolutional5/BatchNorm/beta/Initializer/zeros*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional5/BatchNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
É
.yolov3-tiny/convolutional5/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional5/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional5/BatchNorm/beta*
_output_shapes	
:
Ö
Byolov3-tiny/convolutional5/BatchNorm/moving_mean/Initializer/zerosConst*C
_class9
75loc:@yolov3-tiny/convolutional5/BatchNorm/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
ć
0yolov3-tiny/convolutional5/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional5/BatchNorm/moving_mean*
	container 
Ė
7yolov3-tiny/convolutional5/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional5/BatchNorm/moving_meanByolov3-tiny/convolutional5/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional5/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
Ž
5yolov3-tiny/convolutional5/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional5/BatchNorm/moving_mean*
T0*C
_class9
75loc:@yolov3-tiny/convolutional5/BatchNorm/moving_mean*
_output_shapes	
:
Ż
Eyolov3-tiny/convolutional5/BatchNorm/moving_variance/Initializer/onesConst*G
_class=
;9loc:@yolov3-tiny/convolutional5/BatchNorm/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
ė
4yolov3-tiny/convolutional5/BatchNorm/moving_variance
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional5/BatchNorm/moving_variance*
	container *
shape:
Ś
;yolov3-tiny/convolutional5/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional5/BatchNorm/moving_varianceEyolov3-tiny/convolutional5/BatchNorm/moving_variance/Initializer/ones*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional5/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ź
9yolov3-tiny/convolutional5/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional5/BatchNorm/moving_variance*
_output_shapes	
:*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional5/BatchNorm/moving_variance
Ī
3yolov3-tiny/convolutional5/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional5/Conv2D/yolov3-tiny/convolutional5/BatchNorm/gamma/read.yolov3-tiny/convolutional5/BatchNorm/beta/read5yolov3-tiny/convolutional5/BatchNorm/moving_mean/read9yolov3-tiny/convolutional5/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( 
o
*yolov3-tiny/convolutional5/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
²
%yolov3-tiny/convolutional5/Activation	LeakyRelu3yolov3-tiny/convolutional5/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’
Ū
yolov3-tiny/maxpool5/MaxPoolMaxPool%yolov3-tiny/convolutional5/Activation*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*0
_output_shapes
:’’’’’’’’’
Ń
Byolov3-tiny/convolutional6/kernel/Initializer/random_uniform/shapeConst*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*%
valueB"            *
dtype0*
_output_shapes
:
»
@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
valueB
 *ļ[ń¼
»
@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
valueB
 *ļ[ń<*
dtype0*
_output_shapes
: 
®
Jyolov3-tiny/convolutional6/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional6/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
seed2 
¢
@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
_output_shapes
: 
¾
@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional6/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*(
_output_shapes
:
°
<yolov3-tiny/convolutional6/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional6/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*(
_output_shapes
:
ß
!yolov3-tiny/convolutional6/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
	container *
shape:
„
(yolov3-tiny/convolutional6/kernel/AssignAssign!yolov3-tiny/convolutional6/kernel<yolov3-tiny/convolutional6/kernel/Initializer/random_uniform*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
¾
&yolov3-tiny/convolutional6/kernel/readIdentity!yolov3-tiny/convolutional6/kernel*(
_output_shapes
:*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel
y
(yolov3-tiny/convolutional6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
³
!yolov3-tiny/convolutional6/Conv2DConv2Dyolov3-tiny/maxpool5/MaxPool&yolov3-tiny/convolutional6/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*0
_output_shapes
:’’’’’’’’’*
	dilations

É
;yolov3-tiny/convolutional6/BatchNorm/gamma/Initializer/onesConst*=
_class3
1/loc:@yolov3-tiny/convolutional6/BatchNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
×
*yolov3-tiny/convolutional6/BatchNorm/gamma
VariableV2*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional6/BatchNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
²
1yolov3-tiny/convolutional6/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional6/BatchNorm/gamma;yolov3-tiny/convolutional6/BatchNorm/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional6/BatchNorm/gamma
Ģ
/yolov3-tiny/convolutional6/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional6/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional6/BatchNorm/gamma*
_output_shapes	
:
Č
;yolov3-tiny/convolutional6/BatchNorm/beta/Initializer/zerosConst*<
_class2
0.loc:@yolov3-tiny/convolutional6/BatchNorm/beta*
valueB*    *
dtype0*
_output_shapes	
:
Õ
)yolov3-tiny/convolutional6/BatchNorm/beta
VariableV2*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional6/BatchNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:
Æ
0yolov3-tiny/convolutional6/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional6/BatchNorm/beta;yolov3-tiny/convolutional6/BatchNorm/beta/Initializer/zeros*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional6/BatchNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
É
.yolov3-tiny/convolutional6/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional6/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional6/BatchNorm/beta*
_output_shapes	
:
Ö
Byolov3-tiny/convolutional6/BatchNorm/moving_mean/Initializer/zerosConst*C
_class9
75loc:@yolov3-tiny/convolutional6/BatchNorm/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
ć
0yolov3-tiny/convolutional6/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional6/BatchNorm/moving_mean*
	container *
shape:
Ė
7yolov3-tiny/convolutional6/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional6/BatchNorm/moving_meanByolov3-tiny/convolutional6/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional6/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
Ž
5yolov3-tiny/convolutional6/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional6/BatchNorm/moving_mean*
_output_shapes	
:*
T0*C
_class9
75loc:@yolov3-tiny/convolutional6/BatchNorm/moving_mean
Ż
Eyolov3-tiny/convolutional6/BatchNorm/moving_variance/Initializer/onesConst*G
_class=
;9loc:@yolov3-tiny/convolutional6/BatchNorm/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
ė
4yolov3-tiny/convolutional6/BatchNorm/moving_variance
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional6/BatchNorm/moving_variance*
	container *
shape:
Ś
;yolov3-tiny/convolutional6/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional6/BatchNorm/moving_varianceEyolov3-tiny/convolutional6/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional6/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ź
9yolov3-tiny/convolutional6/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional6/BatchNorm/moving_variance*
_output_shapes	
:*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional6/BatchNorm/moving_variance
Ī
3yolov3-tiny/convolutional6/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional6/Conv2D/yolov3-tiny/convolutional6/BatchNorm/gamma/read.yolov3-tiny/convolutional6/BatchNorm/beta/read5yolov3-tiny/convolutional6/BatchNorm/moving_mean/read9yolov3-tiny/convolutional6/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( 
o
*yolov3-tiny/convolutional6/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
²
%yolov3-tiny/convolutional6/Activation	LeakyRelu3yolov3-tiny/convolutional6/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’
Ū
yolov3-tiny/maxpool6/MaxPoolMaxPool%yolov3-tiny/convolutional6/Activation*
ksize
*
paddingSAME*0
_output_shapes
:’’’’’’’’’*
T0*
data_formatNHWC*
strides

Ń
Byolov3-tiny/convolutional7/kernel/Initializer/random_uniform/shapeConst*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*%
valueB"            *
dtype0*
_output_shapes
:
»
@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/minConst*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
valueB
 *«ŖŖ¼*
dtype0*
_output_shapes
: 
»
@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
valueB
 *«ŖŖ<*
dtype0*
_output_shapes
: 
®
Jyolov3-tiny/convolutional7/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional7/kernel/Initializer/random_uniform/shape*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
¢
@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
_output_shapes
: 
¾
@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional7/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*(
_output_shapes
:
°
<yolov3-tiny/convolutional7/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional7/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*(
_output_shapes
:
ß
!yolov3-tiny/convolutional7/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
	container *
shape:
„
(yolov3-tiny/convolutional7/kernel/AssignAssign!yolov3-tiny/convolutional7/kernel<yolov3-tiny/convolutional7/kernel/Initializer/random_uniform*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel
¾
&yolov3-tiny/convolutional7/kernel/readIdentity!yolov3-tiny/convolutional7/kernel*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*(
_output_shapes
:
y
(yolov3-tiny/convolutional7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
³
!yolov3-tiny/convolutional7/Conv2DConv2Dyolov3-tiny/maxpool6/MaxPool&yolov3-tiny/convolutional7/kernel/read*
paddingSAME*0
_output_shapes
:’’’’’’’’’*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
Õ
Kyolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/ones/shape_as_tensorConst*=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*
valueB:*
dtype0*
_output_shapes
:
Å
Ayolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/ones/ConstConst*
dtype0*
_output_shapes
: *=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*
valueB
 *  ?
Ź
;yolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/onesFillKyolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/ones/shape_as_tensorAyolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/ones/Const*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*

index_type0*
_output_shapes	
:
×
*yolov3-tiny/convolutional7/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*
	container *
shape:
²
1yolov3-tiny/convolutional7/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional7/BatchNorm/gamma;yolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma
Ģ
/yolov3-tiny/convolutional7/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional7/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*
_output_shapes	
:
Ō
Kyolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta*
valueB:
Ä
Ayolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta*
valueB
 *    
É
;yolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zerosFillKyolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zeros/shape_as_tensorAyolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zeros/Const*
_output_shapes	
:*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta*

index_type0
Õ
)yolov3-tiny/convolutional7/BatchNorm/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta
Æ
0yolov3-tiny/convolutional7/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional7/BatchNorm/beta;yolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
É
.yolov3-tiny/convolutional7/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional7/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta*
_output_shapes	
:
ā
Ryolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*
valueB:*
dtype0*
_output_shapes
:
Ņ
Hyolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zeros/ConstConst*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*
valueB
 *    *
dtype0*
_output_shapes
: 
å
Byolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zerosFillRyolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorHyolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*

index_type0*
_output_shapes	
:
ć
0yolov3-tiny/convolutional7/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*
	container *
shape:
Ė
7yolov3-tiny/convolutional7/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional7/BatchNorm/moving_meanByolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
Ž
5yolov3-tiny/convolutional7/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional7/BatchNorm/moving_mean*
T0*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*
_output_shapes	
:
é
Uyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance*
valueB:*
dtype0*
_output_shapes
:
Ł
Kyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/ones/ConstConst*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ņ
Eyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/onesFillUyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorKyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/ones/Const*
_output_shapes	
:*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance*

index_type0
ė
4yolov3-tiny/convolutional7/BatchNorm/moving_variance
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance*
	container *
shape:
Ś
;yolov3-tiny/convolutional7/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional7/BatchNorm/moving_varianceEyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance
ź
9yolov3-tiny/convolutional7/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional7/BatchNorm/moving_variance*
_output_shapes	
:*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance
Ī
3yolov3-tiny/convolutional7/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional7/Conv2D/yolov3-tiny/convolutional7/BatchNorm/gamma/read.yolov3-tiny/convolutional7/BatchNorm/beta/read5yolov3-tiny/convolutional7/BatchNorm/moving_mean/read9yolov3-tiny/convolutional7/BatchNorm/moving_variance/read*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( *
epsilon%š'7*
T0
o
*yolov3-tiny/convolutional7/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
²
%yolov3-tiny/convolutional7/Activation	LeakyRelu3yolov3-tiny/convolutional7/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’
Ń
Byolov3-tiny/convolutional8/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*%
valueB"            
»
@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/minConst*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*
valueB
 *7½*
dtype0*
_output_shapes
: 
»
@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*
valueB
 *7=*
dtype0*
_output_shapes
: 
®
Jyolov3-tiny/convolutional8/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional8/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*
seed2 
¢
@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel
¾
@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional8/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/sub*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*(
_output_shapes
:
°
<yolov3-tiny/convolutional8/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional8/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*(
_output_shapes
:
ß
!yolov3-tiny/convolutional8/kernel
VariableV2*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name 
„
(yolov3-tiny/convolutional8/kernel/AssignAssign!yolov3-tiny/convolutional8/kernel<yolov3-tiny/convolutional8/kernel/Initializer/random_uniform*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
¾
&yolov3-tiny/convolutional8/kernel/readIdentity!yolov3-tiny/convolutional8/kernel*(
_output_shapes
:*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel
y
(yolov3-tiny/convolutional8/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¼
!yolov3-tiny/convolutional8/Conv2DConv2D%yolov3-tiny/convolutional7/Activation&yolov3-tiny/convolutional8/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*0
_output_shapes
:’’’’’’’’’
É
;yolov3-tiny/convolutional8/BatchNorm/gamma/Initializer/onesConst*=
_class3
1/loc:@yolov3-tiny/convolutional8/BatchNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
×
*yolov3-tiny/convolutional8/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional8/BatchNorm/gamma*
	container *
shape:
²
1yolov3-tiny/convolutional8/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional8/BatchNorm/gamma;yolov3-tiny/convolutional8/BatchNorm/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional8/BatchNorm/gamma
Ģ
/yolov3-tiny/convolutional8/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional8/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional8/BatchNorm/gamma*
_output_shapes	
:
Č
;yolov3-tiny/convolutional8/BatchNorm/beta/Initializer/zerosConst*<
_class2
0.loc:@yolov3-tiny/convolutional8/BatchNorm/beta*
valueB*    *
dtype0*
_output_shapes	
:
Õ
)yolov3-tiny/convolutional8/BatchNorm/beta
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional8/BatchNorm/beta*
	container *
shape:
Æ
0yolov3-tiny/convolutional8/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional8/BatchNorm/beta;yolov3-tiny/convolutional8/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional8/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
É
.yolov3-tiny/convolutional8/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional8/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional8/BatchNorm/beta*
_output_shapes	
:
Ö
Byolov3-tiny/convolutional8/BatchNorm/moving_mean/Initializer/zerosConst*C
_class9
75loc:@yolov3-tiny/convolutional8/BatchNorm/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
ć
0yolov3-tiny/convolutional8/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional8/BatchNorm/moving_mean*
	container *
shape:
Ė
7yolov3-tiny/convolutional8/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional8/BatchNorm/moving_meanByolov3-tiny/convolutional8/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional8/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
Ž
5yolov3-tiny/convolutional8/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional8/BatchNorm/moving_mean*
_output_shapes	
:*
T0*C
_class9
75loc:@yolov3-tiny/convolutional8/BatchNorm/moving_mean
Ż
Eyolov3-tiny/convolutional8/BatchNorm/moving_variance/Initializer/onesConst*G
_class=
;9loc:@yolov3-tiny/convolutional8/BatchNorm/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
ė
4yolov3-tiny/convolutional8/BatchNorm/moving_variance
VariableV2*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional8/BatchNorm/moving_variance*
	container *
shape:*
dtype0*
_output_shapes	
:
Ś
;yolov3-tiny/convolutional8/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional8/BatchNorm/moving_varianceEyolov3-tiny/convolutional8/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional8/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ź
9yolov3-tiny/convolutional8/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional8/BatchNorm/moving_variance*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional8/BatchNorm/moving_variance*
_output_shapes	
:
Ī
3yolov3-tiny/convolutional8/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional8/Conv2D/yolov3-tiny/convolutional8/BatchNorm/gamma/read.yolov3-tiny/convolutional8/BatchNorm/beta/read5yolov3-tiny/convolutional8/BatchNorm/moving_mean/read9yolov3-tiny/convolutional8/BatchNorm/moving_variance/read*
T0*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( *
epsilon%š'7
o
*yolov3-tiny/convolutional8/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
²
%yolov3-tiny/convolutional8/Activation	LeakyRelu3yolov3-tiny/convolutional8/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’
Ń
Byolov3-tiny/convolutional9/kernel/Initializer/random_uniform/shapeConst*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*%
valueB"            *
dtype0*
_output_shapes
:
»
@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/minConst*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
valueB
 *ļ[ń¼*
dtype0*
_output_shapes
: 
»
@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/maxConst*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
valueB
 *ļ[ń<*
dtype0*
_output_shapes
: 
®
Jyolov3-tiny/convolutional9/kernel/Initializer/random_uniform/RandomUniformRandomUniformByolov3-tiny/convolutional9/kernel/Initializer/random_uniform/shape*

seed *
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
seed2 *
dtype0*(
_output_shapes
:
¢
@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/subSub@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/max@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
_output_shapes
: 
¾
@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/mulMulJyolov3-tiny/convolutional9/kernel/Initializer/random_uniform/RandomUniform@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel
°
<yolov3-tiny/convolutional9/kernel/Initializer/random_uniformAdd@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/mul@yolov3-tiny/convolutional9/kernel/Initializer/random_uniform/min*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*(
_output_shapes
:
ß
!yolov3-tiny/convolutional9/kernel
VariableV2*
shared_name *4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
	container *
shape:*
dtype0*(
_output_shapes
:
„
(yolov3-tiny/convolutional9/kernel/AssignAssign!yolov3-tiny/convolutional9/kernel<yolov3-tiny/convolutional9/kernel/Initializer/random_uniform*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
¾
&yolov3-tiny/convolutional9/kernel/readIdentity!yolov3-tiny/convolutional9/kernel*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*(
_output_shapes
:
y
(yolov3-tiny/convolutional9/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
¼
!yolov3-tiny/convolutional9/Conv2DConv2D%yolov3-tiny/convolutional8/Activation&yolov3-tiny/convolutional9/kernel/read*0
_output_shapes
:’’’’’’’’’*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME
É
;yolov3-tiny/convolutional9/BatchNorm/gamma/Initializer/onesConst*=
_class3
1/loc:@yolov3-tiny/convolutional9/BatchNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
×
*yolov3-tiny/convolutional9/BatchNorm/gamma
VariableV2*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional9/BatchNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
²
1yolov3-tiny/convolutional9/BatchNorm/gamma/AssignAssign*yolov3-tiny/convolutional9/BatchNorm/gamma;yolov3-tiny/convolutional9/BatchNorm/gamma/Initializer/ones*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional9/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
Ģ
/yolov3-tiny/convolutional9/BatchNorm/gamma/readIdentity*yolov3-tiny/convolutional9/BatchNorm/gamma*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional9/BatchNorm/gamma*
_output_shapes	
:
Č
;yolov3-tiny/convolutional9/BatchNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*<
_class2
0.loc:@yolov3-tiny/convolutional9/BatchNorm/beta*
valueB*    
Õ
)yolov3-tiny/convolutional9/BatchNorm/beta
VariableV2*
shared_name *<
_class2
0.loc:@yolov3-tiny/convolutional9/BatchNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:
Æ
0yolov3-tiny/convolutional9/BatchNorm/beta/AssignAssign)yolov3-tiny/convolutional9/BatchNorm/beta;yolov3-tiny/convolutional9/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional9/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
É
.yolov3-tiny/convolutional9/BatchNorm/beta/readIdentity)yolov3-tiny/convolutional9/BatchNorm/beta*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional9/BatchNorm/beta*
_output_shapes	
:
Ö
Byolov3-tiny/convolutional9/BatchNorm/moving_mean/Initializer/zerosConst*C
_class9
75loc:@yolov3-tiny/convolutional9/BatchNorm/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
ć
0yolov3-tiny/convolutional9/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *C
_class9
75loc:@yolov3-tiny/convolutional9/BatchNorm/moving_mean*
	container *
shape:
Ė
7yolov3-tiny/convolutional9/BatchNorm/moving_mean/AssignAssign0yolov3-tiny/convolutional9/BatchNorm/moving_meanByolov3-tiny/convolutional9/BatchNorm/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional9/BatchNorm/moving_mean
Ž
5yolov3-tiny/convolutional9/BatchNorm/moving_mean/readIdentity0yolov3-tiny/convolutional9/BatchNorm/moving_mean*
T0*C
_class9
75loc:@yolov3-tiny/convolutional9/BatchNorm/moving_mean*
_output_shapes	
:
Ż
Eyolov3-tiny/convolutional9/BatchNorm/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:*G
_class=
;9loc:@yolov3-tiny/convolutional9/BatchNorm/moving_variance*
valueB*  ?
ė
4yolov3-tiny/convolutional9/BatchNorm/moving_variance
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *G
_class=
;9loc:@yolov3-tiny/convolutional9/BatchNorm/moving_variance
Ś
;yolov3-tiny/convolutional9/BatchNorm/moving_variance/AssignAssign4yolov3-tiny/convolutional9/BatchNorm/moving_varianceEyolov3-tiny/convolutional9/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional9/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ź
9yolov3-tiny/convolutional9/BatchNorm/moving_variance/readIdentity4yolov3-tiny/convolutional9/BatchNorm/moving_variance*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional9/BatchNorm/moving_variance*
_output_shapes	
:
Ī
3yolov3-tiny/convolutional9/BatchNorm/FusedBatchNormFusedBatchNorm!yolov3-tiny/convolutional9/Conv2D/yolov3-tiny/convolutional9/BatchNorm/gamma/read.yolov3-tiny/convolutional9/BatchNorm/beta/read5yolov3-tiny/convolutional9/BatchNorm/moving_mean/read9yolov3-tiny/convolutional9/BatchNorm/moving_variance/read*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( *
epsilon%š'7*
T0
o
*yolov3-tiny/convolutional9/BatchNorm/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *fff?
²
%yolov3-tiny/convolutional9/Activation	LeakyRelu3yolov3-tiny/convolutional9/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’
Ó
Cyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*%
valueB"            
½
Ayolov3-tiny/convolutional10/kernel/Initializer/random_uniform/minConst*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*
valueB
 *£®Ų½*
dtype0*
_output_shapes
: 
½
Ayolov3-tiny/convolutional10/kernel/Initializer/random_uniform/maxConst*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*
valueB
 *£®Ų=*
dtype0*
_output_shapes
: 
°
Kyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/RandomUniformRandomUniformCyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/shape*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*
seed2 *
dtype0*'
_output_shapes
:*

seed 
¦
Ayolov3-tiny/convolutional10/kernel/Initializer/random_uniform/subSubAyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/maxAyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel
Į
Ayolov3-tiny/convolutional10/kernel/Initializer/random_uniform/mulMulKyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/RandomUniformAyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*'
_output_shapes
:
³
=yolov3-tiny/convolutional10/kernel/Initializer/random_uniformAddAyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/mulAyolov3-tiny/convolutional10/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*'
_output_shapes
:
ß
"yolov3-tiny/convolutional10/kernel
VariableV2*
	container *
shape:*
dtype0*'
_output_shapes
:*
shared_name *5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel
Ø
)yolov3-tiny/convolutional10/kernel/AssignAssign"yolov3-tiny/convolutional10/kernel=yolov3-tiny/convolutional10/kernel/Initializer/random_uniform*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*
validate_shape(*'
_output_shapes
:
Ą
'yolov3-tiny/convolutional10/kernel/readIdentity"yolov3-tiny/convolutional10/kernel*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*'
_output_shapes
:
“
2yolov3-tiny/convolutional10/bias/Initializer/zerosConst*3
_class)
'%loc:@yolov3-tiny/convolutional10/bias*
valueB*    *
dtype0*
_output_shapes
:
Į
 yolov3-tiny/convolutional10/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *3
_class)
'%loc:@yolov3-tiny/convolutional10/bias*
	container *
shape:

'yolov3-tiny/convolutional10/bias/AssignAssign yolov3-tiny/convolutional10/bias2yolov3-tiny/convolutional10/bias/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional10/bias*
validate_shape(*
_output_shapes
:
­
%yolov3-tiny/convolutional10/bias/readIdentity yolov3-tiny/convolutional10/bias*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional10/bias*
_output_shapes
:
z
)yolov3-tiny/convolutional10/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
½
"yolov3-tiny/convolutional10/Conv2DConv2D%yolov3-tiny/convolutional9/Activation'yolov3-tiny/convolutional10/kernel/read*/
_output_shapes
:’’’’’’’’’*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME
Ź
#yolov3-tiny/convolutional10/BiasAddBiasAdd"yolov3-tiny/convolutional10/Conv2D%yolov3-tiny/convolutional10/bias/read*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’*
T0
h
yolov3-tiny/route1/concat_dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

yolov3-tiny/route1Identity%yolov3-tiny/convolutional8/Activation*0
_output_shapes
:’’’’’’’’’*
T0
Ó
Cyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/shapeConst*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*%
valueB"            *
dtype0*
_output_shapes
:
½
Ayolov3-tiny/convolutional11/kernel/Initializer/random_uniform/minConst*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*
valueB
 *   ¾*
dtype0*
_output_shapes
: 
½
Ayolov3-tiny/convolutional11/kernel/Initializer/random_uniform/maxConst*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*
valueB
 *   >*
dtype0*
_output_shapes
: 
±
Kyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/RandomUniformRandomUniformCyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*
seed2 
¦
Ayolov3-tiny/convolutional11/kernel/Initializer/random_uniform/subSubAyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/maxAyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel
Ā
Ayolov3-tiny/convolutional11/kernel/Initializer/random_uniform/mulMulKyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/RandomUniformAyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*(
_output_shapes
:
“
=yolov3-tiny/convolutional11/kernel/Initializer/random_uniformAddAyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/mulAyolov3-tiny/convolutional11/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*(
_output_shapes
:
į
"yolov3-tiny/convolutional11/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*
	container *
shape:
©
)yolov3-tiny/convolutional11/kernel/AssignAssign"yolov3-tiny/convolutional11/kernel=yolov3-tiny/convolutional11/kernel/Initializer/random_uniform*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
Į
'yolov3-tiny/convolutional11/kernel/readIdentity"yolov3-tiny/convolutional11/kernel*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*(
_output_shapes
:
z
)yolov3-tiny/convolutional11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
«
"yolov3-tiny/convolutional11/Conv2DConv2Dyolov3-tiny/route1'yolov3-tiny/convolutional11/kernel/read*0
_output_shapes
:’’’’’’’’’*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME
Ė
<yolov3-tiny/convolutional11/BatchNorm/gamma/Initializer/onesConst*>
_class4
20loc:@yolov3-tiny/convolutional11/BatchNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
Ł
+yolov3-tiny/convolutional11/BatchNorm/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *>
_class4
20loc:@yolov3-tiny/convolutional11/BatchNorm/gamma*
	container *
shape:
¶
2yolov3-tiny/convolutional11/BatchNorm/gamma/AssignAssign+yolov3-tiny/convolutional11/BatchNorm/gamma<yolov3-tiny/convolutional11/BatchNorm/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@yolov3-tiny/convolutional11/BatchNorm/gamma
Ļ
0yolov3-tiny/convolutional11/BatchNorm/gamma/readIdentity+yolov3-tiny/convolutional11/BatchNorm/gamma*
T0*>
_class4
20loc:@yolov3-tiny/convolutional11/BatchNorm/gamma*
_output_shapes	
:
Ź
<yolov3-tiny/convolutional11/BatchNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes	
:*=
_class3
1/loc:@yolov3-tiny/convolutional11/BatchNorm/beta*
valueB*    
×
*yolov3-tiny/convolutional11/BatchNorm/beta
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@yolov3-tiny/convolutional11/BatchNorm/beta*
	container 
³
1yolov3-tiny/convolutional11/BatchNorm/beta/AssignAssign*yolov3-tiny/convolutional11/BatchNorm/beta<yolov3-tiny/convolutional11/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional11/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
Ģ
/yolov3-tiny/convolutional11/BatchNorm/beta/readIdentity*yolov3-tiny/convolutional11/BatchNorm/beta*
_output_shapes	
:*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional11/BatchNorm/beta
Ų
Cyolov3-tiny/convolutional11/BatchNorm/moving_mean/Initializer/zerosConst*D
_class:
86loc:@yolov3-tiny/convolutional11/BatchNorm/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
å
1yolov3-tiny/convolutional11/BatchNorm/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *D
_class:
86loc:@yolov3-tiny/convolutional11/BatchNorm/moving_mean*
	container *
shape:
Ļ
8yolov3-tiny/convolutional11/BatchNorm/moving_mean/AssignAssign1yolov3-tiny/convolutional11/BatchNorm/moving_meanCyolov3-tiny/convolutional11/BatchNorm/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*D
_class:
86loc:@yolov3-tiny/convolutional11/BatchNorm/moving_mean
į
6yolov3-tiny/convolutional11/BatchNorm/moving_mean/readIdentity1yolov3-tiny/convolutional11/BatchNorm/moving_mean*
T0*D
_class:
86loc:@yolov3-tiny/convolutional11/BatchNorm/moving_mean*
_output_shapes	
:
ß
Fyolov3-tiny/convolutional11/BatchNorm/moving_variance/Initializer/onesConst*H
_class>
<:loc:@yolov3-tiny/convolutional11/BatchNorm/moving_variance*
valueB*  ?*
dtype0*
_output_shapes	
:
ķ
5yolov3-tiny/convolutional11/BatchNorm/moving_variance
VariableV2*H
_class>
<:loc:@yolov3-tiny/convolutional11/BatchNorm/moving_variance*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
Ž
<yolov3-tiny/convolutional11/BatchNorm/moving_variance/AssignAssign5yolov3-tiny/convolutional11/BatchNorm/moving_varianceFyolov3-tiny/convolutional11/BatchNorm/moving_variance/Initializer/ones*
use_locking(*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional11/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ķ
:yolov3-tiny/convolutional11/BatchNorm/moving_variance/readIdentity5yolov3-tiny/convolutional11/BatchNorm/moving_variance*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional11/BatchNorm/moving_variance*
_output_shapes	
:
Ō
4yolov3-tiny/convolutional11/BatchNorm/FusedBatchNormFusedBatchNorm"yolov3-tiny/convolutional11/Conv2D0yolov3-tiny/convolutional11/BatchNorm/gamma/read/yolov3-tiny/convolutional11/BatchNorm/beta/read6yolov3-tiny/convolutional11/BatchNorm/moving_mean/read:yolov3-tiny/convolutional11/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( 
p
+yolov3-tiny/convolutional11/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
“
&yolov3-tiny/convolutional11/Activation	LeakyRelu4yolov3-tiny/convolutional11/BatchNorm/FusedBatchNorm*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’*
T0
k
yolov3-tiny/upsample1/sizeConst*
valueB"      *
dtype0*
_output_shapes
:
Ü
yolov3-tiny/upsample1ResizeNearestNeighbor&yolov3-tiny/convolutional11/Activationyolov3-tiny/upsample1/size*
align_corners( *
half_pixel_centers( *
T0*0
_output_shapes
:’’’’’’’’’
b
yolov3-tiny/route2/axisConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Å
yolov3-tiny/route2ConcatV2yolov3-tiny/upsample1%yolov3-tiny/convolutional5/Activationyolov3-tiny/route2/axis*
N*0
_output_shapes
:’’’’’’’’’*

Tidx0*
T0
Ó
Cyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/shapeConst*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*%
valueB"           *
dtype0*
_output_shapes
:
½
Ayolov3-tiny/convolutional12/kernel/Initializer/random_uniform/minConst*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*
valueB
 *„2½*
dtype0*
_output_shapes
: 
½
Ayolov3-tiny/convolutional12/kernel/Initializer/random_uniform/maxConst*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*
valueB
 *„2=*
dtype0*
_output_shapes
: 
±
Kyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/RandomUniformRandomUniformCyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/shape*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
¦
Ayolov3-tiny/convolutional12/kernel/Initializer/random_uniform/subSubAyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/maxAyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel
Ā
Ayolov3-tiny/convolutional12/kernel/Initializer/random_uniform/mulMulKyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/RandomUniformAyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel
“
=yolov3-tiny/convolutional12/kernel/Initializer/random_uniformAddAyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/mulAyolov3-tiny/convolutional12/kernel/Initializer/random_uniform/min*(
_output_shapes
:*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel
į
"yolov3-tiny/convolutional12/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*
	container *
shape:
©
)yolov3-tiny/convolutional12/kernel/AssignAssign"yolov3-tiny/convolutional12/kernel=yolov3-tiny/convolutional12/kernel/Initializer/random_uniform*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*
validate_shape(*(
_output_shapes
:
Į
'yolov3-tiny/convolutional12/kernel/readIdentity"yolov3-tiny/convolutional12/kernel*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*(
_output_shapes
:
z
)yolov3-tiny/convolutional12/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
«
"yolov3-tiny/convolutional12/Conv2DConv2Dyolov3-tiny/route2'yolov3-tiny/convolutional12/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:’’’’’’’’’
Ė
<yolov3-tiny/convolutional12/BatchNorm/gamma/Initializer/onesConst*>
_class4
20loc:@yolov3-tiny/convolutional12/BatchNorm/gamma*
valueB*  ?*
dtype0*
_output_shapes	
:
Ł
+yolov3-tiny/convolutional12/BatchNorm/gamma
VariableV2*
shared_name *>
_class4
20loc:@yolov3-tiny/convolutional12/BatchNorm/gamma*
	container *
shape:*
dtype0*
_output_shapes	
:
¶
2yolov3-tiny/convolutional12/BatchNorm/gamma/AssignAssign+yolov3-tiny/convolutional12/BatchNorm/gamma<yolov3-tiny/convolutional12/BatchNorm/gamma/Initializer/ones*
use_locking(*
T0*>
_class4
20loc:@yolov3-tiny/convolutional12/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
Ļ
0yolov3-tiny/convolutional12/BatchNorm/gamma/readIdentity+yolov3-tiny/convolutional12/BatchNorm/gamma*
T0*>
_class4
20loc:@yolov3-tiny/convolutional12/BatchNorm/gamma*
_output_shapes	
:
Ź
<yolov3-tiny/convolutional12/BatchNorm/beta/Initializer/zerosConst*=
_class3
1/loc:@yolov3-tiny/convolutional12/BatchNorm/beta*
valueB*    *
dtype0*
_output_shapes	
:
×
*yolov3-tiny/convolutional12/BatchNorm/beta
VariableV2*=
_class3
1/loc:@yolov3-tiny/convolutional12/BatchNorm/beta*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name 
³
1yolov3-tiny/convolutional12/BatchNorm/beta/AssignAssign*yolov3-tiny/convolutional12/BatchNorm/beta<yolov3-tiny/convolutional12/BatchNorm/beta/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional12/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
Ģ
/yolov3-tiny/convolutional12/BatchNorm/beta/readIdentity*yolov3-tiny/convolutional12/BatchNorm/beta*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional12/BatchNorm/beta*
_output_shapes	
:
Ų
Cyolov3-tiny/convolutional12/BatchNorm/moving_mean/Initializer/zerosConst*D
_class:
86loc:@yolov3-tiny/convolutional12/BatchNorm/moving_mean*
valueB*    *
dtype0*
_output_shapes	
:
å
1yolov3-tiny/convolutional12/BatchNorm/moving_mean
VariableV2*
shared_name *D
_class:
86loc:@yolov3-tiny/convolutional12/BatchNorm/moving_mean*
	container *
shape:*
dtype0*
_output_shapes	
:
Ļ
8yolov3-tiny/convolutional12/BatchNorm/moving_mean/AssignAssign1yolov3-tiny/convolutional12/BatchNorm/moving_meanCyolov3-tiny/convolutional12/BatchNorm/moving_mean/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@yolov3-tiny/convolutional12/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
į
6yolov3-tiny/convolutional12/BatchNorm/moving_mean/readIdentity1yolov3-tiny/convolutional12/BatchNorm/moving_mean*
_output_shapes	
:*
T0*D
_class:
86loc:@yolov3-tiny/convolutional12/BatchNorm/moving_mean
ß
Fyolov3-tiny/convolutional12/BatchNorm/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes	
:*H
_class>
<:loc:@yolov3-tiny/convolutional12/BatchNorm/moving_variance*
valueB*  ?
ķ
5yolov3-tiny/convolutional12/BatchNorm/moving_variance
VariableV2*
shared_name *H
_class>
<:loc:@yolov3-tiny/convolutional12/BatchNorm/moving_variance*
	container *
shape:*
dtype0*
_output_shapes	
:
Ž
<yolov3-tiny/convolutional12/BatchNorm/moving_variance/AssignAssign5yolov3-tiny/convolutional12/BatchNorm/moving_varianceFyolov3-tiny/convolutional12/BatchNorm/moving_variance/Initializer/ones*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional12/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ķ
:yolov3-tiny/convolutional12/BatchNorm/moving_variance/readIdentity5yolov3-tiny/convolutional12/BatchNorm/moving_variance*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional12/BatchNorm/moving_variance*
_output_shapes	
:
Ō
4yolov3-tiny/convolutional12/BatchNorm/FusedBatchNormFusedBatchNorm"yolov3-tiny/convolutional12/Conv2D0yolov3-tiny/convolutional12/BatchNorm/gamma/read/yolov3-tiny/convolutional12/BatchNorm/beta/read6yolov3-tiny/convolutional12/BatchNorm/moving_mean/read:yolov3-tiny/convolutional12/BatchNorm/moving_variance/read*
epsilon%š'7*
T0*
data_formatNHWC*L
_output_shapes:
8:’’’’’’’’’::::*
is_training( 
p
+yolov3-tiny/convolutional12/BatchNorm/ConstConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
“
&yolov3-tiny/convolutional12/Activation	LeakyRelu4yolov3-tiny/convolutional12/BatchNorm/FusedBatchNorm*
T0*
alpha%ĶĢĢ=*0
_output_shapes
:’’’’’’’’’
Ó
Cyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/shapeConst*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*%
valueB"            *
dtype0*
_output_shapes
:
½
Ayolov3-tiny/convolutional13/kernel/Initializer/random_uniform/minConst*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
valueB
 *ōå¾*
dtype0*
_output_shapes
: 
½
Ayolov3-tiny/convolutional13/kernel/Initializer/random_uniform/maxConst*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
valueB
 *ōå>*
dtype0*
_output_shapes
: 
°
Kyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/RandomUniformRandomUniformCyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:*

seed *
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
seed2 
¦
Ayolov3-tiny/convolutional13/kernel/Initializer/random_uniform/subSubAyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/maxAyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
_output_shapes
: 
Į
Ayolov3-tiny/convolutional13/kernel/Initializer/random_uniform/mulMulKyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/RandomUniformAyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/sub*'
_output_shapes
:*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel
³
=yolov3-tiny/convolutional13/kernel/Initializer/random_uniformAddAyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/mulAyolov3-tiny/convolutional13/kernel/Initializer/random_uniform/min*'
_output_shapes
:*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel
ß
"yolov3-tiny/convolutional13/kernel
VariableV2*
dtype0*'
_output_shapes
:*
shared_name *5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
	container *
shape:
Ø
)yolov3-tiny/convolutional13/kernel/AssignAssign"yolov3-tiny/convolutional13/kernel=yolov3-tiny/convolutional13/kernel/Initializer/random_uniform*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
validate_shape(*'
_output_shapes
:
Ą
'yolov3-tiny/convolutional13/kernel/readIdentity"yolov3-tiny/convolutional13/kernel*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*'
_output_shapes
:
“
2yolov3-tiny/convolutional13/bias/Initializer/zerosConst*3
_class)
'%loc:@yolov3-tiny/convolutional13/bias*
valueB*    *
dtype0*
_output_shapes
:
Į
 yolov3-tiny/convolutional13/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *3
_class)
'%loc:@yolov3-tiny/convolutional13/bias*
	container *
shape:

'yolov3-tiny/convolutional13/bias/AssignAssign yolov3-tiny/convolutional13/bias2yolov3-tiny/convolutional13/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional13/bias
­
%yolov3-tiny/convolutional13/bias/readIdentity yolov3-tiny/convolutional13/bias*
_output_shapes
:*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional13/bias
z
)yolov3-tiny/convolutional13/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¾
"yolov3-tiny/convolutional13/Conv2DConv2D&yolov3-tiny/convolutional12/Activation'yolov3-tiny/convolutional13/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’
Ź
#yolov3-tiny/convolutional13/BiasAddBiasAdd"yolov3-tiny/convolutional13/Conv2D%yolov3-tiny/convolutional13/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’
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
dtype0*
_output_shapes
: *
shape: 
®
save/SaveV2/tensor_namesConst*į
value×BŌ;B)yolov3-tiny/convolutional1/BatchNorm/betaB*yolov3-tiny/convolutional1/BatchNorm/gammaB0yolov3-tiny/convolutional1/BatchNorm/moving_meanB4yolov3-tiny/convolutional1/BatchNorm/moving_varianceB!yolov3-tiny/convolutional1/kernelB yolov3-tiny/convolutional10/biasB"yolov3-tiny/convolutional10/kernelB*yolov3-tiny/convolutional11/BatchNorm/betaB+yolov3-tiny/convolutional11/BatchNorm/gammaB1yolov3-tiny/convolutional11/BatchNorm/moving_meanB5yolov3-tiny/convolutional11/BatchNorm/moving_varianceB"yolov3-tiny/convolutional11/kernelB*yolov3-tiny/convolutional12/BatchNorm/betaB+yolov3-tiny/convolutional12/BatchNorm/gammaB1yolov3-tiny/convolutional12/BatchNorm/moving_meanB5yolov3-tiny/convolutional12/BatchNorm/moving_varianceB"yolov3-tiny/convolutional12/kernelB yolov3-tiny/convolutional13/biasB"yolov3-tiny/convolutional13/kernelB)yolov3-tiny/convolutional2/BatchNorm/betaB*yolov3-tiny/convolutional2/BatchNorm/gammaB0yolov3-tiny/convolutional2/BatchNorm/moving_meanB4yolov3-tiny/convolutional2/BatchNorm/moving_varianceB!yolov3-tiny/convolutional2/kernelB)yolov3-tiny/convolutional3/BatchNorm/betaB*yolov3-tiny/convolutional3/BatchNorm/gammaB0yolov3-tiny/convolutional3/BatchNorm/moving_meanB4yolov3-tiny/convolutional3/BatchNorm/moving_varianceB!yolov3-tiny/convolutional3/kernelB)yolov3-tiny/convolutional4/BatchNorm/betaB*yolov3-tiny/convolutional4/BatchNorm/gammaB0yolov3-tiny/convolutional4/BatchNorm/moving_meanB4yolov3-tiny/convolutional4/BatchNorm/moving_varianceB!yolov3-tiny/convolutional4/kernelB)yolov3-tiny/convolutional5/BatchNorm/betaB*yolov3-tiny/convolutional5/BatchNorm/gammaB0yolov3-tiny/convolutional5/BatchNorm/moving_meanB4yolov3-tiny/convolutional5/BatchNorm/moving_varianceB!yolov3-tiny/convolutional5/kernelB)yolov3-tiny/convolutional6/BatchNorm/betaB*yolov3-tiny/convolutional6/BatchNorm/gammaB0yolov3-tiny/convolutional6/BatchNorm/moving_meanB4yolov3-tiny/convolutional6/BatchNorm/moving_varianceB!yolov3-tiny/convolutional6/kernelB)yolov3-tiny/convolutional7/BatchNorm/betaB*yolov3-tiny/convolutional7/BatchNorm/gammaB0yolov3-tiny/convolutional7/BatchNorm/moving_meanB4yolov3-tiny/convolutional7/BatchNorm/moving_varianceB!yolov3-tiny/convolutional7/kernelB)yolov3-tiny/convolutional8/BatchNorm/betaB*yolov3-tiny/convolutional8/BatchNorm/gammaB0yolov3-tiny/convolutional8/BatchNorm/moving_meanB4yolov3-tiny/convolutional8/BatchNorm/moving_varianceB!yolov3-tiny/convolutional8/kernelB)yolov3-tiny/convolutional9/BatchNorm/betaB*yolov3-tiny/convolutional9/BatchNorm/gammaB0yolov3-tiny/convolutional9/BatchNorm/moving_meanB4yolov3-tiny/convolutional9/BatchNorm/moving_varianceB!yolov3-tiny/convolutional9/kernel*
dtype0*
_output_shapes
:;
Ū
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:;*
valueB~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
š
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices)yolov3-tiny/convolutional1/BatchNorm/beta*yolov3-tiny/convolutional1/BatchNorm/gamma0yolov3-tiny/convolutional1/BatchNorm/moving_mean4yolov3-tiny/convolutional1/BatchNorm/moving_variance!yolov3-tiny/convolutional1/kernel yolov3-tiny/convolutional10/bias"yolov3-tiny/convolutional10/kernel*yolov3-tiny/convolutional11/BatchNorm/beta+yolov3-tiny/convolutional11/BatchNorm/gamma1yolov3-tiny/convolutional11/BatchNorm/moving_mean5yolov3-tiny/convolutional11/BatchNorm/moving_variance"yolov3-tiny/convolutional11/kernel*yolov3-tiny/convolutional12/BatchNorm/beta+yolov3-tiny/convolutional12/BatchNorm/gamma1yolov3-tiny/convolutional12/BatchNorm/moving_mean5yolov3-tiny/convolutional12/BatchNorm/moving_variance"yolov3-tiny/convolutional12/kernel yolov3-tiny/convolutional13/bias"yolov3-tiny/convolutional13/kernel)yolov3-tiny/convolutional2/BatchNorm/beta*yolov3-tiny/convolutional2/BatchNorm/gamma0yolov3-tiny/convolutional2/BatchNorm/moving_mean4yolov3-tiny/convolutional2/BatchNorm/moving_variance!yolov3-tiny/convolutional2/kernel)yolov3-tiny/convolutional3/BatchNorm/beta*yolov3-tiny/convolutional3/BatchNorm/gamma0yolov3-tiny/convolutional3/BatchNorm/moving_mean4yolov3-tiny/convolutional3/BatchNorm/moving_variance!yolov3-tiny/convolutional3/kernel)yolov3-tiny/convolutional4/BatchNorm/beta*yolov3-tiny/convolutional4/BatchNorm/gamma0yolov3-tiny/convolutional4/BatchNorm/moving_mean4yolov3-tiny/convolutional4/BatchNorm/moving_variance!yolov3-tiny/convolutional4/kernel)yolov3-tiny/convolutional5/BatchNorm/beta*yolov3-tiny/convolutional5/BatchNorm/gamma0yolov3-tiny/convolutional5/BatchNorm/moving_mean4yolov3-tiny/convolutional5/BatchNorm/moving_variance!yolov3-tiny/convolutional5/kernel)yolov3-tiny/convolutional6/BatchNorm/beta*yolov3-tiny/convolutional6/BatchNorm/gamma0yolov3-tiny/convolutional6/BatchNorm/moving_mean4yolov3-tiny/convolutional6/BatchNorm/moving_variance!yolov3-tiny/convolutional6/kernel)yolov3-tiny/convolutional7/BatchNorm/beta*yolov3-tiny/convolutional7/BatchNorm/gamma0yolov3-tiny/convolutional7/BatchNorm/moving_mean4yolov3-tiny/convolutional7/BatchNorm/moving_variance!yolov3-tiny/convolutional7/kernel)yolov3-tiny/convolutional8/BatchNorm/beta*yolov3-tiny/convolutional8/BatchNorm/gamma0yolov3-tiny/convolutional8/BatchNorm/moving_mean4yolov3-tiny/convolutional8/BatchNorm/moving_variance!yolov3-tiny/convolutional8/kernel)yolov3-tiny/convolutional9/BatchNorm/beta*yolov3-tiny/convolutional9/BatchNorm/gamma0yolov3-tiny/convolutional9/BatchNorm/moving_mean4yolov3-tiny/convolutional9/BatchNorm/moving_variance!yolov3-tiny/convolutional9/kernel*I
dtypes?
=2;
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
±
save/RestoreV2/tensor_namesConst*į
value×BŌ;B)yolov3-tiny/convolutional1/BatchNorm/betaB*yolov3-tiny/convolutional1/BatchNorm/gammaB0yolov3-tiny/convolutional1/BatchNorm/moving_meanB4yolov3-tiny/convolutional1/BatchNorm/moving_varianceB!yolov3-tiny/convolutional1/kernelB yolov3-tiny/convolutional10/biasB"yolov3-tiny/convolutional10/kernelB*yolov3-tiny/convolutional11/BatchNorm/betaB+yolov3-tiny/convolutional11/BatchNorm/gammaB1yolov3-tiny/convolutional11/BatchNorm/moving_meanB5yolov3-tiny/convolutional11/BatchNorm/moving_varianceB"yolov3-tiny/convolutional11/kernelB*yolov3-tiny/convolutional12/BatchNorm/betaB+yolov3-tiny/convolutional12/BatchNorm/gammaB1yolov3-tiny/convolutional12/BatchNorm/moving_meanB5yolov3-tiny/convolutional12/BatchNorm/moving_varianceB"yolov3-tiny/convolutional12/kernelB yolov3-tiny/convolutional13/biasB"yolov3-tiny/convolutional13/kernelB)yolov3-tiny/convolutional2/BatchNorm/betaB*yolov3-tiny/convolutional2/BatchNorm/gammaB0yolov3-tiny/convolutional2/BatchNorm/moving_meanB4yolov3-tiny/convolutional2/BatchNorm/moving_varianceB!yolov3-tiny/convolutional2/kernelB)yolov3-tiny/convolutional3/BatchNorm/betaB*yolov3-tiny/convolutional3/BatchNorm/gammaB0yolov3-tiny/convolutional3/BatchNorm/moving_meanB4yolov3-tiny/convolutional3/BatchNorm/moving_varianceB!yolov3-tiny/convolutional3/kernelB)yolov3-tiny/convolutional4/BatchNorm/betaB*yolov3-tiny/convolutional4/BatchNorm/gammaB0yolov3-tiny/convolutional4/BatchNorm/moving_meanB4yolov3-tiny/convolutional4/BatchNorm/moving_varianceB!yolov3-tiny/convolutional4/kernelB)yolov3-tiny/convolutional5/BatchNorm/betaB*yolov3-tiny/convolutional5/BatchNorm/gammaB0yolov3-tiny/convolutional5/BatchNorm/moving_meanB4yolov3-tiny/convolutional5/BatchNorm/moving_varianceB!yolov3-tiny/convolutional5/kernelB)yolov3-tiny/convolutional6/BatchNorm/betaB*yolov3-tiny/convolutional6/BatchNorm/gammaB0yolov3-tiny/convolutional6/BatchNorm/moving_meanB4yolov3-tiny/convolutional6/BatchNorm/moving_varianceB!yolov3-tiny/convolutional6/kernelB)yolov3-tiny/convolutional7/BatchNorm/betaB*yolov3-tiny/convolutional7/BatchNorm/gammaB0yolov3-tiny/convolutional7/BatchNorm/moving_meanB4yolov3-tiny/convolutional7/BatchNorm/moving_varianceB!yolov3-tiny/convolutional7/kernelB)yolov3-tiny/convolutional8/BatchNorm/betaB*yolov3-tiny/convolutional8/BatchNorm/gammaB0yolov3-tiny/convolutional8/BatchNorm/moving_meanB4yolov3-tiny/convolutional8/BatchNorm/moving_varianceB!yolov3-tiny/convolutional8/kernelB)yolov3-tiny/convolutional9/BatchNorm/betaB*yolov3-tiny/convolutional9/BatchNorm/gammaB0yolov3-tiny/convolutional9/BatchNorm/moving_meanB4yolov3-tiny/convolutional9/BatchNorm/moving_varianceB!yolov3-tiny/convolutional9/kernel*
dtype0*
_output_shapes
:;
Ž
save/RestoreV2/shape_and_slicesConst*
valueB~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:;
µ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapesļ
ģ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*I
dtypes?
=2;
Ü
save/AssignAssign)yolov3-tiny/convolutional1/BatchNorm/betasave/RestoreV2*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional1/BatchNorm/beta*
validate_shape(*
_output_shapes
:
ā
save/Assign_1Assign*yolov3-tiny/convolutional1/BatchNorm/gammasave/RestoreV2:1*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional1/BatchNorm/gamma*
validate_shape(*
_output_shapes
:
ī
save/Assign_2Assign0yolov3-tiny/convolutional1/BatchNorm/moving_meansave/RestoreV2:2*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional1/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:
ö
save/Assign_3Assign4yolov3-tiny/convolutional1/BatchNorm/moving_variancesave/RestoreV2:3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional1/BatchNorm/moving_variance
Ü
save/Assign_4Assign!yolov3-tiny/convolutional1/kernelsave/RestoreV2:4*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*
validate_shape(*&
_output_shapes
:
Ī
save/Assign_5Assign yolov3-tiny/convolutional10/biassave/RestoreV2:5*
use_locking(*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional10/bias*
validate_shape(*
_output_shapes
:
ß
save/Assign_6Assign"yolov3-tiny/convolutional10/kernelsave/RestoreV2:6*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*
validate_shape(*'
_output_shapes
:
ć
save/Assign_7Assign*yolov3-tiny/convolutional11/BatchNorm/betasave/RestoreV2:7*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional11/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
å
save/Assign_8Assign+yolov3-tiny/convolutional11/BatchNorm/gammasave/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*>
_class4
20loc:@yolov3-tiny/convolutional11/BatchNorm/gamma
ń
save/Assign_9Assign1yolov3-tiny/convolutional11/BatchNorm/moving_meansave/RestoreV2:9*
use_locking(*
T0*D
_class:
86loc:@yolov3-tiny/convolutional11/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ū
save/Assign_10Assign5yolov3-tiny/convolutional11/BatchNorm/moving_variancesave/RestoreV2:10*
use_locking(*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional11/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ā
save/Assign_11Assign"yolov3-tiny/convolutional11/kernelsave/RestoreV2:11*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel*
validate_shape(*(
_output_shapes
:
å
save/Assign_12Assign*yolov3-tiny/convolutional12/BatchNorm/betasave/RestoreV2:12*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional12/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
ē
save/Assign_13Assign+yolov3-tiny/convolutional12/BatchNorm/gammasave/RestoreV2:13*
T0*>
_class4
20loc:@yolov3-tiny/convolutional12/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ó
save/Assign_14Assign1yolov3-tiny/convolutional12/BatchNorm/moving_meansave/RestoreV2:14*
use_locking(*
T0*D
_class:
86loc:@yolov3-tiny/convolutional12/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ū
save/Assign_15Assign5yolov3-tiny/convolutional12/BatchNorm/moving_variancesave/RestoreV2:15*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional12/BatchNorm/moving_variance
ā
save/Assign_16Assign"yolov3-tiny/convolutional12/kernelsave/RestoreV2:16*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel
Š
save/Assign_17Assign yolov3-tiny/convolutional13/biassave/RestoreV2:17*
use_locking(*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional13/bias*
validate_shape(*
_output_shapes
:
į
save/Assign_18Assign"yolov3-tiny/convolutional13/kernelsave/RestoreV2:18*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel
ā
save/Assign_19Assign)yolov3-tiny/convolutional2/BatchNorm/betasave/RestoreV2:19*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional2/BatchNorm/beta*
validate_shape(*
_output_shapes
: 
ä
save/Assign_20Assign*yolov3-tiny/convolutional2/BatchNorm/gammasave/RestoreV2:20*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional2/BatchNorm/gamma
š
save/Assign_21Assign0yolov3-tiny/convolutional2/BatchNorm/moving_meansave/RestoreV2:21*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional2/BatchNorm/moving_mean
ų
save/Assign_22Assign4yolov3-tiny/convolutional2/BatchNorm/moving_variancesave/RestoreV2:22*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional2/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
: *
use_locking(
Ž
save/Assign_23Assign!yolov3-tiny/convolutional2/kernelsave/RestoreV2:23*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel
ā
save/Assign_24Assign)yolov3-tiny/convolutional3/BatchNorm/betasave/RestoreV2:24*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional3/BatchNorm/beta
ä
save/Assign_25Assign*yolov3-tiny/convolutional3/BatchNorm/gammasave/RestoreV2:25*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional3/BatchNorm/gamma*
validate_shape(*
_output_shapes
:@
š
save/Assign_26Assign0yolov3-tiny/convolutional3/BatchNorm/moving_meansave/RestoreV2:26*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional3/BatchNorm/moving_mean
ų
save/Assign_27Assign4yolov3-tiny/convolutional3/BatchNorm/moving_variancesave/RestoreV2:27*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional3/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
Ž
save/Assign_28Assign!yolov3-tiny/convolutional3/kernelsave/RestoreV2:28*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
validate_shape(*&
_output_shapes
: @
ć
save/Assign_29Assign)yolov3-tiny/convolutional4/BatchNorm/betasave/RestoreV2:29*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional4/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
å
save/Assign_30Assign*yolov3-tiny/convolutional4/BatchNorm/gammasave/RestoreV2:30*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional4/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
ń
save/Assign_31Assign0yolov3-tiny/convolutional4/BatchNorm/moving_meansave/RestoreV2:31*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional4/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ł
save/Assign_32Assign4yolov3-tiny/convolutional4/BatchNorm/moving_variancesave/RestoreV2:32*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional4/BatchNorm/moving_variance
ß
save/Assign_33Assign!yolov3-tiny/convolutional4/kernelsave/RestoreV2:33*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel*
validate_shape(*'
_output_shapes
:@*
use_locking(
ć
save/Assign_34Assign)yolov3-tiny/convolutional5/BatchNorm/betasave/RestoreV2:34*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional5/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
å
save/Assign_35Assign*yolov3-tiny/convolutional5/BatchNorm/gammasave/RestoreV2:35*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional5/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
ń
save/Assign_36Assign0yolov3-tiny/convolutional5/BatchNorm/moving_meansave/RestoreV2:36*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional5/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ł
save/Assign_37Assign4yolov3-tiny/convolutional5/BatchNorm/moving_variancesave/RestoreV2:37*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional5/BatchNorm/moving_variance
ą
save/Assign_38Assign!yolov3-tiny/convolutional5/kernelsave/RestoreV2:38*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel
ć
save/Assign_39Assign)yolov3-tiny/convolutional6/BatchNorm/betasave/RestoreV2:39*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional6/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
å
save/Assign_40Assign*yolov3-tiny/convolutional6/BatchNorm/gammasave/RestoreV2:40*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional6/BatchNorm/gamma
ń
save/Assign_41Assign0yolov3-tiny/convolutional6/BatchNorm/moving_meansave/RestoreV2:41*
T0*C
_class9
75loc:@yolov3-tiny/convolutional6/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ł
save/Assign_42Assign4yolov3-tiny/convolutional6/BatchNorm/moving_variancesave/RestoreV2:42*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional6/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ą
save/Assign_43Assign!yolov3-tiny/convolutional6/kernelsave/RestoreV2:43*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
ć
save/Assign_44Assign)yolov3-tiny/convolutional7/BatchNorm/betasave/RestoreV2:44*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
å
save/Assign_45Assign*yolov3-tiny/convolutional7/BatchNorm/gammasave/RestoreV2:45*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ń
save/Assign_46Assign0yolov3-tiny/convolutional7/BatchNorm/moving_meansave/RestoreV2:46*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean
ł
save/Assign_47Assign4yolov3-tiny/convolutional7/BatchNorm/moving_variancesave/RestoreV2:47*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ą
save/Assign_48Assign!yolov3-tiny/convolutional7/kernelsave/RestoreV2:48*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
validate_shape(*(
_output_shapes
:
ć
save/Assign_49Assign)yolov3-tiny/convolutional8/BatchNorm/betasave/RestoreV2:49*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional8/BatchNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
å
save/Assign_50Assign*yolov3-tiny/convolutional8/BatchNorm/gammasave/RestoreV2:50*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional8/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ń
save/Assign_51Assign0yolov3-tiny/convolutional8/BatchNorm/moving_meansave/RestoreV2:51*
T0*C
_class9
75loc:@yolov3-tiny/convolutional8/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ł
save/Assign_52Assign4yolov3-tiny/convolutional8/BatchNorm/moving_variancesave/RestoreV2:52*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional8/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ą
save/Assign_53Assign!yolov3-tiny/convolutional8/kernelsave/RestoreV2:53*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
ć
save/Assign_54Assign)yolov3-tiny/convolutional9/BatchNorm/betasave/RestoreV2:54*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional9/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
å
save/Assign_55Assign*yolov3-tiny/convolutional9/BatchNorm/gammasave/RestoreV2:55*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional9/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
ń
save/Assign_56Assign0yolov3-tiny/convolutional9/BatchNorm/moving_meansave/RestoreV2:56*
T0*C
_class9
75loc:@yolov3-tiny/convolutional9/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ł
save/Assign_57Assign4yolov3-tiny/convolutional9/BatchNorm/moving_variancesave/RestoreV2:57*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional9/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ą
save/Assign_58Assign!yolov3-tiny/convolutional9/kernelsave/RestoreV2:58*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
validate_shape(*(
_output_shapes
:
÷
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
L
tf_yoloPlaceholder*
dtype0*
_output_shapes
:*
shape:
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
h
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*
_output_shapes
: *
value	B Bx
°
ParseExample/ParseExampleParseExampletf_yoloParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
Tdense
2*
Ndense*5
_output_shapes#
!:’’’’’’’’’  *
Nsparse *&
dense_shapes
:  *
sparse_types
 
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
[
save/filename_1/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save/filename_1PlaceholderWithDefaultsave/filename_1/input*
dtype0*
_output_shapes
: *
shape: 
i
save/Const_1PlaceholderWithDefaultsave/filename_1*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_264f05480485464396bb258db59bc5eb/part*
dtype0*
_output_shapes
: 
w
save/StringJoin
StringJoinsave/Const_1save/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
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
æ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*į
value×BŌ;B)yolov3-tiny/convolutional1/BatchNorm/betaB*yolov3-tiny/convolutional1/BatchNorm/gammaB0yolov3-tiny/convolutional1/BatchNorm/moving_meanB4yolov3-tiny/convolutional1/BatchNorm/moving_varianceB!yolov3-tiny/convolutional1/kernelB yolov3-tiny/convolutional10/biasB"yolov3-tiny/convolutional10/kernelB*yolov3-tiny/convolutional11/BatchNorm/betaB+yolov3-tiny/convolutional11/BatchNorm/gammaB1yolov3-tiny/convolutional11/BatchNorm/moving_meanB5yolov3-tiny/convolutional11/BatchNorm/moving_varianceB"yolov3-tiny/convolutional11/kernelB*yolov3-tiny/convolutional12/BatchNorm/betaB+yolov3-tiny/convolutional12/BatchNorm/gammaB1yolov3-tiny/convolutional12/BatchNorm/moving_meanB5yolov3-tiny/convolutional12/BatchNorm/moving_varianceB"yolov3-tiny/convolutional12/kernelB yolov3-tiny/convolutional13/biasB"yolov3-tiny/convolutional13/kernelB)yolov3-tiny/convolutional2/BatchNorm/betaB*yolov3-tiny/convolutional2/BatchNorm/gammaB0yolov3-tiny/convolutional2/BatchNorm/moving_meanB4yolov3-tiny/convolutional2/BatchNorm/moving_varianceB!yolov3-tiny/convolutional2/kernelB)yolov3-tiny/convolutional3/BatchNorm/betaB*yolov3-tiny/convolutional3/BatchNorm/gammaB0yolov3-tiny/convolutional3/BatchNorm/moving_meanB4yolov3-tiny/convolutional3/BatchNorm/moving_varianceB!yolov3-tiny/convolutional3/kernelB)yolov3-tiny/convolutional4/BatchNorm/betaB*yolov3-tiny/convolutional4/BatchNorm/gammaB0yolov3-tiny/convolutional4/BatchNorm/moving_meanB4yolov3-tiny/convolutional4/BatchNorm/moving_varianceB!yolov3-tiny/convolutional4/kernelB)yolov3-tiny/convolutional5/BatchNorm/betaB*yolov3-tiny/convolutional5/BatchNorm/gammaB0yolov3-tiny/convolutional5/BatchNorm/moving_meanB4yolov3-tiny/convolutional5/BatchNorm/moving_varianceB!yolov3-tiny/convolutional5/kernelB)yolov3-tiny/convolutional6/BatchNorm/betaB*yolov3-tiny/convolutional6/BatchNorm/gammaB0yolov3-tiny/convolutional6/BatchNorm/moving_meanB4yolov3-tiny/convolutional6/BatchNorm/moving_varianceB!yolov3-tiny/convolutional6/kernelB)yolov3-tiny/convolutional7/BatchNorm/betaB*yolov3-tiny/convolutional7/BatchNorm/gammaB0yolov3-tiny/convolutional7/BatchNorm/moving_meanB4yolov3-tiny/convolutional7/BatchNorm/moving_varianceB!yolov3-tiny/convolutional7/kernelB)yolov3-tiny/convolutional8/BatchNorm/betaB*yolov3-tiny/convolutional8/BatchNorm/gammaB0yolov3-tiny/convolutional8/BatchNorm/moving_meanB4yolov3-tiny/convolutional8/BatchNorm/moving_varianceB!yolov3-tiny/convolutional8/kernelB)yolov3-tiny/convolutional9/BatchNorm/betaB*yolov3-tiny/convolutional9/BatchNorm/gammaB0yolov3-tiny/convolutional9/BatchNorm/moving_meanB4yolov3-tiny/convolutional9/BatchNorm/moving_varianceB!yolov3-tiny/convolutional9/kernel*
dtype0*
_output_shapes
:;
ģ
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:;

save/SaveV2_1SaveV2save/ShardedFilenamesave/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slices)yolov3-tiny/convolutional1/BatchNorm/beta*yolov3-tiny/convolutional1/BatchNorm/gamma0yolov3-tiny/convolutional1/BatchNorm/moving_mean4yolov3-tiny/convolutional1/BatchNorm/moving_variance!yolov3-tiny/convolutional1/kernel yolov3-tiny/convolutional10/bias"yolov3-tiny/convolutional10/kernel*yolov3-tiny/convolutional11/BatchNorm/beta+yolov3-tiny/convolutional11/BatchNorm/gamma1yolov3-tiny/convolutional11/BatchNorm/moving_mean5yolov3-tiny/convolutional11/BatchNorm/moving_variance"yolov3-tiny/convolutional11/kernel*yolov3-tiny/convolutional12/BatchNorm/beta+yolov3-tiny/convolutional12/BatchNorm/gamma1yolov3-tiny/convolutional12/BatchNorm/moving_mean5yolov3-tiny/convolutional12/BatchNorm/moving_variance"yolov3-tiny/convolutional12/kernel yolov3-tiny/convolutional13/bias"yolov3-tiny/convolutional13/kernel)yolov3-tiny/convolutional2/BatchNorm/beta*yolov3-tiny/convolutional2/BatchNorm/gamma0yolov3-tiny/convolutional2/BatchNorm/moving_mean4yolov3-tiny/convolutional2/BatchNorm/moving_variance!yolov3-tiny/convolutional2/kernel)yolov3-tiny/convolutional3/BatchNorm/beta*yolov3-tiny/convolutional3/BatchNorm/gamma0yolov3-tiny/convolutional3/BatchNorm/moving_mean4yolov3-tiny/convolutional3/BatchNorm/moving_variance!yolov3-tiny/convolutional3/kernel)yolov3-tiny/convolutional4/BatchNorm/beta*yolov3-tiny/convolutional4/BatchNorm/gamma0yolov3-tiny/convolutional4/BatchNorm/moving_mean4yolov3-tiny/convolutional4/BatchNorm/moving_variance!yolov3-tiny/convolutional4/kernel)yolov3-tiny/convolutional5/BatchNorm/beta*yolov3-tiny/convolutional5/BatchNorm/gamma0yolov3-tiny/convolutional5/BatchNorm/moving_mean4yolov3-tiny/convolutional5/BatchNorm/moving_variance!yolov3-tiny/convolutional5/kernel)yolov3-tiny/convolutional6/BatchNorm/beta*yolov3-tiny/convolutional6/BatchNorm/gamma0yolov3-tiny/convolutional6/BatchNorm/moving_mean4yolov3-tiny/convolutional6/BatchNorm/moving_variance!yolov3-tiny/convolutional6/kernel)yolov3-tiny/convolutional7/BatchNorm/beta*yolov3-tiny/convolutional7/BatchNorm/gamma0yolov3-tiny/convolutional7/BatchNorm/moving_mean4yolov3-tiny/convolutional7/BatchNorm/moving_variance!yolov3-tiny/convolutional7/kernel)yolov3-tiny/convolutional8/BatchNorm/beta*yolov3-tiny/convolutional8/BatchNorm/gamma0yolov3-tiny/convolutional8/BatchNorm/moving_mean4yolov3-tiny/convolutional8/BatchNorm/moving_variance!yolov3-tiny/convolutional8/kernel)yolov3-tiny/convolutional9/BatchNorm/beta*yolov3-tiny/convolutional9/BatchNorm/gamma0yolov3-tiny/convolutional9/BatchNorm/moving_mean4yolov3-tiny/convolutional9/BatchNorm/moving_variance!yolov3-tiny/convolutional9/kernel"/device:CPU:0*I
dtypes?
=2;
¤
save/control_dependency_1Identitysave/ShardedFilename^save/SaveV2_1"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
®
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency_1"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixessave/Const_1"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentitysave/Const_1^save/MergeV2Checkpoints^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
Ā
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:;*į
value×BŌ;B)yolov3-tiny/convolutional1/BatchNorm/betaB*yolov3-tiny/convolutional1/BatchNorm/gammaB0yolov3-tiny/convolutional1/BatchNorm/moving_meanB4yolov3-tiny/convolutional1/BatchNorm/moving_varianceB!yolov3-tiny/convolutional1/kernelB yolov3-tiny/convolutional10/biasB"yolov3-tiny/convolutional10/kernelB*yolov3-tiny/convolutional11/BatchNorm/betaB+yolov3-tiny/convolutional11/BatchNorm/gammaB1yolov3-tiny/convolutional11/BatchNorm/moving_meanB5yolov3-tiny/convolutional11/BatchNorm/moving_varianceB"yolov3-tiny/convolutional11/kernelB*yolov3-tiny/convolutional12/BatchNorm/betaB+yolov3-tiny/convolutional12/BatchNorm/gammaB1yolov3-tiny/convolutional12/BatchNorm/moving_meanB5yolov3-tiny/convolutional12/BatchNorm/moving_varianceB"yolov3-tiny/convolutional12/kernelB yolov3-tiny/convolutional13/biasB"yolov3-tiny/convolutional13/kernelB)yolov3-tiny/convolutional2/BatchNorm/betaB*yolov3-tiny/convolutional2/BatchNorm/gammaB0yolov3-tiny/convolutional2/BatchNorm/moving_meanB4yolov3-tiny/convolutional2/BatchNorm/moving_varianceB!yolov3-tiny/convolutional2/kernelB)yolov3-tiny/convolutional3/BatchNorm/betaB*yolov3-tiny/convolutional3/BatchNorm/gammaB0yolov3-tiny/convolutional3/BatchNorm/moving_meanB4yolov3-tiny/convolutional3/BatchNorm/moving_varianceB!yolov3-tiny/convolutional3/kernelB)yolov3-tiny/convolutional4/BatchNorm/betaB*yolov3-tiny/convolutional4/BatchNorm/gammaB0yolov3-tiny/convolutional4/BatchNorm/moving_meanB4yolov3-tiny/convolutional4/BatchNorm/moving_varianceB!yolov3-tiny/convolutional4/kernelB)yolov3-tiny/convolutional5/BatchNorm/betaB*yolov3-tiny/convolutional5/BatchNorm/gammaB0yolov3-tiny/convolutional5/BatchNorm/moving_meanB4yolov3-tiny/convolutional5/BatchNorm/moving_varianceB!yolov3-tiny/convolutional5/kernelB)yolov3-tiny/convolutional6/BatchNorm/betaB*yolov3-tiny/convolutional6/BatchNorm/gammaB0yolov3-tiny/convolutional6/BatchNorm/moving_meanB4yolov3-tiny/convolutional6/BatchNorm/moving_varianceB!yolov3-tiny/convolutional6/kernelB)yolov3-tiny/convolutional7/BatchNorm/betaB*yolov3-tiny/convolutional7/BatchNorm/gammaB0yolov3-tiny/convolutional7/BatchNorm/moving_meanB4yolov3-tiny/convolutional7/BatchNorm/moving_varianceB!yolov3-tiny/convolutional7/kernelB)yolov3-tiny/convolutional8/BatchNorm/betaB*yolov3-tiny/convolutional8/BatchNorm/gammaB0yolov3-tiny/convolutional8/BatchNorm/moving_meanB4yolov3-tiny/convolutional8/BatchNorm/moving_varianceB!yolov3-tiny/convolutional8/kernelB)yolov3-tiny/convolutional9/BatchNorm/betaB*yolov3-tiny/convolutional9/BatchNorm/gammaB0yolov3-tiny/convolutional9/BatchNorm/moving_meanB4yolov3-tiny/convolutional9/BatchNorm/moving_varianceB!yolov3-tiny/convolutional9/kernel
ļ
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:;*
valueB~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ģ
save/RestoreV2_1	RestoreV2save/Const_1save/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*I
dtypes?
=2;*
_output_shapesļ
ģ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
į
save/Assign_59Assign)yolov3-tiny/convolutional1/BatchNorm/betasave/RestoreV2_1*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional1/BatchNorm/beta
å
save/Assign_60Assign*yolov3-tiny/convolutional1/BatchNorm/gammasave/RestoreV2_1:1*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional1/BatchNorm/gamma*
validate_shape(*
_output_shapes
:*
use_locking(
ń
save/Assign_61Assign0yolov3-tiny/convolutional1/BatchNorm/moving_meansave/RestoreV2_1:2*
T0*C
_class9
75loc:@yolov3-tiny/convolutional1/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:*
use_locking(
ł
save/Assign_62Assign4yolov3-tiny/convolutional1/BatchNorm/moving_variancesave/RestoreV2_1:3*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional1/BatchNorm/moving_variance*
validate_shape(*
_output_shapes
:
ß
save/Assign_63Assign!yolov3-tiny/convolutional1/kernelsave/RestoreV2_1:4*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional1/kernel*
validate_shape(*&
_output_shapes
:
Ń
save/Assign_64Assign yolov3-tiny/convolutional10/biassave/RestoreV2_1:5*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional10/bias*
validate_shape(*
_output_shapes
:*
use_locking(
ā
save/Assign_65Assign"yolov3-tiny/convolutional10/kernelsave/RestoreV2_1:6*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional10/kernel*
validate_shape(*'
_output_shapes
:
ę
save/Assign_66Assign*yolov3-tiny/convolutional11/BatchNorm/betasave/RestoreV2_1:7*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional11/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
č
save/Assign_67Assign+yolov3-tiny/convolutional11/BatchNorm/gammasave/RestoreV2_1:8*
use_locking(*
T0*>
_class4
20loc:@yolov3-tiny/convolutional11/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
ō
save/Assign_68Assign1yolov3-tiny/convolutional11/BatchNorm/moving_meansave/RestoreV2_1:9*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*D
_class:
86loc:@yolov3-tiny/convolutional11/BatchNorm/moving_mean
ż
save/Assign_69Assign5yolov3-tiny/convolutional11/BatchNorm/moving_variancesave/RestoreV2_1:10*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional11/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ä
save/Assign_70Assign"yolov3-tiny/convolutional11/kernelsave/RestoreV2_1:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional11/kernel
ē
save/Assign_71Assign*yolov3-tiny/convolutional12/BatchNorm/betasave/RestoreV2_1:12*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional12/BatchNorm/beta*
validate_shape(*
_output_shapes	
:
é
save/Assign_72Assign+yolov3-tiny/convolutional12/BatchNorm/gammasave/RestoreV2_1:13*
use_locking(*
T0*>
_class4
20loc:@yolov3-tiny/convolutional12/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
õ
save/Assign_73Assign1yolov3-tiny/convolutional12/BatchNorm/moving_meansave/RestoreV2_1:14*
use_locking(*
T0*D
_class:
86loc:@yolov3-tiny/convolutional12/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ż
save/Assign_74Assign5yolov3-tiny/convolutional12/BatchNorm/moving_variancesave/RestoreV2_1:15*
T0*H
_class>
<:loc:@yolov3-tiny/convolutional12/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ä
save/Assign_75Assign"yolov3-tiny/convolutional12/kernelsave/RestoreV2_1:16*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional12/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
Ņ
save/Assign_76Assign yolov3-tiny/convolutional13/biassave/RestoreV2_1:17*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*3
_class)
'%loc:@yolov3-tiny/convolutional13/bias
ć
save/Assign_77Assign"yolov3-tiny/convolutional13/kernelsave/RestoreV2_1:18*
use_locking(*
T0*5
_class+
)'loc:@yolov3-tiny/convolutional13/kernel*
validate_shape(*'
_output_shapes
:
ä
save/Assign_78Assign)yolov3-tiny/convolutional2/BatchNorm/betasave/RestoreV2_1:19*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional2/BatchNorm/beta*
validate_shape(*
_output_shapes
: *
use_locking(
ę
save/Assign_79Assign*yolov3-tiny/convolutional2/BatchNorm/gammasave/RestoreV2_1:20*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional2/BatchNorm/gamma*
validate_shape(*
_output_shapes
: 
ņ
save/Assign_80Assign0yolov3-tiny/convolutional2/BatchNorm/moving_meansave/RestoreV2_1:21*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional2/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
: 
ś
save/Assign_81Assign4yolov3-tiny/convolutional2/BatchNorm/moving_variancesave/RestoreV2_1:22*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional2/BatchNorm/moving_variance
ą
save/Assign_82Assign!yolov3-tiny/convolutional2/kernelsave/RestoreV2_1:23*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional2/kernel
ä
save/Assign_83Assign)yolov3-tiny/convolutional3/BatchNorm/betasave/RestoreV2_1:24*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional3/BatchNorm/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
ę
save/Assign_84Assign*yolov3-tiny/convolutional3/BatchNorm/gammasave/RestoreV2_1:25*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional3/BatchNorm/gamma
ņ
save/Assign_85Assign0yolov3-tiny/convolutional3/BatchNorm/moving_meansave/RestoreV2_1:26*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional3/BatchNorm/moving_mean*
validate_shape(*
_output_shapes
:@
ś
save/Assign_86Assign4yolov3-tiny/convolutional3/BatchNorm/moving_variancesave/RestoreV2_1:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional3/BatchNorm/moving_variance
ą
save/Assign_87Assign!yolov3-tiny/convolutional3/kernelsave/RestoreV2_1:28*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional3/kernel*
validate_shape(*&
_output_shapes
: @
å
save/Assign_88Assign)yolov3-tiny/convolutional4/BatchNorm/betasave/RestoreV2_1:29*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional4/BatchNorm/beta
ē
save/Assign_89Assign*yolov3-tiny/convolutional4/BatchNorm/gammasave/RestoreV2_1:30*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional4/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ó
save/Assign_90Assign0yolov3-tiny/convolutional4/BatchNorm/moving_meansave/RestoreV2_1:31*
T0*C
_class9
75loc:@yolov3-tiny/convolutional4/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ū
save/Assign_91Assign4yolov3-tiny/convolutional4/BatchNorm/moving_variancesave/RestoreV2_1:32*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional4/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
į
save/Assign_92Assign!yolov3-tiny/convolutional4/kernelsave/RestoreV2_1:33*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional4/kernel
å
save/Assign_93Assign)yolov3-tiny/convolutional5/BatchNorm/betasave/RestoreV2_1:34*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional5/BatchNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
ē
save/Assign_94Assign*yolov3-tiny/convolutional5/BatchNorm/gammasave/RestoreV2_1:35*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional5/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ó
save/Assign_95Assign0yolov3-tiny/convolutional5/BatchNorm/moving_meansave/RestoreV2_1:36*
T0*C
_class9
75loc:@yolov3-tiny/convolutional5/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ū
save/Assign_96Assign4yolov3-tiny/convolutional5/BatchNorm/moving_variancesave/RestoreV2_1:37*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional5/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ā
save/Assign_97Assign!yolov3-tiny/convolutional5/kernelsave/RestoreV2_1:38*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional5/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
å
save/Assign_98Assign)yolov3-tiny/convolutional6/BatchNorm/betasave/RestoreV2_1:39*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional6/BatchNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
ē
save/Assign_99Assign*yolov3-tiny/convolutional6/BatchNorm/gammasave/RestoreV2_1:40*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional6/BatchNorm/gamma
ō
save/Assign_100Assign0yolov3-tiny/convolutional6/BatchNorm/moving_meansave/RestoreV2_1:41*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional6/BatchNorm/moving_mean
ü
save/Assign_101Assign4yolov3-tiny/convolutional6/BatchNorm/moving_variancesave/RestoreV2_1:42*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional6/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:
ć
save/Assign_102Assign!yolov3-tiny/convolutional6/kernelsave/RestoreV2_1:43*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional6/kernel*
validate_shape(*(
_output_shapes
:
ę
save/Assign_103Assign)yolov3-tiny/convolutional7/BatchNorm/betasave/RestoreV2_1:44*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional7/BatchNorm/beta
č
save/Assign_104Assign*yolov3-tiny/convolutional7/BatchNorm/gammasave/RestoreV2_1:45*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional7/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ō
save/Assign_105Assign0yolov3-tiny/convolutional7/BatchNorm/moving_meansave/RestoreV2_1:46*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional7/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ü
save/Assign_106Assign4yolov3-tiny/convolutional7/BatchNorm/moving_variancesave/RestoreV2_1:47*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional7/BatchNorm/moving_variance
ć
save/Assign_107Assign!yolov3-tiny/convolutional7/kernelsave/RestoreV2_1:48*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional7/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
ę
save/Assign_108Assign)yolov3-tiny/convolutional8/BatchNorm/betasave/RestoreV2_1:49*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional8/BatchNorm/beta
č
save/Assign_109Assign*yolov3-tiny/convolutional8/BatchNorm/gammasave/RestoreV2_1:50*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional8/BatchNorm/gamma*
validate_shape(*
_output_shapes	
:
ō
save/Assign_110Assign0yolov3-tiny/convolutional8/BatchNorm/moving_meansave/RestoreV2_1:51*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional8/BatchNorm/moving_mean
ü
save/Assign_111Assign4yolov3-tiny/convolutional8/BatchNorm/moving_variancesave/RestoreV2_1:52*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional8/BatchNorm/moving_variance
ć
save/Assign_112Assign!yolov3-tiny/convolutional8/kernelsave/RestoreV2_1:53*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional8/kernel
ę
save/Assign_113Assign)yolov3-tiny/convolutional9/BatchNorm/betasave/RestoreV2_1:54*
T0*<
_class2
0.loc:@yolov3-tiny/convolutional9/BatchNorm/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
č
save/Assign_114Assign*yolov3-tiny/convolutional9/BatchNorm/gammasave/RestoreV2_1:55*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*=
_class3
1/loc:@yolov3-tiny/convolutional9/BatchNorm/gamma
ō
save/Assign_115Assign0yolov3-tiny/convolutional9/BatchNorm/moving_meansave/RestoreV2_1:56*
use_locking(*
T0*C
_class9
75loc:@yolov3-tiny/convolutional9/BatchNorm/moving_mean*
validate_shape(*
_output_shapes	
:
ü
save/Assign_116Assign4yolov3-tiny/convolutional9/BatchNorm/moving_variancesave/RestoreV2_1:57*
T0*G
_class=
;9loc:@yolov3-tiny/convolutional9/BatchNorm/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
ć
save/Assign_117Assign!yolov3-tiny/convolutional9/kernelsave/RestoreV2_1:58*
use_locking(*
T0*4
_class*
(&loc:@yolov3-tiny/convolutional9/kernel*
validate_shape(*(
_output_shapes
:

save/restore_shardNoOp^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
/
save/restore_all_1NoOp^save/restore_shard"&@
save/Const_1:0save/Identity:0save/restore_all_1 (5 @F8"³
trainable_variables
»
#yolov3-tiny/convolutional1/kernel:0(yolov3-tiny/convolutional1/kernel/Assign(yolov3-tiny/convolutional1/kernel/read:02>yolov3-tiny/convolutional1/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional2/kernel:0(yolov3-tiny/convolutional2/kernel/Assign(yolov3-tiny/convolutional2/kernel/read:02>yolov3-tiny/convolutional2/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional3/kernel:0(yolov3-tiny/convolutional3/kernel/Assign(yolov3-tiny/convolutional3/kernel/read:02>yolov3-tiny/convolutional3/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional4/kernel:0(yolov3-tiny/convolutional4/kernel/Assign(yolov3-tiny/convolutional4/kernel/read:02>yolov3-tiny/convolutional4/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional5/kernel:0(yolov3-tiny/convolutional5/kernel/Assign(yolov3-tiny/convolutional5/kernel/read:02>yolov3-tiny/convolutional5/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional6/kernel:0(yolov3-tiny/convolutional6/kernel/Assign(yolov3-tiny/convolutional6/kernel/read:02>yolov3-tiny/convolutional6/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional7/kernel:0(yolov3-tiny/convolutional7/kernel/Assign(yolov3-tiny/convolutional7/kernel/read:02>yolov3-tiny/convolutional7/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional8/kernel:0(yolov3-tiny/convolutional8/kernel/Assign(yolov3-tiny/convolutional8/kernel/read:02>yolov3-tiny/convolutional8/kernel/Initializer/random_uniform:08
»
#yolov3-tiny/convolutional9/kernel:0(yolov3-tiny/convolutional9/kernel/Assign(yolov3-tiny/convolutional9/kernel/read:02>yolov3-tiny/convolutional9/kernel/Initializer/random_uniform:08
æ
$yolov3-tiny/convolutional10/kernel:0)yolov3-tiny/convolutional10/kernel/Assign)yolov3-tiny/convolutional10/kernel/read:02?yolov3-tiny/convolutional10/kernel/Initializer/random_uniform:08
®
"yolov3-tiny/convolutional10/bias:0'yolov3-tiny/convolutional10/bias/Assign'yolov3-tiny/convolutional10/bias/read:024yolov3-tiny/convolutional10/bias/Initializer/zeros:08
æ
$yolov3-tiny/convolutional11/kernel:0)yolov3-tiny/convolutional11/kernel/Assign)yolov3-tiny/convolutional11/kernel/read:02?yolov3-tiny/convolutional11/kernel/Initializer/random_uniform:08
æ
$yolov3-tiny/convolutional12/kernel:0)yolov3-tiny/convolutional12/kernel/Assign)yolov3-tiny/convolutional12/kernel/read:02?yolov3-tiny/convolutional12/kernel/Initializer/random_uniform:08
æ
$yolov3-tiny/convolutional13/kernel:0)yolov3-tiny/convolutional13/kernel/Assign)yolov3-tiny/convolutional13/kernel/read:02?yolov3-tiny/convolutional13/kernel/Initializer/random_uniform:08
®
"yolov3-tiny/convolutional13/bias:0'yolov3-tiny/convolutional13/bias/Assign'yolov3-tiny/convolutional13/bias/read:024yolov3-tiny/convolutional13/bias/Initializer/zeros:08"f
	variablesff
»
#yolov3-tiny/convolutional1/kernel:0(yolov3-tiny/convolutional1/kernel/Assign(yolov3-tiny/convolutional1/kernel/read:02>yolov3-tiny/convolutional1/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional1/BatchNorm/gamma:01yolov3-tiny/convolutional1/BatchNorm/gamma/Assign1yolov3-tiny/convolutional1/BatchNorm/gamma/read:02=yolov3-tiny/convolutional1/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional1/BatchNorm/beta:00yolov3-tiny/convolutional1/BatchNorm/beta/Assign0yolov3-tiny/convolutional1/BatchNorm/beta/read:02=yolov3-tiny/convolutional1/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional1/BatchNorm/moving_mean:07yolov3-tiny/convolutional1/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional1/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional1/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional1/BatchNorm/moving_variance:0;yolov3-tiny/convolutional1/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional1/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional1/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional2/kernel:0(yolov3-tiny/convolutional2/kernel/Assign(yolov3-tiny/convolutional2/kernel/read:02>yolov3-tiny/convolutional2/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional2/BatchNorm/gamma:01yolov3-tiny/convolutional2/BatchNorm/gamma/Assign1yolov3-tiny/convolutional2/BatchNorm/gamma/read:02=yolov3-tiny/convolutional2/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional2/BatchNorm/beta:00yolov3-tiny/convolutional2/BatchNorm/beta/Assign0yolov3-tiny/convolutional2/BatchNorm/beta/read:02=yolov3-tiny/convolutional2/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional2/BatchNorm/moving_mean:07yolov3-tiny/convolutional2/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional2/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional2/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional2/BatchNorm/moving_variance:0;yolov3-tiny/convolutional2/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional2/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional2/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional3/kernel:0(yolov3-tiny/convolutional3/kernel/Assign(yolov3-tiny/convolutional3/kernel/read:02>yolov3-tiny/convolutional3/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional3/BatchNorm/gamma:01yolov3-tiny/convolutional3/BatchNorm/gamma/Assign1yolov3-tiny/convolutional3/BatchNorm/gamma/read:02=yolov3-tiny/convolutional3/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional3/BatchNorm/beta:00yolov3-tiny/convolutional3/BatchNorm/beta/Assign0yolov3-tiny/convolutional3/BatchNorm/beta/read:02=yolov3-tiny/convolutional3/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional3/BatchNorm/moving_mean:07yolov3-tiny/convolutional3/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional3/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional3/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional3/BatchNorm/moving_variance:0;yolov3-tiny/convolutional3/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional3/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional3/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional4/kernel:0(yolov3-tiny/convolutional4/kernel/Assign(yolov3-tiny/convolutional4/kernel/read:02>yolov3-tiny/convolutional4/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional4/BatchNorm/gamma:01yolov3-tiny/convolutional4/BatchNorm/gamma/Assign1yolov3-tiny/convolutional4/BatchNorm/gamma/read:02=yolov3-tiny/convolutional4/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional4/BatchNorm/beta:00yolov3-tiny/convolutional4/BatchNorm/beta/Assign0yolov3-tiny/convolutional4/BatchNorm/beta/read:02=yolov3-tiny/convolutional4/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional4/BatchNorm/moving_mean:07yolov3-tiny/convolutional4/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional4/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional4/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional4/BatchNorm/moving_variance:0;yolov3-tiny/convolutional4/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional4/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional4/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional5/kernel:0(yolov3-tiny/convolutional5/kernel/Assign(yolov3-tiny/convolutional5/kernel/read:02>yolov3-tiny/convolutional5/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional5/BatchNorm/gamma:01yolov3-tiny/convolutional5/BatchNorm/gamma/Assign1yolov3-tiny/convolutional5/BatchNorm/gamma/read:02=yolov3-tiny/convolutional5/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional5/BatchNorm/beta:00yolov3-tiny/convolutional5/BatchNorm/beta/Assign0yolov3-tiny/convolutional5/BatchNorm/beta/read:02=yolov3-tiny/convolutional5/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional5/BatchNorm/moving_mean:07yolov3-tiny/convolutional5/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional5/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional5/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional5/BatchNorm/moving_variance:0;yolov3-tiny/convolutional5/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional5/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional5/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional6/kernel:0(yolov3-tiny/convolutional6/kernel/Assign(yolov3-tiny/convolutional6/kernel/read:02>yolov3-tiny/convolutional6/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional6/BatchNorm/gamma:01yolov3-tiny/convolutional6/BatchNorm/gamma/Assign1yolov3-tiny/convolutional6/BatchNorm/gamma/read:02=yolov3-tiny/convolutional6/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional6/BatchNorm/beta:00yolov3-tiny/convolutional6/BatchNorm/beta/Assign0yolov3-tiny/convolutional6/BatchNorm/beta/read:02=yolov3-tiny/convolutional6/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional6/BatchNorm/moving_mean:07yolov3-tiny/convolutional6/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional6/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional6/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional6/BatchNorm/moving_variance:0;yolov3-tiny/convolutional6/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional6/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional6/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional7/kernel:0(yolov3-tiny/convolutional7/kernel/Assign(yolov3-tiny/convolutional7/kernel/read:02>yolov3-tiny/convolutional7/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional7/BatchNorm/gamma:01yolov3-tiny/convolutional7/BatchNorm/gamma/Assign1yolov3-tiny/convolutional7/BatchNorm/gamma/read:02=yolov3-tiny/convolutional7/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional7/BatchNorm/beta:00yolov3-tiny/convolutional7/BatchNorm/beta/Assign0yolov3-tiny/convolutional7/BatchNorm/beta/read:02=yolov3-tiny/convolutional7/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional7/BatchNorm/moving_mean:07yolov3-tiny/convolutional7/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional7/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional7/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional7/BatchNorm/moving_variance:0;yolov3-tiny/convolutional7/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional7/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional7/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional8/kernel:0(yolov3-tiny/convolutional8/kernel/Assign(yolov3-tiny/convolutional8/kernel/read:02>yolov3-tiny/convolutional8/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional8/BatchNorm/gamma:01yolov3-tiny/convolutional8/BatchNorm/gamma/Assign1yolov3-tiny/convolutional8/BatchNorm/gamma/read:02=yolov3-tiny/convolutional8/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional8/BatchNorm/beta:00yolov3-tiny/convolutional8/BatchNorm/beta/Assign0yolov3-tiny/convolutional8/BatchNorm/beta/read:02=yolov3-tiny/convolutional8/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional8/BatchNorm/moving_mean:07yolov3-tiny/convolutional8/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional8/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional8/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional8/BatchNorm/moving_variance:0;yolov3-tiny/convolutional8/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional8/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional8/BatchNorm/moving_variance/Initializer/ones:0@H
»
#yolov3-tiny/convolutional9/kernel:0(yolov3-tiny/convolutional9/kernel/Assign(yolov3-tiny/convolutional9/kernel/read:02>yolov3-tiny/convolutional9/kernel/Initializer/random_uniform:08
Ó
,yolov3-tiny/convolutional9/BatchNorm/gamma:01yolov3-tiny/convolutional9/BatchNorm/gamma/Assign1yolov3-tiny/convolutional9/BatchNorm/gamma/read:02=yolov3-tiny/convolutional9/BatchNorm/gamma/Initializer/ones:0
Š
+yolov3-tiny/convolutional9/BatchNorm/beta:00yolov3-tiny/convolutional9/BatchNorm/beta/Assign0yolov3-tiny/convolutional9/BatchNorm/beta/read:02=yolov3-tiny/convolutional9/BatchNorm/beta/Initializer/zeros:0
š
2yolov3-tiny/convolutional9/BatchNorm/moving_mean:07yolov3-tiny/convolutional9/BatchNorm/moving_mean/Assign7yolov3-tiny/convolutional9/BatchNorm/moving_mean/read:02Dyolov3-tiny/convolutional9/BatchNorm/moving_mean/Initializer/zeros:0@H
’
6yolov3-tiny/convolutional9/BatchNorm/moving_variance:0;yolov3-tiny/convolutional9/BatchNorm/moving_variance/Assign;yolov3-tiny/convolutional9/BatchNorm/moving_variance/read:02Gyolov3-tiny/convolutional9/BatchNorm/moving_variance/Initializer/ones:0@H
æ
$yolov3-tiny/convolutional10/kernel:0)yolov3-tiny/convolutional10/kernel/Assign)yolov3-tiny/convolutional10/kernel/read:02?yolov3-tiny/convolutional10/kernel/Initializer/random_uniform:08
®
"yolov3-tiny/convolutional10/bias:0'yolov3-tiny/convolutional10/bias/Assign'yolov3-tiny/convolutional10/bias/read:024yolov3-tiny/convolutional10/bias/Initializer/zeros:08
æ
$yolov3-tiny/convolutional11/kernel:0)yolov3-tiny/convolutional11/kernel/Assign)yolov3-tiny/convolutional11/kernel/read:02?yolov3-tiny/convolutional11/kernel/Initializer/random_uniform:08
×
-yolov3-tiny/convolutional11/BatchNorm/gamma:02yolov3-tiny/convolutional11/BatchNorm/gamma/Assign2yolov3-tiny/convolutional11/BatchNorm/gamma/read:02>yolov3-tiny/convolutional11/BatchNorm/gamma/Initializer/ones:0
Ō
,yolov3-tiny/convolutional11/BatchNorm/beta:01yolov3-tiny/convolutional11/BatchNorm/beta/Assign1yolov3-tiny/convolutional11/BatchNorm/beta/read:02>yolov3-tiny/convolutional11/BatchNorm/beta/Initializer/zeros:0
ō
3yolov3-tiny/convolutional11/BatchNorm/moving_mean:08yolov3-tiny/convolutional11/BatchNorm/moving_mean/Assign8yolov3-tiny/convolutional11/BatchNorm/moving_mean/read:02Eyolov3-tiny/convolutional11/BatchNorm/moving_mean/Initializer/zeros:0@H

7yolov3-tiny/convolutional11/BatchNorm/moving_variance:0<yolov3-tiny/convolutional11/BatchNorm/moving_variance/Assign<yolov3-tiny/convolutional11/BatchNorm/moving_variance/read:02Hyolov3-tiny/convolutional11/BatchNorm/moving_variance/Initializer/ones:0@H
æ
$yolov3-tiny/convolutional12/kernel:0)yolov3-tiny/convolutional12/kernel/Assign)yolov3-tiny/convolutional12/kernel/read:02?yolov3-tiny/convolutional12/kernel/Initializer/random_uniform:08
×
-yolov3-tiny/convolutional12/BatchNorm/gamma:02yolov3-tiny/convolutional12/BatchNorm/gamma/Assign2yolov3-tiny/convolutional12/BatchNorm/gamma/read:02>yolov3-tiny/convolutional12/BatchNorm/gamma/Initializer/ones:0
Ō
,yolov3-tiny/convolutional12/BatchNorm/beta:01yolov3-tiny/convolutional12/BatchNorm/beta/Assign1yolov3-tiny/convolutional12/BatchNorm/beta/read:02>yolov3-tiny/convolutional12/BatchNorm/beta/Initializer/zeros:0
ō
3yolov3-tiny/convolutional12/BatchNorm/moving_mean:08yolov3-tiny/convolutional12/BatchNorm/moving_mean/Assign8yolov3-tiny/convolutional12/BatchNorm/moving_mean/read:02Eyolov3-tiny/convolutional12/BatchNorm/moving_mean/Initializer/zeros:0@H

7yolov3-tiny/convolutional12/BatchNorm/moving_variance:0<yolov3-tiny/convolutional12/BatchNorm/moving_variance/Assign<yolov3-tiny/convolutional12/BatchNorm/moving_variance/read:02Hyolov3-tiny/convolutional12/BatchNorm/moving_variance/Initializer/ones:0@H
æ
$yolov3-tiny/convolutional13/kernel:0)yolov3-tiny/convolutional13/kernel/Assign)yolov3-tiny/convolutional13/kernel/read:02?yolov3-tiny/convolutional13/kernel/Initializer/random_uniform:08
®
"yolov3-tiny/convolutional13/bias:0'yolov3-tiny/convolutional13/bias/Assign'yolov3-tiny/convolutional13/bias/read:024yolov3-tiny/convolutional13/bias/Initializer/zeros:08")
saved_model_main_op

legacy_init_op*©
predict_image
I
image@
ParseExample/ParseExample:0’’’’’’’’’  .
scores$
Placeholder:0’’’’’’’’’tensorflow/serving/predict