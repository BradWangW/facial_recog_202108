åÓ!
·
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
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
ú
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ñ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ù
|
CONV1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCONV1/kernel
u
 CONV1/kernel/Read/ReadVariableOpReadVariableOpCONV1/kernel*&
_output_shapes
:*
dtype0
l

CONV1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CONV1/bias
e
CONV1/bias/Read/ReadVariableOpReadVariableOp
CONV1/bias*
_output_shapes
:*
dtype0
j
	BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*
shared_name	BN1/gamma
c
BN1/gamma/Read/ReadVariableOpReadVariableOp	BN1/gamma*
_output_shapes
:>*
dtype0
h
BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*
shared_name
BN1/beta
a
BN1/beta/Read/ReadVariableOpReadVariableOpBN1/beta*
_output_shapes
:>*
dtype0
v
BN1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:>* 
shared_nameBN1/moving_mean
o
#BN1/moving_mean/Read/ReadVariableOpReadVariableOpBN1/moving_mean*
_output_shapes
:>*
dtype0
~
BN1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*$
shared_nameBN1/moving_variance
w
'BN1/moving_variance/Read/ReadVariableOpReadVariableOpBN1/moving_variance*
_output_shapes
:>*
dtype0
|
CONV2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameCONV2/kernel
u
 CONV2/kernel/Read/ReadVariableOpReadVariableOpCONV2/kernel*&
_output_shapes
:*
dtype0
l

CONV2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
CONV2/bias
e
CONV2/bias/Read/ReadVariableOpReadVariableOp
CONV2/bias*
_output_shapes
:*
dtype0
j
	BN3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	BN3/gamma
c
BN3/gamma/Read/ReadVariableOpReadVariableOp	BN3/gamma*
_output_shapes
:*
dtype0
h
BN3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
BN3/beta
a
BN3/beta/Read/ReadVariableOpReadVariableOpBN3/beta*
_output_shapes
:*
dtype0
v
BN3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameBN3/moving_mean
o
#BN3/moving_mean/Read/ReadVariableOpReadVariableOpBN3/moving_mean*
_output_shapes
:*
dtype0
~
BN3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameBN3/moving_variance
w
'BN3/moving_variance/Read/ReadVariableOpReadVariableOpBN3/moving_variance*
_output_shapes
:*
dtype0

dense_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*#
shared_namedense_layer/kernel
z
&dense_layer/kernel/Read/ReadVariableOpReadVariableOpdense_layer/kernel*
_output_shapes
:	*
dtype0
x
dense_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namedense_layer/bias
q
$dense_layer/bias/Read/ReadVariableOpReadVariableOpdense_layer/bias*
_output_shapes
:*
dtype0
j
	BN4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	BN4/gamma
c
BN4/gamma/Read/ReadVariableOpReadVariableOp	BN4/gamma*
_output_shapes
:*
dtype0
h
BN4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
BN4/beta
a
BN4/beta/Read/ReadVariableOpReadVariableOpBN4/beta*
_output_shapes
:*
dtype0
v
BN4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameBN4/moving_mean
o
#BN4/moving_mean/Read/ReadVariableOpReadVariableOpBN4/moving_mean*
_output_shapes
:*
dtype0
~
BN4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameBN4/moving_variance
w
'BN4/moving_variance/Read/ReadVariableOpReadVariableOpBN4/moving_variance*
_output_shapes
:*
dtype0
z
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_76/kernel
s
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel*
_output_shapes

:*
dtype0
r
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_76/bias
k
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/CONV1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV1/kernel/m

'Adam/CONV1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CONV1/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/CONV1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/CONV1/bias/m
s
%Adam/CONV1/bias/m/Read/ReadVariableOpReadVariableOpAdam/CONV1/bias/m*
_output_shapes
:*
dtype0
x
Adam/BN1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*!
shared_nameAdam/BN1/gamma/m
q
$Adam/BN1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BN1/gamma/m*
_output_shapes
:>*
dtype0
v
Adam/BN1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:>* 
shared_nameAdam/BN1/beta/m
o
#Adam/BN1/beta/m/Read/ReadVariableOpReadVariableOpAdam/BN1/beta/m*
_output_shapes
:>*
dtype0

Adam/CONV2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV2/kernel/m

'Adam/CONV2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/CONV2/kernel/m*&
_output_shapes
:*
dtype0
z
Adam/CONV2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/CONV2/bias/m
s
%Adam/CONV2/bias/m/Read/ReadVariableOpReadVariableOpAdam/CONV2/bias/m*
_output_shapes
:*
dtype0
x
Adam/BN3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/BN3/gamma/m
q
$Adam/BN3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BN3/gamma/m*
_output_shapes
:*
dtype0
v
Adam/BN3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/BN3/beta/m
o
#Adam/BN3/beta/m/Read/ReadVariableOpReadVariableOpAdam/BN3/beta/m*
_output_shapes
:*
dtype0

Adam/dense_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_nameAdam/dense_layer/kernel/m

-Adam/dense_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/dense_layer/bias/m

+Adam/dense_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer/bias/m*
_output_shapes
:*
dtype0
x
Adam/BN4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/BN4/gamma/m
q
$Adam/BN4/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BN4/gamma/m*
_output_shapes
:*
dtype0
v
Adam/BN4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/BN4/beta/m
o
#Adam/BN4/beta/m/Read/ReadVariableOpReadVariableOpAdam/BN4/beta/m*
_output_shapes
:*
dtype0

Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_76/kernel/m

*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_76/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_76/bias/m
y
(Adam/dense_76/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/m*
_output_shapes
:*
dtype0

Adam/CONV1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV1/kernel/v

'Adam/CONV1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CONV1/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/CONV1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/CONV1/bias/v
s
%Adam/CONV1/bias/v/Read/ReadVariableOpReadVariableOpAdam/CONV1/bias/v*
_output_shapes
:*
dtype0
x
Adam/BN1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*!
shared_nameAdam/BN1/gamma/v
q
$Adam/BN1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BN1/gamma/v*
_output_shapes
:>*
dtype0
v
Adam/BN1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:>* 
shared_nameAdam/BN1/beta/v
o
#Adam/BN1/beta/v/Read/ReadVariableOpReadVariableOpAdam/BN1/beta/v*
_output_shapes
:>*
dtype0

Adam/CONV2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV2/kernel/v

'Adam/CONV2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/CONV2/kernel/v*&
_output_shapes
:*
dtype0
z
Adam/CONV2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/CONV2/bias/v
s
%Adam/CONV2/bias/v/Read/ReadVariableOpReadVariableOpAdam/CONV2/bias/v*
_output_shapes
:*
dtype0
x
Adam/BN3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/BN3/gamma/v
q
$Adam/BN3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BN3/gamma/v*
_output_shapes
:*
dtype0
v
Adam/BN3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/BN3/beta/v
o
#Adam/BN3/beta/v/Read/ReadVariableOpReadVariableOpAdam/BN3/beta/v*
_output_shapes
:*
dtype0

Adam/dense_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_nameAdam/dense_layer/kernel/v

-Adam/dense_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/dense_layer/bias/v

+Adam/dense_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer/bias/v*
_output_shapes
:*
dtype0
x
Adam/BN4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/BN4/gamma/v
q
$Adam/BN4/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BN4/gamma/v*
_output_shapes
:*
dtype0
v
Adam/BN4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/BN4/beta/v
o
#Adam/BN4/beta/v/Read/ReadVariableOpReadVariableOpAdam/BN4/beta/v*
_output_shapes
:*
dtype0

Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_76/kernel/v

*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_76/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_76/bias/v
y
(Adam/dense_76/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ïd
valueÅdBÂd B»d
ý
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer_with_weights-6
layer-15
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
 
y
layer-0
layer-1
layer-2
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api

$axis
	%gamma
&beta
'moving_mean
(moving_variance
)regularization_losses
*trainable_variables
+	variables
,	keras_api
R
-regularization_losses
.trainable_variables
/	variables
0	keras_api
R
1regularization_losses
2trainable_variables
3	variables
4	keras_api
h

5kernel
6bias
7regularization_losses
8trainable_variables
9	variables
:	keras_api

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
R
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
R
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
R
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
h

Pkernel
Qbias
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
R
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api

Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_regularization_losses
`trainable_variables
a	variables
b	keras_api
R
cregularization_losses
dtrainable_variables
e	variables
f	keras_api
h

gkernel
hbias
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
Ø
miter

nbeta_1

obeta_2
	pdecay
qlearning_ratemÔmÕ%mÖ&m×5mØ6mÙ<mÚ=mÛPmÜQmÝ[mÞ\mßgmàhmávâvã%vä&vå5væ6vç<vè=véPvêQvë[vì\vígvîhvï
 
f
0
1
%2
&3
54
65
<6
=7
P8
Q9
[10
\11
g12
h13

0
1
%2
&3
'4
(5
56
67
<8
=9
>10
?11
P12
Q13
[14
\15
]16
^17
g18
h19
­
rlayer_metrics

slayers
regularization_losses
trainable_variables
	variables
tmetrics
ulayer_regularization_losses
vnon_trainable_variables
 

w_rng
x	keras_api

y_rng
z	keras_api

{	keras_api
 
 
 
®
|layer_metrics

}layers
regularization_losses
trainable_variables
	variables
~metrics
layer_regularization_losses
non_trainable_variables
XV
VARIABLE_VALUECONV1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CONV1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
²
layer_metrics
layers
 regularization_losses
!trainable_variables
"	variables
metrics
 layer_regularization_losses
non_trainable_variables
 
TR
VARIABLE_VALUE	BN1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEBN1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEBN1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBN1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
'2
(3
²
layer_metrics
layers
)regularization_losses
*trainable_variables
+	variables
metrics
 layer_regularization_losses
non_trainable_variables
 
 
 
²
layer_metrics
layers
-regularization_losses
.trainable_variables
/	variables
metrics
 layer_regularization_losses
non_trainable_variables
 
 
 
²
layer_metrics
layers
1regularization_losses
2trainable_variables
3	variables
metrics
 layer_regularization_losses
non_trainable_variables
XV
VARIABLE_VALUECONV2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CONV2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

50
61

50
61
²
layer_metrics
layers
7regularization_losses
8trainable_variables
9	variables
metrics
 layer_regularization_losses
non_trainable_variables
 
TR
VARIABLE_VALUE	BN3/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEBN3/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEBN3/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBN3/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
>2
?3
²
layer_metrics
layers
@regularization_losses
Atrainable_variables
B	variables
metrics
 layer_regularization_losses
non_trainable_variables
 
 
 
²
layer_metrics
 layers
Dregularization_losses
Etrainable_variables
F	variables
¡metrics
 ¢layer_regularization_losses
£non_trainable_variables
 
 
 
²
¤layer_metrics
¥layers
Hregularization_losses
Itrainable_variables
J	variables
¦metrics
 §layer_regularization_losses
¨non_trainable_variables
 
 
 
²
©layer_metrics
ªlayers
Lregularization_losses
Mtrainable_variables
N	variables
«metrics
 ¬layer_regularization_losses
­non_trainable_variables
^\
VARIABLE_VALUEdense_layer/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_layer/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

P0
Q1

P0
Q1
²
®layer_metrics
¯layers
Rregularization_losses
Strainable_variables
T	variables
°metrics
 ±layer_regularization_losses
²non_trainable_variables
 
 
 
²
³layer_metrics
´layers
Vregularization_losses
Wtrainable_variables
X	variables
µmetrics
 ¶layer_regularization_losses
·non_trainable_variables
 
TR
VARIABLE_VALUE	BN4/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEBN4/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEBN4/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBN4/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

[0
\1
]2
^3
²
¸layer_metrics
¹layers
_regularization_losses
`trainable_variables
a	variables
ºmetrics
 »layer_regularization_losses
¼non_trainable_variables
 
 
 
²
½layer_metrics
¾layers
cregularization_losses
dtrainable_variables
e	variables
¿metrics
 Àlayer_regularization_losses
Ánon_trainable_variables
[Y
VARIABLE_VALUEdense_76/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_76/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1

g0
h1
²
Âlayer_metrics
Ãlayers
iregularization_losses
jtrainable_variables
k	variables
Ämetrics
 Ålayer_regularization_losses
Ænon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
v
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15

Ç0
È1
 
*
'0
(1
>2
?3
]4
^5

É
_state_var
 

Ê
_state_var
 
 
 

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 

'0
(1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

>0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

]0
^1
 
 
 
 
 
 
 
 
 
 
8

Ëtotal

Ìcount
Í	variables
Î	keras_api
I

Ïtotal

Ðcount
Ñ
_fn_kwargs
Ò	variables
Ó	keras_api
XV
VARIABLE_VALUEVariable:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ë0
Ì1

Í	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ï0
Ð1

Ò	variables
{y
VARIABLE_VALUEAdam/CONV1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/CONV1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/BN1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/BN1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/CONV2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/CONV2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/BN3/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/BN3/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_layer/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_layer/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/BN4/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/BN4/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_76/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_76/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/CONV1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/CONV1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/BN1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/BN1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/CONV2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/CONV2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/BN3/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/BN3/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_layer/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_layer/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/BN4/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/BN4/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_76/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_76/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_79Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ@@

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_79CONV1/kernel
CONV1/bias	BN1/gammaBN1/betaBN1/moving_meanBN1/moving_varianceCONV2/kernel
CONV2/bias	BN3/gammaBN3/betaBN3/moving_meanBN3/moving_variancedense_layer/kerneldense_layer/biasBN4/moving_variance	BN4/gammaBN4/moving_meanBN4/betadense_76/kerneldense_76/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_712388
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Î
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename CONV1/kernel/Read/ReadVariableOpCONV1/bias/Read/ReadVariableOpBN1/gamma/Read/ReadVariableOpBN1/beta/Read/ReadVariableOp#BN1/moving_mean/Read/ReadVariableOp'BN1/moving_variance/Read/ReadVariableOp CONV2/kernel/Read/ReadVariableOpCONV2/bias/Read/ReadVariableOpBN3/gamma/Read/ReadVariableOpBN3/beta/Read/ReadVariableOp#BN3/moving_mean/Read/ReadVariableOp'BN3/moving_variance/Read/ReadVariableOp&dense_layer/kernel/Read/ReadVariableOp$dense_layer/bias/Read/ReadVariableOpBN4/gamma/Read/ReadVariableOpBN4/beta/Read/ReadVariableOp#BN4/moving_mean/Read/ReadVariableOp'BN4/moving_variance/Read/ReadVariableOp#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/CONV1/kernel/m/Read/ReadVariableOp%Adam/CONV1/bias/m/Read/ReadVariableOp$Adam/BN1/gamma/m/Read/ReadVariableOp#Adam/BN1/beta/m/Read/ReadVariableOp'Adam/CONV2/kernel/m/Read/ReadVariableOp%Adam/CONV2/bias/m/Read/ReadVariableOp$Adam/BN3/gamma/m/Read/ReadVariableOp#Adam/BN3/beta/m/Read/ReadVariableOp-Adam/dense_layer/kernel/m/Read/ReadVariableOp+Adam/dense_layer/bias/m/Read/ReadVariableOp$Adam/BN4/gamma/m/Read/ReadVariableOp#Adam/BN4/beta/m/Read/ReadVariableOp*Adam/dense_76/kernel/m/Read/ReadVariableOp(Adam/dense_76/bias/m/Read/ReadVariableOp'Adam/CONV1/kernel/v/Read/ReadVariableOp%Adam/CONV1/bias/v/Read/ReadVariableOp$Adam/BN1/gamma/v/Read/ReadVariableOp#Adam/BN1/beta/v/Read/ReadVariableOp'Adam/CONV2/kernel/v/Read/ReadVariableOp%Adam/CONV2/bias/v/Read/ReadVariableOp$Adam/BN3/gamma/v/Read/ReadVariableOp#Adam/BN3/beta/v/Read/ReadVariableOp-Adam/dense_layer/kernel/v/Read/ReadVariableOp+Adam/dense_layer/bias/v/Read/ReadVariableOp$Adam/BN4/gamma/v/Read/ReadVariableOp#Adam/BN4/beta/v/Read/ReadVariableOp*Adam/dense_76/kernel/v/Read/ReadVariableOp(Adam/dense_76/bias/v/Read/ReadVariableOpConst*H
TinA
?2=			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_713814
­

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameCONV1/kernel
CONV1/bias	BN1/gammaBN1/betaBN1/moving_meanBN1/moving_varianceCONV2/kernel
CONV2/bias	BN3/gammaBN3/betaBN3/moving_meanBN3/moving_variancedense_layer/kerneldense_layer/bias	BN4/gammaBN4/betaBN4/moving_meanBN4/moving_variancedense_76/kerneldense_76/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1totalcounttotal_1count_1Adam/CONV1/kernel/mAdam/CONV1/bias/mAdam/BN1/gamma/mAdam/BN1/beta/mAdam/CONV2/kernel/mAdam/CONV2/bias/mAdam/BN3/gamma/mAdam/BN3/beta/mAdam/dense_layer/kernel/mAdam/dense_layer/bias/mAdam/BN4/gamma/mAdam/BN4/beta/mAdam/dense_76/kernel/mAdam/dense_76/bias/mAdam/CONV1/kernel/vAdam/CONV1/bias/vAdam/BN1/gamma/vAdam/BN1/beta/vAdam/CONV2/kernel/vAdam/CONV2/bias/vAdam/BN3/gamma/vAdam/BN3/beta/vAdam/dense_layer/kernel/vAdam/dense_layer/bias/vAdam/BN4/gamma/vAdam/BN4/beta/vAdam/dense_76/kernel/vAdam/dense_76/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_714001õ
²
®
?__inference_BN3_layer_call_and_return_conditional_losses_711199

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ï
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
$__inference_signature_wrapper_712388
input_79!
unknown:
	unknown_0:
	unknown_1:>
	unknown_2:>
	unknown_3:>
	unknown_4:>#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinput_79unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_7106402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_79
¿
e
I__inference_sequential_68_layer_call_and_return_conditional_losses_712901

inputs
identityo
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/x
rescaling_51/mulMulinputsrescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/mul
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/addp
IdentityIdentityrescaling_51/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ý
¿
$__inference_BN1_layer_call_fn_713193

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7114872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ>>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
¶
ö
I__inference_sequential_68_layer_call_and_return_conditional_losses_710982
random_flip_68_inputI
;random_rotation_68_stateful_uniform_rngreadandskip_resource:	
identity¢2random_rotation_68/stateful_uniform/RngReadAndSkipù
8random_flip_68/random_flip_left_right/control_dependencyIdentityrandom_flip_68_input*
T0*'
_class
loc:@random_flip_68_input*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2:
8random_flip_68/random_flip_left_right/control_dependencyË
+random_flip_68/random_flip_left_right/ShapeShapeArandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_68/random_flip_left_right/ShapeÀ
9random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_68/random_flip_left_right/strided_slice/stackÄ
;random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_1Ä
;random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_2Æ
3random_flip_68/random_flip_left_right/strided_sliceStridedSlice4random_flip_68/random_flip_left_right/Shape:output:0Brandom_flip_68/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_68/random_flip_left_right/strided_sliceì
:random_flip_68/random_flip_left_right/random_uniform/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_68/random_flip_left_right/random_uniform/shape¹
8random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_68/random_flip_left_right/random_uniform/min¹
8random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8random_flip_68/random_flip_left_right/random_uniform/max
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02D
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniform¹
8random_flip_68/random_flip_left_right/random_uniform/MulMulKrandom_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8random_flip_68/random_flip_left_right/random_uniform/Mul°
5random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/1°
5random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/2°
5random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/3
3random_flip_68/random_flip_left_right/Reshape/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0>random_flip_68/random_flip_left_right/Reshape/shape/1:output:0>random_flip_68/random_flip_left_right/Reshape/shape/2:output:0>random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_68/random_flip_left_right/Reshape/shape
-random_flip_68/random_flip_left_right/ReshapeReshape<random_flip_68/random_flip_left_right/random_uniform/Mul:z:0<random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-random_flip_68/random_flip_left_right/ReshapeÕ
+random_flip_68/random_flip_left_right/RoundRound6random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_flip_68/random_flip_left_right/Round¶
4random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_68/random_flip_left_right/ReverseV2/axis«
/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_68/random_flip_left_right/control_dependency:output:0=random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@21
/random_flip_68/random_flip_left_right/ReverseV2
)random_flip_68/random_flip_left_right/mulMul/random_flip_68/random_flip_left_right/Round:y:08random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2+
)random_flip_68/random_flip_left_right/mul
+random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+random_flip_68/random_flip_left_right/sub/xþ
)random_flip_68/random_flip_left_right/subSub4random_flip_68/random_flip_left_right/sub/x:output:0/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_flip_68/random_flip_left_right/sub
+random_flip_68/random_flip_left_right/mul_1Mul-random_flip_68/random_flip_left_right/sub:z:0Arandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2-
+random_flip_68/random_flip_left_right/mul_1ù
)random_flip_68/random_flip_left_right/addAddV2-random_flip_68/random_flip_left_right/mul:z:0/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2+
)random_flip_68/random_flip_left_right/add
random_rotation_68/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_68/Shape
&random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_68/strided_slice/stack
(random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_1
(random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_2Ô
 random_rotation_68/strided_sliceStridedSlice!random_rotation_68/Shape:output:0/random_rotation_68/strided_slice/stack:output:01random_rotation_68/strided_slice/stack_1:output:01random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_68/strided_slice
(random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_1/stack¢
*random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_1¢
*random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_2Þ
"random_rotation_68/strided_slice_1StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_1/stack:output:03random_rotation_68/strided_slice_1/stack_1:output:03random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_1
random_rotation_68/CastCast+random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast
(random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_2/stack¢
*random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_1¢
*random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_2Þ
"random_rotation_68/strided_slice_2StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_2/stack:output:03random_rotation_68/strided_slice_2/stack_1:output:03random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_2
random_rotation_68/Cast_1Cast+random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast_1·
)random_rotation_68/stateful_uniform/shapePack)random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_68/stateful_uniform/shape
'random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2)
'random_rotation_68/stateful_uniform/min
'random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2)
'random_rotation_68/stateful_uniform/max 
)random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_rotation_68/stateful_uniform/Constå
(random_rotation_68/stateful_uniform/ProdProd2random_rotation_68/stateful_uniform/shape:output:02random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/stateful_uniform/Prod
*random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_rotation_68/stateful_uniform/Cast/xÃ
*random_rotation_68/stateful_uniform/Cast_1Cast1random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_rotation_68/stateful_uniform/Cast_1¸
2random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_68_stateful_uniform_rngreadandskip_resource3random_rotation_68/stateful_uniform/Cast/x:output:0.random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_rotation_68/stateful_uniform/RngReadAndSkip¼
7random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_rotation_68/stateful_uniform/strided_slice/stackÀ
9random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_1À
9random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_2À
1random_rotation_68/stateful_uniform/strided_sliceStridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0@random_rotation_68/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_rotation_68/stateful_uniform/strided_sliceÒ
+random_rotation_68/stateful_uniform/BitcastBitcast:random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_rotation_68/stateful_uniform/BitcastÀ
9random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice_1/stackÄ
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Ä
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2¸
3random_rotation_68/stateful_uniform/strided_slice_1StridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_rotation_68/stateful_uniform/strided_slice_1Ø
-random_rotation_68/stateful_uniform/Bitcast_1Bitcast<random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_rotation_68/stateful_uniform/Bitcast_1Æ
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algª
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_68/stateful_uniform/shape:output:06random_rotation_68/stateful_uniform/Bitcast_1:output:04random_rotation_68/stateful_uniform/Bitcast:output:0Irandom_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2Þ
'random_rotation_68/stateful_uniform/subSub0random_rotation_68/stateful_uniform/max:output:00random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_68/stateful_uniform/subû
'random_rotation_68/stateful_uniform/mulMulErandom_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_68/stateful_uniform/mulÞ
#random_rotation_68/stateful_uniformAdd+random_rotation_68/stateful_uniform/mul:z:00random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#random_rotation_68/stateful_uniform
(random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(random_rotation_68/rotation_matrix/sub/yÊ
&random_rotation_68/rotation_matrix/subSubrandom_rotation_68/Cast_1:y:01random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_68/rotation_matrix/sub®
&random_rotation_68/rotation_matrix/CosCos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/Cos
*random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_1/yÐ
(random_rotation_68/rotation_matrix/sub_1Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_1ß
&random_rotation_68/rotation_matrix/mulMul*random_rotation_68/rotation_matrix/Cos:y:0,random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/mul®
&random_rotation_68/rotation_matrix/SinSin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/Sin
*random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_2/yÎ
(random_rotation_68/rotation_matrix/sub_2Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_2ã
(random_rotation_68/rotation_matrix/mul_1Mul*random_rotation_68/rotation_matrix/Sin:y:0,random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_1ã
(random_rotation_68/rotation_matrix/sub_3Sub*random_rotation_68/rotation_matrix/mul:z:0,random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_3ã
(random_rotation_68/rotation_matrix/sub_4Sub*random_rotation_68/rotation_matrix/sub:z:0,random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_4¡
,random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_68/rotation_matrix/truediv/yö
*random_rotation_68/rotation_matrix/truedivRealDiv,random_rotation_68/rotation_matrix/sub_4:z:05random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_rotation_68/rotation_matrix/truediv
*random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_5/yÎ
(random_rotation_68/rotation_matrix/sub_5Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_5²
(random_rotation_68/rotation_matrix/Sin_1Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_1
*random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_6/yÐ
(random_rotation_68/rotation_matrix/sub_6Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_6å
(random_rotation_68/rotation_matrix/mul_2Mul,random_rotation_68/rotation_matrix/Sin_1:y:0,random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_2²
(random_rotation_68/rotation_matrix/Cos_1Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_1
*random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_7/yÎ
(random_rotation_68/rotation_matrix/sub_7Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_7å
(random_rotation_68/rotation_matrix/mul_3Mul,random_rotation_68/rotation_matrix/Cos_1:y:0,random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_3ã
&random_rotation_68/rotation_matrix/addAddV2,random_rotation_68/rotation_matrix/mul_2:z:0,random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/addã
(random_rotation_68/rotation_matrix/sub_8Sub,random_rotation_68/rotation_matrix/sub_5:z:0*random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_8¥
.random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_68/rotation_matrix/truediv_1/yü
,random_rotation_68/rotation_matrix/truediv_1RealDiv,random_rotation_68/rotation_matrix/sub_8:z:07random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_rotation_68/rotation_matrix/truediv_1«
(random_rotation_68/rotation_matrix/ShapeShape'random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_68/rotation_matrix/Shapeº
6random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_68/rotation_matrix/strided_slice/stack¾
8random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_1¾
8random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_2´
0random_rotation_68/rotation_matrix/strided_sliceStridedSlice1random_rotation_68/rotation_matrix/Shape:output:0?random_rotation_68/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_68/rotation_matrix/strided_slice²
(random_rotation_68/rotation_matrix/Cos_2Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_2Å
8random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_1/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_1StridedSlice,random_rotation_68/rotation_matrix/Cos_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_1²
(random_rotation_68/rotation_matrix/Sin_2Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_2Å
8random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_2/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_2StridedSlice,random_rotation_68/rotation_matrix/Sin_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_2Æ
&random_rotation_68/rotation_matrix/NegNeg;random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/NegÅ
8random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_3/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2ë
2random_rotation_68/rotation_matrix/strided_slice_3StridedSlice.random_rotation_68/rotation_matrix/truediv:z:0Arandom_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_3²
(random_rotation_68/rotation_matrix/Sin_3Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_3Å
8random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_4/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_4StridedSlice,random_rotation_68/rotation_matrix/Sin_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_4²
(random_rotation_68/rotation_matrix/Cos_3Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_3Å
8random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_5/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_5StridedSlice,random_rotation_68/rotation_matrix/Cos_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_5Å
8random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_6/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2í
2random_rotation_68/rotation_matrix/strided_slice_6StridedSlice0random_rotation_68/rotation_matrix/truediv_1:z:0Arandom_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_6¢
.random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/zeros/mul/yø
,random_rotation_68/rotation_matrix/zeros/mulMul9random_rotation_68/rotation_matrix/strided_slice:output:07random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_68/rotation_matrix/zeros/mul¥
/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è21
/random_rotation_68/rotation_matrix/zeros/Less/yó
-random_rotation_68/rotation_matrix/zeros/LessLess0random_rotation_68/rotation_matrix/zeros/mul:z:08random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_68/rotation_matrix/zeros/Less¨
1random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_68/rotation_matrix/zeros/packed/1
/random_rotation_68/rotation_matrix/zeros/packedPack9random_rotation_68/rotation_matrix/strided_slice:output:0:random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_68/rotation_matrix/zeros/packed¥
.random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_68/rotation_matrix/zeros/Const
(random_rotation_68/rotation_matrix/zerosFill8random_rotation_68/rotation_matrix/zeros/packed:output:07random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/zeros¢
.random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/concat/axisæ
)random_rotation_68/rotation_matrix/concatConcatV2;random_rotation_68/rotation_matrix/strided_slice_1:output:0*random_rotation_68/rotation_matrix/Neg:y:0;random_rotation_68/rotation_matrix/strided_slice_3:output:0;random_rotation_68/rotation_matrix/strided_slice_4:output:0;random_rotation_68/rotation_matrix/strided_slice_5:output:0;random_rotation_68/rotation_matrix/strided_slice_6:output:01random_rotation_68/rotation_matrix/zeros:output:07random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_68/rotation_matrix/concat¥
"random_rotation_68/transform/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_rotation_68/transform/Shape®
0random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_68/transform/strided_slice/stack²
2random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_1²
2random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_2ü
*random_rotation_68/transform/strided_sliceStridedSlice+random_rotation_68/transform/Shape:output:09random_rotation_68/transform/strided_slice/stack:output:0;random_rotation_68/transform/strided_slice/stack_1:output:0;random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_68/transform/strided_slice
'random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_68/transform/fill_valueÍ
7random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_68/random_flip_left_right/add:z:02random_rotation_68/rotation_matrix/concat:output:03random_rotation_68/transform/strided_slice:output:00random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_68/transform/ImageProjectiveTransformV3o
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xÑ
rescaling_51/mulMulLrandom_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/mul
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/add¥
IdentityIdentityrescaling_51/add:z:03^random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@: 2h
2random_rotation_68/stateful_uniform/RngReadAndSkip2random_rotation_68/stateful_uniform/RngReadAndSkip:e a
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
.
_user_specified_namerandom_flip_68_input

f
J__inference_activation_129_layer_call_and_return_conditional_losses_713371

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
¿
$__inference_BN3_layer_call_fn_713353

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7115522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

õ
D__inference_dense_76_layer_call_and_return_conditional_losses_713541

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
ô
B__inference_Model2_layer_call_and_return_conditional_losses_712797

inputsW
Isequential_68_random_rotation_68_stateful_uniform_rngreadandskip_resource:	>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:)
bn1_readvariableop_resource:>+
bn1_readvariableop_1_resource:>:
,bn1_fusedbatchnormv3_readvariableop_resource:><
.bn1_fusedbatchnormv3_readvariableop_1_resource:>>
$conv2_conv2d_readvariableop_resource:3
%conv2_biasadd_readvariableop_resource:)
bn3_readvariableop_resource:+
bn3_readvariableop_1_resource::
,bn3_fusedbatchnormv3_readvariableop_resource:<
.bn3_fusedbatchnormv3_readvariableop_1_resource:=
*dense_layer_matmul_readvariableop_resource:	9
+dense_layer_biasadd_readvariableop_resource:9
+bn4_assignmovingavg_readvariableop_resource:;
-bn4_assignmovingavg_1_readvariableop_resource:7
)bn4_batchnorm_mul_readvariableop_resource:3
%bn4_batchnorm_readvariableop_resource:9
'dense_76_matmul_readvariableop_resource:6
(dense_76_biasadd_readvariableop_resource:
identity

identity_1

identity_2¢BN1/AssignNewValue¢BN1/AssignNewValue_1¢#BN1/FusedBatchNormV3/ReadVariableOp¢%BN1/FusedBatchNormV3/ReadVariableOp_1¢BN1/ReadVariableOp¢BN1/ReadVariableOp_1¢BN3/AssignNewValue¢BN3/AssignNewValue_1¢#BN3/FusedBatchNormV3/ReadVariableOp¢%BN3/FusedBatchNormV3/ReadVariableOp_1¢BN3/ReadVariableOp¢BN3/ReadVariableOp_1¢BN4/AssignMovingAvg¢"BN4/AssignMovingAvg/ReadVariableOp¢BN4/AssignMovingAvg_1¢$BN4/AssignMovingAvg_1/ReadVariableOp¢BN4/batchnorm/ReadVariableOp¢ BN4/batchnorm/mul/ReadVariableOp¢CONV1/BiasAdd/ReadVariableOp¢CONV1/Conv2D/ReadVariableOp¢CONV2/BiasAdd/ReadVariableOp¢CONV2/Conv2D/ReadVariableOp¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢"dense_layer/BiasAdd/ReadVariableOp¢!dense_layer/MatMul/ReadVariableOp¢4dense_layer/kernel/Regularizer/Square/ReadVariableOp¢@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkipù
Fsequential_68/random_flip_68/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2H
Fsequential_68/random_flip_68/random_flip_left_right/control_dependencyõ
9sequential_68/random_flip_68/random_flip_left_right/ShapeShapeOsequential_68/random_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2;
9sequential_68/random_flip_68/random_flip_left_right/ShapeÜ
Gsequential_68/random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gsequential_68/random_flip_68/random_flip_left_right/strided_slice/stackà
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_1à
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_2
Asequential_68/random_flip_68/random_flip_left_right/strided_sliceStridedSliceBsequential_68/random_flip_68/random_flip_left_right/Shape:output:0Psequential_68/random_flip_68/random_flip_left_right/strided_slice/stack:output:0Rsequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Rsequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Asequential_68/random_flip_68/random_flip_left_right/strided_slice
Hsequential_68/random_flip_68/random_flip_left_right/random_uniform/shapePackJsequential_68/random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2J
Hsequential_68/random_flip_68/random_flip_left_right/random_uniform/shapeÕ
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2H
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/minÕ
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2H
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/maxÃ
Psequential_68/random_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformQsequential_68/random_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02R
Psequential_68/random_flip_68/random_flip_left_right/random_uniform/RandomUniformñ
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/MulMulYsequential_68/random_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Osequential_68/random_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2H
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/MulÌ
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/1Ì
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/2Ì
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/3ò
Asequential_68/random_flip_68/random_flip_left_right/Reshape/shapePackJsequential_68/random_flip_68/random_flip_left_right/strided_slice:output:0Lsequential_68/random_flip_68/random_flip_left_right/Reshape/shape/1:output:0Lsequential_68/random_flip_68/random_flip_left_right/Reshape/shape/2:output:0Lsequential_68/random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2C
Asequential_68/random_flip_68/random_flip_left_right/Reshape/shape×
;sequential_68/random_flip_68/random_flip_left_right/ReshapeReshapeJsequential_68/random_flip_68/random_flip_left_right/random_uniform/Mul:z:0Jsequential_68/random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;sequential_68/random_flip_68/random_flip_left_right/Reshapeÿ
9sequential_68/random_flip_68/random_flip_left_right/RoundRoundDsequential_68/random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9sequential_68/random_flip_68/random_flip_left_right/RoundÒ
Bsequential_68/random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_68/random_flip_68/random_flip_left_right/ReverseV2/axisã
=sequential_68/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Osequential_68/random_flip_68/random_flip_left_right/control_dependency:output:0Ksequential_68/random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2?
=sequential_68/random_flip_68/random_flip_left_right/ReverseV2º
7sequential_68/random_flip_68/random_flip_left_right/mulMul=sequential_68/random_flip_68/random_flip_left_right/Round:y:0Fsequential_68/random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@29
7sequential_68/random_flip_68/random_flip_left_right/mul»
9sequential_68/random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9sequential_68/random_flip_68/random_flip_left_right/sub/x¶
7sequential_68/random_flip_68/random_flip_left_right/subSubBsequential_68/random_flip_68/random_flip_left_right/sub/x:output:0=sequential_68/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_68/random_flip_68/random_flip_left_right/subÅ
9sequential_68/random_flip_68/random_flip_left_right/mul_1Mul;sequential_68/random_flip_68/random_flip_left_right/sub:z:0Osequential_68/random_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2;
9sequential_68/random_flip_68/random_flip_left_right/mul_1±
7sequential_68/random_flip_68/random_flip_left_right/addAddV2;sequential_68/random_flip_68/random_flip_left_right/mul:z:0=sequential_68/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@29
7sequential_68/random_flip_68/random_flip_left_right/add»
&sequential_68/random_rotation_68/ShapeShape;sequential_68/random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2(
&sequential_68/random_rotation_68/Shape¶
4sequential_68/random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_68/random_rotation_68/strided_slice/stackº
6sequential_68/random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice/stack_1º
6sequential_68/random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice/stack_2¨
.sequential_68/random_rotation_68/strided_sliceStridedSlice/sequential_68/random_rotation_68/Shape:output:0=sequential_68/random_rotation_68/strided_slice/stack:output:0?sequential_68/random_rotation_68/strided_slice/stack_1:output:0?sequential_68/random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_68/random_rotation_68/strided_sliceº
6sequential_68/random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice_1/stack¾
8sequential_68/random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_1/stack_1¾
8sequential_68/random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_1/stack_2²
0sequential_68/random_rotation_68/strided_slice_1StridedSlice/sequential_68/random_rotation_68/Shape:output:0?sequential_68/random_rotation_68/strided_slice_1/stack:output:0Asequential_68/random_rotation_68/strided_slice_1/stack_1:output:0Asequential_68/random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_68/random_rotation_68/strided_slice_1Á
%sequential_68/random_rotation_68/CastCast9sequential_68/random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_68/random_rotation_68/Castº
6sequential_68/random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice_2/stack¾
8sequential_68/random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_2/stack_1¾
8sequential_68/random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_2/stack_2²
0sequential_68/random_rotation_68/strided_slice_2StridedSlice/sequential_68/random_rotation_68/Shape:output:0?sequential_68/random_rotation_68/strided_slice_2/stack:output:0Asequential_68/random_rotation_68/strided_slice_2/stack_1:output:0Asequential_68/random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_68/random_rotation_68/strided_slice_2Å
'sequential_68/random_rotation_68/Cast_1Cast9sequential_68/random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'sequential_68/random_rotation_68/Cast_1á
7sequential_68/random_rotation_68/stateful_uniform/shapePack7sequential_68/random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7sequential_68/random_rotation_68/stateful_uniform/shape³
5sequential_68/random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿27
5sequential_68/random_rotation_68/stateful_uniform/min³
5sequential_68/random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?27
5sequential_68/random_rotation_68/stateful_uniform/max¼
7sequential_68/random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_68/random_rotation_68/stateful_uniform/Const
6sequential_68/random_rotation_68/stateful_uniform/ProdProd@sequential_68/random_rotation_68/stateful_uniform/shape:output:0@sequential_68/random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/stateful_uniform/Prod¶
8sequential_68/random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_68/random_rotation_68/stateful_uniform/Cast/xí
8sequential_68/random_rotation_68/stateful_uniform/Cast_1Cast?sequential_68/random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2:
8sequential_68/random_rotation_68/stateful_uniform/Cast_1þ
@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkipIsequential_68_random_rotation_68_stateful_uniform_rngreadandskip_resourceAsequential_68/random_rotation_68/stateful_uniform/Cast/x:output:0<sequential_68/random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:2B
@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkipØ
Esequential_68/random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_68/random_rotation_68/stateful_uniform/strided_slice/stackÜ
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_1Ü
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_2
?sequential_68/random_rotation_68/stateful_uniform/strided_sliceStridedSliceHsequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Nsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack:output:0Psequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Psequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2A
?sequential_68/random_rotation_68/stateful_uniform/strided_sliceü
9sequential_68/random_rotation_68/stateful_uniform/BitcastBitcastHsequential_68/random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02;
9sequential_68/random_rotation_68/stateful_uniform/BitcastÜ
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stackà
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_1à
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_2
Asequential_68/random_rotation_68/stateful_uniform/strided_slice_1StridedSliceHsequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Psequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Rsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Rsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2C
Asequential_68/random_rotation_68/stateful_uniform/strided_slice_1
;sequential_68/random_rotation_68/stateful_uniform/Bitcast_1BitcastJsequential_68/random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02=
;sequential_68/random_rotation_68/stateful_uniform/Bitcast_1â
Nsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2P
Nsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algþ
Jsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2@sequential_68/random_rotation_68/stateful_uniform/shape:output:0Dsequential_68/random_rotation_68/stateful_uniform/Bitcast_1:output:0Bsequential_68/random_rotation_68/stateful_uniform/Bitcast:output:0Wsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2L
Jsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2
5sequential_68/random_rotation_68/stateful_uniform/subSub>sequential_68/random_rotation_68/stateful_uniform/max:output:0>sequential_68/random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 27
5sequential_68/random_rotation_68/stateful_uniform/sub³
5sequential_68/random_rotation_68/stateful_uniform/mulMulSsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:09sequential_68/random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_68/random_rotation_68/stateful_uniform/mul
1sequential_68/random_rotation_68/stateful_uniformAdd9sequential_68/random_rotation_68/stateful_uniform/mul:z:0>sequential_68/random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1sequential_68/random_rotation_68/stateful_uniformµ
6sequential_68/random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6sequential_68/random_rotation_68/rotation_matrix/sub/y
4sequential_68/random_rotation_68/rotation_matrix/subSub+sequential_68/random_rotation_68/Cast_1:y:0?sequential_68/random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 26
4sequential_68/random_rotation_68/rotation_matrix/subØ
4sequential_68/random_rotation_68/rotation_matrix/CosCos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_68/random_rotation_68/rotation_matrix/Cos¹
8sequential_68/random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_1/y
6sequential_68/random_rotation_68/rotation_matrix/sub_1Sub+sequential_68/random_rotation_68/Cast_1:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_1
4sequential_68/random_rotation_68/rotation_matrix/mulMul8sequential_68/random_rotation_68/rotation_matrix/Cos:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_68/random_rotation_68/rotation_matrix/mulØ
4sequential_68/random_rotation_68/rotation_matrix/SinSin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_68/random_rotation_68/rotation_matrix/Sin¹
8sequential_68/random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_2/y
6sequential_68/random_rotation_68/rotation_matrix/sub_2Sub)sequential_68/random_rotation_68/Cast:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_2
6sequential_68/random_rotation_68/rotation_matrix/mul_1Mul8sequential_68/random_rotation_68/rotation_matrix/Sin:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/mul_1
6sequential_68/random_rotation_68/rotation_matrix/sub_3Sub8sequential_68/random_rotation_68/rotation_matrix/mul:z:0:sequential_68/random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/sub_3
6sequential_68/random_rotation_68/rotation_matrix/sub_4Sub8sequential_68/random_rotation_68/rotation_matrix/sub:z:0:sequential_68/random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/sub_4½
:sequential_68/random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_68/random_rotation_68/rotation_matrix/truediv/y®
8sequential_68/random_rotation_68/rotation_matrix/truedivRealDiv:sequential_68/random_rotation_68/rotation_matrix/sub_4:z:0Csequential_68/random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_68/random_rotation_68/rotation_matrix/truediv¹
8sequential_68/random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_5/y
6sequential_68/random_rotation_68/rotation_matrix/sub_5Sub)sequential_68/random_rotation_68/Cast:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_5Ü
6sequential_68/random_rotation_68/rotation_matrix/Sin_1Sin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/Sin_1¹
8sequential_68/random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_6/y
6sequential_68/random_rotation_68/rotation_matrix/sub_6Sub+sequential_68/random_rotation_68/Cast_1:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_6
6sequential_68/random_rotation_68/rotation_matrix/mul_2Mul:sequential_68/random_rotation_68/rotation_matrix/Sin_1:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/mul_2Ü
6sequential_68/random_rotation_68/rotation_matrix/Cos_1Cos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/Cos_1¹
8sequential_68/random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_7/y
6sequential_68/random_rotation_68/rotation_matrix/sub_7Sub)sequential_68/random_rotation_68/Cast:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_7
6sequential_68/random_rotation_68/rotation_matrix/mul_3Mul:sequential_68/random_rotation_68/rotation_matrix/Cos_1:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/mul_3
4sequential_68/random_rotation_68/rotation_matrix/addAddV2:sequential_68/random_rotation_68/rotation_matrix/mul_2:z:0:sequential_68/random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_68/random_rotation_68/rotation_matrix/add
6sequential_68/random_rotation_68/rotation_matrix/sub_8Sub:sequential_68/random_rotation_68/rotation_matrix/sub_5:z:08sequential_68/random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/sub_8Á
<sequential_68/random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2>
<sequential_68/random_rotation_68/rotation_matrix/truediv_1/y´
:sequential_68/random_rotation_68/rotation_matrix/truediv_1RealDiv:sequential_68/random_rotation_68/rotation_matrix/sub_8:z:0Esequential_68/random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:sequential_68/random_rotation_68/rotation_matrix/truediv_1Õ
6sequential_68/random_rotation_68/rotation_matrix/ShapeShape5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:28
6sequential_68/random_rotation_68/rotation_matrix/ShapeÖ
Dsequential_68/random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_68/random_rotation_68/rotation_matrix/strided_slice/stackÚ
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_1Ú
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_2
>sequential_68/random_rotation_68/rotation_matrix/strided_sliceStridedSlice?sequential_68/random_rotation_68/rotation_matrix/Shape:output:0Msequential_68/random_rotation_68/rotation_matrix/strided_slice/stack:output:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2@
>sequential_68/random_rotation_68/rotation_matrix/strided_sliceÜ
6sequential_68/random_rotation_68/rotation_matrix/Cos_2Cos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/Cos_2á
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stackå
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_1å
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_2½
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_1StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Cos_2:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_1Ü
6sequential_68/random_rotation_68/rotation_matrix/Sin_2Sin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/Sin_2á
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stackå
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_1å
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_2½
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_2StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Sin_2:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_2ð
4sequential_68/random_rotation_68/rotation_matrix/NegNegIsequential_68/random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_68/random_rotation_68/rotation_matrix/Negá
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stackå
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_1å
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_2¿
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_3StridedSlice<sequential_68/random_rotation_68/rotation_matrix/truediv:z:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_3Ü
6sequential_68/random_rotation_68/rotation_matrix/Sin_3Sin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/Sin_3á
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stackå
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_1å
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_2½
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_4StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Sin_3:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_4Ü
6sequential_68/random_rotation_68/rotation_matrix/Cos_3Cos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/Cos_3á
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stackå
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_1å
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_2½
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_5StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Cos_3:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_5á
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stackå
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_1å
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_2Á
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_6StridedSlice>sequential_68/random_rotation_68/rotation_matrix/truediv_1:z:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_6¾
<sequential_68/random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_68/random_rotation_68/rotation_matrix/zeros/mul/y°
:sequential_68/random_rotation_68/rotation_matrix/zeros/mulMulGsequential_68/random_rotation_68/rotation_matrix/strided_slice:output:0Esequential_68/random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2<
:sequential_68/random_rotation_68/rotation_matrix/zeros/mulÁ
=sequential_68/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2?
=sequential_68/random_rotation_68/rotation_matrix/zeros/Less/y«
;sequential_68/random_rotation_68/rotation_matrix/zeros/LessLess>sequential_68/random_rotation_68/rotation_matrix/zeros/mul:z:0Fsequential_68/random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2=
;sequential_68/random_rotation_68/rotation_matrix/zeros/LessÄ
?sequential_68/random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_68/random_rotation_68/rotation_matrix/zeros/packed/1Ç
=sequential_68/random_rotation_68/rotation_matrix/zeros/packedPackGsequential_68/random_rotation_68/rotation_matrix/strided_slice:output:0Hsequential_68/random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2?
=sequential_68/random_rotation_68/rotation_matrix/zeros/packedÁ
<sequential_68/random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2>
<sequential_68/random_rotation_68/rotation_matrix/zeros/Const¹
6sequential_68/random_rotation_68/rotation_matrix/zerosFillFsequential_68/random_rotation_68/rotation_matrix/zeros/packed:output:0Esequential_68/random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_68/random_rotation_68/rotation_matrix/zeros¾
<sequential_68/random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_68/random_rotation_68/rotation_matrix/concat/axisò
7sequential_68/random_rotation_68/rotation_matrix/concatConcatV2Isequential_68/random_rotation_68/rotation_matrix/strided_slice_1:output:08sequential_68/random_rotation_68/rotation_matrix/Neg:y:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_3:output:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_4:output:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_5:output:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_6:output:0?sequential_68/random_rotation_68/rotation_matrix/zeros:output:0Esequential_68/random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_68/random_rotation_68/rotation_matrix/concatÏ
0sequential_68/random_rotation_68/transform/ShapeShape;sequential_68/random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:22
0sequential_68/random_rotation_68/transform/ShapeÊ
>sequential_68/random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_68/random_rotation_68/transform/strided_slice/stackÎ
@sequential_68/random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_68/random_rotation_68/transform/strided_slice/stack_1Î
@sequential_68/random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_68/random_rotation_68/transform/strided_slice/stack_2Ð
8sequential_68/random_rotation_68/transform/strided_sliceStridedSlice9sequential_68/random_rotation_68/transform/Shape:output:0Gsequential_68/random_rotation_68/transform/strided_slice/stack:output:0Isequential_68/random_rotation_68/transform/strided_slice/stack_1:output:0Isequential_68/random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2:
8sequential_68/random_rotation_68/transform/strided_slice³
5sequential_68/random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_68/random_rotation_68/transform/fill_value¡
Esequential_68/random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3;sequential_68/random_flip_68/random_flip_left_right/add:z:0@sequential_68/random_rotation_68/rotation_matrix/concat:output:0Asequential_68/random_rotation_68/transform/strided_slice:output:0>sequential_68/random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2G
Esequential_68/random_rotation_68/transform/ImageProjectiveTransformV3
!sequential_68/rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2#
!sequential_68/rescaling_51/Cast/x
#sequential_68/rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_68/rescaling_51/Cast_1/x
sequential_68/rescaling_51/mulMulZsequential_68/random_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0*sequential_68/rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2 
sequential_68/rescaling_51/mulÕ
sequential_68/rescaling_51/addAddV2"sequential_68/rescaling_51/mul:z:0,sequential_68/rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2 
sequential_68/rescaling_51/add§
CONV1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV1/Conv2D/ReadVariableOpÒ
CONV1/Conv2DConv2D"sequential_68/rescaling_51/add:z:0#CONV1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*
paddingVALID*
strides
2
CONV1/Conv2D
CONV1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV1/BiasAdd/ReadVariableOp 
CONV1/BiasAddBiasAddCONV1/Conv2D:output:0$CONV1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
CONV1/BiasAdd
BN1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOp
BN1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOp_1³
#BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02%
#BN1/FusedBatchNormV3/ReadVariableOp¹
%BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02'
%BN1/FusedBatchNormV3/ReadVariableOp_1
BN1/FusedBatchNormV3FusedBatchNormV3CONV1/BiasAdd:output:0BN1/ReadVariableOp:value:0BN1/ReadVariableOp_1:value:0+BN1/FusedBatchNormV3/ReadVariableOp:value:0-BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
exponential_avg_factor%
×#<2
BN1/FusedBatchNormV3Ö
BN1/AssignNewValueAssignVariableOp,bn1_fusedbatchnormv3_readvariableop_resource!BN1/FusedBatchNormV3:batch_mean:0$^BN1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
BN1/AssignNewValueâ
BN1/AssignNewValue_1AssignVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource%BN1/FusedBatchNormV3:batch_variance:0&^BN1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
BN1/AssignNewValue_1
activation_128/ReluReluBN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
activation_128/ReluÑ
max_pooling2d_160/MaxPoolMaxPool!activation_128/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_160/MaxPool§
CONV2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV2/Conv2D/ReadVariableOpÒ
CONV2/Conv2DConv2D"max_pooling2d_160/MaxPool:output:0#CONV2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
CONV2/Conv2D
CONV2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV2/BiasAdd/ReadVariableOp 
CONV2/BiasAddBiasAddCONV2/Conv2D:output:0$CONV2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
CONV2/BiasAdd 
 CONV2/ActivityRegularizer/SquareSquareCONV2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 CONV2/ActivityRegularizer/Square
CONV2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2!
CONV2/ActivityRegularizer/Const¶
CONV2/ActivityRegularizer/SumSum$CONV2/ActivityRegularizer/Square:y:0(CONV2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/Sum
CONV2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2!
CONV2/ActivityRegularizer/mul/x¸
CONV2/ActivityRegularizer/mulMul(CONV2/ActivityRegularizer/mul/x:output:0&CONV2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/mul
CONV2/ActivityRegularizer/ShapeShapeCONV2/BiasAdd:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shape¨
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stack¬
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1¬
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2þ
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceª
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast¹
!CONV2/ActivityRegularizer/truedivRealDiv!CONV2/ActivityRegularizer/mul:z:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv
BN3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOp
BN3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOp_1³
#BN3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02%
#BN3/FusedBatchNormV3/ReadVariableOp¹
%BN3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02'
%BN3/FusedBatchNormV3/ReadVariableOp_1
BN3/FusedBatchNormV3FusedBatchNormV3CONV2/BiasAdd:output:0BN3/ReadVariableOp:value:0BN3/ReadVariableOp_1:value:0+BN3/FusedBatchNormV3/ReadVariableOp:value:0-BN3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
exponential_avg_factor%
×#<2
BN3/FusedBatchNormV3Ö
BN3/AssignNewValueAssignVariableOp,bn3_fusedbatchnormv3_readvariableop_resource!BN3/FusedBatchNormV3:batch_mean:0$^BN3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
BN3/AssignNewValueâ
BN3/AssignNewValue_1AssignVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource%BN3/FusedBatchNormV3:batch_variance:0&^BN3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
BN3/AssignNewValue_1
activation_129/ReluReluBN3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_129/Reluà
average_pooling2d_76/AvgPoolAvgPool!activation_129/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_76/AvgPoolu
flatten_76/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
  2
flatten_76/Const¨
flatten_76/ReshapeReshape%average_pooling2d_76/AvgPool:output:0flatten_76/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_76/Reshape²
!dense_layer/MatMul/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!dense_layer/MatMul/ReadVariableOp¬
dense_layer/MatMulMatMulflatten_76/Reshape:output:0)dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_layer/MatMul°
"dense_layer/BiasAdd/ReadVariableOpReadVariableOp+dense_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"dense_layer/BiasAdd/ReadVariableOp±
dense_layer/BiasAddBiasAdddense_layer/MatMul:product:0*dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_layer/BiasAddª
&dense_layer/ActivityRegularizer/SquareSquaredense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&dense_layer/ActivityRegularizer/Square
%dense_layer/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%dense_layer/ActivityRegularizer/ConstÎ
#dense_layer/ActivityRegularizer/SumSum*dense_layer/ActivityRegularizer/Square:y:0.dense_layer/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/Sum
%dense_layer/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%dense_layer/ActivityRegularizer/mul/xÐ
#dense_layer/ActivityRegularizer/mulMul.dense_layer/ActivityRegularizer/mul/x:output:0,dense_layer/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/mul
%dense_layer/ActivityRegularizer/ShapeShapedense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape´
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stack¸
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1¸
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2¢
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice¼
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastÑ
'dense_layer/ActivityRegularizer/truedivRealDiv'dense_layer/ActivityRegularizer/mul:z:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truedivw
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_9/dropout/Const§
dropout_9/dropout/MulMuldense_layer/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_9/dropout/Mul~
dropout_9/dropout/ShapeShapedense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/ShapeÒ
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype020
.dropout_9/dropout/random_uniform/RandomUniform
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 dropout_9/dropout/GreaterEqual/yæ
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
dropout_9/dropout/GreaterEqual
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_9/dropout/Cast¢
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_9/dropout/Mul_1
"BN4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"BN4/moments/mean/reduction_indices°
BN4/moments/meanMeandropout_9/dropout/Mul_1:z:0+BN4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
BN4/moments/mean
BN4/moments/StopGradientStopGradientBN4/moments/mean:output:0*
T0*
_output_shapes

:2
BN4/moments/StopGradientÅ
BN4/moments/SquaredDifferenceSquaredDifferencedropout_9/dropout/Mul_1:z:0!BN4/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
BN4/moments/SquaredDifference
&BN4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2(
&BN4/moments/variance/reduction_indicesÂ
BN4/moments/varianceMean!BN4/moments/SquaredDifference:z:0/BN4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
BN4/moments/variance
BN4/moments/SqueezeSqueezeBN4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
BN4/moments/Squeeze
BN4/moments/Squeeze_1SqueezeBN4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
BN4/moments/Squeeze_1{
BN4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
BN4/AssignMovingAvg/decay°
"BN4/AssignMovingAvg/ReadVariableOpReadVariableOp+bn4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02$
"BN4/AssignMovingAvg/ReadVariableOp¨
BN4/AssignMovingAvg/subSub*BN4/AssignMovingAvg/ReadVariableOp:value:0BN4/moments/Squeeze:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg/sub
BN4/AssignMovingAvg/mulMulBN4/AssignMovingAvg/sub:z:0"BN4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg/mulÓ
BN4/AssignMovingAvgAssignSubVariableOp+bn4_assignmovingavg_readvariableop_resourceBN4/AssignMovingAvg/mul:z:0#^BN4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
BN4/AssignMovingAvg
BN4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
BN4/AssignMovingAvg_1/decay¶
$BN4/AssignMovingAvg_1/ReadVariableOpReadVariableOp-bn4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$BN4/AssignMovingAvg_1/ReadVariableOp°
BN4/AssignMovingAvg_1/subSub,BN4/AssignMovingAvg_1/ReadVariableOp:value:0BN4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg_1/sub§
BN4/AssignMovingAvg_1/mulMulBN4/AssignMovingAvg_1/sub:z:0$BN4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg_1/mulÝ
BN4/AssignMovingAvg_1AssignSubVariableOp-bn4_assignmovingavg_1_readvariableop_resourceBN4/AssignMovingAvg_1/mul:z:0%^BN4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
BN4/AssignMovingAvg_1o
BN4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
BN4/batchnorm/add/y
BN4/batchnorm/addAddV2BN4/moments/Squeeze_1:output:0BN4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
BN4/batchnorm/addo
BN4/batchnorm/RsqrtRsqrtBN4/batchnorm/add:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/Rsqrtª
 BN4/batchnorm/mul/ReadVariableOpReadVariableOp)bn4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02"
 BN4/batchnorm/mul/ReadVariableOp
BN4/batchnorm/mulMulBN4/batchnorm/Rsqrt:y:0(BN4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
BN4/batchnorm/mul
BN4/batchnorm/mul_1Muldropout_9/dropout/Mul_1:z:0BN4/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
BN4/batchnorm/mul_1
BN4/batchnorm/mul_2MulBN4/moments/Squeeze:output:0BN4/batchnorm/mul:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/mul_2
BN4/batchnorm/ReadVariableOpReadVariableOp%bn4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
BN4/batchnorm/ReadVariableOp
BN4/batchnorm/subSub$BN4/batchnorm/ReadVariableOp:value:0BN4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/sub
BN4/batchnorm/add_1AddV2BN4/batchnorm/mul_1:z:0BN4/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
BN4/batchnorm/add_1}
activation_130/ReluReluBN4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_130/Relu¨
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_76/MatMul/ReadVariableOp©
dense_76/MatMulMatMul!activation_130/Relu:activations:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_76/MatMul§
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_76/BiasAdd/ReadVariableOp¥
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_76/BiasAdd|
dense_76/SigmoidSigmoiddense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_76/SigmoidÍ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulØ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mul¡
IdentityIdentitydense_76/Sigmoid:y:0^BN1/AssignNewValue^BN1/AssignNewValue_1$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1^BN3/AssignNewValue^BN3/AssignNewValue_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/AssignMovingAvg#^BN4/AssignMovingAvg/ReadVariableOp^BN4/AssignMovingAvg_1%^BN4/AssignMovingAvg_1/ReadVariableOp^BN4/batchnorm/ReadVariableOp!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOpA^sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity¥

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/AssignNewValue^BN1/AssignNewValue_1$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1^BN3/AssignNewValue^BN3/AssignNewValue_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/AssignMovingAvg#^BN4/AssignMovingAvg/ReadVariableOp^BN4/AssignMovingAvg_1%^BN4/AssignMovingAvg_1/ReadVariableOp^BN4/batchnorm/ReadVariableOp!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOpA^sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*
_output_shapes
: 2

Identity_1«

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/AssignNewValue^BN1/AssignNewValue_1$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1^BN3/AssignNewValue^BN3/AssignNewValue_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/AssignMovingAvg#^BN4/AssignMovingAvg/ReadVariableOp^BN4/AssignMovingAvg_1%^BN4/AssignMovingAvg_1/ReadVariableOp^BN4/batchnorm/ReadVariableOp!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOpA^sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : : 2(
BN1/AssignNewValueBN1/AssignNewValue2,
BN1/AssignNewValue_1BN1/AssignNewValue_12J
#BN1/FusedBatchNormV3/ReadVariableOp#BN1/FusedBatchNormV3/ReadVariableOp2N
%BN1/FusedBatchNormV3/ReadVariableOp_1%BN1/FusedBatchNormV3/ReadVariableOp_12(
BN1/ReadVariableOpBN1/ReadVariableOp2,
BN1/ReadVariableOp_1BN1/ReadVariableOp_12(
BN3/AssignNewValueBN3/AssignNewValue2,
BN3/AssignNewValue_1BN3/AssignNewValue_12J
#BN3/FusedBatchNormV3/ReadVariableOp#BN3/FusedBatchNormV3/ReadVariableOp2N
%BN3/FusedBatchNormV3/ReadVariableOp_1%BN3/FusedBatchNormV3/ReadVariableOp_12(
BN3/ReadVariableOpBN3/ReadVariableOp2,
BN3/ReadVariableOp_1BN3/ReadVariableOp_12*
BN4/AssignMovingAvgBN4/AssignMovingAvg2H
"BN4/AssignMovingAvg/ReadVariableOp"BN4/AssignMovingAvg/ReadVariableOp2.
BN4/AssignMovingAvg_1BN4/AssignMovingAvg_12L
$BN4/AssignMovingAvg_1/ReadVariableOp$BN4/AssignMovingAvg_1/ReadVariableOp2<
BN4/batchnorm/ReadVariableOpBN4/batchnorm/ReadVariableOp2D
 BN4/batchnorm/mul/ReadVariableOp BN4/batchnorm/mul/ReadVariableOp2<
CONV1/BiasAdd/ReadVariableOpCONV1/BiasAdd/ReadVariableOp2:
CONV1/Conv2D/ReadVariableOpCONV1/Conv2D/ReadVariableOp2<
CONV2/BiasAdd/ReadVariableOpCONV2/BiasAdd/ReadVariableOp2:
CONV2/Conv2D/ReadVariableOpCONV2/Conv2D/ReadVariableOp2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2H
"dense_layer/BiasAdd/ReadVariableOp"dense_layer/BiasAdd/ReadVariableOp2F
!dense_layer/MatMul/ReadVariableOp!dense_layer/MatMul/ReadVariableOp2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp2
@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Ä
®
?__inference_BN1_layer_call_and_return_conditional_losses_713118

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·y

B__inference_Model2_layer_call_and_return_conditional_losses_711663

inputs&
conv1_711465:
conv1_711467:

bn1_711488:>

bn1_711490:>

bn1_711492:>

bn1_711494:>&
conv2_711522:
conv2_711524:

bn3_711553:

bn3_711555:

bn3_711557:

bn3_711559:%
dense_layer_711595:	 
dense_layer_711597:

bn4_711615:

bn4_711617:

bn4_711619:

bn4_711621:!
dense_76_711643:
dense_76_711645:
identity

identity_1

identity_2¢BN1/StatefulPartitionedCall¢BN3/StatefulPartitionedCall¢BN4/StatefulPartitionedCall¢CONV1/StatefulPartitionedCall¢CONV2/StatefulPartitionedCall¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢ dense_76/StatefulPartitionedCall¢#dense_layer/StatefulPartitionedCall¢4dense_layer/kernel/Regularizer/Square/ReadVariableOpë
sequential_68/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7106522
sequential_68/PartitionedCall­
CONV1/StatefulPartitionedCallStatefulPartitionedCall&sequential_68/PartitionedCall:output:0conv1_711465conv1_711467*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_7114642
CONV1/StatefulPartitionedCall¿
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_711488
bn1_711490
bn1_711492
bn1_711494*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7114872
BN1/StatefulPartitionedCall
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_7115022 
activation_128/PartitionedCall
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_7111142#
!max_pooling2d_160/PartitionedCall±
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_711522conv2_711524*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_7115212
CONV2/StatefulPartitionedCallî
)CONV2/ActivityRegularizer/PartitionedCallPartitionedCall&CONV2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *6
f1R/
-__inference_CONV2_activity_regularizer_7111332+
)CONV2/ActivityRegularizer/PartitionedCall
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shape¨
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stack¬
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1¬
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2þ
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceª
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/CastÊ
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv¿
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_711553
bn3_711555
bn3_711557
bn3_711559*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7115522
BN3/StatefulPartitionedCall
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_7115672 
activation_129/PartitionedCall¡
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_7112652&
$average_pooling2d_76/PartitionedCall
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_7115762
flatten_76/PartitionedCallÀ
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_711595dense_layer_711597*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_7115942%
#dense_layer/StatefulPartitionedCall
/dense_layer/ActivityRegularizer/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *<
f7R5
3__inference_dense_layer_activity_regularizer_71128421
/dense_layer/ActivityRegularizer/PartitionedCallª
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape´
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stack¸
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1¸
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2¢
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice¼
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/Castâ
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truedivý
dropout_9/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_7116132
dropout_9/PartitionedCall³
BN4/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0
bn4_711615
bn4_711617
bn4_711619
bn4_711621*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_7113082
BN4/StatefulPartitionedCall
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_7116292 
activation_130/PartitionedCallµ
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_711643dense_76_711645*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_7116422"
 dense_76/StatefulPartitionedCallµ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_711522*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulÀ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_layer_711595*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mulÈ
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1½

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Û
¿
$__inference_BN4_layer_call_fn_713520

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_7113682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

°
G__inference_dense_layer_layer_call_and_return_conditional_losses_711594

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢4dense_layer/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddÌ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mulÌ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
K
/__inference_activation_128_layer_call_fn_713216

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_7115022
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ>>:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
½

&__inference_CONV1_layer_call_fn_713082

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_7114642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Ï

'__inference_Model2_layer_call_fn_712893

inputs
unknown:	#
	unknown_0:
	unknown_1:
	unknown_2:>
	unknown_3:>
	unknown_4:>
	unknown_5:>#
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_7120472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


?__inference_BN1_layer_call_and_return_conditional_losses_713100

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ó
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
is_training( 2
FusedBatchNormV3ì
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
¿
$__inference_BN4_layer_call_fn_713507

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_7113082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
®
?__inference_BN1_layer_call_and_return_conditional_losses_711886

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ï
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1þ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ>>: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
Å
¿
$__inference_BN3_layer_call_fn_713327

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7111552
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

~
.__inference_sequential_68_layer_call_fn_713063

inputs
unknown:	
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7108122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
¶

?__inference_BN3_layer_call_and_return_conditional_losses_711552

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ï
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3Ú
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

ú
A__inference_CONV1_layer_call_and_return_conditional_losses_711464

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ü}
	
B__inference_Model2_layer_call_and_return_conditional_losses_712323
input_79"
sequential_68_712235:	&
conv1_712238:
conv1_712240:

bn1_712243:>

bn1_712245:>

bn1_712247:>

bn1_712249:>&
conv2_712254:
conv2_712256:

bn3_712267:

bn3_712269:

bn3_712271:

bn3_712273:%
dense_layer_712279:	 
dense_layer_712281:

bn4_712293:

bn4_712295:

bn4_712297:

bn4_712299:!
dense_76_712303:
dense_76_712305:
identity

identity_1

identity_2¢BN1/StatefulPartitionedCall¢BN3/StatefulPartitionedCall¢BN4/StatefulPartitionedCall¢CONV1/StatefulPartitionedCall¢CONV2/StatefulPartitionedCall¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢ dense_76/StatefulPartitionedCall¢#dense_layer/StatefulPartitionedCall¢4dense_layer/kernel/Regularizer/Square/ReadVariableOp¢!dropout_9/StatefulPartitionedCall¢%sequential_68/StatefulPartitionedCall
%sequential_68/StatefulPartitionedCallStatefulPartitionedCallinput_79sequential_68_712235*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7108122'
%sequential_68/StatefulPartitionedCallµ
CONV1/StatefulPartitionedCallStatefulPartitionedCall.sequential_68/StatefulPartitionedCall:output:0conv1_712238conv1_712240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_7114642
CONV1/StatefulPartitionedCall½
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_712243
bn1_712245
bn1_712247
bn1_712249*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7118862
BN1/StatefulPartitionedCall
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_7115022 
activation_128/PartitionedCall
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_7111142#
!max_pooling2d_160/PartitionedCall±
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_712254conv2_712256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_7115212
CONV2/StatefulPartitionedCallî
)CONV2/ActivityRegularizer/PartitionedCallPartitionedCall&CONV2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *6
f1R/
-__inference_CONV2_activity_regularizer_7111332+
)CONV2/ActivityRegularizer/PartitionedCall
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shape¨
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stack¬
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1¬
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2þ
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceª
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/CastÊ
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv½
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_712267
bn3_712269
bn3_712271
bn3_712273*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7118142
BN3/StatefulPartitionedCall
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_7115672 
activation_129/PartitionedCall¡
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_7112652&
$average_pooling2d_76/PartitionedCall
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_7115762
flatten_76/PartitionedCallÀ
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_712279dense_layer_712281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_7115942%
#dense_layer/StatefulPartitionedCall
/dense_layer/ActivityRegularizer/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *<
f7R5
3__inference_dense_layer_activity_regularizer_71128421
/dense_layer/ActivityRegularizer/PartitionedCallª
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape´
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stack¸
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1¸
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2¢
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice¼
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/Castâ
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truediv
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_7117442#
!dropout_9/StatefulPartitionedCall¹
BN4/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0
bn4_712293
bn4_712295
bn4_712297
bn4_712299*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_7113682
BN4/StatefulPartitionedCall
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_7116292 
activation_130/PartitionedCallµ
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_712303dense_76_712305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_7116422"
 dense_76/StatefulPartitionedCallµ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_712254*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulÀ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_layer_712279*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mul
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp"^dropout_9/StatefulPartitionedCall&^sequential_68/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp"^dropout_9/StatefulPartitionedCall&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp"^dropout_9/StatefulPartitionedCall&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2N
%sequential_68/StatefulPartitionedCall%sequential_68/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_79
À

.__inference_sequential_68_layer_call_fn_710824
random_flip_68_input
unknown:	
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_68_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7108122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@: 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
.
_user_specified_namerandom_flip_68_input

X
.__inference_sequential_68_layer_call_fn_710655
random_flip_68_input
identityÝ
PartitionedCallPartitionedCallrandom_flip_68_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7106522
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:e a
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
.
_user_specified_namerandom_flip_68_input
Ã
¿
$__inference_BN1_layer_call_fn_713180

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7110482
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_711744

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
ü
'__inference_Model2_layer_call_fn_712844

inputs!
unknown:
	unknown_0:
	unknown_1:>
	unknown_2:>
	unknown_3:>
	unknown_4:>#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_7116632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
è
b
F__inference_flatten_76_layer_call_and_return_conditional_losses_711576

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

õ
D__inference_dense_76_layer_call_and_return_conditional_losses_711642

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
G
+__inference_flatten_76_layer_call_fn_713387

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_7115762
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
c
*__inference_dropout_9_layer_call_fn_713440

inputs
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_7117442
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è
J
3__inference_dense_layer_activity_regularizer_711284
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
½

&__inference_CONV2_layer_call_fn_713242

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_7115212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
Q
5__inference_average_pooling2d_76_layer_call_fn_711271

inputs
identityñ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_7112652
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
D
-__inference_CONV2_activity_regularizer_711133
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
¶

?__inference_BN3_layer_call_and_return_conditional_losses_713296

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ï
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3Ú
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


?__inference_BN1_layer_call_and_return_conditional_losses_711004

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ó
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
is_training( 2
FusedBatchNormV3ì
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
s
I__inference_sequential_68_layer_call_and_return_conditional_losses_710832
random_flip_68_input
identityo
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/x
rescaling_51/mulMulrandom_flip_68_inputrescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/mul
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/addp
IdentityIdentityrescaling_51/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:e a
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
.
_user_specified_namerandom_flip_68_input
§ø
´"
"__inference__traced_restore_714001
file_prefix7
assignvariableop_conv1_kernel:+
assignvariableop_1_conv1_bias:*
assignvariableop_2_bn1_gamma:>)
assignvariableop_3_bn1_beta:>0
"assignvariableop_4_bn1_moving_mean:>4
&assignvariableop_5_bn1_moving_variance:>9
assignvariableop_6_conv2_kernel:+
assignvariableop_7_conv2_bias:*
assignvariableop_8_bn3_gamma:)
assignvariableop_9_bn3_beta:1
#assignvariableop_10_bn3_moving_mean:5
'assignvariableop_11_bn3_moving_variance:9
&assignvariableop_12_dense_layer_kernel:	2
$assignvariableop_13_dense_layer_bias:+
assignvariableop_14_bn4_gamma:*
assignvariableop_15_bn4_beta:1
#assignvariableop_16_bn4_moving_mean:5
'assignvariableop_17_bn4_moving_variance:5
#assignvariableop_18_dense_76_kernel:/
!assignvariableop_19_dense_76_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: *
assignvariableop_25_variable:	,
assignvariableop_26_variable_1:	#
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: A
'assignvariableop_31_adam_conv1_kernel_m:3
%assignvariableop_32_adam_conv1_bias_m:2
$assignvariableop_33_adam_bn1_gamma_m:>1
#assignvariableop_34_adam_bn1_beta_m:>A
'assignvariableop_35_adam_conv2_kernel_m:3
%assignvariableop_36_adam_conv2_bias_m:2
$assignvariableop_37_adam_bn3_gamma_m:1
#assignvariableop_38_adam_bn3_beta_m:@
-assignvariableop_39_adam_dense_layer_kernel_m:	9
+assignvariableop_40_adam_dense_layer_bias_m:2
$assignvariableop_41_adam_bn4_gamma_m:1
#assignvariableop_42_adam_bn4_beta_m:<
*assignvariableop_43_adam_dense_76_kernel_m:6
(assignvariableop_44_adam_dense_76_bias_m:A
'assignvariableop_45_adam_conv1_kernel_v:3
%assignvariableop_46_adam_conv1_bias_v:2
$assignvariableop_47_adam_bn1_gamma_v:>1
#assignvariableop_48_adam_bn1_beta_v:>A
'assignvariableop_49_adam_conv2_kernel_v:3
%assignvariableop_50_adam_conv2_bias_v:2
$assignvariableop_51_adam_bn3_gamma_v:1
#assignvariableop_52_adam_bn3_beta_v:@
-assignvariableop_53_adam_dense_layer_kernel_v:	9
+assignvariableop_54_adam_dense_layer_bias_v:2
$assignvariableop_55_adam_bn4_gamma_v:1
#assignvariableop_56_adam_bn4_beta_v:<
*assignvariableop_57_adam_dense_76_kernel_v:6
(assignvariableop_58_adam_dense_76_bias_v:
identity_60¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ã 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*ï
valueåBâ<B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*
valueB<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÚ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesó
ð::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¢
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¡
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3 
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5«
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¤
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¡
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn3_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9 
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn3_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10«
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn3_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¯
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn3_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp&assignvariableop_12_dense_layer_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¬
AssignVariableOp_13AssignVariableOp$assignvariableop_13_dense_layer_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¥
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn4_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¤
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn4_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16«
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn4_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn4_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18«
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_76_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19©
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_76_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20¥
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21§
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22§
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¦
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24®
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_25¤
AssignVariableOp_25AssignVariableOpassignvariableop_25_variableIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26¦
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¡
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¡
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29£
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30£
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¯
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_conv1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32­
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_conv1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¬
AssignVariableOp_33AssignVariableOp$assignvariableop_33_adam_bn1_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34«
AssignVariableOp_34AssignVariableOp#assignvariableop_34_adam_bn1_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¯
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_conv2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36­
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_conv2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37¬
AssignVariableOp_37AssignVariableOp$assignvariableop_37_adam_bn3_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38«
AssignVariableOp_38AssignVariableOp#assignvariableop_38_adam_bn3_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39µ
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_dense_layer_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40³
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_dense_layer_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41¬
AssignVariableOp_41AssignVariableOp$assignvariableop_41_adam_bn4_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42«
AssignVariableOp_42AssignVariableOp#assignvariableop_42_adam_bn4_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43²
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_76_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44°
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_76_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¯
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_conv1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46­
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_conv1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47¬
AssignVariableOp_47AssignVariableOp$assignvariableop_47_adam_bn1_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48«
AssignVariableOp_48AssignVariableOp#assignvariableop_48_adam_bn1_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49¯
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_conv2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50­
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_conv2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51¬
AssignVariableOp_51AssignVariableOp$assignvariableop_51_adam_bn3_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52«
AssignVariableOp_52AssignVariableOp#assignvariableop_52_adam_bn3_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53µ
AssignVariableOp_53AssignVariableOp-assignvariableop_53_adam_dense_layer_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54³
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_dense_layer_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55¬
AssignVariableOp_55AssignVariableOp$assignvariableop_55_adam_bn4_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56«
AssignVariableOp_56AssignVariableOp#assignvariableop_56_adam_bn4_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57²
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_76_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58°
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_76_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_589
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpð

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_59ã

Identity_60IdentityIdentity_59:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_60"#
identity_60Identity_60:output:0*
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Å
¿
$__inference_BN1_layer_call_fn_713167

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7110042
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


?__inference_BN4_layer_call_and_return_conditional_losses_713460

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Û
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


?__inference_BN4_layer_call_and_return_conditional_losses_711308

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Û
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ

?__inference_BN3_layer_call_and_return_conditional_losses_713260

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1á
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3ì
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
É
K__inference_dense_layer_layer_call_and_return_all_conditional_losses_713404

inputs
unknown:	
	unknown_0:
identity

identity_1¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_7115942
StatefulPartitionedCallº
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *<
f7R5
3__inference_dense_layer_activity_regularizer_7112842
PartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
¸
__inference_loss_fn_1_713572P
=dense_layer_kernel_regularizer_square_readvariableop_resource:	
identity¢4dense_layer/kernel/Regularizer/Square/ReadVariableOpë
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=dense_layer_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mul 
IdentityIdentity&dense_layer/kernel/Regularizer/mul:z:05^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp

f
J__inference_activation_128_layer_call_and_return_conditional_losses_711502

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ>>:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
ö}
	
B__inference_Model2_layer_call_and_return_conditional_losses_712047

inputs"
sequential_68_711959:	&
conv1_711962:
conv1_711964:

bn1_711967:>

bn1_711969:>

bn1_711971:>

bn1_711973:>&
conv2_711978:
conv2_711980:

bn3_711991:

bn3_711993:

bn3_711995:

bn3_711997:%
dense_layer_712003:	 
dense_layer_712005:

bn4_712017:

bn4_712019:

bn4_712021:

bn4_712023:!
dense_76_712027:
dense_76_712029:
identity

identity_1

identity_2¢BN1/StatefulPartitionedCall¢BN3/StatefulPartitionedCall¢BN4/StatefulPartitionedCall¢CONV1/StatefulPartitionedCall¢CONV2/StatefulPartitionedCall¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢ dense_76/StatefulPartitionedCall¢#dense_layer/StatefulPartitionedCall¢4dense_layer/kernel/Regularizer/Square/ReadVariableOp¢!dropout_9/StatefulPartitionedCall¢%sequential_68/StatefulPartitionedCall
%sequential_68/StatefulPartitionedCallStatefulPartitionedCallinputssequential_68_711959*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7108122'
%sequential_68/StatefulPartitionedCallµ
CONV1/StatefulPartitionedCallStatefulPartitionedCall.sequential_68/StatefulPartitionedCall:output:0conv1_711962conv1_711964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_7114642
CONV1/StatefulPartitionedCall½
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_711967
bn1_711969
bn1_711971
bn1_711973*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7118862
BN1/StatefulPartitionedCall
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_7115022 
activation_128/PartitionedCall
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_7111142#
!max_pooling2d_160/PartitionedCall±
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_711978conv2_711980*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_7115212
CONV2/StatefulPartitionedCallî
)CONV2/ActivityRegularizer/PartitionedCallPartitionedCall&CONV2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *6
f1R/
-__inference_CONV2_activity_regularizer_7111332+
)CONV2/ActivityRegularizer/PartitionedCall
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shape¨
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stack¬
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1¬
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2þ
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceª
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/CastÊ
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv½
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_711991
bn3_711993
bn3_711995
bn3_711997*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7118142
BN3/StatefulPartitionedCall
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_7115672 
activation_129/PartitionedCall¡
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_7112652&
$average_pooling2d_76/PartitionedCall
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_7115762
flatten_76/PartitionedCallÀ
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_712003dense_layer_712005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_7115942%
#dense_layer/StatefulPartitionedCall
/dense_layer/ActivityRegularizer/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *<
f7R5
3__inference_dense_layer_activity_regularizer_71128421
/dense_layer/ActivityRegularizer/PartitionedCallª
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape´
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stack¸
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1¸
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2¢
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice¼
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/Castâ
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truediv
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_7117442#
!dropout_9/StatefulPartitionedCall¹
BN4/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0
bn4_712017
bn4_712019
bn4_712021
bn4_712023*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_7113682
BN4/StatefulPartitionedCall
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_7116292 
activation_130/PartitionedCallµ
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_712027dense_76_712029*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_7116422"
 dense_76/StatefulPartitionedCallµ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_711978*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulÀ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_layer_712003*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mul
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp"^dropout_9/StatefulPartitionedCall&^sequential_68/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp"^dropout_9/StatefulPartitionedCall&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp"^dropout_9/StatefulPartitionedCall&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2N
%sequential_68/StatefulPartitionedCall%sequential_68/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
þ

?__inference_BN3_layer_call_and_return_conditional_losses_711155

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1á
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3ì
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
¿
$__inference_BN1_layer_call_fn_713206

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7118862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ>>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs


)__inference_dense_76_layer_call_fn_713550

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_7116422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
®
?__inference_BN3_layer_call_and_return_conditional_losses_711814

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ý
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1þ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

«
A__inference_CONV2_layer_call_and_return_conditional_losses_713588

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddÇ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulÎ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
K
/__inference_activation_130_layer_call_fn_713530

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_7116292
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

°
G__inference_dense_layer_layer_call_and_return_conditional_losses_713604

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢4dense_layer/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddÌ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mulÌ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½y

B__inference_Model2_layer_call_and_return_conditional_losses_712232
input_79&
conv1_712147:
conv1_712149:

bn1_712152:>

bn1_712154:>

bn1_712156:>

bn1_712158:>&
conv2_712163:
conv2_712165:

bn3_712176:

bn3_712178:

bn3_712180:

bn3_712182:%
dense_layer_712188:	 
dense_layer_712190:

bn4_712202:

bn4_712204:

bn4_712206:

bn4_712208:!
dense_76_712212:
dense_76_712214:
identity

identity_1

identity_2¢BN1/StatefulPartitionedCall¢BN3/StatefulPartitionedCall¢BN4/StatefulPartitionedCall¢CONV1/StatefulPartitionedCall¢CONV2/StatefulPartitionedCall¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢ dense_76/StatefulPartitionedCall¢#dense_layer/StatefulPartitionedCall¢4dense_layer/kernel/Regularizer/Square/ReadVariableOpí
sequential_68/PartitionedCallPartitionedCallinput_79*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7106522
sequential_68/PartitionedCall­
CONV1/StatefulPartitionedCallStatefulPartitionedCall&sequential_68/PartitionedCall:output:0conv1_712147conv1_712149*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_7114642
CONV1/StatefulPartitionedCall¿
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_712152
bn1_712154
bn1_712156
bn1_712158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_7114872
BN1/StatefulPartitionedCall
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_7115022 
activation_128/PartitionedCall
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_7111142#
!max_pooling2d_160/PartitionedCall±
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_712163conv2_712165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_7115212
CONV2/StatefulPartitionedCallî
)CONV2/ActivityRegularizer/PartitionedCallPartitionedCall&CONV2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *6
f1R/
-__inference_CONV2_activity_regularizer_7111332+
)CONV2/ActivityRegularizer/PartitionedCall
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shape¨
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stack¬
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1¬
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2þ
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceª
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/CastÊ
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv¿
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_712176
bn3_712178
bn3_712180
bn3_712182*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7115522
BN3/StatefulPartitionedCall
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_7115672 
activation_129/PartitionedCall¡
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_7112652&
$average_pooling2d_76/PartitionedCall
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_7115762
flatten_76/PartitionedCallÀ
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_712188dense_layer_712190*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_7115942%
#dense_layer/StatefulPartitionedCall
/dense_layer/ActivityRegularizer/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *<
f7R5
3__inference_dense_layer_activity_regularizer_71128421
/dense_layer/ActivityRegularizer/PartitionedCallª
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape´
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stack¸
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1¸
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2¢
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice¼
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/Castâ
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truedivý
dropout_9/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_7116132
dropout_9/PartitionedCall³
BN4/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0
bn4_712202
bn4_712204
bn4_712206
bn4_712208*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_7113082
BN4/StatefulPartitionedCall
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_7116292 
activation_130/PartitionedCallµ
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_712212dense_76_712214*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_7116422"
 dense_76/StatefulPartitionedCallµ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_712163*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulÀ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_layer_712188*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mulÈ
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity·

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1½

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall/^CONV2/kernel/Regularizer/Square/ReadVariableOp!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_79
æ
J
.__inference_sequential_68_layer_call_fn_713056

inputs
identityÏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_7106522
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
è
b
F__inference_flatten_76_layer_call_and_return_conditional_losses_713382

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

«
A__inference_CONV2_layer_call_and_return_conditional_losses_711521

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddÇ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulÎ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
¯
!__inference__wrapped_model_710640
input_79E
+model2_conv1_conv2d_readvariableop_resource::
,model2_conv1_biasadd_readvariableop_resource:0
"model2_bn1_readvariableop_resource:>2
$model2_bn1_readvariableop_1_resource:>A
3model2_bn1_fusedbatchnormv3_readvariableop_resource:>C
5model2_bn1_fusedbatchnormv3_readvariableop_1_resource:>E
+model2_conv2_conv2d_readvariableop_resource::
,model2_conv2_biasadd_readvariableop_resource:0
"model2_bn3_readvariableop_resource:2
$model2_bn3_readvariableop_1_resource:A
3model2_bn3_fusedbatchnormv3_readvariableop_resource:C
5model2_bn3_fusedbatchnormv3_readvariableop_1_resource:D
1model2_dense_layer_matmul_readvariableop_resource:	@
2model2_dense_layer_biasadd_readvariableop_resource::
,model2_bn4_batchnorm_readvariableop_resource:>
0model2_bn4_batchnorm_mul_readvariableop_resource:<
.model2_bn4_batchnorm_readvariableop_1_resource:<
.model2_bn4_batchnorm_readvariableop_2_resource:@
.model2_dense_76_matmul_readvariableop_resource:=
/model2_dense_76_biasadd_readvariableop_resource:
identity¢*Model2/BN1/FusedBatchNormV3/ReadVariableOp¢,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1¢Model2/BN1/ReadVariableOp¢Model2/BN1/ReadVariableOp_1¢*Model2/BN3/FusedBatchNormV3/ReadVariableOp¢,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1¢Model2/BN3/ReadVariableOp¢Model2/BN3/ReadVariableOp_1¢#Model2/BN4/batchnorm/ReadVariableOp¢%Model2/BN4/batchnorm/ReadVariableOp_1¢%Model2/BN4/batchnorm/ReadVariableOp_2¢'Model2/BN4/batchnorm/mul/ReadVariableOp¢#Model2/CONV1/BiasAdd/ReadVariableOp¢"Model2/CONV1/Conv2D/ReadVariableOp¢#Model2/CONV2/BiasAdd/ReadVariableOp¢"Model2/CONV2/Conv2D/ReadVariableOp¢&Model2/dense_76/BiasAdd/ReadVariableOp¢%Model2/dense_76/MatMul/ReadVariableOp¢)Model2/dense_layer/BiasAdd/ReadVariableOp¢(Model2/dense_layer/MatMul/ReadVariableOp
(Model2/sequential_68/rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2*
(Model2/sequential_68/rescaling_51/Cast/x
*Model2/sequential_68/rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*Model2/sequential_68/rescaling_51/Cast_1/xÌ
%Model2/sequential_68/rescaling_51/mulMulinput_791Model2/sequential_68/rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2'
%Model2/sequential_68/rescaling_51/mulñ
%Model2/sequential_68/rescaling_51/addAddV2)Model2/sequential_68/rescaling_51/mul:z:03Model2/sequential_68/rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2'
%Model2/sequential_68/rescaling_51/add¼
"Model2/CONV1/Conv2D/ReadVariableOpReadVariableOp+model2_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"Model2/CONV1/Conv2D/ReadVariableOpî
Model2/CONV1/Conv2DConv2D)Model2/sequential_68/rescaling_51/add:z:0*Model2/CONV1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*
paddingVALID*
strides
2
Model2/CONV1/Conv2D³
#Model2/CONV1/BiasAdd/ReadVariableOpReadVariableOp,model2_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#Model2/CONV1/BiasAdd/ReadVariableOp¼
Model2/CONV1/BiasAddBiasAddModel2/CONV1/Conv2D:output:0+Model2/CONV1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
Model2/CONV1/BiasAdd
Model2/BN1/ReadVariableOpReadVariableOp"model2_bn1_readvariableop_resource*
_output_shapes
:>*
dtype02
Model2/BN1/ReadVariableOp
Model2/BN1/ReadVariableOp_1ReadVariableOp$model2_bn1_readvariableop_1_resource*
_output_shapes
:>*
dtype02
Model2/BN1/ReadVariableOp_1È
*Model2/BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp3model2_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02,
*Model2/BN1/FusedBatchNormV3/ReadVariableOpÎ
,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model2_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02.
,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1º
Model2/BN1/FusedBatchNormV3FusedBatchNormV3Model2/CONV1/BiasAdd:output:0!Model2/BN1/ReadVariableOp:value:0#Model2/BN1/ReadVariableOp_1:value:02Model2/BN1/FusedBatchNormV3/ReadVariableOp:value:04Model2/BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
is_training( 2
Model2/BN1/FusedBatchNormV3
Model2/activation_128/ReluReluModel2/BN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
Model2/activation_128/Reluæ
 Model2/max_pooling2d_160/MaxPoolMaxPool(Model2/activation_128/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2"
 Model2/max_pooling2d_160/MaxPool¼
"Model2/CONV2/Conv2D/ReadVariableOpReadVariableOp+model2_conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"Model2/CONV2/Conv2D/ReadVariableOpî
Model2/CONV2/Conv2DConv2D)Model2/max_pooling2d_160/MaxPool:output:0*Model2/CONV2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Model2/CONV2/Conv2D³
#Model2/CONV2/BiasAdd/ReadVariableOpReadVariableOp,model2_conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#Model2/CONV2/BiasAdd/ReadVariableOp¼
Model2/CONV2/BiasAddBiasAddModel2/CONV2/Conv2D:output:0+Model2/CONV2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/CONV2/BiasAddµ
'Model2/CONV2/ActivityRegularizer/SquareSquareModel2/CONV2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'Model2/CONV2/ActivityRegularizer/Square©
&Model2/CONV2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&Model2/CONV2/ActivityRegularizer/ConstÒ
$Model2/CONV2/ActivityRegularizer/SumSum+Model2/CONV2/ActivityRegularizer/Square:y:0/Model2/CONV2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$Model2/CONV2/ActivityRegularizer/Sum
&Model2/CONV2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2(
&Model2/CONV2/ActivityRegularizer/mul/xÔ
$Model2/CONV2/ActivityRegularizer/mulMul/Model2/CONV2/ActivityRegularizer/mul/x:output:0-Model2/CONV2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$Model2/CONV2/ActivityRegularizer/mul
&Model2/CONV2/ActivityRegularizer/ShapeShapeModel2/CONV2/BiasAdd:output:0*
T0*
_output_shapes
:2(
&Model2/CONV2/ActivityRegularizer/Shape¶
4Model2/CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4Model2/CONV2/ActivityRegularizer/strided_slice/stackº
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_1º
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_2¨
.Model2/CONV2/ActivityRegularizer/strided_sliceStridedSlice/Model2/CONV2/ActivityRegularizer/Shape:output:0=Model2/CONV2/ActivityRegularizer/strided_slice/stack:output:0?Model2/CONV2/ActivityRegularizer/strided_slice/stack_1:output:0?Model2/CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.Model2/CONV2/ActivityRegularizer/strided_slice¿
%Model2/CONV2/ActivityRegularizer/CastCast7Model2/CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%Model2/CONV2/ActivityRegularizer/CastÕ
(Model2/CONV2/ActivityRegularizer/truedivRealDiv(Model2/CONV2/ActivityRegularizer/mul:z:0)Model2/CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(Model2/CONV2/ActivityRegularizer/truediv
Model2/BN3/ReadVariableOpReadVariableOp"model2_bn3_readvariableop_resource*
_output_shapes
:*
dtype02
Model2/BN3/ReadVariableOp
Model2/BN3/ReadVariableOp_1ReadVariableOp$model2_bn3_readvariableop_1_resource*
_output_shapes
:*
dtype02
Model2/BN3/ReadVariableOp_1È
*Model2/BN3/FusedBatchNormV3/ReadVariableOpReadVariableOp3model2_bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*Model2/BN3/FusedBatchNormV3/ReadVariableOpÎ
,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model2_bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1¨
Model2/BN3/FusedBatchNormV3FusedBatchNormV3Model2/CONV2/BiasAdd:output:0!Model2/BN3/ReadVariableOp:value:0#Model2/BN3/ReadVariableOp_1:value:02Model2/BN3/FusedBatchNormV3/ReadVariableOp:value:04Model2/BN3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
is_training( 2
Model2/BN3/FusedBatchNormV3
Model2/activation_129/ReluReluModel2/BN3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/activation_129/Reluõ
#Model2/average_pooling2d_76/AvgPoolAvgPool(Model2/activation_129/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2%
#Model2/average_pooling2d_76/AvgPool
Model2/flatten_76/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
  2
Model2/flatten_76/ConstÄ
Model2/flatten_76/ReshapeReshape,Model2/average_pooling2d_76/AvgPool:output:0 Model2/flatten_76/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/flatten_76/ReshapeÇ
(Model2/dense_layer/MatMul/ReadVariableOpReadVariableOp1model2_dense_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02*
(Model2/dense_layer/MatMul/ReadVariableOpÈ
Model2/dense_layer/MatMulMatMul"Model2/flatten_76/Reshape:output:00Model2/dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/dense_layer/MatMulÅ
)Model2/dense_layer/BiasAdd/ReadVariableOpReadVariableOp2model2_dense_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)Model2/dense_layer/BiasAdd/ReadVariableOpÍ
Model2/dense_layer/BiasAddBiasAdd#Model2/dense_layer/MatMul:product:01Model2/dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/dense_layer/BiasAdd¿
-Model2/dense_layer/ActivityRegularizer/SquareSquare#Model2/dense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-Model2/dense_layer/ActivityRegularizer/Square­
,Model2/dense_layer/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,Model2/dense_layer/ActivityRegularizer/Constê
*Model2/dense_layer/ActivityRegularizer/SumSum1Model2/dense_layer/ActivityRegularizer/Square:y:05Model2/dense_layer/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2,
*Model2/dense_layer/ActivityRegularizer/Sum¡
,Model2/dense_layer/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2.
,Model2/dense_layer/ActivityRegularizer/mul/xì
*Model2/dense_layer/ActivityRegularizer/mulMul5Model2/dense_layer/ActivityRegularizer/mul/x:output:03Model2/dense_layer/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*Model2/dense_layer/ActivityRegularizer/mul¯
,Model2/dense_layer/ActivityRegularizer/ShapeShape#Model2/dense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2.
,Model2/dense_layer/ActivityRegularizer/ShapeÂ
:Model2/dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:Model2/dense_layer/ActivityRegularizer/strided_slice/stackÆ
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_1Æ
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_2Ì
4Model2/dense_layer/ActivityRegularizer/strided_sliceStridedSlice5Model2/dense_layer/ActivityRegularizer/Shape:output:0CModel2/dense_layer/ActivityRegularizer/strided_slice/stack:output:0EModel2/dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0EModel2/dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4Model2/dense_layer/ActivityRegularizer/strided_sliceÑ
+Model2/dense_layer/ActivityRegularizer/CastCast=Model2/dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2-
+Model2/dense_layer/ActivityRegularizer/Castí
.Model2/dense_layer/ActivityRegularizer/truedivRealDiv.Model2/dense_layer/ActivityRegularizer/mul:z:0/Model2/dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 20
.Model2/dense_layer/ActivityRegularizer/truediv
Model2/dropout_9/IdentityIdentity#Model2/dense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/dropout_9/Identity³
#Model2/BN4/batchnorm/ReadVariableOpReadVariableOp,model2_bn4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02%
#Model2/BN4/batchnorm/ReadVariableOp}
Model2/BN4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
Model2/BN4/batchnorm/add/y´
Model2/BN4/batchnorm/addAddV2+Model2/BN4/batchnorm/ReadVariableOp:value:0#Model2/BN4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/add
Model2/BN4/batchnorm/RsqrtRsqrtModel2/BN4/batchnorm/add:z:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/Rsqrt¿
'Model2/BN4/batchnorm/mul/ReadVariableOpReadVariableOp0model2_bn4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02)
'Model2/BN4/batchnorm/mul/ReadVariableOp±
Model2/BN4/batchnorm/mulMulModel2/BN4/batchnorm/Rsqrt:y:0/Model2/BN4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/mul³
Model2/BN4/batchnorm/mul_1Mul"Model2/dropout_9/Identity:output:0Model2/BN4/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/BN4/batchnorm/mul_1¹
%Model2/BN4/batchnorm/ReadVariableOp_1ReadVariableOp.model2_bn4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02'
%Model2/BN4/batchnorm/ReadVariableOp_1±
Model2/BN4/batchnorm/mul_2Mul-Model2/BN4/batchnorm/ReadVariableOp_1:value:0Model2/BN4/batchnorm/mul:z:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/mul_2¹
%Model2/BN4/batchnorm/ReadVariableOp_2ReadVariableOp.model2_bn4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02'
%Model2/BN4/batchnorm/ReadVariableOp_2¯
Model2/BN4/batchnorm/subSub-Model2/BN4/batchnorm/ReadVariableOp_2:value:0Model2/BN4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/sub±
Model2/BN4/batchnorm/add_1AddV2Model2/BN4/batchnorm/mul_1:z:0Model2/BN4/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/BN4/batchnorm/add_1
Model2/activation_130/ReluReluModel2/BN4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/activation_130/Relu½
%Model2/dense_76/MatMul/ReadVariableOpReadVariableOp.model2_dense_76_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%Model2/dense_76/MatMul/ReadVariableOpÅ
Model2/dense_76/MatMulMatMul(Model2/activation_130/Relu:activations:0-Model2/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/dense_76/MatMul¼
&Model2/dense_76/BiasAdd/ReadVariableOpReadVariableOp/model2_dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&Model2/dense_76/BiasAdd/ReadVariableOpÁ
Model2/dense_76/BiasAddBiasAdd Model2/dense_76/MatMul:product:0.Model2/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/dense_76/BiasAdd
Model2/dense_76/SigmoidSigmoid Model2/dense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Model2/dense_76/Sigmoidù
IdentityIdentityModel2/dense_76/Sigmoid:y:0+^Model2/BN1/FusedBatchNormV3/ReadVariableOp-^Model2/BN1/FusedBatchNormV3/ReadVariableOp_1^Model2/BN1/ReadVariableOp^Model2/BN1/ReadVariableOp_1+^Model2/BN3/FusedBatchNormV3/ReadVariableOp-^Model2/BN3/FusedBatchNormV3/ReadVariableOp_1^Model2/BN3/ReadVariableOp^Model2/BN3/ReadVariableOp_1$^Model2/BN4/batchnorm/ReadVariableOp&^Model2/BN4/batchnorm/ReadVariableOp_1&^Model2/BN4/batchnorm/ReadVariableOp_2(^Model2/BN4/batchnorm/mul/ReadVariableOp$^Model2/CONV1/BiasAdd/ReadVariableOp#^Model2/CONV1/Conv2D/ReadVariableOp$^Model2/CONV2/BiasAdd/ReadVariableOp#^Model2/CONV2/Conv2D/ReadVariableOp'^Model2/dense_76/BiasAdd/ReadVariableOp&^Model2/dense_76/MatMul/ReadVariableOp*^Model2/dense_layer/BiasAdd/ReadVariableOp)^Model2/dense_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 2X
*Model2/BN1/FusedBatchNormV3/ReadVariableOp*Model2/BN1/FusedBatchNormV3/ReadVariableOp2\
,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1,Model2/BN1/FusedBatchNormV3/ReadVariableOp_126
Model2/BN1/ReadVariableOpModel2/BN1/ReadVariableOp2:
Model2/BN1/ReadVariableOp_1Model2/BN1/ReadVariableOp_12X
*Model2/BN3/FusedBatchNormV3/ReadVariableOp*Model2/BN3/FusedBatchNormV3/ReadVariableOp2\
,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1,Model2/BN3/FusedBatchNormV3/ReadVariableOp_126
Model2/BN3/ReadVariableOpModel2/BN3/ReadVariableOp2:
Model2/BN3/ReadVariableOp_1Model2/BN3/ReadVariableOp_12J
#Model2/BN4/batchnorm/ReadVariableOp#Model2/BN4/batchnorm/ReadVariableOp2N
%Model2/BN4/batchnorm/ReadVariableOp_1%Model2/BN4/batchnorm/ReadVariableOp_12N
%Model2/BN4/batchnorm/ReadVariableOp_2%Model2/BN4/batchnorm/ReadVariableOp_22R
'Model2/BN4/batchnorm/mul/ReadVariableOp'Model2/BN4/batchnorm/mul/ReadVariableOp2J
#Model2/CONV1/BiasAdd/ReadVariableOp#Model2/CONV1/BiasAdd/ReadVariableOp2H
"Model2/CONV1/Conv2D/ReadVariableOp"Model2/CONV1/Conv2D/ReadVariableOp2J
#Model2/CONV2/BiasAdd/ReadVariableOp#Model2/CONV2/BiasAdd/ReadVariableOp2H
"Model2/CONV2/Conv2D/ReadVariableOp"Model2/CONV2/Conv2D/ReadVariableOp2P
&Model2/dense_76/BiasAdd/ReadVariableOp&Model2/dense_76/BiasAdd/ReadVariableOp2N
%Model2/dense_76/MatMul/ReadVariableOp%Model2/dense_76/MatMul/ReadVariableOp2V
)Model2/dense_layer/BiasAdd/ReadVariableOp)Model2/dense_layer/BiasAdd/ReadVariableOp2T
(Model2/dense_layer/MatMul/ReadVariableOp(Model2/dense_layer/MatMul/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_79
þ
è
I__inference_sequential_68_layer_call_and_return_conditional_losses_710812

inputsI
;random_rotation_68_stateful_uniform_rngreadandskip_resource:	
identity¢2random_rotation_68/stateful_uniform/RngReadAndSkipÝ
8random_flip_68/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2:
8random_flip_68/random_flip_left_right/control_dependencyË
+random_flip_68/random_flip_left_right/ShapeShapeArandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_68/random_flip_left_right/ShapeÀ
9random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_68/random_flip_left_right/strided_slice/stackÄ
;random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_1Ä
;random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_2Æ
3random_flip_68/random_flip_left_right/strided_sliceStridedSlice4random_flip_68/random_flip_left_right/Shape:output:0Brandom_flip_68/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_68/random_flip_left_right/strided_sliceì
:random_flip_68/random_flip_left_right/random_uniform/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_68/random_flip_left_right/random_uniform/shape¹
8random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_68/random_flip_left_right/random_uniform/min¹
8random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8random_flip_68/random_flip_left_right/random_uniform/max
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02D
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniform¹
8random_flip_68/random_flip_left_right/random_uniform/MulMulKrandom_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8random_flip_68/random_flip_left_right/random_uniform/Mul°
5random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/1°
5random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/2°
5random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/3
3random_flip_68/random_flip_left_right/Reshape/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0>random_flip_68/random_flip_left_right/Reshape/shape/1:output:0>random_flip_68/random_flip_left_right/Reshape/shape/2:output:0>random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_68/random_flip_left_right/Reshape/shape
-random_flip_68/random_flip_left_right/ReshapeReshape<random_flip_68/random_flip_left_right/random_uniform/Mul:z:0<random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-random_flip_68/random_flip_left_right/ReshapeÕ
+random_flip_68/random_flip_left_right/RoundRound6random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_flip_68/random_flip_left_right/Round¶
4random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_68/random_flip_left_right/ReverseV2/axis«
/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_68/random_flip_left_right/control_dependency:output:0=random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@21
/random_flip_68/random_flip_left_right/ReverseV2
)random_flip_68/random_flip_left_right/mulMul/random_flip_68/random_flip_left_right/Round:y:08random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2+
)random_flip_68/random_flip_left_right/mul
+random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+random_flip_68/random_flip_left_right/sub/xþ
)random_flip_68/random_flip_left_right/subSub4random_flip_68/random_flip_left_right/sub/x:output:0/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_flip_68/random_flip_left_right/sub
+random_flip_68/random_flip_left_right/mul_1Mul-random_flip_68/random_flip_left_right/sub:z:0Arandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2-
+random_flip_68/random_flip_left_right/mul_1ù
)random_flip_68/random_flip_left_right/addAddV2-random_flip_68/random_flip_left_right/mul:z:0/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2+
)random_flip_68/random_flip_left_right/add
random_rotation_68/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_68/Shape
&random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_68/strided_slice/stack
(random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_1
(random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_2Ô
 random_rotation_68/strided_sliceStridedSlice!random_rotation_68/Shape:output:0/random_rotation_68/strided_slice/stack:output:01random_rotation_68/strided_slice/stack_1:output:01random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_68/strided_slice
(random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_1/stack¢
*random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_1¢
*random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_2Þ
"random_rotation_68/strided_slice_1StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_1/stack:output:03random_rotation_68/strided_slice_1/stack_1:output:03random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_1
random_rotation_68/CastCast+random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast
(random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_2/stack¢
*random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_1¢
*random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_2Þ
"random_rotation_68/strided_slice_2StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_2/stack:output:03random_rotation_68/strided_slice_2/stack_1:output:03random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_2
random_rotation_68/Cast_1Cast+random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast_1·
)random_rotation_68/stateful_uniform/shapePack)random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_68/stateful_uniform/shape
'random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2)
'random_rotation_68/stateful_uniform/min
'random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2)
'random_rotation_68/stateful_uniform/max 
)random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_rotation_68/stateful_uniform/Constå
(random_rotation_68/stateful_uniform/ProdProd2random_rotation_68/stateful_uniform/shape:output:02random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/stateful_uniform/Prod
*random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_rotation_68/stateful_uniform/Cast/xÃ
*random_rotation_68/stateful_uniform/Cast_1Cast1random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_rotation_68/stateful_uniform/Cast_1¸
2random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_68_stateful_uniform_rngreadandskip_resource3random_rotation_68/stateful_uniform/Cast/x:output:0.random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_rotation_68/stateful_uniform/RngReadAndSkip¼
7random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_rotation_68/stateful_uniform/strided_slice/stackÀ
9random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_1À
9random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_2À
1random_rotation_68/stateful_uniform/strided_sliceStridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0@random_rotation_68/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_rotation_68/stateful_uniform/strided_sliceÒ
+random_rotation_68/stateful_uniform/BitcastBitcast:random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_rotation_68/stateful_uniform/BitcastÀ
9random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice_1/stackÄ
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Ä
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2¸
3random_rotation_68/stateful_uniform/strided_slice_1StridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_rotation_68/stateful_uniform/strided_slice_1Ø
-random_rotation_68/stateful_uniform/Bitcast_1Bitcast<random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_rotation_68/stateful_uniform/Bitcast_1Æ
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algª
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_68/stateful_uniform/shape:output:06random_rotation_68/stateful_uniform/Bitcast_1:output:04random_rotation_68/stateful_uniform/Bitcast:output:0Irandom_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2Þ
'random_rotation_68/stateful_uniform/subSub0random_rotation_68/stateful_uniform/max:output:00random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_68/stateful_uniform/subû
'random_rotation_68/stateful_uniform/mulMulErandom_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_68/stateful_uniform/mulÞ
#random_rotation_68/stateful_uniformAdd+random_rotation_68/stateful_uniform/mul:z:00random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#random_rotation_68/stateful_uniform
(random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(random_rotation_68/rotation_matrix/sub/yÊ
&random_rotation_68/rotation_matrix/subSubrandom_rotation_68/Cast_1:y:01random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_68/rotation_matrix/sub®
&random_rotation_68/rotation_matrix/CosCos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/Cos
*random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_1/yÐ
(random_rotation_68/rotation_matrix/sub_1Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_1ß
&random_rotation_68/rotation_matrix/mulMul*random_rotation_68/rotation_matrix/Cos:y:0,random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/mul®
&random_rotation_68/rotation_matrix/SinSin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/Sin
*random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_2/yÎ
(random_rotation_68/rotation_matrix/sub_2Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_2ã
(random_rotation_68/rotation_matrix/mul_1Mul*random_rotation_68/rotation_matrix/Sin:y:0,random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_1ã
(random_rotation_68/rotation_matrix/sub_3Sub*random_rotation_68/rotation_matrix/mul:z:0,random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_3ã
(random_rotation_68/rotation_matrix/sub_4Sub*random_rotation_68/rotation_matrix/sub:z:0,random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_4¡
,random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_68/rotation_matrix/truediv/yö
*random_rotation_68/rotation_matrix/truedivRealDiv,random_rotation_68/rotation_matrix/sub_4:z:05random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_rotation_68/rotation_matrix/truediv
*random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_5/yÎ
(random_rotation_68/rotation_matrix/sub_5Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_5²
(random_rotation_68/rotation_matrix/Sin_1Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_1
*random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_6/yÐ
(random_rotation_68/rotation_matrix/sub_6Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_6å
(random_rotation_68/rotation_matrix/mul_2Mul,random_rotation_68/rotation_matrix/Sin_1:y:0,random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_2²
(random_rotation_68/rotation_matrix/Cos_1Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_1
*random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_7/yÎ
(random_rotation_68/rotation_matrix/sub_7Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_7å
(random_rotation_68/rotation_matrix/mul_3Mul,random_rotation_68/rotation_matrix/Cos_1:y:0,random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_3ã
&random_rotation_68/rotation_matrix/addAddV2,random_rotation_68/rotation_matrix/mul_2:z:0,random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/addã
(random_rotation_68/rotation_matrix/sub_8Sub,random_rotation_68/rotation_matrix/sub_5:z:0*random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_8¥
.random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_68/rotation_matrix/truediv_1/yü
,random_rotation_68/rotation_matrix/truediv_1RealDiv,random_rotation_68/rotation_matrix/sub_8:z:07random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_rotation_68/rotation_matrix/truediv_1«
(random_rotation_68/rotation_matrix/ShapeShape'random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_68/rotation_matrix/Shapeº
6random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_68/rotation_matrix/strided_slice/stack¾
8random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_1¾
8random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_2´
0random_rotation_68/rotation_matrix/strided_sliceStridedSlice1random_rotation_68/rotation_matrix/Shape:output:0?random_rotation_68/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_68/rotation_matrix/strided_slice²
(random_rotation_68/rotation_matrix/Cos_2Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_2Å
8random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_1/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_1StridedSlice,random_rotation_68/rotation_matrix/Cos_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_1²
(random_rotation_68/rotation_matrix/Sin_2Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_2Å
8random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_2/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_2StridedSlice,random_rotation_68/rotation_matrix/Sin_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_2Æ
&random_rotation_68/rotation_matrix/NegNeg;random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/NegÅ
8random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_3/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2ë
2random_rotation_68/rotation_matrix/strided_slice_3StridedSlice.random_rotation_68/rotation_matrix/truediv:z:0Arandom_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_3²
(random_rotation_68/rotation_matrix/Sin_3Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_3Å
8random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_4/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_4StridedSlice,random_rotation_68/rotation_matrix/Sin_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_4²
(random_rotation_68/rotation_matrix/Cos_3Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_3Å
8random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_5/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_5StridedSlice,random_rotation_68/rotation_matrix/Cos_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_5Å
8random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_6/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2í
2random_rotation_68/rotation_matrix/strided_slice_6StridedSlice0random_rotation_68/rotation_matrix/truediv_1:z:0Arandom_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_6¢
.random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/zeros/mul/yø
,random_rotation_68/rotation_matrix/zeros/mulMul9random_rotation_68/rotation_matrix/strided_slice:output:07random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_68/rotation_matrix/zeros/mul¥
/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è21
/random_rotation_68/rotation_matrix/zeros/Less/yó
-random_rotation_68/rotation_matrix/zeros/LessLess0random_rotation_68/rotation_matrix/zeros/mul:z:08random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_68/rotation_matrix/zeros/Less¨
1random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_68/rotation_matrix/zeros/packed/1
/random_rotation_68/rotation_matrix/zeros/packedPack9random_rotation_68/rotation_matrix/strided_slice:output:0:random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_68/rotation_matrix/zeros/packed¥
.random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_68/rotation_matrix/zeros/Const
(random_rotation_68/rotation_matrix/zerosFill8random_rotation_68/rotation_matrix/zeros/packed:output:07random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/zeros¢
.random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/concat/axisæ
)random_rotation_68/rotation_matrix/concatConcatV2;random_rotation_68/rotation_matrix/strided_slice_1:output:0*random_rotation_68/rotation_matrix/Neg:y:0;random_rotation_68/rotation_matrix/strided_slice_3:output:0;random_rotation_68/rotation_matrix/strided_slice_4:output:0;random_rotation_68/rotation_matrix/strided_slice_5:output:0;random_rotation_68/rotation_matrix/strided_slice_6:output:01random_rotation_68/rotation_matrix/zeros:output:07random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_68/rotation_matrix/concat¥
"random_rotation_68/transform/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_rotation_68/transform/Shape®
0random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_68/transform/strided_slice/stack²
2random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_1²
2random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_2ü
*random_rotation_68/transform/strided_sliceStridedSlice+random_rotation_68/transform/Shape:output:09random_rotation_68/transform/strided_slice/stack:output:0;random_rotation_68/transform/strided_slice/stack_1:output:0;random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_68/transform/strided_slice
'random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_68/transform/fill_valueÍ
7random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_68/random_flip_left_right/add:z:02random_rotation_68/rotation_matrix/concat:output:03random_rotation_68/transform/strided_slice:output:00random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_68/transform/ImageProjectiveTransformV3o
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xÑ
rescaling_51/mulMulLrandom_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/mul
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/add¥
IdentityIdentityrescaling_51/add:z:03^random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@: 2h
2random_rotation_68/stateful_uniform/RngReadAndSkip2random_rotation_68/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs

f
J__inference_activation_128_layer_call_and_return_conditional_losses_713211

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ>>:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
ã)
Ø
?__inference_BN4_layer_call_and_return_conditional_losses_711368

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient¤
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¤
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayª
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp 
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
®
?__inference_BN3_layer_call_and_return_conditional_losses_713314

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ý
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1þ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

?__inference_BN1_layer_call_and_return_conditional_losses_713136

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1á
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
is_training( 2
FusedBatchNormV3Ú
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ>>: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
Ã
¿
$__inference_BN3_layer_call_fn_713340

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7111992
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
®
?__inference_BN1_layer_call_and_return_conditional_losses_711048

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_activation_129_layer_call_and_return_conditional_losses_711567

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á
Ê
E__inference_CONV2_layer_call_and_return_all_conditional_losses_713233

inputs!
unknown:
	unknown_0:
identity

identity_1¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_7115212
StatefulPartitionedCall´
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *6
f1R/
-__inference_CONV2_activity_regularizer_7111332
PartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
f
J__inference_activation_130_layer_call_and_return_conditional_losses_711629

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
q
í
__inference__traced_save_713814
file_prefix+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop(
$savev2_bn1_gamma_read_readvariableop'
#savev2_bn1_beta_read_readvariableop.
*savev2_bn1_moving_mean_read_readvariableop2
.savev2_bn1_moving_variance_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop(
$savev2_bn3_gamma_read_readvariableop'
#savev2_bn3_beta_read_readvariableop.
*savev2_bn3_moving_mean_read_readvariableop2
.savev2_bn3_moving_variance_read_readvariableop1
-savev2_dense_layer_kernel_read_readvariableop/
+savev2_dense_layer_bias_read_readvariableop(
$savev2_bn4_gamma_read_readvariableop'
#savev2_bn4_beta_read_readvariableop.
*savev2_bn4_moving_mean_read_readvariableop2
.savev2_bn4_moving_variance_read_readvariableop.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_conv1_kernel_m_read_readvariableop0
,savev2_adam_conv1_bias_m_read_readvariableop/
+savev2_adam_bn1_gamma_m_read_readvariableop.
*savev2_adam_bn1_beta_m_read_readvariableop2
.savev2_adam_conv2_kernel_m_read_readvariableop0
,savev2_adam_conv2_bias_m_read_readvariableop/
+savev2_adam_bn3_gamma_m_read_readvariableop.
*savev2_adam_bn3_beta_m_read_readvariableop8
4savev2_adam_dense_layer_kernel_m_read_readvariableop6
2savev2_adam_dense_layer_bias_m_read_readvariableop/
+savev2_adam_bn4_gamma_m_read_readvariableop.
*savev2_adam_bn4_beta_m_read_readvariableop5
1savev2_adam_dense_76_kernel_m_read_readvariableop3
/savev2_adam_dense_76_bias_m_read_readvariableop2
.savev2_adam_conv1_kernel_v_read_readvariableop0
,savev2_adam_conv1_bias_v_read_readvariableop/
+savev2_adam_bn1_gamma_v_read_readvariableop.
*savev2_adam_bn1_beta_v_read_readvariableop2
.savev2_adam_conv2_kernel_v_read_readvariableop0
,savev2_adam_conv2_bias_v_read_readvariableop/
+savev2_adam_bn3_gamma_v_read_readvariableop.
*savev2_adam_bn3_beta_v_read_readvariableop8
4savev2_adam_dense_layer_kernel_v_read_readvariableop6
2savev2_adam_dense_layer_bias_v_read_readvariableop/
+savev2_adam_bn4_gamma_v_read_readvariableop.
*savev2_adam_bn4_beta_v_read_readvariableop5
1savev2_adam_dense_76_kernel_v_read_readvariableop3
/savev2_adam_dense_76_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÝ 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*ï
valueåBâ<B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*
valueB<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop$savev2_bn1_gamma_read_readvariableop#savev2_bn1_beta_read_readvariableop*savev2_bn1_moving_mean_read_readvariableop.savev2_bn1_moving_variance_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop$savev2_bn3_gamma_read_readvariableop#savev2_bn3_beta_read_readvariableop*savev2_bn3_moving_mean_read_readvariableop.savev2_bn3_moving_variance_read_readvariableop-savev2_dense_layer_kernel_read_readvariableop+savev2_dense_layer_bias_read_readvariableop$savev2_bn4_gamma_read_readvariableop#savev2_bn4_beta_read_readvariableop*savev2_bn4_moving_mean_read_readvariableop.savev2_bn4_moving_variance_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop+savev2_adam_bn1_gamma_m_read_readvariableop*savev2_adam_bn1_beta_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop+savev2_adam_bn3_gamma_m_read_readvariableop*savev2_adam_bn3_beta_m_read_readvariableop4savev2_adam_dense_layer_kernel_m_read_readvariableop2savev2_adam_dense_layer_bias_m_read_readvariableop+savev2_adam_bn4_gamma_m_read_readvariableop*savev2_adam_bn4_beta_m_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop+savev2_adam_bn1_gamma_v_read_readvariableop*savev2_adam_bn1_beta_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop+savev2_adam_bn3_gamma_v_read_readvariableop*savev2_adam_bn3_beta_v_read_readvariableop4savev2_adam_dense_layer_kernel_v_read_readvariableop2savev2_adam_dense_layer_bias_v_read_readvariableop+savev2_adam_bn4_gamma_v_read_readvariableop*savev2_adam_bn4_beta_v_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*º
_input_shapes¨
¥: :::>:>:>:>:::::::	:::::::: : : : : ::: : : : :::>:>:::::	::::::::>:>:::::	:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:>: 

_output_shapes
:>: 

_output_shapes
:>: 

_output_shapes
:>:,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :, (
&
_output_shapes
:: !

_output_shapes
:: "

_output_shapes
:>: #

_output_shapes
:>:,$(
&
_output_shapes
:: %

_output_shapes
:: &

_output_shapes
:: '

_output_shapes
::%(!

_output_shapes
:	: )

_output_shapes
:: *

_output_shapes
:: +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:>: 1

_output_shapes
:>:,2(
&
_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::%6!

_output_shapes
:	: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::$: 

_output_shapes

:: ;

_output_shapes
::<

_output_shapes
: 
²
þ
'__inference_Model2_layer_call_fn_711708
input_79!
unknown:
	unknown_0:
	unknown_1:>
	unknown_2:>
	unknown_3:>
	unknown_4:>#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:	

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:
identity¢StatefulPartitionedCallí
StatefulPartitionedCallStatefulPartitionedCallinput_79unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_7116632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_79
¾
F
*__inference_dropout_9_layer_call_fn_713435

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_7116132
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_713418

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
f
J__inference_activation_130_layer_call_and_return_conditional_losses_713525

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
¿
$__inference_BN3_layer_call_fn_713366

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_7118142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

,__inference_dense_layer_layer_call_fn_713413

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_7115942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
®
?__inference_BN1_layer_call_and_return_conditional_losses_713154

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ï
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1þ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ>>: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
²
®
?__inference_BN3_layer_call_and_return_conditional_losses_713278

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ï
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
exponential_avg_factor%
×#<2
FusedBatchNormV3Â
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValueÎ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
³
__inference_loss_fn_0_713561Q
7conv2_kernel_regularizer_square_readvariableop_resource:
identity¢.CONV2/kernel/Regularizer/Square/ReadVariableOpà
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7conv2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mul
IdentityIdentity CONV2/kernel/Regularizer/mul:z:0/^CONV2/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp
«
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_713430

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È«
¾
B__inference_Model2_layer_call_and_return_conditional_losses_712511

inputs>
$conv1_conv2d_readvariableop_resource:3
%conv1_biasadd_readvariableop_resource:)
bn1_readvariableop_resource:>+
bn1_readvariableop_1_resource:>:
,bn1_fusedbatchnormv3_readvariableop_resource:><
.bn1_fusedbatchnormv3_readvariableop_1_resource:>>
$conv2_conv2d_readvariableop_resource:3
%conv2_biasadd_readvariableop_resource:)
bn3_readvariableop_resource:+
bn3_readvariableop_1_resource::
,bn3_fusedbatchnormv3_readvariableop_resource:<
.bn3_fusedbatchnormv3_readvariableop_1_resource:=
*dense_layer_matmul_readvariableop_resource:	9
+dense_layer_biasadd_readvariableop_resource:3
%bn4_batchnorm_readvariableop_resource:7
)bn4_batchnorm_mul_readvariableop_resource:5
'bn4_batchnorm_readvariableop_1_resource:5
'bn4_batchnorm_readvariableop_2_resource:9
'dense_76_matmul_readvariableop_resource:6
(dense_76_biasadd_readvariableop_resource:
identity

identity_1

identity_2¢#BN1/FusedBatchNormV3/ReadVariableOp¢%BN1/FusedBatchNormV3/ReadVariableOp_1¢BN1/ReadVariableOp¢BN1/ReadVariableOp_1¢#BN3/FusedBatchNormV3/ReadVariableOp¢%BN3/FusedBatchNormV3/ReadVariableOp_1¢BN3/ReadVariableOp¢BN3/ReadVariableOp_1¢BN4/batchnorm/ReadVariableOp¢BN4/batchnorm/ReadVariableOp_1¢BN4/batchnorm/ReadVariableOp_2¢ BN4/batchnorm/mul/ReadVariableOp¢CONV1/BiasAdd/ReadVariableOp¢CONV1/Conv2D/ReadVariableOp¢CONV2/BiasAdd/ReadVariableOp¢CONV2/Conv2D/ReadVariableOp¢.CONV2/kernel/Regularizer/Square/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢"dense_layer/BiasAdd/ReadVariableOp¢!dense_layer/MatMul/ReadVariableOp¢4dense_layer/kernel/Regularizer/Square/ReadVariableOp
!sequential_68/rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2#
!sequential_68/rescaling_51/Cast/x
#sequential_68/rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_68/rescaling_51/Cast_1/xµ
sequential_68/rescaling_51/mulMulinputs*sequential_68/rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2 
sequential_68/rescaling_51/mulÕ
sequential_68/rescaling_51/addAddV2"sequential_68/rescaling_51/mul:z:0,sequential_68/rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2 
sequential_68/rescaling_51/add§
CONV1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV1/Conv2D/ReadVariableOpÒ
CONV1/Conv2DConv2D"sequential_68/rescaling_51/add:z:0#CONV1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*
paddingVALID*
strides
2
CONV1/Conv2D
CONV1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV1/BiasAdd/ReadVariableOp 
CONV1/BiasAddBiasAddCONV1/Conv2D:output:0$CONV1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
CONV1/BiasAdd
BN1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOp
BN1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOp_1³
#BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02%
#BN1/FusedBatchNormV3/ReadVariableOp¹
%BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02'
%BN1/FusedBatchNormV3/ReadVariableOp_1
BN1/FusedBatchNormV3FusedBatchNormV3CONV1/BiasAdd:output:0BN1/ReadVariableOp:value:0BN1/ReadVariableOp_1:value:0+BN1/FusedBatchNormV3/ReadVariableOp:value:0-BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
is_training( 2
BN1/FusedBatchNormV3
activation_128/ReluReluBN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2
activation_128/ReluÑ
max_pooling2d_160/MaxPoolMaxPool!activation_128/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_160/MaxPool§
CONV2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV2/Conv2D/ReadVariableOpÒ
CONV2/Conv2DConv2D"max_pooling2d_160/MaxPool:output:0#CONV2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
CONV2/Conv2D
CONV2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV2/BiasAdd/ReadVariableOp 
CONV2/BiasAddBiasAddCONV2/Conv2D:output:0$CONV2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
CONV2/BiasAdd 
 CONV2/ActivityRegularizer/SquareSquareCONV2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 CONV2/ActivityRegularizer/Square
CONV2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2!
CONV2/ActivityRegularizer/Const¶
CONV2/ActivityRegularizer/SumSum$CONV2/ActivityRegularizer/Square:y:0(CONV2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/Sum
CONV2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2!
CONV2/ActivityRegularizer/mul/x¸
CONV2/ActivityRegularizer/mulMul(CONV2/ActivityRegularizer/mul/x:output:0&CONV2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/mul
CONV2/ActivityRegularizer/ShapeShapeCONV2/BiasAdd:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shape¨
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stack¬
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1¬
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2þ
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceª
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast¹
!CONV2/ActivityRegularizer/truedivRealDiv!CONV2/ActivityRegularizer/mul:z:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv
BN3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOp
BN3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOp_1³
#BN3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02%
#BN3/FusedBatchNormV3/ReadVariableOp¹
%BN3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02'
%BN3/FusedBatchNormV3/ReadVariableOp_1÷
BN3/FusedBatchNormV3FusedBatchNormV3CONV2/BiasAdd:output:0BN3/ReadVariableOp:value:0BN3/ReadVariableOp_1:value:0+BN3/FusedBatchNormV3/ReadVariableOp:value:0-BN3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
data_formatNCHW*
is_training( 2
BN3/FusedBatchNormV3
activation_129/ReluReluBN3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_129/Reluà
average_pooling2d_76/AvgPoolAvgPool!activation_129/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_76/AvgPoolu
flatten_76/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ
  2
flatten_76/Const¨
flatten_76/ReshapeReshape%average_pooling2d_76/AvgPool:output:0flatten_76/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_76/Reshape²
!dense_layer/MatMul/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!dense_layer/MatMul/ReadVariableOp¬
dense_layer/MatMulMatMulflatten_76/Reshape:output:0)dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_layer/MatMul°
"dense_layer/BiasAdd/ReadVariableOpReadVariableOp+dense_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"dense_layer/BiasAdd/ReadVariableOp±
dense_layer/BiasAddBiasAdddense_layer/MatMul:product:0*dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_layer/BiasAddª
&dense_layer/ActivityRegularizer/SquareSquaredense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&dense_layer/ActivityRegularizer/Square
%dense_layer/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%dense_layer/ActivityRegularizer/ConstÎ
#dense_layer/ActivityRegularizer/SumSum*dense_layer/ActivityRegularizer/Square:y:0.dense_layer/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/Sum
%dense_layer/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%dense_layer/ActivityRegularizer/mul/xÐ
#dense_layer/ActivityRegularizer/mulMul.dense_layer/ActivityRegularizer/mul/x:output:0,dense_layer/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/mul
%dense_layer/ActivityRegularizer/ShapeShapedense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape´
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stack¸
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1¸
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2¢
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice¼
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastÑ
'dense_layer/ActivityRegularizer/truedivRealDiv'dense_layer/ActivityRegularizer/mul:z:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truediv
dropout_9/IdentityIdentitydense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_9/Identity
BN4/batchnorm/ReadVariableOpReadVariableOp%bn4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
BN4/batchnorm/ReadVariableOpo
BN4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
BN4/batchnorm/add/y
BN4/batchnorm/addAddV2$BN4/batchnorm/ReadVariableOp:value:0BN4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
BN4/batchnorm/addo
BN4/batchnorm/RsqrtRsqrtBN4/batchnorm/add:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/Rsqrtª
 BN4/batchnorm/mul/ReadVariableOpReadVariableOp)bn4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02"
 BN4/batchnorm/mul/ReadVariableOp
BN4/batchnorm/mulMulBN4/batchnorm/Rsqrt:y:0(BN4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
BN4/batchnorm/mul
BN4/batchnorm/mul_1Muldropout_9/Identity:output:0BN4/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
BN4/batchnorm/mul_1¤
BN4/batchnorm/ReadVariableOp_1ReadVariableOp'bn4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02 
BN4/batchnorm/ReadVariableOp_1
BN4/batchnorm/mul_2Mul&BN4/batchnorm/ReadVariableOp_1:value:0BN4/batchnorm/mul:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/mul_2¤
BN4/batchnorm/ReadVariableOp_2ReadVariableOp'bn4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02 
BN4/batchnorm/ReadVariableOp_2
BN4/batchnorm/subSub&BN4/batchnorm/ReadVariableOp_2:value:0BN4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/sub
BN4/batchnorm/add_1AddV2BN4/batchnorm/mul_1:z:0BN4/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
BN4/batchnorm/add_1}
activation_130/ReluReluBN4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_130/Relu¨
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_76/MatMul/ReadVariableOp©
dense_76/MatMulMatMul!activation_130/Relu:activations:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_76/MatMul§
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_76/BiasAdd/ReadVariableOp¥
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_76/BiasAdd|
dense_76/SigmoidSigmoiddense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_76/SigmoidÍ
.CONV2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.CONV2/kernel/Regularizer/Square/ReadVariableOpµ
CONV2/kernel/Regularizer/SquareSquare6CONV2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2!
CONV2/kernel/Regularizer/Square
CONV2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2 
CONV2/kernel/Regularizer/Const²
CONV2/kernel/Regularizer/SumSum#CONV2/kernel/Regularizer/Square:y:0'CONV2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/Sum
CONV2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2 
CONV2/kernel/Regularizer/mul/x´
CONV2/kernel/Regularizer/mulMul'CONV2/kernel/Regularizer/mul/x:output:0%CONV2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/kernel/Regularizer/mulØ
4dense_layer/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	*
dtype026
4dense_layer/kernel/Regularizer/Square/ReadVariableOpÀ
%dense_layer/kernel/Regularizer/SquareSquare<dense_layer/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%dense_layer/kernel/Regularizer/Square
$dense_layer/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2&
$dense_layer/kernel/Regularizer/ConstÊ
"dense_layer/kernel/Regularizer/SumSum)dense_layer/kernel/Regularizer/Square:y:0-dense_layer/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/Sum
$dense_layer/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2&
$dense_layer/kernel/Regularizer/mul/xÌ
"dense_layer/kernel/Regularizer/mulMul-dense_layer/kernel/Regularizer/mul/x:output:0+dense_layer/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2$
"dense_layer/kernel/Regularizer/mulÎ
IdentityIdentitydense_76/Sigmoid:y:0$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp^BN4/batchnorm/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp_2!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

IdentityÒ

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp^BN4/batchnorm/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp_2!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1Ø

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp^BN4/batchnorm/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp_2!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp/^CONV2/kernel/Regularizer/Square/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp5^dense_layer/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : 2J
#BN1/FusedBatchNormV3/ReadVariableOp#BN1/FusedBatchNormV3/ReadVariableOp2N
%BN1/FusedBatchNormV3/ReadVariableOp_1%BN1/FusedBatchNormV3/ReadVariableOp_12(
BN1/ReadVariableOpBN1/ReadVariableOp2,
BN1/ReadVariableOp_1BN1/ReadVariableOp_12J
#BN3/FusedBatchNormV3/ReadVariableOp#BN3/FusedBatchNormV3/ReadVariableOp2N
%BN3/FusedBatchNormV3/ReadVariableOp_1%BN3/FusedBatchNormV3/ReadVariableOp_12(
BN3/ReadVariableOpBN3/ReadVariableOp2,
BN3/ReadVariableOp_1BN3/ReadVariableOp_12<
BN4/batchnorm/ReadVariableOpBN4/batchnorm/ReadVariableOp2@
BN4/batchnorm/ReadVariableOp_1BN4/batchnorm/ReadVariableOp_12@
BN4/batchnorm/ReadVariableOp_2BN4/batchnorm/ReadVariableOp_22D
 BN4/batchnorm/mul/ReadVariableOp BN4/batchnorm/mul/ReadVariableOp2<
CONV1/BiasAdd/ReadVariableOpCONV1/BiasAdd/ReadVariableOp2:
CONV1/Conv2D/ReadVariableOpCONV1/Conv2D/ReadVariableOp2<
CONV2/BiasAdd/ReadVariableOpCONV2/BiasAdd/ReadVariableOp2:
CONV2/Conv2D/ReadVariableOpCONV2/Conv2D/ReadVariableOp2`
.CONV2/kernel/Regularizer/Square/ReadVariableOp.CONV2/kernel/Regularizer/Square/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2H
"dense_layer/BiasAdd/ReadVariableOp"dense_layer/BiasAdd/ReadVariableOp2F
!dense_layer/MatMul/ReadVariableOp!dense_layer/MatMul/ReadVariableOp2l
4dense_layer/kernel/Regularizer/Square/ReadVariableOp4dense_layer/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
þ
è
I__inference_sequential_68_layer_call_and_return_conditional_losses_713051

inputsI
;random_rotation_68_stateful_uniform_rngreadandskip_resource:	
identity¢2random_rotation_68/stateful_uniform/RngReadAndSkipÝ
8random_flip_68/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2:
8random_flip_68/random_flip_left_right/control_dependencyË
+random_flip_68/random_flip_left_right/ShapeShapeArandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_68/random_flip_left_right/ShapeÀ
9random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_68/random_flip_left_right/strided_slice/stackÄ
;random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_1Ä
;random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_2Æ
3random_flip_68/random_flip_left_right/strided_sliceStridedSlice4random_flip_68/random_flip_left_right/Shape:output:0Brandom_flip_68/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_68/random_flip_left_right/strided_sliceì
:random_flip_68/random_flip_left_right/random_uniform/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_68/random_flip_left_right/random_uniform/shape¹
8random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_68/random_flip_left_right/random_uniform/min¹
8random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8random_flip_68/random_flip_left_right/random_uniform/max
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02D
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniform¹
8random_flip_68/random_flip_left_right/random_uniform/MulMulKrandom_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8random_flip_68/random_flip_left_right/random_uniform/Mul°
5random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/1°
5random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/2°
5random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/3
3random_flip_68/random_flip_left_right/Reshape/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0>random_flip_68/random_flip_left_right/Reshape/shape/1:output:0>random_flip_68/random_flip_left_right/Reshape/shape/2:output:0>random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_68/random_flip_left_right/Reshape/shape
-random_flip_68/random_flip_left_right/ReshapeReshape<random_flip_68/random_flip_left_right/random_uniform/Mul:z:0<random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-random_flip_68/random_flip_left_right/ReshapeÕ
+random_flip_68/random_flip_left_right/RoundRound6random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_flip_68/random_flip_left_right/Round¶
4random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_68/random_flip_left_right/ReverseV2/axis«
/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_68/random_flip_left_right/control_dependency:output:0=random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@21
/random_flip_68/random_flip_left_right/ReverseV2
)random_flip_68/random_flip_left_right/mulMul/random_flip_68/random_flip_left_right/Round:y:08random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2+
)random_flip_68/random_flip_left_right/mul
+random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2-
+random_flip_68/random_flip_left_right/sub/xþ
)random_flip_68/random_flip_left_right/subSub4random_flip_68/random_flip_left_right/sub/x:output:0/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_flip_68/random_flip_left_right/sub
+random_flip_68/random_flip_left_right/mul_1Mul-random_flip_68/random_flip_left_right/sub:z:0Arandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2-
+random_flip_68/random_flip_left_right/mul_1ù
)random_flip_68/random_flip_left_right/addAddV2-random_flip_68/random_flip_left_right/mul:z:0/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2+
)random_flip_68/random_flip_left_right/add
random_rotation_68/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_68/Shape
&random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_68/strided_slice/stack
(random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_1
(random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_2Ô
 random_rotation_68/strided_sliceStridedSlice!random_rotation_68/Shape:output:0/random_rotation_68/strided_slice/stack:output:01random_rotation_68/strided_slice/stack_1:output:01random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_68/strided_slice
(random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_1/stack¢
*random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_1¢
*random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_2Þ
"random_rotation_68/strided_slice_1StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_1/stack:output:03random_rotation_68/strided_slice_1/stack_1:output:03random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_1
random_rotation_68/CastCast+random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast
(random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_2/stack¢
*random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_1¢
*random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_2Þ
"random_rotation_68/strided_slice_2StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_2/stack:output:03random_rotation_68/strided_slice_2/stack_1:output:03random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_2
random_rotation_68/Cast_1Cast+random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast_1·
)random_rotation_68/stateful_uniform/shapePack)random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_68/stateful_uniform/shape
'random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2)
'random_rotation_68/stateful_uniform/min
'random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2)
'random_rotation_68/stateful_uniform/max 
)random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_rotation_68/stateful_uniform/Constå
(random_rotation_68/stateful_uniform/ProdProd2random_rotation_68/stateful_uniform/shape:output:02random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/stateful_uniform/Prod
*random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_rotation_68/stateful_uniform/Cast/xÃ
*random_rotation_68/stateful_uniform/Cast_1Cast1random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_rotation_68/stateful_uniform/Cast_1¸
2random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_68_stateful_uniform_rngreadandskip_resource3random_rotation_68/stateful_uniform/Cast/x:output:0.random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_rotation_68/stateful_uniform/RngReadAndSkip¼
7random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_rotation_68/stateful_uniform/strided_slice/stackÀ
9random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_1À
9random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_2À
1random_rotation_68/stateful_uniform/strided_sliceStridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0@random_rotation_68/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_rotation_68/stateful_uniform/strided_sliceÒ
+random_rotation_68/stateful_uniform/BitcastBitcast:random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_rotation_68/stateful_uniform/BitcastÀ
9random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice_1/stackÄ
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Ä
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2¸
3random_rotation_68/stateful_uniform/strided_slice_1StridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_rotation_68/stateful_uniform/strided_slice_1Ø
-random_rotation_68/stateful_uniform/Bitcast_1Bitcast<random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_rotation_68/stateful_uniform/Bitcast_1Æ
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algª
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_68/stateful_uniform/shape:output:06random_rotation_68/stateful_uniform/Bitcast_1:output:04random_rotation_68/stateful_uniform/Bitcast:output:0Irandom_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2Þ
'random_rotation_68/stateful_uniform/subSub0random_rotation_68/stateful_uniform/max:output:00random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_68/stateful_uniform/subû
'random_rotation_68/stateful_uniform/mulMulErandom_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_68/stateful_uniform/mulÞ
#random_rotation_68/stateful_uniformAdd+random_rotation_68/stateful_uniform/mul:z:00random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#random_rotation_68/stateful_uniform
(random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(random_rotation_68/rotation_matrix/sub/yÊ
&random_rotation_68/rotation_matrix/subSubrandom_rotation_68/Cast_1:y:01random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_68/rotation_matrix/sub®
&random_rotation_68/rotation_matrix/CosCos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/Cos
*random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_1/yÐ
(random_rotation_68/rotation_matrix/sub_1Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_1ß
&random_rotation_68/rotation_matrix/mulMul*random_rotation_68/rotation_matrix/Cos:y:0,random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/mul®
&random_rotation_68/rotation_matrix/SinSin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/Sin
*random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_2/yÎ
(random_rotation_68/rotation_matrix/sub_2Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_2ã
(random_rotation_68/rotation_matrix/mul_1Mul*random_rotation_68/rotation_matrix/Sin:y:0,random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_1ã
(random_rotation_68/rotation_matrix/sub_3Sub*random_rotation_68/rotation_matrix/mul:z:0,random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_3ã
(random_rotation_68/rotation_matrix/sub_4Sub*random_rotation_68/rotation_matrix/sub:z:0,random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_4¡
,random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_68/rotation_matrix/truediv/yö
*random_rotation_68/rotation_matrix/truedivRealDiv,random_rotation_68/rotation_matrix/sub_4:z:05random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_rotation_68/rotation_matrix/truediv
*random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_5/yÎ
(random_rotation_68/rotation_matrix/sub_5Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_5²
(random_rotation_68/rotation_matrix/Sin_1Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_1
*random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_6/yÐ
(random_rotation_68/rotation_matrix/sub_6Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_6å
(random_rotation_68/rotation_matrix/mul_2Mul,random_rotation_68/rotation_matrix/Sin_1:y:0,random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_2²
(random_rotation_68/rotation_matrix/Cos_1Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_1
*random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_rotation_68/rotation_matrix/sub_7/yÎ
(random_rotation_68/rotation_matrix/sub_7Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_7å
(random_rotation_68/rotation_matrix/mul_3Mul,random_rotation_68/rotation_matrix/Cos_1:y:0,random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/mul_3ã
&random_rotation_68/rotation_matrix/addAddV2,random_rotation_68/rotation_matrix/mul_2:z:0,random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/addã
(random_rotation_68/rotation_matrix/sub_8Sub,random_rotation_68/rotation_matrix/sub_5:z:0*random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/sub_8¥
.random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_68/rotation_matrix/truediv_1/yü
,random_rotation_68/rotation_matrix/truediv_1RealDiv,random_rotation_68/rotation_matrix/sub_8:z:07random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_rotation_68/rotation_matrix/truediv_1«
(random_rotation_68/rotation_matrix/ShapeShape'random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_68/rotation_matrix/Shapeº
6random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_68/rotation_matrix/strided_slice/stack¾
8random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_1¾
8random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_2´
0random_rotation_68/rotation_matrix/strided_sliceStridedSlice1random_rotation_68/rotation_matrix/Shape:output:0?random_rotation_68/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_68/rotation_matrix/strided_slice²
(random_rotation_68/rotation_matrix/Cos_2Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_2Å
8random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_1/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_1StridedSlice,random_rotation_68/rotation_matrix/Cos_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_1²
(random_rotation_68/rotation_matrix/Sin_2Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_2Å
8random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_2/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_2StridedSlice,random_rotation_68/rotation_matrix/Sin_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_2Æ
&random_rotation_68/rotation_matrix/NegNeg;random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_68/rotation_matrix/NegÅ
8random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_3/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2ë
2random_rotation_68/rotation_matrix/strided_slice_3StridedSlice.random_rotation_68/rotation_matrix/truediv:z:0Arandom_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_3²
(random_rotation_68/rotation_matrix/Sin_3Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Sin_3Å
8random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_4/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_4StridedSlice,random_rotation_68/rotation_matrix/Sin_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_4²
(random_rotation_68/rotation_matrix/Cos_3Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/Cos_3Å
8random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_5/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2é
2random_rotation_68/rotation_matrix/strided_slice_5StridedSlice,random_rotation_68/rotation_matrix/Cos_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_5Å
8random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_6/stackÉ
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1É
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2í
2random_rotation_68/rotation_matrix/strided_slice_6StridedSlice0random_rotation_68/rotation_matrix/truediv_1:z:0Arandom_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_6¢
.random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/zeros/mul/yø
,random_rotation_68/rotation_matrix/zeros/mulMul9random_rotation_68/rotation_matrix/strided_slice:output:07random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_68/rotation_matrix/zeros/mul¥
/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è21
/random_rotation_68/rotation_matrix/zeros/Less/yó
-random_rotation_68/rotation_matrix/zeros/LessLess0random_rotation_68/rotation_matrix/zeros/mul:z:08random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_68/rotation_matrix/zeros/Less¨
1random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_68/rotation_matrix/zeros/packed/1
/random_rotation_68/rotation_matrix/zeros/packedPack9random_rotation_68/rotation_matrix/strided_slice:output:0:random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_68/rotation_matrix/zeros/packed¥
.random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_68/rotation_matrix/zeros/Const
(random_rotation_68/rotation_matrix/zerosFill8random_rotation_68/rotation_matrix/zeros/packed:output:07random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_68/rotation_matrix/zeros¢
.random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/concat/axisæ
)random_rotation_68/rotation_matrix/concatConcatV2;random_rotation_68/rotation_matrix/strided_slice_1:output:0*random_rotation_68/rotation_matrix/Neg:y:0;random_rotation_68/rotation_matrix/strided_slice_3:output:0;random_rotation_68/rotation_matrix/strided_slice_4:output:0;random_rotation_68/rotation_matrix/strided_slice_5:output:0;random_rotation_68/rotation_matrix/strided_slice_6:output:01random_rotation_68/rotation_matrix/zeros:output:07random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_68/rotation_matrix/concat¥
"random_rotation_68/transform/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_rotation_68/transform/Shape®
0random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_68/transform/strided_slice/stack²
2random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_1²
2random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_2ü
*random_rotation_68/transform/strided_sliceStridedSlice+random_rotation_68/transform/Shape:output:09random_rotation_68/transform/strided_slice/stack:output:0;random_rotation_68/transform/strided_slice/stack_1:output:0;random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_68/transform/strided_slice
'random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_68/transform/fill_valueÍ
7random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_68/random_flip_left_right/add:z:02random_rotation_68/rotation_matrix/concat:output:03random_rotation_68/transform/strided_slice:output:00random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR29
7random_rotation_68/transform/ImageProjectiveTransformV3o
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xÑ
rescaling_51/mulMulLrandom_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/mul
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/add¥
IdentityIdentityrescaling_51/add:z:03^random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@: 2h
2random_rotation_68/stateful_uniform/RngReadAndSkip2random_rotation_68/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ã)
Ø
?__inference_BN4_layer_call_and_return_conditional_losses_713494

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:2
moments/StopGradient¤
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay¤
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/sub
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul¿
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decayª
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp 
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/sub
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mulÉ
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ

'__inference_Model2_layer_call_fn_712143
input_79
unknown:	#
	unknown_0:
	unknown_1:
	unknown_2:>
	unknown_3:>
	unknown_4:>
	unknown_5:>#
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:	

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinput_79unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_7120472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ@@: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
"
_user_specified_name
input_79
è
K
/__inference_activation_129_layer_call_fn_713376

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_7115672
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
l
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_711265

inputs
identity¶
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
i
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_711114

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

?__inference_BN1_layer_call_and_return_conditional_losses_711487

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1á
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ>>:>:>:>:>:*
data_formatNCHW*
epsilon%o:*
is_training( 2
FusedBatchNormV3Ú
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ>>: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>
 
_user_specified_nameinputs
Û
N
2__inference_max_pooling2d_160_layer_call_fn_711120

inputs
identityî
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_7111142
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®

ú
A__inference_CONV1_layer_call_and_return_conditional_losses_713073

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
¿
e
I__inference_sequential_68_layer_call_and_return_conditional_losses_710652

inputs
identityo
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/x
rescaling_51/mulMulinputsrescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/mul
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_51/addp
IdentityIdentityrescaling_51/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ò
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_711613

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
E
input_799
serving_default_input_79:0ÿÿÿÿÿÿÿÿÿ@@<
dense_760
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¤¹
ç
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer_with_weights-6
layer-15
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
+ð&call_and_return_all_conditional_losses
ñ__call__
ò_default_save_signature"
_tf_keras_networkï{"name": "Model2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Model2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_79"}, "name": "input_79", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "name": "sequential_68", "inbound_nodes": [[["input_79", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CONV1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV1", "inbound_nodes": [[["sequential_68", 1, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1", "inbound_nodes": [[["CONV1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_128", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_128", "inbound_nodes": [[["BN1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_160", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_160", "inbound_nodes": [[["activation_128", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CONV2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV2", "inbound_nodes": [[["max_pooling2d_160", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.0001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3", "inbound_nodes": [[["CONV2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_129", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_129", "inbound_nodes": [[["BN3", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_76", "inbound_nodes": [[["activation_129", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_76", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_76", "inbound_nodes": [[["average_pooling2d_76", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_layer", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer", "inbound_nodes": [[["flatten_76", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_9", "inbound_nodes": [[["dense_layer", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN4", "inbound_nodes": [[["dropout_9", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_130", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_130", "inbound_nodes": [[["BN4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_76", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_76", "inbound_nodes": [[["activation_130", 0, 0, {}]]]}], "input_layers": [["input_79", 0, 0]], "output_layers": [["dense_76", 0, 0]]}, "shared_object_id": 44, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "float32", "input_79"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Model2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_79"}, "name": "input_79", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "name": "sequential_68", "inbound_nodes": [[["input_79", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "CONV1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV1", "inbound_nodes": [[["sequential_68", 1, 0, {}]]], "shared_object_id": 8}, {"class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 12}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1", "inbound_nodes": [[["CONV1", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Activation", "config": {"name": "activation_128", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_128", "inbound_nodes": [[["BN1", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_160", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_160", "inbound_nodes": [[["activation_128", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "CONV2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 19}, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV2", "inbound_nodes": [[["max_pooling2d_160", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.0001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3", "inbound_nodes": [[["CONV2", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Activation", "config": {"name": "activation_129", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_129", "inbound_nodes": [[["BN3", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_76", "inbound_nodes": [[["activation_129", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Flatten", "config": {"name": "flatten_76", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_76", "inbound_nodes": [[["average_pooling2d_76", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Dense", "config": {"name": "dense_layer", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 31}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 32}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer", "inbound_nodes": [[["flatten_76", 0, 0, {}]]], "shared_object_id": 33}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_9", "inbound_nodes": [[["dense_layer", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "BN4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN4", "inbound_nodes": [[["dropout_9", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_130", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_130", "inbound_nodes": [[["BN4", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "Dense", "config": {"name": "dense_76", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_76", "inbound_nodes": [[["activation_130", 0, 0, {}]]], "shared_object_id": 43}], "input_layers": [["input_79", 0, 0]], "output_layers": [["dense_76", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 46}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
û"ø
_tf_keras_input_layerØ{"class_name": "InputLayer", "name": "input_79", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_79"}}
Í
layer-0
layer-1
layer-2
regularization_losses
trainable_variables
	variables
	keras_api
+ó&call_and_return_all_conditional_losses
ô__call__"
_tf_keras_sequentialö{"name": "sequential_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "inbound_nodes": [[["input_79", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 47}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "float32", "random_flip_68_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}, "shared_object_id": 1}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "shared_object_id": 2}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 4}]}}}
þ


kernel
bias
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+õ&call_and_return_all_conditional_losses
ö__call__"×	
_tf_keras_layer½	{"name": "CONV1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "CONV1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["sequential_68", 1, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
Ñ

$axis
	%gamma
&beta
'moving_mean
(moving_variance
)regularization_losses
*trainable_variables
+	variables
,	keras_api
+÷&call_and_return_all_conditional_losses
ø__call__"û
_tf_keras_layerá{"name": "BN1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 12}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["CONV1", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"1": 62}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 16]}}

-regularization_losses
.trainable_variables
/	variables
0	keras_api
+ù&call_and_return_all_conditional_losses
ú__call__"
_tf_keras_layerð{"name": "activation_128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_128", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["BN1", 0, 0, {}]]], "shared_object_id": 14}
è
1regularization_losses
2trainable_variables
3	variables
4	keras_api
+û&call_and_return_all_conditional_losses
ü__call__"×
_tf_keras_layer½{"name": "max_pooling2d_160", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_160", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_128", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 50}}


5kernel
6bias
7regularization_losses
8trainable_variables
9	variables
:	keras_api
+ý&call_and_return_all_conditional_losses
þ__call__"ñ
_tf_keras_layer×{"name": "CONV2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "CONV2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 19}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_160", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 51}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 16]}}
Ó

;axis
	<gamma
=beta
>moving_mean
?moving_variance
@regularization_losses
Atrainable_variables
B	variables
C	keras_api
+ÿ&call_and_return_all_conditional_losses
__call__"ý
_tf_keras_layerã{"name": "BN3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.0001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["CONV2", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"1": 28}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 16]}}

Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerð{"name": "activation_129", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_129", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["BN3", 0, 0, {}]]], "shared_object_id": 26}
ò
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
+&call_and_return_all_conditional_losses
__call__"á
_tf_keras_layerÇ{"name": "average_pooling2d_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_129", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 53}}
Ó
Lregularization_losses
Mtrainable_variables
N	variables
O	keras_api
+&call_and_return_all_conditional_losses
__call__"Â
_tf_keras_layer¨{"name": "flatten_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_76", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["average_pooling2d_76", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 54}}
 

Pkernel
Qbias
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
+&call_and_return_all_conditional_losses
__call__"ù	
_tf_keras_layerß	{"name": "dense_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_layer", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 31}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 32}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_76", 0, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2704}}, "shared_object_id": 55}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2704]}}
¯
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer{"name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_layer", 0, 0, {}]]], "shared_object_id": 34}
Î

Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_regularization_losses
`trainable_variables
a	variables
b	keras_api
+&call_and_return_all_conditional_losses
__call__"ø
_tf_keras_layerÞ{"name": "BN4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dropout_9", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}

cregularization_losses
dtrainable_variables
e	variables
f	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerð{"name": "activation_130", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_130", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["BN4", 0, 0, {}]]], "shared_object_id": 40}
	

gkernel
hbias
iregularization_losses
jtrainable_variables
k	variables
l	keras_api
+&call_and_return_all_conditional_losses
__call__"â
_tf_keras_layerÈ{"name": "dense_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_76", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_130", 0, 0, {}]]], "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
ë
miter

nbeta_1

obeta_2
	pdecay
qlearning_ratemÔmÕ%mÖ&m×5mØ6mÙ<mÚ=mÛPmÜQmÝ[mÞ\mßgmàhmávâvã%vä&vå5væ6vç<vè=véPvêQvë[vì\vígvîhvï"
	optimizer
0
0
1"
trackable_list_wrapper

0
1
%2
&3
54
65
<6
=7
P8
Q9
[10
\11
g12
h13"
trackable_list_wrapper
¶
0
1
%2
&3
'4
(5
56
67
<8
=9
>10
?11
P12
Q13
[14
\15
]16
^17
g18
h19"
trackable_list_wrapper
Î
rlayer_metrics

slayers
regularization_losses
trainable_variables
	variables
tmetrics
ulayer_regularization_losses
vnon_trainable_variables
ñ__call__
ò_default_save_signature
+ð&call_and_return_all_conditional_losses
'ð"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
±
w_rng
x	keras_api"
_tf_keras_layerû{"name": "random_flip_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 47}}
Ö
y_rng
z	keras_api"º
_tf_keras_layer {"name": "random_rotation_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}

{	keras_api"ò
_tf_keras_layerØ{"name": "rescaling_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 4}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
±
|layer_metrics

}layers
regularization_losses
trainable_variables
	variables
~metrics
layer_regularization_losses
non_trainable_variables
ô__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
&:$2CONV1/kernel
:2
CONV1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
µ
layer_metrics
layers
 regularization_losses
!trainable_variables
"	variables
metrics
 layer_regularization_losses
non_trainable_variables
ö__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:>2	BN1/gamma
:>2BN1/beta
:> (2BN1/moving_mean
#:!> (2BN1/moving_variance
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
<
%0
&1
'2
(3"
trackable_list_wrapper
µ
layer_metrics
layers
)regularization_losses
*trainable_variables
+	variables
metrics
 layer_regularization_losses
non_trainable_variables
ø__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
layers
-regularization_losses
.trainable_variables
/	variables
metrics
 layer_regularization_losses
non_trainable_variables
ú__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
layers
1regularization_losses
2trainable_variables
3	variables
metrics
 layer_regularization_losses
non_trainable_variables
ü__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
&:$2CONV2/kernel
:2
CONV2/bias
(
0"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
Ó
layer_metrics
layers
7regularization_losses
8trainable_variables
9	variables
metrics
 layer_regularization_losses
non_trainable_variables
þ__call__
activity_regularizer_fn
+ý&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	BN3/gamma
:2BN3/beta
: (2BN3/moving_mean
#:! (2BN3/moving_variance
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
<
<0
=1
>2
?3"
trackable_list_wrapper
µ
layer_metrics
layers
@regularization_losses
Atrainable_variables
B	variables
metrics
 layer_regularization_losses
non_trainable_variables
__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
layer_metrics
 layers
Dregularization_losses
Etrainable_variables
F	variables
¡metrics
 ¢layer_regularization_losses
£non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¤layer_metrics
¥layers
Hregularization_losses
Itrainable_variables
J	variables
¦metrics
 §layer_regularization_losses
¨non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
©layer_metrics
ªlayers
Lregularization_losses
Mtrainable_variables
N	variables
«metrics
 ¬layer_regularization_losses
­non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
%:#	2dense_layer/kernel
:2dense_layer/bias
(
0"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
Ó
®layer_metrics
¯layers
Rregularization_losses
Strainable_variables
T	variables
°metrics
 ±layer_regularization_losses
²non_trainable_variables
__call__
activity_regularizer_fn
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
³layer_metrics
´layers
Vregularization_losses
Wtrainable_variables
X	variables
µmetrics
 ¶layer_regularization_losses
·non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	BN4/gamma
:2BN4/beta
: (2BN4/moving_mean
#:! (2BN4/moving_variance
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
<
[0
\1
]2
^3"
trackable_list_wrapper
µ
¸layer_metrics
¹layers
_regularization_losses
`trainable_variables
a	variables
ºmetrics
 »layer_regularization_losses
¼non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
½layer_metrics
¾layers
cregularization_losses
dtrainable_variables
e	variables
¿metrics
 Àlayer_regularization_losses
Ánon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:2dense_76/kernel
:2dense_76/bias
 "
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
µ
Âlayer_metrics
Ãlayers
iregularization_losses
jtrainable_variables
k	variables
Ämetrics
 Ålayer_regularization_losses
Ænon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
0
Ç0
È1"
trackable_list_wrapper
 "
trackable_list_wrapper
J
'0
(1
>2
?3
]4
^5"
trackable_list_wrapper
/
É
_state_var"
_generic_user_object
"
_generic_user_object
/
Ê
_state_var"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ø

Ëtotal

Ìcount
Í	variables
Î	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 58}


Ïtotal

Ðcount
Ñ
_fn_kwargs
Ò	variables
Ó	keras_api"Ë
_tf_keras_metric°{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 46}
:	2Variable
:	2Variable
:  (2total
:  (2count
0
Ë0
Ì1"
trackable_list_wrapper
.
Í	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ï0
Ð1"
trackable_list_wrapper
.
Ò	variables"
_generic_user_object
+:)2Adam/CONV1/kernel/m
:2Adam/CONV1/bias/m
:>2Adam/BN1/gamma/m
:>2Adam/BN1/beta/m
+:)2Adam/CONV2/kernel/m
:2Adam/CONV2/bias/m
:2Adam/BN3/gamma/m
:2Adam/BN3/beta/m
*:(	2Adam/dense_layer/kernel/m
#:!2Adam/dense_layer/bias/m
:2Adam/BN4/gamma/m
:2Adam/BN4/beta/m
&:$2Adam/dense_76/kernel/m
 :2Adam/dense_76/bias/m
+:)2Adam/CONV1/kernel/v
:2Adam/CONV1/bias/v
:>2Adam/BN1/gamma/v
:>2Adam/BN1/beta/v
+:)2Adam/CONV2/kernel/v
:2Adam/CONV2/bias/v
:2Adam/BN3/gamma/v
:2Adam/BN3/beta/v
*:(	2Adam/dense_layer/kernel/v
#:!2Adam/dense_layer/bias/v
:2Adam/BN4/gamma/v
:2Adam/BN4/beta/v
&:$2Adam/dense_76/kernel/v
 :2Adam/dense_76/bias/v
Ö2Ó
B__inference_Model2_layer_call_and_return_conditional_losses_712511
B__inference_Model2_layer_call_and_return_conditional_losses_712797
B__inference_Model2_layer_call_and_return_conditional_losses_712232
B__inference_Model2_layer_call_and_return_conditional_losses_712323À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
'__inference_Model2_layer_call_fn_711708
'__inference_Model2_layer_call_fn_712844
'__inference_Model2_layer_call_fn_712893
'__inference_Model2_layer_call_fn_712143À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
è2å
!__inference__wrapped_model_710640¿
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª */¢,
*'
input_79ÿÿÿÿÿÿÿÿÿ@@
ò2ï
I__inference_sequential_68_layer_call_and_return_conditional_losses_712901
I__inference_sequential_68_layer_call_and_return_conditional_losses_713051
I__inference_sequential_68_layer_call_and_return_conditional_losses_710832
I__inference_sequential_68_layer_call_and_return_conditional_losses_710982À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
.__inference_sequential_68_layer_call_fn_710655
.__inference_sequential_68_layer_call_fn_713056
.__inference_sequential_68_layer_call_fn_713063
.__inference_sequential_68_layer_call_fn_710824À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
A__inference_CONV1_layer_call_and_return_conditional_losses_713073¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_CONV1_layer_call_fn_713082¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¾2»
?__inference_BN1_layer_call_and_return_conditional_losses_713100
?__inference_BN1_layer_call_and_return_conditional_losses_713118
?__inference_BN1_layer_call_and_return_conditional_losses_713136
?__inference_BN1_layer_call_and_return_conditional_losses_713154´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
$__inference_BN1_layer_call_fn_713167
$__inference_BN1_layer_call_fn_713180
$__inference_BN1_layer_call_fn_713193
$__inference_BN1_layer_call_fn_713206´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ô2ñ
J__inference_activation_128_layer_call_and_return_conditional_losses_713211¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_activation_128_layer_call_fn_713216¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_711114à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
2__inference_max_pooling2d_160_layer_call_fn_711120à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ï2ì
E__inference_CONV2_layer_call_and_return_all_conditional_losses_713233¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_CONV2_layer_call_fn_713242¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¾2»
?__inference_BN3_layer_call_and_return_conditional_losses_713260
?__inference_BN3_layer_call_and_return_conditional_losses_713278
?__inference_BN3_layer_call_and_return_conditional_losses_713296
?__inference_BN3_layer_call_and_return_conditional_losses_713314´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
$__inference_BN3_layer_call_fn_713327
$__inference_BN3_layer_call_fn_713340
$__inference_BN3_layer_call_fn_713353
$__inference_BN3_layer_call_fn_713366´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ô2ñ
J__inference_activation_129_layer_call_and_return_conditional_losses_713371¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_activation_129_layer_call_fn_713376¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¸2µ
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_711265à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
5__inference_average_pooling2d_76_layer_call_fn_711271à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ð2í
F__inference_flatten_76_layer_call_and_return_conditional_losses_713382¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_flatten_76_layer_call_fn_713387¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_dense_layer_layer_call_and_return_all_conditional_losses_713404¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_dense_layer_layer_call_fn_713413¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
È2Å
E__inference_dropout_9_layer_call_and_return_conditional_losses_713418
E__inference_dropout_9_layer_call_and_return_conditional_losses_713430´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
*__inference_dropout_9_layer_call_fn_713435
*__inference_dropout_9_layer_call_fn_713440´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¼2¹
?__inference_BN4_layer_call_and_return_conditional_losses_713460
?__inference_BN4_layer_call_and_return_conditional_losses_713494´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
$__inference_BN4_layer_call_fn_713507
$__inference_BN4_layer_call_fn_713520´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ô2ñ
J__inference_activation_130_layer_call_and_return_conditional_losses_713525¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_activation_130_layer_call_fn_713530¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_76_layer_call_and_return_conditional_losses_713541¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_dense_76_layer_call_fn_713550¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
__inference_loss_fn_0_713561
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
³2°
__inference_loss_fn_1_713572
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÌBÉ
$__inference_signature_wrapper_712388input_79"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Þ2Û
-__inference_CONV2_activity_regularizer_711133©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
ë2è
A__inference_CONV2_layer_call_and_return_conditional_losses_713588¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ä2á
3__inference_dense_layer_activity_regularizer_711284©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
ñ2î
G__inference_dense_layer_layer_call_and_return_conditional_losses_713604¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 Ú
?__inference_BN1_layer_call_and_return_conditional_losses_713100%&'(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ú
?__inference_BN1_layer_call_and_return_conditional_losses_713118%&'(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
?__inference_BN1_layer_call_and_return_conditional_losses_713136r%&'(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ>>
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ>>
 µ
?__inference_BN1_layer_call_and_return_conditional_losses_713154r%&'(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ>>
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ>>
 ²
$__inference_BN1_layer_call_fn_713167%&'(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
$__inference_BN1_layer_call_fn_713180%&'(M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿ>ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
$__inference_BN1_layer_call_fn_713193e%&'(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ>>
p 
ª " ÿÿÿÿÿÿÿÿÿ>>
$__inference_BN1_layer_call_fn_713206e%&'(;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ>>
p
ª " ÿÿÿÿÿÿÿÿÿ>>Ú
?__inference_BN3_layer_call_and_return_conditional_losses_713260<=>?M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ú
?__inference_BN3_layer_call_and_return_conditional_losses_713278<=>?M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
?__inference_BN3_layer_call_and_return_conditional_losses_713296r<=>?;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 µ
?__inference_BN3_layer_call_and_return_conditional_losses_713314r<=>?;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 ²
$__inference_BN3_layer_call_fn_713327<=>?M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
$__inference_BN3_layer_call_fn_713340<=>?M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
$__inference_BN3_layer_call_fn_713353e<=>?;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ
$__inference_BN3_layer_call_fn_713366e<=>?;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿ¥
?__inference_BN4_layer_call_and_return_conditional_losses_713460b^[]\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¥
?__inference_BN4_layer_call_and_return_conditional_losses_713494b]^[\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
$__inference_BN4_layer_call_fn_713507U^[]\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ}
$__inference_BN4_layer_call_fn_713520U]^[\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ±
A__inference_CONV1_layer_call_and_return_conditional_losses_713073l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ>>
 
&__inference_CONV1_layer_call_fn_713082_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª " ÿÿÿÿÿÿÿÿÿ>>W
-__inference_CONV2_activity_regularizer_711133&¢
¢
	
x
ª " Ã
E__inference_CONV2_layer_call_and_return_all_conditional_losses_713233z567¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª ";¢8
# 
0ÿÿÿÿÿÿÿÿÿ

	
1/0 ±
A__inference_CONV2_layer_call_and_return_conditional_losses_713588l567¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
&__inference_CONV2_layer_call_fn_713242_567¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿã
B__inference_Model2_layer_call_and_return_conditional_losses_712232%&'(56<=>?PQ^[]\ghA¢>
7¢4
*'
input_79ÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 å
B__inference_Model2_layer_call_and_return_conditional_losses_712323Ê%&'(56<=>?PQ]^[\ghA¢>
7¢4
*'
input_79ÿÿÿÿÿÿÿÿÿ@@
p

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 á
B__inference_Model2_layer_call_and_return_conditional_losses_712511%&'(56<=>?PQ^[]\gh?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 ã
B__inference_Model2_layer_call_and_return_conditional_losses_712797Ê%&'(56<=>?PQ]^[\gh?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "A¢>

0ÿÿÿÿÿÿÿÿÿ

	
1/0 
	
1/1 
'__inference_Model2_layer_call_fn_711708s%&'(56<=>?PQ^[]\ghA¢>
7¢4
*'
input_79ÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
'__inference_Model2_layer_call_fn_712143uÊ%&'(56<=>?PQ]^[\ghA¢>
7¢4
*'
input_79ÿÿÿÿÿÿÿÿÿ@@
p

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_Model2_layer_call_fn_712844q%&'(56<=>?PQ^[]\gh?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_Model2_layer_call_fn_712893sÊ%&'(56<=>?PQ]^[\gh?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "ÿÿÿÿÿÿÿÿÿ¬
!__inference__wrapped_model_710640%&'(56<=>?PQ^[]\gh9¢6
/¢,
*'
input_79ÿÿÿÿÿÿÿÿÿ@@
ª "3ª0
.
dense_76"
dense_76ÿÿÿÿÿÿÿÿÿ¶
J__inference_activation_128_layer_call_and_return_conditional_losses_713211h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ>>
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ>>
 
/__inference_activation_128_layer_call_fn_713216[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ>>
ª " ÿÿÿÿÿÿÿÿÿ>>¶
J__inference_activation_129_layer_call_and_return_conditional_losses_713371h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
/__inference_activation_129_layer_call_fn_713376[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª " ÿÿÿÿÿÿÿÿÿ¦
J__inference_activation_130_layer_call_and_return_conditional_losses_713525X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
/__inference_activation_130_layer_call_fn_713530K/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿó
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_711265R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ë
5__inference_average_pooling2d_76_layer_call_fn_711271R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_76_layer_call_and_return_conditional_losses_713541\gh/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_76_layer_call_fn_713550Ogh/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ]
3__inference_dense_layer_activity_regularizer_711284&¢
¢
	
x
ª " º
K__inference_dense_layer_layer_call_and_return_all_conditional_losses_713404kPQ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ

	
1/0 ¨
G__inference_dense_layer_layer_call_and_return_conditional_losses_713604]PQ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dense_layer_layer_call_fn_713413PPQ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dropout_9_layer_call_and_return_conditional_losses_713418\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¥
E__inference_dropout_9_layer_call_and_return_conditional_losses_713430\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dropout_9_layer_call_fn_713435O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ}
*__inference_dropout_9_layer_call_fn_713440O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ«
F__inference_flatten_76_layer_call_and_return_conditional_losses_713382a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_flatten_76_layer_call_fn_713387T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ;
__inference_loss_fn_0_7135615¢

¢ 
ª " ;
__inference_loss_fn_1_713572P¢

¢ 
ª " ð
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_711114R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_max_pooling2d_160_layer_call_fn_711120R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿË
I__inference_sequential_68_layer_call_and_return_conditional_losses_710832~M¢J
C¢@
63
random_flip_68_inputÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Ð
I__inference_sequential_68_layer_call_and_return_conditional_losses_710982ÊM¢J
C¢@
63
random_flip_68_inputÿÿÿÿÿÿÿÿÿ@@
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 ½
I__inference_sequential_68_layer_call_and_return_conditional_losses_712901p?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Á
I__inference_sequential_68_layer_call_and_return_conditional_losses_713051tÊ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 £
.__inference_sequential_68_layer_call_fn_710655qM¢J
C¢@
63
random_flip_68_inputÿÿÿÿÿÿÿÿÿ@@
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@@§
.__inference_sequential_68_layer_call_fn_710824uÊM¢J
C¢@
63
random_flip_68_inputÿÿÿÿÿÿÿÿÿ@@
p

 
ª " ÿÿÿÿÿÿÿÿÿ@@
.__inference_sequential_68_layer_call_fn_713056c?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@@
.__inference_sequential_68_layer_call_fn_713063gÊ?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ@@
p

 
ª " ÿÿÿÿÿÿÿÿÿ@@»
$__inference_signature_wrapper_712388%&'(56<=>?PQ^[]\ghE¢B
¢ 
;ª8
6
input_79*'
input_79ÿÿÿÿÿÿÿÿÿ@@"3ª0
.
dense_76"
dense_76ÿÿÿÿÿÿÿÿÿ