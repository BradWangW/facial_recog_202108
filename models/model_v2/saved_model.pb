┤╠!
иЄ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
╝
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
Џ
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
Щ
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
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
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
ѓ
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
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
list(type)(0ѕ
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
list(type)(0ѕ
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
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
ї
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ит
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
Ђ
dense_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*#
shared_namedense_layer/kernel
z
&dense_layer/kernel/Read/ReadVariableOpReadVariableOpdense_layer/kernel*
_output_shapes
:	љ*
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
і
Adam/CONV1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV1/kernel/m
Ѓ
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
і
Adam/CONV2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV2/kernel/m
Ѓ
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
Ј
Adam/dense_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ**
shared_nameAdam/dense_layer/kernel/m
ѕ
-Adam/dense_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_layer/kernel/m*
_output_shapes
:	љ*
dtype0
є
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
ѕ
Adam/dense_76/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_76/kernel/m
Ђ
*Adam/dense_76/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/m*
_output_shapes

:*
dtype0
ђ
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
і
Adam/CONV1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV1/kernel/v
Ѓ
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
і
Adam/CONV2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/CONV2/kernel/v
Ѓ
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
Ј
Adam/dense_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ**
shared_nameAdam/dense_layer/kernel/v
ѕ
-Adam/dense_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_layer/kernel/v*
_output_shapes
:	љ*
dtype0
є
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
ѕ
Adam/dense_76/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_76/kernel/v
Ђ
*Adam/dense_76/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_76/kernel/v*
_output_shapes

:*
dtype0
ђ
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
Ѕl
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*─k
value║kBиk B░k
б
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

signatures
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
%
#_self_saveable_object_factories
ъ
layer-0
layer-1
layer-2
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
 	keras_api
Ї

!kernel
"bias
##_self_saveable_object_factories
$trainable_variables
%regularization_losses
&	variables
'	keras_api
╝
(axis
	)gamma
*beta
+moving_mean
,moving_variance
#-_self_saveable_object_factories
.trainable_variables
/regularization_losses
0	variables
1	keras_api
w
#2_self_saveable_object_factories
3trainable_variables
4regularization_losses
5	variables
6	keras_api
w
#7_self_saveable_object_factories
8trainable_variables
9regularization_losses
:	variables
;	keras_api
Ї

<kernel
=bias
#>_self_saveable_object_factories
?trainable_variables
@regularization_losses
A	variables
B	keras_api
╝
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
w
#M_self_saveable_object_factories
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
w
#R_self_saveable_object_factories
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
w
#W_self_saveable_object_factories
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
Ї

\kernel
]bias
#^_self_saveable_object_factories
_trainable_variables
`regularization_losses
a	variables
b	keras_api
w
#c_self_saveable_object_factories
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
╝
haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
#m_self_saveable_object_factories
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
w
#r_self_saveable_object_factories
strainable_variables
tregularization_losses
u	variables
v	keras_api
Ї

wkernel
xbias
#y_self_saveable_object_factories
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
█
~iter

beta_1
ђbeta_2

Ђdecay
ѓlearning_rate!mЖ"mв)mВ*mь<mЬ=m№Dm­Emы\mЫ]mзimЗjmшwmШxmэ!vЭ"vщ)vЩ*vч<vЧ=v§Dv■Ev \vђ]vЂivѓjvЃwvёxvЁ
 
 
f
!0
"1
)2
*3
<4
=5
D6
E7
\8
]9
i10
j11
w12
x13
 
ќ
!0
"1
)2
*3
+4
,5
<6
=7
D8
E9
F10
G11
\12
]13
i14
j15
k16
l17
w18
x19
▓
Ѓmetrics
trainable_variables
regularization_losses
ёlayers
Ёnon_trainable_variables
	variables
єlayer_metrics
 Єlayer_regularization_losses
 
A
	ѕ_rng
$Ѕ_self_saveable_object_factories
і	keras_api
A
	І_rng
$ї_self_saveable_object_factories
Ї	keras_api
6
$ј_self_saveable_object_factories
Ј	keras_api
 
 
 
 
▓
љmetrics
trainable_variables
regularization_losses
Љlayers
њnon_trainable_variables
	variables
Њlayer_metrics
 ћlayer_regularization_losses
XV
VARIABLE_VALUECONV1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CONV1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1
 

!0
"1
▓
Ћmetrics
$trainable_variables
%regularization_losses
ќlayers
Ќnon_trainable_variables
&	variables
ўlayer_metrics
 Ўlayer_regularization_losses
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
)0
*1
 

)0
*1
+2
,3
▓
џmetrics
.trainable_variables
/regularization_losses
Џlayers
юnon_trainable_variables
0	variables
Юlayer_metrics
 ъlayer_regularization_losses
 
 
 
 
▓
Ъmetrics
3trainable_variables
4regularization_losses
аlayers
Аnon_trainable_variables
5	variables
бlayer_metrics
 Бlayer_regularization_losses
 
 
 
 
▓
цmetrics
8trainable_variables
9regularization_losses
Цlayers
дnon_trainable_variables
:	variables
Дlayer_metrics
 еlayer_regularization_losses
XV
VARIABLE_VALUECONV2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
CONV2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1
 

<0
=1
▓
Еmetrics
?trainable_variables
@regularization_losses
фlayers
Фnon_trainable_variables
A	variables
гlayer_metrics
 Гlayer_regularization_losses
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
D0
E1
 

D0
E1
F2
G3
▓
«metrics
Itrainable_variables
Jregularization_losses
»layers
░non_trainable_variables
K	variables
▒layer_metrics
 ▓layer_regularization_losses
 
 
 
 
▓
│metrics
Ntrainable_variables
Oregularization_losses
┤layers
хnon_trainable_variables
P	variables
Хlayer_metrics
 иlayer_regularization_losses
 
 
 
 
▓
Иmetrics
Strainable_variables
Tregularization_losses
╣layers
║non_trainable_variables
U	variables
╗layer_metrics
 ╝layer_regularization_losses
 
 
 
 
▓
йmetrics
Xtrainable_variables
Yregularization_losses
Йlayers
┐non_trainable_variables
Z	variables
└layer_metrics
 ┴layer_regularization_losses
^\
VARIABLE_VALUEdense_layer/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_layer/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1
 

\0
]1
▓
┬metrics
_trainable_variables
`regularization_losses
├layers
─non_trainable_variables
a	variables
┼layer_metrics
 кlayer_regularization_losses
 
 
 
 
▓
Кmetrics
dtrainable_variables
eregularization_losses
╚layers
╔non_trainable_variables
f	variables
╩layer_metrics
 ╦layer_regularization_losses
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
i0
j1
 

i0
j1
k2
l3
▓
╠metrics
ntrainable_variables
oregularization_losses
═layers
╬non_trainable_variables
p	variables
¤layer_metrics
 лlayer_regularization_losses
 
 
 
 
▓
Лmetrics
strainable_variables
tregularization_losses
мlayers
Мnon_trainable_variables
u	variables
нlayer_metrics
 Нlayer_regularization_losses
[Y
VARIABLE_VALUEdense_76/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_76/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

w0
x1
 

w0
x1
▓
оmetrics
ztrainable_variables
{regularization_losses
Оlayers
пnon_trainable_variables
|	variables
┘layer_metrics
 ┌layer_regularization_losses
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

█0
▄1
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
*
+0
,1
F2
G3
k4
l5
 
 
7
П
_state_var
$я_self_saveable_object_factories
 
 
7
▀
_state_var
$Я_self_saveable_object_factories
 
 
 
 
 

0
1
2
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
+0
,1
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
F0
G1
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
k0
l1
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
8

рtotal

Рcount
с	variables
С	keras_api
I

тtotal

Тcount
у
_fn_kwargs
У	variables
ж	keras_api
XV
VARIABLE_VALUEVariable:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
ZX
VARIABLE_VALUE
Variable_1:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

р0
Р1

с	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

т0
Т1

У	variables
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
Ђ
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
Ђ
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
І
serving_default_input_79Placeholder*/
_output_shapes
:         @@*
dtype0*$
shape:         @@
є
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
:         *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_107651
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╬
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
GPU 2J 8ѓ *(
f#R!
__inference__traced_save_109077
Г

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
GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_109264ЪУ
ўq
ь
__inference__traced_save_109077
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

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameП 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*№
valueтBР<B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЃ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Ї
valueЃBђ<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesі
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop$savev2_bn1_gamma_read_readvariableop#savev2_bn1_beta_read_readvariableop*savev2_bn1_moving_mean_read_readvariableop.savev2_bn1_moving_variance_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop$savev2_bn3_gamma_read_readvariableop#savev2_bn3_beta_read_readvariableop*savev2_bn3_moving_mean_read_readvariableop.savev2_bn3_moving_variance_read_readvariableop-savev2_dense_layer_kernel_read_readvariableop+savev2_dense_layer_bias_read_readvariableop$savev2_bn4_gamma_read_readvariableop#savev2_bn4_beta_read_readvariableop*savev2_bn4_moving_mean_read_readvariableop.savev2_bn4_moving_variance_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop+savev2_adam_bn1_gamma_m_read_readvariableop*savev2_adam_bn1_beta_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop+savev2_adam_bn3_gamma_m_read_readvariableop*savev2_adam_bn3_beta_m_read_readvariableop4savev2_adam_dense_layer_kernel_m_read_readvariableop2savev2_adam_dense_layer_bias_m_read_readvariableop+savev2_adam_bn4_gamma_m_read_readvariableop*savev2_adam_bn4_beta_m_read_readvariableop1savev2_adam_dense_76_kernel_m_read_readvariableop/savev2_adam_dense_76_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop+savev2_adam_bn1_gamma_v_read_readvariableop*savev2_adam_bn1_beta_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop+savev2_adam_bn3_gamma_v_read_readvariableop*savev2_adam_bn3_beta_v_read_readvariableop4savev2_adam_dense_layer_kernel_v_read_readvariableop2savev2_adam_dense_layer_bias_v_read_readvariableop+savev2_adam_bn4_gamma_v_read_readvariableop*savev2_adam_bn4_beta_v_read_readvariableop1savev2_adam_dense_76_kernel_v_read_readvariableop/savev2_adam_dense_76_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*║
_input_shapesе
Ц: :::>:>:>:>:::::::	љ:::::::: : : : : ::: : : : :::>:>:::::	љ::::::::>:>:::::	љ:::::: 2(
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
:	љ: 
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
:	љ: )
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
:	љ: 7
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
╚
і
?__inference_BN1_layer_call_and_return_conditional_losses_108451

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1р
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         >>: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
Х
і
?__inference_BN3_layer_call_and_return_conditional_losses_106815

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1¤
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Н
ў
'__inference_Model2_layer_call_fn_107406
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

unknown_12:	љ

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identityѕбStatefulPartitionedCallЗ
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
:         : : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_1073102
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         @@: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         @@
"
_user_specified_name
input_79
Ч
«
?__inference_BN1_layer_call_and_return_conditional_losses_107149

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         >>: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
У
b
F__inference_flatten_76_layer_call_and_return_conditional_losses_106839

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ
  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         љ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ё{
э
B__inference_Model2_layer_call_and_return_conditional_losses_107310

inputs"
sequential_68_107222:	&
conv1_107225:
conv1_107227:

bn1_107230:>

bn1_107232:>

bn1_107234:>

bn1_107236:>&
conv2_107241:
conv2_107243:

bn3_107254:

bn3_107256:

bn3_107258:

bn3_107260:%
dense_layer_107266:	љ 
dense_layer_107268:

bn4_107280:

bn4_107282:

bn4_107284:

bn4_107286:!
dense_76_107290:
dense_76_107292:
identity

identity_1

identity_2ѕбBN1/StatefulPartitionedCallбBN3/StatefulPartitionedCallбBN4/StatefulPartitionedCallбCONV1/StatefulPartitionedCallбCONV2/StatefulPartitionedCallб dense_76/StatefulPartitionedCallб#dense_layer/StatefulPartitionedCallб!dropout_9/StatefulPartitionedCallб(kernel/Regularizer/Square/ReadVariableOpб*kernel/Regularizer_1/Square/ReadVariableOpб%sequential_68/StatefulPartitionedCallџ
%sequential_68/StatefulPartitionedCallStatefulPartitionedCallinputssequential_68_107222*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1060752'
%sequential_68/StatefulPartitionedCallх
CONV1/StatefulPartitionedCallStatefulPartitionedCall.sequential_68/StatefulPartitionedCall:output:0conv1_107225conv1_107227*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_1067272
CONV1/StatefulPartitionedCallй
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_107230
bn1_107232
bn1_107234
bn1_107236*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1071492
BN1/StatefulPartitionedCallї
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_1067652 
activation_128/PartitionedCallў
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_1063772#
!max_pooling2d_160/PartitionedCall▒
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_107241conv2_107243*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_1067842
CONV2/StatefulPartitionedCallЬ
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
GPU 2J 8ѓ *6
f1R/
-__inference_CONV2_activity_regularizer_1063962+
)CONV2/ActivityRegularizer/PartitionedCallў
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shapeе
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stackг
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1г
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2■
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceф
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast╩
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truedivй
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_107254
bn3_107256
bn3_107258
bn3_107260*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1070772
BN3/StatefulPartitionedCallї
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_1068302 
activation_129/PartitionedCallА
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_1065282&
$average_pooling2d_76/PartitionedCallѓ
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_1068392
flatten_76/PartitionedCall└
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_107266dense_layer_107268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_1068572%
#dense_layer/StatefulPartitionedCallє
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
GPU 2J 8ѓ *<
f7R5
3__inference_dense_layer_activity_regularizer_10654721
/dense_layer/ActivityRegularizer/PartitionedCallф
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape┤
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stackИ
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1И
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2б
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice╝
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastР
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truedivЋ
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1070072#
!dropout_9/StatefulPartitionedCall╣
BN4/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0
bn4_107280
bn4_107282
bn4_107284
bn4_107286*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_1066312
BN4/StatefulPartitionedCallё
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_1068922 
activation_130/PartitionedCallх
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_107290dense_76_107292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_1069052"
 dense_76/StatefulPartitionedCallЕ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_107241*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulг
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_layer_107266*
_output_shapes
:	љ*
dtype02,
*kernel/Regularizer_1/Square/ReadVariableOpб
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer_1/SquareЅ
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer_1/Constб
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/Sum}
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer_1/mul/xц
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/mulё
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp&^sequential_68/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identityз

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1щ

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         @@: : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2N
%sequential_68/StatefulPartitionedCall%sequential_68/StatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
█
┐
$__inference_BN4_layer_call_fn_108729

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_1066312
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ѓ
f
J__inference_activation_128_layer_call_and_return_conditional_losses_108479

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         >>2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >>:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
┼
┐
$__inference_BN1_layer_call_fn_108358

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identityѕбStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+         >                  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1062672
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+         >                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+         >                  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+         >                  
 
_user_specified_nameinputs
і{
щ
B__inference_Model2_layer_call_and_return_conditional_losses_107586
input_79"
sequential_68_107498:	&
conv1_107501:
conv1_107503:

bn1_107506:>

bn1_107508:>

bn1_107510:>

bn1_107512:>&
conv2_107517:
conv2_107519:

bn3_107530:

bn3_107532:

bn3_107534:

bn3_107536:%
dense_layer_107542:	љ 
dense_layer_107544:

bn4_107556:

bn4_107558:

bn4_107560:

bn4_107562:!
dense_76_107566:
dense_76_107568:
identity

identity_1

identity_2ѕбBN1/StatefulPartitionedCallбBN3/StatefulPartitionedCallбBN4/StatefulPartitionedCallбCONV1/StatefulPartitionedCallбCONV2/StatefulPartitionedCallб dense_76/StatefulPartitionedCallб#dense_layer/StatefulPartitionedCallб!dropout_9/StatefulPartitionedCallб(kernel/Regularizer/Square/ReadVariableOpб*kernel/Regularizer_1/Square/ReadVariableOpб%sequential_68/StatefulPartitionedCallю
%sequential_68/StatefulPartitionedCallStatefulPartitionedCallinput_79sequential_68_107498*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1060752'
%sequential_68/StatefulPartitionedCallх
CONV1/StatefulPartitionedCallStatefulPartitionedCall.sequential_68/StatefulPartitionedCall:output:0conv1_107501conv1_107503*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_1067272
CONV1/StatefulPartitionedCallй
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_107506
bn1_107508
bn1_107510
bn1_107512*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1071492
BN1/StatefulPartitionedCallї
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_1067652 
activation_128/PartitionedCallў
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_1063772#
!max_pooling2d_160/PartitionedCall▒
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_107517conv2_107519*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_1067842
CONV2/StatefulPartitionedCallЬ
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
GPU 2J 8ѓ *6
f1R/
-__inference_CONV2_activity_regularizer_1063962+
)CONV2/ActivityRegularizer/PartitionedCallў
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shapeе
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stackг
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1г
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2■
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceф
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast╩
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truedivй
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_107530
bn3_107532
bn3_107534
bn3_107536*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1070772
BN3/StatefulPartitionedCallї
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_1068302 
activation_129/PartitionedCallА
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_1065282&
$average_pooling2d_76/PartitionedCallѓ
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_1068392
flatten_76/PartitionedCall└
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_107542dense_layer_107544*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_1068572%
#dense_layer/StatefulPartitionedCallє
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
GPU 2J 8ѓ *<
f7R5
3__inference_dense_layer_activity_regularizer_10654721
/dense_layer/ActivityRegularizer/PartitionedCallф
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape┤
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stackИ
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1И
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2б
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice╝
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastР
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truedivЋ
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1070072#
!dropout_9/StatefulPartitionedCall╣
BN4/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0
bn4_107556
bn4_107558
bn4_107560
bn4_107562*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_1066312
BN4/StatefulPartitionedCallё
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_1068922 
activation_130/PartitionedCallх
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_107566dense_76_107568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_1069052"
 dense_76/StatefulPartitionedCallЕ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_107517*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulг
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_layer_107542*
_output_shapes
:	љ*
dtype02,
*kernel/Regularizer_1/Square/ReadVariableOpб
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer_1/SquareЅ
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer_1/Constб
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/Sum}
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer_1/mul/xц
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/mulё
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp&^sequential_68/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identityз

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1щ

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp&^sequential_68/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         @@: : : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2N
%sequential_68/StatefulPartitionedCall%sequential_68/StatefulPartitionedCall:Y U
/
_output_shapes
:         @@
"
_user_specified_name
input_79
љ
X
.__inference_sequential_68_layer_call_fn_105918
random_flip_68_input
identityП
PartitionedCallPartitionedCallrandom_flip_68_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1059152
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:e a
/
_output_shapes
:         @@
.
_user_specified_namerandom_flip_68_input
Ы
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_106876

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
§
┐
$__inference_BN1_layer_call_fn_108384

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identityѕбStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1067502
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         >>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
Ч
«
?__inference_BN1_layer_call_and_return_conditional_losses_108469

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         >>: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
Ы
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_108691

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Р
f
J__inference_activation_130_layer_call_and_return_conditional_losses_108793

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
─
«
?__inference_BN1_layer_call_and_return_conditional_losses_106311

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ђ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+         >                  :>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1љ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+         >                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+         >                  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+         >                  
 
_user_specified_nameinputs
«

Щ
A__inference_CONV1_layer_call_and_return_conditional_losses_108345

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ч
┐
$__inference_BN1_layer_call_fn_108397

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1071492
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         >>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
▓
«
?__inference_BN3_layer_call_and_return_conditional_losses_106462

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
data_formatNCHW*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1љ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
╚
K
/__inference_activation_130_layer_call_fn_108788

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_1068922
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
П
┐
$__inference_BN4_layer_call_fn_108716

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_1065712
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
└
ї
.__inference_sequential_68_layer_call_fn_106087
random_flip_68_input
unknown:	
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_68_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1060752
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @@: 22
StatefulPartitionedCallStatefulPartitionedCall:e a
/
_output_shapes
:         @@
.
_user_specified_namerandom_flip_68_input
ѓ
f
J__inference_activation_129_layer_call_and_return_conditional_losses_108639

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Џ
ќ
)__inference_dense_76_layer_call_fn_108802

inputs
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_1069052
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
■Ѕ
У
I__inference_sequential_68_layer_call_and_return_conditional_losses_106075

inputsI
;random_rotation_68_stateful_uniform_rngreadandskip_resource:	
identityѕб2random_rotation_68/stateful_uniform/RngReadAndSkipП
8random_flip_68/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:         @@2:
8random_flip_68/random_flip_left_right/control_dependency╦
+random_flip_68/random_flip_left_right/ShapeShapeArandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_68/random_flip_left_right/Shape└
9random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_68/random_flip_left_right/strided_slice/stack─
;random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_1─
;random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_2к
3random_flip_68/random_flip_left_right/strided_sliceStridedSlice4random_flip_68/random_flip_left_right/Shape:output:0Brandom_flip_68/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_68/random_flip_left_right/strided_sliceВ
:random_flip_68/random_flip_left_right/random_uniform/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_68/random_flip_left_right/random_uniform/shape╣
8random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_68/random_flip_left_right/random_uniform/min╣
8random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8random_flip_68/random_flip_left_right/random_uniform/maxЎ
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:         *
dtype02D
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniform╣
8random_flip_68/random_flip_left_right/random_uniform/MulMulKrandom_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:         2:
8random_flip_68/random_flip_left_right/random_uniform/Mul░
5random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/1░
5random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/2░
5random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/3ъ
3random_flip_68/random_flip_left_right/Reshape/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0>random_flip_68/random_flip_left_right/Reshape/shape/1:output:0>random_flip_68/random_flip_left_right/Reshape/shape/2:output:0>random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_68/random_flip_left_right/Reshape/shapeЪ
-random_flip_68/random_flip_left_right/ReshapeReshape<random_flip_68/random_flip_left_right/random_uniform/Mul:z:0<random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2/
-random_flip_68/random_flip_left_right/ReshapeН
+random_flip_68/random_flip_left_right/RoundRound6random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2-
+random_flip_68/random_flip_left_right/RoundХ
4random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_68/random_flip_left_right/ReverseV2/axisФ
/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_68/random_flip_left_right/control_dependency:output:0=random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:         @@21
/random_flip_68/random_flip_left_right/ReverseV2ѓ
)random_flip_68/random_flip_left_right/mulMul/random_flip_68/random_flip_left_right/Round:y:08random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:         @@2+
)random_flip_68/random_flip_left_right/mulЪ
+random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2-
+random_flip_68/random_flip_left_right/sub/x■
)random_flip_68/random_flip_left_right/subSub4random_flip_68/random_flip_left_right/sub/x:output:0/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         2+
)random_flip_68/random_flip_left_right/subЇ
+random_flip_68/random_flip_left_right/mul_1Mul-random_flip_68/random_flip_left_right/sub:z:0Arandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:         @@2-
+random_flip_68/random_flip_left_right/mul_1щ
)random_flip_68/random_flip_left_right/addAddV2-random_flip_68/random_flip_left_right/mul:z:0/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:         @@2+
)random_flip_68/random_flip_left_right/addЉ
random_rotation_68/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_68/Shapeџ
&random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_68/strided_slice/stackъ
(random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_1ъ
(random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_2н
 random_rotation_68/strided_sliceStridedSlice!random_rotation_68/Shape:output:0/random_rotation_68/strided_slice/stack:output:01random_rotation_68/strided_slice/stack_1:output:01random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_68/strided_sliceъ
(random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_1/stackб
*random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_1б
*random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_2я
"random_rotation_68/strided_slice_1StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_1/stack:output:03random_rotation_68/strided_slice_1/stack_1:output:03random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_1Ќ
random_rotation_68/CastCast+random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Castъ
(random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_2/stackб
*random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_1б
*random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_2я
"random_rotation_68/strided_slice_2StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_2/stack:output:03random_rotation_68/strided_slice_2/stack_1:output:03random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_2Џ
random_rotation_68/Cast_1Cast+random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast_1и
)random_rotation_68/stateful_uniform/shapePack)random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_68/stateful_uniform/shapeЌ
'random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐2)
'random_rotation_68/stateful_uniform/minЌ
'random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?2)
'random_rotation_68/stateful_uniform/maxа
)random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_rotation_68/stateful_uniform/Constт
(random_rotation_68/stateful_uniform/ProdProd2random_rotation_68/stateful_uniform/shape:output:02random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/stateful_uniform/Prodџ
*random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_rotation_68/stateful_uniform/Cast/x├
*random_rotation_68/stateful_uniform/Cast_1Cast1random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_rotation_68/stateful_uniform/Cast_1И
2random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_68_stateful_uniform_rngreadandskip_resource3random_rotation_68/stateful_uniform/Cast/x:output:0.random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_rotation_68/stateful_uniform/RngReadAndSkip╝
7random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_rotation_68/stateful_uniform/strided_slice/stack└
9random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_1└
9random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_2└
1random_rotation_68/stateful_uniform/strided_sliceStridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0@random_rotation_68/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_rotation_68/stateful_uniform/strided_sliceм
+random_rotation_68/stateful_uniform/BitcastBitcast:random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_rotation_68/stateful_uniform/Bitcast└
9random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice_1/stack─
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1─
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2И
3random_rotation_68/stateful_uniform/strided_slice_1StridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_rotation_68/stateful_uniform/strided_slice_1п
-random_rotation_68/stateful_uniform/Bitcast_1Bitcast<random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_rotation_68/stateful_uniform/Bitcast_1к
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algф
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_68/stateful_uniform/shape:output:06random_rotation_68/stateful_uniform/Bitcast_1:output:04random_rotation_68/stateful_uniform/Bitcast:output:0Irandom_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2>
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2я
'random_rotation_68/stateful_uniform/subSub0random_rotation_68/stateful_uniform/max:output:00random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_68/stateful_uniform/subч
'random_rotation_68/stateful_uniform/mulMulErandom_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_68/stateful_uniform/mulя
#random_rotation_68/stateful_uniformAdd+random_rotation_68/stateful_uniform/mul:z:00random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         2%
#random_rotation_68/stateful_uniformЎ
(random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2*
(random_rotation_68/rotation_matrix/sub/y╩
&random_rotation_68/rotation_matrix/subSubrandom_rotation_68/Cast_1:y:01random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_68/rotation_matrix/sub«
&random_rotation_68/rotation_matrix/CosCos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/CosЮ
*random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_1/yл
(random_rotation_68/rotation_matrix/sub_1Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_1▀
&random_rotation_68/rotation_matrix/mulMul*random_rotation_68/rotation_matrix/Cos:y:0,random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/mul«
&random_rotation_68/rotation_matrix/SinSin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/SinЮ
*random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_2/y╬
(random_rotation_68/rotation_matrix/sub_2Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_2с
(random_rotation_68/rotation_matrix/mul_1Mul*random_rotation_68/rotation_matrix/Sin:y:0,random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_1с
(random_rotation_68/rotation_matrix/sub_3Sub*random_rotation_68/rotation_matrix/mul:z:0,random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_3с
(random_rotation_68/rotation_matrix/sub_4Sub*random_rotation_68/rotation_matrix/sub:z:0,random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_4А
,random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_68/rotation_matrix/truediv/yШ
*random_rotation_68/rotation_matrix/truedivRealDiv,random_rotation_68/rotation_matrix/sub_4:z:05random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2,
*random_rotation_68/rotation_matrix/truedivЮ
*random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_5/y╬
(random_rotation_68/rotation_matrix/sub_5Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_5▓
(random_rotation_68/rotation_matrix/Sin_1Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_1Ю
*random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_6/yл
(random_rotation_68/rotation_matrix/sub_6Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_6т
(random_rotation_68/rotation_matrix/mul_2Mul,random_rotation_68/rotation_matrix/Sin_1:y:0,random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_2▓
(random_rotation_68/rotation_matrix/Cos_1Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_1Ю
*random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_7/y╬
(random_rotation_68/rotation_matrix/sub_7Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_7т
(random_rotation_68/rotation_matrix/mul_3Mul,random_rotation_68/rotation_matrix/Cos_1:y:0,random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_3с
&random_rotation_68/rotation_matrix/addAddV2,random_rotation_68/rotation_matrix/mul_2:z:0,random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/addс
(random_rotation_68/rotation_matrix/sub_8Sub,random_rotation_68/rotation_matrix/sub_5:z:0*random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_8Ц
.random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_68/rotation_matrix/truediv_1/yЧ
,random_rotation_68/rotation_matrix/truediv_1RealDiv,random_rotation_68/rotation_matrix/sub_8:z:07random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2.
,random_rotation_68/rotation_matrix/truediv_1Ф
(random_rotation_68/rotation_matrix/ShapeShape'random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_68/rotation_matrix/Shape║
6random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_68/rotation_matrix/strided_slice/stackЙ
8random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_1Й
8random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_2┤
0random_rotation_68/rotation_matrix/strided_sliceStridedSlice1random_rotation_68/rotation_matrix/Shape:output:0?random_rotation_68/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_68/rotation_matrix/strided_slice▓
(random_rotation_68/rotation_matrix/Cos_2Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_2┼
8random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_1/stack╔
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_1StridedSlice,random_rotation_68/rotation_matrix/Cos_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_1▓
(random_rotation_68/rotation_matrix/Sin_2Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_2┼
8random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_2/stack╔
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_2StridedSlice,random_rotation_68/rotation_matrix/Sin_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_2к
&random_rotation_68/rotation_matrix/NegNeg;random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/Neg┼
8random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_3/stack╔
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2в
2random_rotation_68/rotation_matrix/strided_slice_3StridedSlice.random_rotation_68/rotation_matrix/truediv:z:0Arandom_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_3▓
(random_rotation_68/rotation_matrix/Sin_3Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_3┼
8random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_4/stack╔
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_4StridedSlice,random_rotation_68/rotation_matrix/Sin_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_4▓
(random_rotation_68/rotation_matrix/Cos_3Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_3┼
8random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_5/stack╔
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_5StridedSlice,random_rotation_68/rotation_matrix/Cos_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_5┼
8random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_6/stack╔
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2ь
2random_rotation_68/rotation_matrix/strided_slice_6StridedSlice0random_rotation_68/rotation_matrix/truediv_1:z:0Arandom_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_6б
.random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/zeros/mul/yЭ
,random_rotation_68/rotation_matrix/zeros/mulMul9random_rotation_68/rotation_matrix/strided_slice:output:07random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_68/rotation_matrix/zeros/mulЦ
/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У21
/random_rotation_68/rotation_matrix/zeros/Less/yз
-random_rotation_68/rotation_matrix/zeros/LessLess0random_rotation_68/rotation_matrix/zeros/mul:z:08random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_68/rotation_matrix/zeros/Lessе
1random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_68/rotation_matrix/zeros/packed/1Ј
/random_rotation_68/rotation_matrix/zeros/packedPack9random_rotation_68/rotation_matrix/strided_slice:output:0:random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_68/rotation_matrix/zeros/packedЦ
.random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_68/rotation_matrix/zeros/ConstЂ
(random_rotation_68/rotation_matrix/zerosFill8random_rotation_68/rotation_matrix/zeros/packed:output:07random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/zerosб
.random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/concat/axisТ
)random_rotation_68/rotation_matrix/concatConcatV2;random_rotation_68/rotation_matrix/strided_slice_1:output:0*random_rotation_68/rotation_matrix/Neg:y:0;random_rotation_68/rotation_matrix/strided_slice_3:output:0;random_rotation_68/rotation_matrix/strided_slice_4:output:0;random_rotation_68/rotation_matrix/strided_slice_5:output:0;random_rotation_68/rotation_matrix/strided_slice_6:output:01random_rotation_68/rotation_matrix/zeros:output:07random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2+
)random_rotation_68/rotation_matrix/concatЦ
"random_rotation_68/transform/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_rotation_68/transform/Shape«
0random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_68/transform/strided_slice/stack▓
2random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_1▓
2random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_2Ч
*random_rotation_68/transform/strided_sliceStridedSlice+random_rotation_68/transform/Shape:output:09random_rotation_68/transform/strided_slice/stack:output:0;random_rotation_68/transform/strided_slice/stack_1:output:0;random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_68/transform/strided_sliceЌ
'random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_68/transform/fill_value═
7random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_68/random_flip_left_right/add:z:02random_rotation_68/rotation_matrix/concat:output:03random_rotation_68/transform/strided_slice:output:00random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:         @@*
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
 *Ђђђ;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xЛ
rescaling_51/mulMulLrandom_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/mulЮ
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/addЦ
IdentityIdentityrescaling_51/add:z:03^random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @@: 2h
2random_rotation_68/stateful_uniform/RngReadAndSkip2random_rotation_68/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_106377

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_107007

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
У
K
/__inference_activation_129_layer_call_fn_108634

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_1068302
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ё
Ц
A__inference_CONV2_layer_call_and_return_conditional_losses_108851

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpб(kernel/Regularizer/Square/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd╗
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul╚
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
╚
і
?__inference_BN1_layer_call_and_return_conditional_losses_106750

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1р
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         >>: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
┼
┐
$__inference_BN3_layer_call_fn_108518

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1064182
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
щЏ
»
!__inference__wrapped_model_105903
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
1model2_dense_layer_matmul_readvariableop_resource:	љ@
2model2_dense_layer_biasadd_readvariableop_resource::
,model2_bn4_batchnorm_readvariableop_resource:>
0model2_bn4_batchnorm_mul_readvariableop_resource:<
.model2_bn4_batchnorm_readvariableop_1_resource:<
.model2_bn4_batchnorm_readvariableop_2_resource:@
.model2_dense_76_matmul_readvariableop_resource:=
/model2_dense_76_biasadd_readvariableop_resource:
identityѕб*Model2/BN1/FusedBatchNormV3/ReadVariableOpб,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1бModel2/BN1/ReadVariableOpбModel2/BN1/ReadVariableOp_1б*Model2/BN3/FusedBatchNormV3/ReadVariableOpб,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1бModel2/BN3/ReadVariableOpбModel2/BN3/ReadVariableOp_1б#Model2/BN4/batchnorm/ReadVariableOpб%Model2/BN4/batchnorm/ReadVariableOp_1б%Model2/BN4/batchnorm/ReadVariableOp_2б'Model2/BN4/batchnorm/mul/ReadVariableOpб#Model2/CONV1/BiasAdd/ReadVariableOpб"Model2/CONV1/Conv2D/ReadVariableOpб#Model2/CONV2/BiasAdd/ReadVariableOpб"Model2/CONV2/Conv2D/ReadVariableOpб&Model2/dense_76/BiasAdd/ReadVariableOpб%Model2/dense_76/MatMul/ReadVariableOpб)Model2/dense_layer/BiasAdd/ReadVariableOpб(Model2/dense_layer/MatMul/ReadVariableOpЎ
(Model2/sequential_68/rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2*
(Model2/sequential_68/rescaling_51/Cast/xЮ
*Model2/sequential_68/rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*Model2/sequential_68/rescaling_51/Cast_1/x╠
%Model2/sequential_68/rescaling_51/mulMulinput_791Model2/sequential_68/rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2'
%Model2/sequential_68/rescaling_51/mulы
%Model2/sequential_68/rescaling_51/addAddV2)Model2/sequential_68/rescaling_51/mul:z:03Model2/sequential_68/rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2'
%Model2/sequential_68/rescaling_51/add╝
"Model2/CONV1/Conv2D/ReadVariableOpReadVariableOp+model2_conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"Model2/CONV1/Conv2D/ReadVariableOpЬ
Model2/CONV1/Conv2DConv2D)Model2/sequential_68/rescaling_51/add:z:0*Model2/CONV1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
Model2/CONV1/Conv2D│
#Model2/CONV1/BiasAdd/ReadVariableOpReadVariableOp,model2_conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#Model2/CONV1/BiasAdd/ReadVariableOp╝
Model2/CONV1/BiasAddBiasAddModel2/CONV1/Conv2D:output:0+Model2/CONV1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2
Model2/CONV1/BiasAddЋ
Model2/BN1/ReadVariableOpReadVariableOp"model2_bn1_readvariableop_resource*
_output_shapes
:>*
dtype02
Model2/BN1/ReadVariableOpЏ
Model2/BN1/ReadVariableOp_1ReadVariableOp$model2_bn1_readvariableop_1_resource*
_output_shapes
:>*
dtype02
Model2/BN1/ReadVariableOp_1╚
*Model2/BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp3model2_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02,
*Model2/BN1/FusedBatchNormV3/ReadVariableOp╬
,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model2_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02.
,Model2/BN1/FusedBatchNormV3/ReadVariableOp_1║
Model2/BN1/FusedBatchNormV3FusedBatchNormV3Model2/CONV1/BiasAdd:output:0!Model2/BN1/ReadVariableOp:value:0#Model2/BN1/ReadVariableOp_1:value:02Model2/BN1/FusedBatchNormV3/ReadVariableOp:value:04Model2/BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
is_training( 2
Model2/BN1/FusedBatchNormV3Џ
Model2/activation_128/ReluReluModel2/BN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         >>2
Model2/activation_128/ReluТ
 Model2/max_pooling2d_160/MaxPoolMaxPool(Model2/activation_128/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2"
 Model2/max_pooling2d_160/MaxPool╝
"Model2/CONV2/Conv2D/ReadVariableOpReadVariableOp+model2_conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"Model2/CONV2/Conv2D/ReadVariableOpЬ
Model2/CONV2/Conv2DConv2D)Model2/max_pooling2d_160/MaxPool:output:0*Model2/CONV2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Model2/CONV2/Conv2D│
#Model2/CONV2/BiasAdd/ReadVariableOpReadVariableOp,model2_conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#Model2/CONV2/BiasAdd/ReadVariableOp╝
Model2/CONV2/BiasAddBiasAddModel2/CONV2/Conv2D:output:0+Model2/CONV2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
Model2/CONV2/BiasAddх
'Model2/CONV2/ActivityRegularizer/SquareSquareModel2/CONV2/BiasAdd:output:0*
T0*/
_output_shapes
:         2)
'Model2/CONV2/ActivityRegularizer/SquareЕ
&Model2/CONV2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2(
&Model2/CONV2/ActivityRegularizer/Constм
$Model2/CONV2/ActivityRegularizer/SumSum+Model2/CONV2/ActivityRegularizer/Square:y:0/Model2/CONV2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$Model2/CONV2/ActivityRegularizer/SumЋ
&Model2/CONV2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2(
&Model2/CONV2/ActivityRegularizer/mul/xн
$Model2/CONV2/ActivityRegularizer/mulMul/Model2/CONV2/ActivityRegularizer/mul/x:output:0-Model2/CONV2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$Model2/CONV2/ActivityRegularizer/mulЮ
&Model2/CONV2/ActivityRegularizer/ShapeShapeModel2/CONV2/BiasAdd:output:0*
T0*
_output_shapes
:2(
&Model2/CONV2/ActivityRegularizer/ShapeХ
4Model2/CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4Model2/CONV2/ActivityRegularizer/strided_slice/stack║
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_1║
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6Model2/CONV2/ActivityRegularizer/strided_slice/stack_2е
.Model2/CONV2/ActivityRegularizer/strided_sliceStridedSlice/Model2/CONV2/ActivityRegularizer/Shape:output:0=Model2/CONV2/ActivityRegularizer/strided_slice/stack:output:0?Model2/CONV2/ActivityRegularizer/strided_slice/stack_1:output:0?Model2/CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.Model2/CONV2/ActivityRegularizer/strided_slice┐
%Model2/CONV2/ActivityRegularizer/CastCast7Model2/CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%Model2/CONV2/ActivityRegularizer/CastН
(Model2/CONV2/ActivityRegularizer/truedivRealDiv(Model2/CONV2/ActivityRegularizer/mul:z:0)Model2/CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(Model2/CONV2/ActivityRegularizer/truedivЋ
Model2/BN3/ReadVariableOpReadVariableOp"model2_bn3_readvariableop_resource*
_output_shapes
:*
dtype02
Model2/BN3/ReadVariableOpЏ
Model2/BN3/ReadVariableOp_1ReadVariableOp$model2_bn3_readvariableop_1_resource*
_output_shapes
:*
dtype02
Model2/BN3/ReadVariableOp_1╚
*Model2/BN3/FusedBatchNormV3/ReadVariableOpReadVariableOp3model2_bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*Model2/BN3/FusedBatchNormV3/ReadVariableOp╬
,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp5model2_bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,Model2/BN3/FusedBatchNormV3/ReadVariableOp_1е
Model2/BN3/FusedBatchNormV3FusedBatchNormV3Model2/CONV2/BiasAdd:output:0!Model2/BN3/ReadVariableOp:value:0#Model2/BN3/ReadVariableOp_1:value:02Model2/BN3/FusedBatchNormV3/ReadVariableOp:value:04Model2/BN3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
is_training( 2
Model2/BN3/FusedBatchNormV3Џ
Model2/activation_129/ReluReluModel2/BN3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         2
Model2/activation_129/Reluш
#Model2/average_pooling2d_76/AvgPoolAvgPool(Model2/activation_129/Relu:activations:0*
T0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2%
#Model2/average_pooling2d_76/AvgPoolЃ
Model2/flatten_76/ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ
  2
Model2/flatten_76/Const─
Model2/flatten_76/ReshapeReshape,Model2/average_pooling2d_76/AvgPool:output:0 Model2/flatten_76/Const:output:0*
T0*(
_output_shapes
:         љ2
Model2/flatten_76/ReshapeК
(Model2/dense_layer/MatMul/ReadVariableOpReadVariableOp1model2_dense_layer_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02*
(Model2/dense_layer/MatMul/ReadVariableOp╚
Model2/dense_layer/MatMulMatMul"Model2/flatten_76/Reshape:output:00Model2/dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Model2/dense_layer/MatMul┼
)Model2/dense_layer/BiasAdd/ReadVariableOpReadVariableOp2model2_dense_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)Model2/dense_layer/BiasAdd/ReadVariableOp═
Model2/dense_layer/BiasAddBiasAdd#Model2/dense_layer/MatMul:product:01Model2/dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Model2/dense_layer/BiasAdd┐
-Model2/dense_layer/ActivityRegularizer/SquareSquare#Model2/dense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         2/
-Model2/dense_layer/ActivityRegularizer/SquareГ
,Model2/dense_layer/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2.
,Model2/dense_layer/ActivityRegularizer/ConstЖ
*Model2/dense_layer/ActivityRegularizer/SumSum1Model2/dense_layer/ActivityRegularizer/Square:y:05Model2/dense_layer/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2,
*Model2/dense_layer/ActivityRegularizer/SumА
,Model2/dense_layer/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2.
,Model2/dense_layer/ActivityRegularizer/mul/xВ
*Model2/dense_layer/ActivityRegularizer/mulMul5Model2/dense_layer/ActivityRegularizer/mul/x:output:03Model2/dense_layer/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2,
*Model2/dense_layer/ActivityRegularizer/mul»
,Model2/dense_layer/ActivityRegularizer/ShapeShape#Model2/dense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2.
,Model2/dense_layer/ActivityRegularizer/Shape┬
:Model2/dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:Model2/dense_layer/ActivityRegularizer/strided_slice/stackк
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_1к
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<Model2/dense_layer/ActivityRegularizer/strided_slice/stack_2╠
4Model2/dense_layer/ActivityRegularizer/strided_sliceStridedSlice5Model2/dense_layer/ActivityRegularizer/Shape:output:0CModel2/dense_layer/ActivityRegularizer/strided_slice/stack:output:0EModel2/dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0EModel2/dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4Model2/dense_layer/ActivityRegularizer/strided_sliceЛ
+Model2/dense_layer/ActivityRegularizer/CastCast=Model2/dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2-
+Model2/dense_layer/ActivityRegularizer/Castь
.Model2/dense_layer/ActivityRegularizer/truedivRealDiv.Model2/dense_layer/ActivityRegularizer/mul:z:0/Model2/dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 20
.Model2/dense_layer/ActivityRegularizer/truedivЎ
Model2/dropout_9/IdentityIdentity#Model2/dense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         2
Model2/dropout_9/Identity│
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
 *oЃ:2
Model2/BN4/batchnorm/add/y┤
Model2/BN4/batchnorm/addAddV2+Model2/BN4/batchnorm/ReadVariableOp:value:0#Model2/BN4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/addё
Model2/BN4/batchnorm/RsqrtRsqrtModel2/BN4/batchnorm/add:z:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/Rsqrt┐
'Model2/BN4/batchnorm/mul/ReadVariableOpReadVariableOp0model2_bn4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02)
'Model2/BN4/batchnorm/mul/ReadVariableOp▒
Model2/BN4/batchnorm/mulMulModel2/BN4/batchnorm/Rsqrt:y:0/Model2/BN4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/mul│
Model2/BN4/batchnorm/mul_1Mul"Model2/dropout_9/Identity:output:0Model2/BN4/batchnorm/mul:z:0*
T0*'
_output_shapes
:         2
Model2/BN4/batchnorm/mul_1╣
%Model2/BN4/batchnorm/ReadVariableOp_1ReadVariableOp.model2_bn4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02'
%Model2/BN4/batchnorm/ReadVariableOp_1▒
Model2/BN4/batchnorm/mul_2Mul-Model2/BN4/batchnorm/ReadVariableOp_1:value:0Model2/BN4/batchnorm/mul:z:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/mul_2╣
%Model2/BN4/batchnorm/ReadVariableOp_2ReadVariableOp.model2_bn4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02'
%Model2/BN4/batchnorm/ReadVariableOp_2»
Model2/BN4/batchnorm/subSub-Model2/BN4/batchnorm/ReadVariableOp_2:value:0Model2/BN4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
Model2/BN4/batchnorm/sub▒
Model2/BN4/batchnorm/add_1AddV2Model2/BN4/batchnorm/mul_1:z:0Model2/BN4/batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
Model2/BN4/batchnorm/add_1њ
Model2/activation_130/ReluReluModel2/BN4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         2
Model2/activation_130/Reluй
%Model2/dense_76/MatMul/ReadVariableOpReadVariableOp.model2_dense_76_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%Model2/dense_76/MatMul/ReadVariableOp┼
Model2/dense_76/MatMulMatMul(Model2/activation_130/Relu:activations:0-Model2/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Model2/dense_76/MatMul╝
&Model2/dense_76/BiasAdd/ReadVariableOpReadVariableOp/model2_dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&Model2/dense_76/BiasAdd/ReadVariableOp┴
Model2/dense_76/BiasAddBiasAdd Model2/dense_76/MatMul:product:0.Model2/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
Model2/dense_76/BiasAddЉ
Model2/dense_76/SigmoidSigmoid Model2/dense_76/BiasAdd:output:0*
T0*'
_output_shapes
:         2
Model2/dense_76/Sigmoidщ
IdentityIdentityModel2/dense_76/Sigmoid:y:0+^Model2/BN1/FusedBatchNormV3/ReadVariableOp-^Model2/BN1/FusedBatchNormV3/ReadVariableOp_1^Model2/BN1/ReadVariableOp^Model2/BN1/ReadVariableOp_1+^Model2/BN3/FusedBatchNormV3/ReadVariableOp-^Model2/BN3/FusedBatchNormV3/ReadVariableOp_1^Model2/BN3/ReadVariableOp^Model2/BN3/ReadVariableOp_1$^Model2/BN4/batchnorm/ReadVariableOp&^Model2/BN4/batchnorm/ReadVariableOp_1&^Model2/BN4/batchnorm/ReadVariableOp_2(^Model2/BN4/batchnorm/mul/ReadVariableOp$^Model2/CONV1/BiasAdd/ReadVariableOp#^Model2/CONV1/Conv2D/ReadVariableOp$^Model2/CONV2/BiasAdd/ReadVariableOp#^Model2/CONV2/Conv2D/ReadVariableOp'^Model2/dense_76/BiasAdd/ReadVariableOp&^Model2/dense_76/MatMul/ReadVariableOp*^Model2/dense_layer/BiasAdd/ReadVariableOp)^Model2/dense_layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 2X
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
:         @@
"
_user_specified_name
input_79
чЅ
С
B__inference_Model2_layer_call_and_return_conditional_losses_108156

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
*dense_layer_matmul_readvariableop_resource:	љ9
+dense_layer_biasadd_readvariableop_resource:9
+bn4_assignmovingavg_readvariableop_resource:;
-bn4_assignmovingavg_1_readvariableop_resource:7
)bn4_batchnorm_mul_readvariableop_resource:3
%bn4_batchnorm_readvariableop_resource:9
'dense_76_matmul_readvariableop_resource:6
(dense_76_biasadd_readvariableop_resource:
identity

identity_1

identity_2ѕбBN1/AssignNewValueбBN1/AssignNewValue_1б#BN1/FusedBatchNormV3/ReadVariableOpб%BN1/FusedBatchNormV3/ReadVariableOp_1бBN1/ReadVariableOpбBN1/ReadVariableOp_1бBN3/AssignNewValueбBN3/AssignNewValue_1б#BN3/FusedBatchNormV3/ReadVariableOpб%BN3/FusedBatchNormV3/ReadVariableOp_1бBN3/ReadVariableOpбBN3/ReadVariableOp_1бBN4/AssignMovingAvgб"BN4/AssignMovingAvg/ReadVariableOpбBN4/AssignMovingAvg_1б$BN4/AssignMovingAvg_1/ReadVariableOpбBN4/batchnorm/ReadVariableOpб BN4/batchnorm/mul/ReadVariableOpбCONV1/BiasAdd/ReadVariableOpбCONV1/Conv2D/ReadVariableOpбCONV2/BiasAdd/ReadVariableOpбCONV2/Conv2D/ReadVariableOpбdense_76/BiasAdd/ReadVariableOpбdense_76/MatMul/ReadVariableOpб"dense_layer/BiasAdd/ReadVariableOpб!dense_layer/MatMul/ReadVariableOpб(kernel/Regularizer/Square/ReadVariableOpб*kernel/Regularizer_1/Square/ReadVariableOpб@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkipщ
Fsequential_68/random_flip_68/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:         @@2H
Fsequential_68/random_flip_68/random_flip_left_right/control_dependencyш
9sequential_68/random_flip_68/random_flip_left_right/ShapeShapeOsequential_68/random_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2;
9sequential_68/random_flip_68/random_flip_left_right/Shape▄
Gsequential_68/random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gsequential_68/random_flip_68/random_flip_left_right/strided_slice/stackЯ
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_1Я
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_2џ
Asequential_68/random_flip_68/random_flip_left_right/strided_sliceStridedSliceBsequential_68/random_flip_68/random_flip_left_right/Shape:output:0Psequential_68/random_flip_68/random_flip_left_right/strided_slice/stack:output:0Rsequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Rsequential_68/random_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Asequential_68/random_flip_68/random_flip_left_right/strided_sliceќ
Hsequential_68/random_flip_68/random_flip_left_right/random_uniform/shapePackJsequential_68/random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2J
Hsequential_68/random_flip_68/random_flip_left_right/random_uniform/shapeН
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2H
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/minН
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2H
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/max├
Psequential_68/random_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformQsequential_68/random_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:         *
dtype02R
Psequential_68/random_flip_68/random_flip_left_right/random_uniform/RandomUniformы
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/MulMulYsequential_68/random_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Osequential_68/random_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:         2H
Fsequential_68/random_flip_68/random_flip_left_right/random_uniform/Mul╠
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/1╠
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/2╠
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2E
Csequential_68/random_flip_68/random_flip_left_right/Reshape/shape/3Ы
Asequential_68/random_flip_68/random_flip_left_right/Reshape/shapePackJsequential_68/random_flip_68/random_flip_left_right/strided_slice:output:0Lsequential_68/random_flip_68/random_flip_left_right/Reshape/shape/1:output:0Lsequential_68/random_flip_68/random_flip_left_right/Reshape/shape/2:output:0Lsequential_68/random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2C
Asequential_68/random_flip_68/random_flip_left_right/Reshape/shapeО
;sequential_68/random_flip_68/random_flip_left_right/ReshapeReshapeJsequential_68/random_flip_68/random_flip_left_right/random_uniform/Mul:z:0Jsequential_68/random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2=
;sequential_68/random_flip_68/random_flip_left_right/Reshape 
9sequential_68/random_flip_68/random_flip_left_right/RoundRoundDsequential_68/random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2;
9sequential_68/random_flip_68/random_flip_left_right/Roundм
Bsequential_68/random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2D
Bsequential_68/random_flip_68/random_flip_left_right/ReverseV2/axisс
=sequential_68/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Osequential_68/random_flip_68/random_flip_left_right/control_dependency:output:0Ksequential_68/random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:         @@2?
=sequential_68/random_flip_68/random_flip_left_right/ReverseV2║
7sequential_68/random_flip_68/random_flip_left_right/mulMul=sequential_68/random_flip_68/random_flip_left_right/Round:y:0Fsequential_68/random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:         @@29
7sequential_68/random_flip_68/random_flip_left_right/mul╗
9sequential_68/random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2;
9sequential_68/random_flip_68/random_flip_left_right/sub/xХ
7sequential_68/random_flip_68/random_flip_left_right/subSubBsequential_68/random_flip_68/random_flip_left_right/sub/x:output:0=sequential_68/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         29
7sequential_68/random_flip_68/random_flip_left_right/sub┼
9sequential_68/random_flip_68/random_flip_left_right/mul_1Mul;sequential_68/random_flip_68/random_flip_left_right/sub:z:0Osequential_68/random_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:         @@2;
9sequential_68/random_flip_68/random_flip_left_right/mul_1▒
7sequential_68/random_flip_68/random_flip_left_right/addAddV2;sequential_68/random_flip_68/random_flip_left_right/mul:z:0=sequential_68/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:         @@29
7sequential_68/random_flip_68/random_flip_left_right/add╗
&sequential_68/random_rotation_68/ShapeShape;sequential_68/random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2(
&sequential_68/random_rotation_68/ShapeХ
4sequential_68/random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4sequential_68/random_rotation_68/strided_slice/stack║
6sequential_68/random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice/stack_1║
6sequential_68/random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice/stack_2е
.sequential_68/random_rotation_68/strided_sliceStridedSlice/sequential_68/random_rotation_68/Shape:output:0=sequential_68/random_rotation_68/strided_slice/stack:output:0?sequential_68/random_rotation_68/strided_slice/stack_1:output:0?sequential_68/random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_68/random_rotation_68/strided_slice║
6sequential_68/random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice_1/stackЙ
8sequential_68/random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_1/stack_1Й
8sequential_68/random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_1/stack_2▓
0sequential_68/random_rotation_68/strided_slice_1StridedSlice/sequential_68/random_rotation_68/Shape:output:0?sequential_68/random_rotation_68/strided_slice_1/stack:output:0Asequential_68/random_rotation_68/strided_slice_1/stack_1:output:0Asequential_68/random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_68/random_rotation_68/strided_slice_1┴
%sequential_68/random_rotation_68/CastCast9sequential_68/random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_68/random_rotation_68/Cast║
6sequential_68/random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:28
6sequential_68/random_rotation_68/strided_slice_2/stackЙ
8sequential_68/random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_2/stack_1Й
8sequential_68/random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_68/random_rotation_68/strided_slice_2/stack_2▓
0sequential_68/random_rotation_68/strided_slice_2StridedSlice/sequential_68/random_rotation_68/Shape:output:0?sequential_68/random_rotation_68/strided_slice_2/stack:output:0Asequential_68/random_rotation_68/strided_slice_2/stack_1:output:0Asequential_68/random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_68/random_rotation_68/strided_slice_2┼
'sequential_68/random_rotation_68/Cast_1Cast9sequential_68/random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2)
'sequential_68/random_rotation_68/Cast_1р
7sequential_68/random_rotation_68/stateful_uniform/shapePack7sequential_68/random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:29
7sequential_68/random_rotation_68/stateful_uniform/shape│
5sequential_68/random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐27
5sequential_68/random_rotation_68/stateful_uniform/min│
5sequential_68/random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?27
5sequential_68/random_rotation_68/stateful_uniform/max╝
7sequential_68/random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_68/random_rotation_68/stateful_uniform/ConstЮ
6sequential_68/random_rotation_68/stateful_uniform/ProdProd@sequential_68/random_rotation_68/stateful_uniform/shape:output:0@sequential_68/random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/stateful_uniform/ProdХ
8sequential_68/random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_68/random_rotation_68/stateful_uniform/Cast/xь
8sequential_68/random_rotation_68/stateful_uniform/Cast_1Cast?sequential_68/random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2:
8sequential_68/random_rotation_68/stateful_uniform/Cast_1■
@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkipIsequential_68_random_rotation_68_stateful_uniform_rngreadandskip_resourceAsequential_68/random_rotation_68/stateful_uniform/Cast/x:output:0<sequential_68/random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:2B
@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkipп
Esequential_68/random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2G
Esequential_68/random_rotation_68/stateful_uniform/strided_slice/stack▄
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_1▄
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_2ћ
?sequential_68/random_rotation_68/stateful_uniform/strided_sliceStridedSliceHsequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Nsequential_68/random_rotation_68/stateful_uniform/strided_slice/stack:output:0Psequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Psequential_68/random_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2A
?sequential_68/random_rotation_68/stateful_uniform/strided_sliceЧ
9sequential_68/random_rotation_68/stateful_uniform/BitcastBitcastHsequential_68/random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02;
9sequential_68/random_rotation_68/stateful_uniform/Bitcast▄
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2I
Gsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stackЯ
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_1Я
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Isequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_2ї
Asequential_68/random_rotation_68/stateful_uniform/strided_slice_1StridedSliceHsequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Psequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Rsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Rsequential_68/random_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2C
Asequential_68/random_rotation_68/stateful_uniform/strided_slice_1ѓ
;sequential_68/random_rotation_68/stateful_uniform/Bitcast_1BitcastJsequential_68/random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02=
;sequential_68/random_rotation_68/stateful_uniform/Bitcast_1Р
Nsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2P
Nsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg■
Jsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2@sequential_68/random_rotation_68/stateful_uniform/shape:output:0Dsequential_68/random_rotation_68/stateful_uniform/Bitcast_1:output:0Bsequential_68/random_rotation_68/stateful_uniform/Bitcast:output:0Wsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2L
Jsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2ќ
5sequential_68/random_rotation_68/stateful_uniform/subSub>sequential_68/random_rotation_68/stateful_uniform/max:output:0>sequential_68/random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 27
5sequential_68/random_rotation_68/stateful_uniform/sub│
5sequential_68/random_rotation_68/stateful_uniform/mulMulSsequential_68/random_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:09sequential_68/random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         27
5sequential_68/random_rotation_68/stateful_uniform/mulќ
1sequential_68/random_rotation_68/stateful_uniformAdd9sequential_68/random_rotation_68/stateful_uniform/mul:z:0>sequential_68/random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         23
1sequential_68/random_rotation_68/stateful_uniformх
6sequential_68/random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?28
6sequential_68/random_rotation_68/rotation_matrix/sub/yѓ
4sequential_68/random_rotation_68/rotation_matrix/subSub+sequential_68/random_rotation_68/Cast_1:y:0?sequential_68/random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 26
4sequential_68/random_rotation_68/rotation_matrix/subп
4sequential_68/random_rotation_68/rotation_matrix/CosCos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_68/random_rotation_68/rotation_matrix/Cos╣
8sequential_68/random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_1/yѕ
6sequential_68/random_rotation_68/rotation_matrix/sub_1Sub+sequential_68/random_rotation_68/Cast_1:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_1Ќ
4sequential_68/random_rotation_68/rotation_matrix/mulMul8sequential_68/random_rotation_68/rotation_matrix/Cos:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         26
4sequential_68/random_rotation_68/rotation_matrix/mulп
4sequential_68/random_rotation_68/rotation_matrix/SinSin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         26
4sequential_68/random_rotation_68/rotation_matrix/Sin╣
8sequential_68/random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_2/yє
6sequential_68/random_rotation_68/rotation_matrix/sub_2Sub)sequential_68/random_rotation_68/Cast:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_2Џ
6sequential_68/random_rotation_68/rotation_matrix/mul_1Mul8sequential_68/random_rotation_68/rotation_matrix/Sin:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/mul_1Џ
6sequential_68/random_rotation_68/rotation_matrix/sub_3Sub8sequential_68/random_rotation_68/rotation_matrix/mul:z:0:sequential_68/random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/sub_3Џ
6sequential_68/random_rotation_68/rotation_matrix/sub_4Sub8sequential_68/random_rotation_68/rotation_matrix/sub:z:0:sequential_68/random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/sub_4й
:sequential_68/random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_68/random_rotation_68/rotation_matrix/truediv/y«
8sequential_68/random_rotation_68/rotation_matrix/truedivRealDiv:sequential_68/random_rotation_68/rotation_matrix/sub_4:z:0Csequential_68/random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2:
8sequential_68/random_rotation_68/rotation_matrix/truediv╣
8sequential_68/random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_5/yє
6sequential_68/random_rotation_68/rotation_matrix/sub_5Sub)sequential_68/random_rotation_68/Cast:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_5▄
6sequential_68/random_rotation_68/rotation_matrix/Sin_1Sin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/Sin_1╣
8sequential_68/random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_6/yѕ
6sequential_68/random_rotation_68/rotation_matrix/sub_6Sub+sequential_68/random_rotation_68/Cast_1:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_6Ю
6sequential_68/random_rotation_68/rotation_matrix/mul_2Mul:sequential_68/random_rotation_68/rotation_matrix/Sin_1:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/mul_2▄
6sequential_68/random_rotation_68/rotation_matrix/Cos_1Cos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/Cos_1╣
8sequential_68/random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8sequential_68/random_rotation_68/rotation_matrix/sub_7/yє
6sequential_68/random_rotation_68/rotation_matrix/sub_7Sub)sequential_68/random_rotation_68/Cast:y:0Asequential_68/random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 28
6sequential_68/random_rotation_68/rotation_matrix/sub_7Ю
6sequential_68/random_rotation_68/rotation_matrix/mul_3Mul:sequential_68/random_rotation_68/rotation_matrix/Cos_1:y:0:sequential_68/random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/mul_3Џ
4sequential_68/random_rotation_68/rotation_matrix/addAddV2:sequential_68/random_rotation_68/rotation_matrix/mul_2:z:0:sequential_68/random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         26
4sequential_68/random_rotation_68/rotation_matrix/addЏ
6sequential_68/random_rotation_68/rotation_matrix/sub_8Sub:sequential_68/random_rotation_68/rotation_matrix/sub_5:z:08sequential_68/random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/sub_8┴
<sequential_68/random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2>
<sequential_68/random_rotation_68/rotation_matrix/truediv_1/y┤
:sequential_68/random_rotation_68/rotation_matrix/truediv_1RealDiv:sequential_68/random_rotation_68/rotation_matrix/sub_8:z:0Esequential_68/random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2<
:sequential_68/random_rotation_68/rotation_matrix/truediv_1Н
6sequential_68/random_rotation_68/rotation_matrix/ShapeShape5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:28
6sequential_68/random_rotation_68/rotation_matrix/Shapeо
Dsequential_68/random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack┌
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_1┌
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_2ѕ
>sequential_68/random_rotation_68/rotation_matrix/strided_sliceStridedSlice?sequential_68/random_rotation_68/rotation_matrix/Shape:output:0Msequential_68/random_rotation_68/rotation_matrix/strided_slice/stack:output:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2@
>sequential_68/random_rotation_68/rotation_matrix/strided_slice▄
6sequential_68/random_rotation_68/rotation_matrix/Cos_2Cos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/Cos_2р
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stackт
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_1т
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_2й
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_1StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Cos_2:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_1▄
6sequential_68/random_rotation_68/rotation_matrix/Sin_2Sin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/Sin_2р
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stackт
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_1т
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_2й
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_2StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Sin_2:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_2­
4sequential_68/random_rotation_68/rotation_matrix/NegNegIsequential_68/random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         26
4sequential_68/random_rotation_68/rotation_matrix/Negр
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stackт
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_1т
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_2┐
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_3StridedSlice<sequential_68/random_rotation_68/rotation_matrix/truediv:z:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_3▄
6sequential_68/random_rotation_68/rotation_matrix/Sin_3Sin5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/Sin_3р
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stackт
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_1т
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_2й
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_4StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Sin_3:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_4▄
6sequential_68/random_rotation_68/rotation_matrix/Cos_3Cos5sequential_68/random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/Cos_3р
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stackт
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_1т
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_2й
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_5StridedSlice:sequential_68/random_rotation_68/rotation_matrix/Cos_3:y:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_5р
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stackт
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_1т
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_2┴
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_6StridedSlice>sequential_68/random_rotation_68/rotation_matrix/truediv_1:z:0Osequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Qsequential_68/random_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask2B
@sequential_68/random_rotation_68/rotation_matrix/strided_slice_6Й
<sequential_68/random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_68/random_rotation_68/rotation_matrix/zeros/mul/y░
:sequential_68/random_rotation_68/rotation_matrix/zeros/mulMulGsequential_68/random_rotation_68/rotation_matrix/strided_slice:output:0Esequential_68/random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2<
:sequential_68/random_rotation_68/rotation_matrix/zeros/mul┴
=sequential_68/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2?
=sequential_68/random_rotation_68/rotation_matrix/zeros/Less/yФ
;sequential_68/random_rotation_68/rotation_matrix/zeros/LessLess>sequential_68/random_rotation_68/rotation_matrix/zeros/mul:z:0Fsequential_68/random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2=
;sequential_68/random_rotation_68/rotation_matrix/zeros/Less─
?sequential_68/random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_68/random_rotation_68/rotation_matrix/zeros/packed/1К
=sequential_68/random_rotation_68/rotation_matrix/zeros/packedPackGsequential_68/random_rotation_68/rotation_matrix/strided_slice:output:0Hsequential_68/random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2?
=sequential_68/random_rotation_68/rotation_matrix/zeros/packed┴
<sequential_68/random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2>
<sequential_68/random_rotation_68/rotation_matrix/zeros/Const╣
6sequential_68/random_rotation_68/rotation_matrix/zerosFillFsequential_68/random_rotation_68/rotation_matrix/zeros/packed:output:0Esequential_68/random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         28
6sequential_68/random_rotation_68/rotation_matrix/zerosЙ
<sequential_68/random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2>
<sequential_68/random_rotation_68/rotation_matrix/concat/axisЫ
7sequential_68/random_rotation_68/rotation_matrix/concatConcatV2Isequential_68/random_rotation_68/rotation_matrix/strided_slice_1:output:08sequential_68/random_rotation_68/rotation_matrix/Neg:y:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_3:output:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_4:output:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_5:output:0Isequential_68/random_rotation_68/rotation_matrix/strided_slice_6:output:0?sequential_68/random_rotation_68/rotation_matrix/zeros:output:0Esequential_68/random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         29
7sequential_68/random_rotation_68/rotation_matrix/concat¤
0sequential_68/random_rotation_68/transform/ShapeShape;sequential_68/random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:22
0sequential_68/random_rotation_68/transform/Shape╩
>sequential_68/random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_68/random_rotation_68/transform/strided_slice/stack╬
@sequential_68/random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_68/random_rotation_68/transform/strided_slice/stack_1╬
@sequential_68/random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_68/random_rotation_68/transform/strided_slice/stack_2л
8sequential_68/random_rotation_68/transform/strided_sliceStridedSlice9sequential_68/random_rotation_68/transform/Shape:output:0Gsequential_68/random_rotation_68/transform/strided_slice/stack:output:0Isequential_68/random_rotation_68/transform/strided_slice/stack_1:output:0Isequential_68/random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2:
8sequential_68/random_rotation_68/transform/strided_slice│
5sequential_68/random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5sequential_68/random_rotation_68/transform/fill_valueА
Esequential_68/random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3;sequential_68/random_flip_68/random_flip_left_right/add:z:0@sequential_68/random_rotation_68/rotation_matrix/concat:output:0Asequential_68/random_rotation_68/transform/strided_slice:output:0>sequential_68/random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:         @@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2G
Esequential_68/random_rotation_68/transform/ImageProjectiveTransformV3І
!sequential_68/rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2#
!sequential_68/rescaling_51/Cast/xЈ
#sequential_68/rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_68/rescaling_51/Cast_1/xЅ
sequential_68/rescaling_51/mulMulZsequential_68/random_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0*sequential_68/rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2 
sequential_68/rescaling_51/mulН
sequential_68/rescaling_51/addAddV2"sequential_68/rescaling_51/mul:z:0,sequential_68/rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2 
sequential_68/rescaling_51/addД
CONV1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV1/Conv2D/ReadVariableOpм
CONV1/Conv2DConv2D"sequential_68/rescaling_51/add:z:0#CONV1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
CONV1/Conv2Dъ
CONV1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV1/BiasAdd/ReadVariableOpа
CONV1/BiasAddBiasAddCONV1/Conv2D:output:0$CONV1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2
CONV1/BiasAddђ
BN1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOpє
BN1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOp_1│
#BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02%
#BN1/FusedBatchNormV3/ReadVariableOp╣
%BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02'
%BN1/FusedBatchNormV3/ReadVariableOp_1Ќ
BN1/FusedBatchNormV3FusedBatchNormV3CONV1/BiasAdd:output:0BN1/ReadVariableOp:value:0BN1/ReadVariableOp_1:value:0+BN1/FusedBatchNormV3/ReadVariableOp:value:0-BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
BN1/FusedBatchNormV3о
BN1/AssignNewValueAssignVariableOp,bn1_fusedbatchnormv3_readvariableop_resource!BN1/FusedBatchNormV3:batch_mean:0$^BN1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
BN1/AssignNewValueР
BN1/AssignNewValue_1AssignVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource%BN1/FusedBatchNormV3:batch_variance:0&^BN1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
BN1/AssignNewValue_1є
activation_128/ReluReluBN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         >>2
activation_128/ReluЛ
max_pooling2d_160/MaxPoolMaxPool!activation_128/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
max_pooling2d_160/MaxPoolД
CONV2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV2/Conv2D/ReadVariableOpм
CONV2/Conv2DConv2D"max_pooling2d_160/MaxPool:output:0#CONV2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
CONV2/Conv2Dъ
CONV2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV2/BiasAdd/ReadVariableOpа
CONV2/BiasAddBiasAddCONV2/Conv2D:output:0$CONV2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
CONV2/BiasAddа
 CONV2/ActivityRegularizer/SquareSquareCONV2/BiasAdd:output:0*
T0*/
_output_shapes
:         2"
 CONV2/ActivityRegularizer/SquareЏ
CONV2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2!
CONV2/ActivityRegularizer/ConstХ
CONV2/ActivityRegularizer/SumSum$CONV2/ActivityRegularizer/Square:y:0(CONV2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/SumЄ
CONV2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2!
CONV2/ActivityRegularizer/mul/xИ
CONV2/ActivityRegularizer/mulMul(CONV2/ActivityRegularizer/mul/x:output:0&CONV2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/mulѕ
CONV2/ActivityRegularizer/ShapeShapeCONV2/BiasAdd:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shapeе
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stackг
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1г
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2■
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceф
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast╣
!CONV2/ActivityRegularizer/truedivRealDiv!CONV2/ActivityRegularizer/mul:z:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truedivђ
BN3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOpє
BN3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOp_1│
#BN3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02%
#BN3/FusedBatchNormV3/ReadVariableOp╣
%BN3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02'
%BN3/FusedBatchNormV3/ReadVariableOp_1Ё
BN3/FusedBatchNormV3FusedBatchNormV3CONV2/BiasAdd:output:0BN3/ReadVariableOp:value:0BN3/ReadVariableOp_1:value:0+BN3/FusedBatchNormV3/ReadVariableOp:value:0-BN3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
exponential_avg_factor%
О#<2
BN3/FusedBatchNormV3о
BN3/AssignNewValueAssignVariableOp,bn3_fusedbatchnormv3_readvariableop_resource!BN3/FusedBatchNormV3:batch_mean:0$^BN3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
BN3/AssignNewValueР
BN3/AssignNewValue_1AssignVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource%BN3/FusedBatchNormV3:batch_variance:0&^BN3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
BN3/AssignNewValue_1є
activation_129/ReluReluBN3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         2
activation_129/ReluЯ
average_pooling2d_76/AvgPoolAvgPool!activation_129/Relu:activations:0*
T0*/
_output_shapes
:         *
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
valueB"    љ
  2
flatten_76/Constе
flatten_76/ReshapeReshape%average_pooling2d_76/AvgPool:output:0flatten_76/Const:output:0*
T0*(
_output_shapes
:         љ2
flatten_76/Reshape▓
!dense_layer/MatMul/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02#
!dense_layer/MatMul/ReadVariableOpг
dense_layer/MatMulMatMulflatten_76/Reshape:output:0)dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_layer/MatMul░
"dense_layer/BiasAdd/ReadVariableOpReadVariableOp+dense_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"dense_layer/BiasAdd/ReadVariableOp▒
dense_layer/BiasAddBiasAdddense_layer/MatMul:product:0*dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_layer/BiasAddф
&dense_layer/ActivityRegularizer/SquareSquaredense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         2(
&dense_layer/ActivityRegularizer/SquareЪ
%dense_layer/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%dense_layer/ActivityRegularizer/Const╬
#dense_layer/ActivityRegularizer/SumSum*dense_layer/ActivityRegularizer/Square:y:0.dense_layer/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/SumЊ
%dense_layer/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%dense_layer/ActivityRegularizer/mul/xл
#dense_layer/ActivityRegularizer/mulMul.dense_layer/ActivityRegularizer/mul/x:output:0,dense_layer/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/mulџ
%dense_layer/ActivityRegularizer/ShapeShapedense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape┤
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stackИ
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1И
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2б
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice╝
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastЛ
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
 *  а?2
dropout_9/dropout/ConstД
dropout_9/dropout/MulMuldense_layer/BiasAdd:output:0 dropout_9/dropout/Const:output:0*
T0*'
_output_shapes
:         2
dropout_9/dropout/Mul~
dropout_9/dropout/ShapeShapedense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_9/dropout/Shapeм
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype020
.dropout_9/dropout/random_uniform/RandomUniformЅ
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2"
 dropout_9/dropout/GreaterEqual/yТ
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         2 
dropout_9/dropout/GreaterEqualЮ
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         2
dropout_9/dropout/Castб
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*'
_output_shapes
:         2
dropout_9/dropout/Mul_1њ
"BN4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"BN4/moments/mean/reduction_indices░
BN4/moments/meanMeandropout_9/dropout/Mul_1:z:0+BN4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
BN4/moments/meanѕ
BN4/moments/StopGradientStopGradientBN4/moments/mean:output:0*
T0*
_output_shapes

:2
BN4/moments/StopGradient┼
BN4/moments/SquaredDifferenceSquaredDifferencedropout_9/dropout/Mul_1:z:0!BN4/moments/StopGradient:output:0*
T0*'
_output_shapes
:         2
BN4/moments/SquaredDifferenceџ
&BN4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2(
&BN4/moments/variance/reduction_indices┬
BN4/moments/varianceMean!BN4/moments/SquaredDifference:z:0/BN4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
BN4/moments/varianceї
BN4/moments/SqueezeSqueezeBN4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
BN4/moments/Squeezeћ
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
О#<2
BN4/AssignMovingAvg/decay░
"BN4/AssignMovingAvg/ReadVariableOpReadVariableOp+bn4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02$
"BN4/AssignMovingAvg/ReadVariableOpе
BN4/AssignMovingAvg/subSub*BN4/AssignMovingAvg/ReadVariableOp:value:0BN4/moments/Squeeze:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg/subЪ
BN4/AssignMovingAvg/mulMulBN4/AssignMovingAvg/sub:z:0"BN4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg/mulМ
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
О#<2
BN4/AssignMovingAvg_1/decayХ
$BN4/AssignMovingAvg_1/ReadVariableOpReadVariableOp-bn4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$BN4/AssignMovingAvg_1/ReadVariableOp░
BN4/AssignMovingAvg_1/subSub,BN4/AssignMovingAvg_1/ReadVariableOp:value:0BN4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg_1/subД
BN4/AssignMovingAvg_1/mulMulBN4/AssignMovingAvg_1/sub:z:0$BN4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
BN4/AssignMovingAvg_1/mulП
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
 *oЃ:2
BN4/batchnorm/add/yњ
BN4/batchnorm/addAddV2BN4/moments/Squeeze_1:output:0BN4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
BN4/batchnorm/addo
BN4/batchnorm/RsqrtRsqrtBN4/batchnorm/add:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/Rsqrtф
 BN4/batchnorm/mul/ReadVariableOpReadVariableOp)bn4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02"
 BN4/batchnorm/mul/ReadVariableOpЋ
BN4/batchnorm/mulMulBN4/batchnorm/Rsqrt:y:0(BN4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
BN4/batchnorm/mulЌ
BN4/batchnorm/mul_1Muldropout_9/dropout/Mul_1:z:0BN4/batchnorm/mul:z:0*
T0*'
_output_shapes
:         2
BN4/batchnorm/mul_1І
BN4/batchnorm/mul_2MulBN4/moments/Squeeze:output:0BN4/batchnorm/mul:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/mul_2ъ
BN4/batchnorm/ReadVariableOpReadVariableOp%bn4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
BN4/batchnorm/ReadVariableOpЉ
BN4/batchnorm/subSub$BN4/batchnorm/ReadVariableOp:value:0BN4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/subЋ
BN4/batchnorm/add_1AddV2BN4/batchnorm/mul_1:z:0BN4/batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
BN4/batchnorm/add_1}
activation_130/ReluReluBN4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         2
activation_130/Reluе
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_76/MatMul/ReadVariableOpЕ
dense_76/MatMulMatMul!activation_130/Relu:activations:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_76/MatMulД
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_76/BiasAdd/ReadVariableOpЦ
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_76/BiasAdd|
dense_76/SigmoidSigmoiddense_76/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_76/Sigmoid┴
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul─
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02,
*kernel/Regularizer_1/Square/ReadVariableOpб
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer_1/SquareЅ
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer_1/Constб
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/Sum}
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer_1/mul/xц
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/mulЉ
IdentityIdentitydense_76/Sigmoid:y:0^BN1/AssignNewValue^BN1/AssignNewValue_1$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1^BN3/AssignNewValue^BN3/AssignNewValue_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/AssignMovingAvg#^BN4/AssignMovingAvg/ReadVariableOp^BN4/AssignMovingAvg_1%^BN4/AssignMovingAvg_1/ReadVariableOp^BN4/batchnorm/ReadVariableOp!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOpA^sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*'
_output_shapes
:         2

IdentityЋ

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/AssignNewValue^BN1/AssignNewValue_1$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1^BN3/AssignNewValue^BN3/AssignNewValue_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/AssignMovingAvg#^BN4/AssignMovingAvg/ReadVariableOp^BN4/AssignMovingAvg_1%^BN4/AssignMovingAvg_1/ReadVariableOp^BN4/batchnorm/ReadVariableOp!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOpA^sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*
_output_shapes
: 2

Identity_1Џ

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/AssignNewValue^BN1/AssignNewValue_1$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1^BN3/AssignNewValue^BN3/AssignNewValue_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/AssignMovingAvg#^BN4/AssignMovingAvg/ReadVariableOp^BN4/AssignMovingAvg_1%^BN4/AssignMovingAvg_1/ReadVariableOp^BN4/batchnorm/ReadVariableOp!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOpA^sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         @@: : : : : : : : : : : : : : : : : : : : : 2(
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
CONV2/Conv2D/ReadVariableOpCONV2/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2H
"dense_layer/BiasAdd/ReadVariableOp"dense_layer/BiasAdd/ReadVariableOp2F
!dense_layer/MatMul/ReadVariableOp!dense_layer/MatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp2ё
@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip@sequential_68/random_rotation_68/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
У
K
/__inference_activation_128_layer_call_fn_108474

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_1067652
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >>:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
Й
F
*__inference_dropout_9_layer_call_fn_108681

inputs
identity├
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1068762
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┼v
Є
B__inference_Model2_layer_call_and_return_conditional_losses_106926

inputs&
conv1_106728:
conv1_106730:

bn1_106751:>

bn1_106753:>

bn1_106755:>

bn1_106757:>&
conv2_106785:
conv2_106787:

bn3_106816:

bn3_106818:

bn3_106820:

bn3_106822:%
dense_layer_106858:	љ 
dense_layer_106860:

bn4_106878:

bn4_106880:

bn4_106882:

bn4_106884:!
dense_76_106906:
dense_76_106908:
identity

identity_1

identity_2ѕбBN1/StatefulPartitionedCallбBN3/StatefulPartitionedCallбBN4/StatefulPartitionedCallбCONV1/StatefulPartitionedCallбCONV2/StatefulPartitionedCallб dense_76/StatefulPartitionedCallб#dense_layer/StatefulPartitionedCallб(kernel/Regularizer/Square/ReadVariableOpб*kernel/Regularizer_1/Square/ReadVariableOpв
sequential_68/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1059152
sequential_68/PartitionedCallГ
CONV1/StatefulPartitionedCallStatefulPartitionedCall&sequential_68/PartitionedCall:output:0conv1_106728conv1_106730*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_1067272
CONV1/StatefulPartitionedCall┐
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_106751
bn1_106753
bn1_106755
bn1_106757*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1067502
BN1/StatefulPartitionedCallї
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_1067652 
activation_128/PartitionedCallў
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_1063772#
!max_pooling2d_160/PartitionedCall▒
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_106785conv2_106787*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_1067842
CONV2/StatefulPartitionedCallЬ
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
GPU 2J 8ѓ *6
f1R/
-__inference_CONV2_activity_regularizer_1063962+
)CONV2/ActivityRegularizer/PartitionedCallў
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shapeе
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stackг
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1г
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2■
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceф
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast╩
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv┐
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_106816
bn3_106818
bn3_106820
bn3_106822*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1068152
BN3/StatefulPartitionedCallї
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_1068302 
activation_129/PartitionedCallА
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_1065282&
$average_pooling2d_76/PartitionedCallѓ
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_1068392
flatten_76/PartitionedCall└
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_106858dense_layer_106860*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_1068572%
#dense_layer/StatefulPartitionedCallє
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
GPU 2J 8ѓ *<
f7R5
3__inference_dense_layer_activity_regularizer_10654721
/dense_layer/ActivityRegularizer/PartitionedCallф
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape┤
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stackИ
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1И
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2б
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice╝
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastР
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truediv§
dropout_9/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1068762
dropout_9/PartitionedCall│
BN4/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0
bn4_106878
bn4_106880
bn4_106882
bn4_106884*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_1065712
BN4/StatefulPartitionedCallё
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_1068922 
activation_130/PartitionedCallх
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_106906dense_76_106908*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_1069052"
 dense_76/StatefulPartitionedCallЕ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_106785*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulг
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_layer_106858*
_output_shapes
:	љ*
dtype02,
*kernel/Regularizer_1/Square/ReadVariableOpб
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer_1/SquareЅ
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer_1/Constб
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/Sum}
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer_1/mul/xц
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/mulИ
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*'
_output_shapes
:         2

IdentityД

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1Г

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╩
c
*__inference_dropout_9_layer_call_fn_108686

inputs
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1070072
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
«

ш
D__inference_dense_76_layer_call_and_return_conditional_losses_108813

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
с)
п
?__inference_BN4_layer_call_and_return_conditional_losses_106631

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpі
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesЈ
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
moments/StopGradientц
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         2
moments/SquaredDifferenceњ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices▓
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/varianceђ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeezeѕ
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
О#<2
AssignMovingAvg/decayц
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpў
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/subЈ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul┐
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
О#<2
AssignMovingAvg_1/decayф
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpа
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/subЌ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul╔
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
 *oЃ:2
batchnorm/add/yѓ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrtъ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOpЁ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpЂ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЁ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
batchnorm/add_1І
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
├
┐
$__inference_BN1_layer_call_fn_108371

inputs
unknown:>
	unknown_0:>
	unknown_1:>
	unknown_2:>
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+         >                  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1063112
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+         >                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+         >                  : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+         >                  
 
_user_specified_nameinputs
«
╔
K__inference_dense_layer_layer_call_and_return_all_conditional_losses_108676

inputs
unknown:	љ
	unknown_0:
identity

identity_1ѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_1068572
StatefulPartitionedCall║
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
GPU 2J 8ѓ *<
f7R5
3__inference_dense_layer_activity_regularizer_1065472
PartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

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
:         љ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
й
Џ
&__inference_CONV2_layer_call_fn_108494

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_1067842
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ў
ц
G__inference_dense_layer_layer_call_and_return_conditional_losses_106857

inputs1
matmul_readvariableop_resource:	љ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpб(kernel/Regularizer/Square/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdd┤
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpю
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer/SquareЁ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul└
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
ѕ
ч
$__inference_signature_wrapper_107651
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

unknown_11:	љ

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:
identityѕбStatefulPartitionedCallк
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
:         *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_1059032
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         @@
"
_user_specified_name
input_79
ѓ
f
J__inference_activation_129_layer_call_and_return_conditional_losses_106830

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
р
Q
5__inference_average_pooling2d_76_layer_call_fn_106534

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_1065282
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
м
G
+__inference_flatten_76_layer_call_fn_108644

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_1068392
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
У
J
3__inference_dense_layer_activity_regularizer_106547
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
:         2
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
■Ѕ
У
I__inference_sequential_68_layer_call_and_return_conditional_losses_108326

inputsI
;random_rotation_68_stateful_uniform_rngreadandskip_resource:	
identityѕб2random_rotation_68/stateful_uniform/RngReadAndSkipП
8random_flip_68/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:         @@2:
8random_flip_68/random_flip_left_right/control_dependency╦
+random_flip_68/random_flip_left_right/ShapeShapeArandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_68/random_flip_left_right/Shape└
9random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_68/random_flip_left_right/strided_slice/stack─
;random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_1─
;random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_2к
3random_flip_68/random_flip_left_right/strided_sliceStridedSlice4random_flip_68/random_flip_left_right/Shape:output:0Brandom_flip_68/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_68/random_flip_left_right/strided_sliceВ
:random_flip_68/random_flip_left_right/random_uniform/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_68/random_flip_left_right/random_uniform/shape╣
8random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_68/random_flip_left_right/random_uniform/min╣
8random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8random_flip_68/random_flip_left_right/random_uniform/maxЎ
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:         *
dtype02D
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniform╣
8random_flip_68/random_flip_left_right/random_uniform/MulMulKrandom_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:         2:
8random_flip_68/random_flip_left_right/random_uniform/Mul░
5random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/1░
5random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/2░
5random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/3ъ
3random_flip_68/random_flip_left_right/Reshape/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0>random_flip_68/random_flip_left_right/Reshape/shape/1:output:0>random_flip_68/random_flip_left_right/Reshape/shape/2:output:0>random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_68/random_flip_left_right/Reshape/shapeЪ
-random_flip_68/random_flip_left_right/ReshapeReshape<random_flip_68/random_flip_left_right/random_uniform/Mul:z:0<random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2/
-random_flip_68/random_flip_left_right/ReshapeН
+random_flip_68/random_flip_left_right/RoundRound6random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2-
+random_flip_68/random_flip_left_right/RoundХ
4random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_68/random_flip_left_right/ReverseV2/axisФ
/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_68/random_flip_left_right/control_dependency:output:0=random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:         @@21
/random_flip_68/random_flip_left_right/ReverseV2ѓ
)random_flip_68/random_flip_left_right/mulMul/random_flip_68/random_flip_left_right/Round:y:08random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:         @@2+
)random_flip_68/random_flip_left_right/mulЪ
+random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2-
+random_flip_68/random_flip_left_right/sub/x■
)random_flip_68/random_flip_left_right/subSub4random_flip_68/random_flip_left_right/sub/x:output:0/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         2+
)random_flip_68/random_flip_left_right/subЇ
+random_flip_68/random_flip_left_right/mul_1Mul-random_flip_68/random_flip_left_right/sub:z:0Arandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:         @@2-
+random_flip_68/random_flip_left_right/mul_1щ
)random_flip_68/random_flip_left_right/addAddV2-random_flip_68/random_flip_left_right/mul:z:0/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:         @@2+
)random_flip_68/random_flip_left_right/addЉ
random_rotation_68/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_68/Shapeџ
&random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_68/strided_slice/stackъ
(random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_1ъ
(random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_2н
 random_rotation_68/strided_sliceStridedSlice!random_rotation_68/Shape:output:0/random_rotation_68/strided_slice/stack:output:01random_rotation_68/strided_slice/stack_1:output:01random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_68/strided_sliceъ
(random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_1/stackб
*random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_1б
*random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_2я
"random_rotation_68/strided_slice_1StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_1/stack:output:03random_rotation_68/strided_slice_1/stack_1:output:03random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_1Ќ
random_rotation_68/CastCast+random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Castъ
(random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_2/stackб
*random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_1б
*random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_2я
"random_rotation_68/strided_slice_2StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_2/stack:output:03random_rotation_68/strided_slice_2/stack_1:output:03random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_2Џ
random_rotation_68/Cast_1Cast+random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast_1и
)random_rotation_68/stateful_uniform/shapePack)random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_68/stateful_uniform/shapeЌ
'random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐2)
'random_rotation_68/stateful_uniform/minЌ
'random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?2)
'random_rotation_68/stateful_uniform/maxа
)random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_rotation_68/stateful_uniform/Constт
(random_rotation_68/stateful_uniform/ProdProd2random_rotation_68/stateful_uniform/shape:output:02random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/stateful_uniform/Prodџ
*random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_rotation_68/stateful_uniform/Cast/x├
*random_rotation_68/stateful_uniform/Cast_1Cast1random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_rotation_68/stateful_uniform/Cast_1И
2random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_68_stateful_uniform_rngreadandskip_resource3random_rotation_68/stateful_uniform/Cast/x:output:0.random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_rotation_68/stateful_uniform/RngReadAndSkip╝
7random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_rotation_68/stateful_uniform/strided_slice/stack└
9random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_1└
9random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_2└
1random_rotation_68/stateful_uniform/strided_sliceStridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0@random_rotation_68/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_rotation_68/stateful_uniform/strided_sliceм
+random_rotation_68/stateful_uniform/BitcastBitcast:random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_rotation_68/stateful_uniform/Bitcast└
9random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice_1/stack─
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1─
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2И
3random_rotation_68/stateful_uniform/strided_slice_1StridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_rotation_68/stateful_uniform/strided_slice_1п
-random_rotation_68/stateful_uniform/Bitcast_1Bitcast<random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_rotation_68/stateful_uniform/Bitcast_1к
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algф
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_68/stateful_uniform/shape:output:06random_rotation_68/stateful_uniform/Bitcast_1:output:04random_rotation_68/stateful_uniform/Bitcast:output:0Irandom_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2>
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2я
'random_rotation_68/stateful_uniform/subSub0random_rotation_68/stateful_uniform/max:output:00random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_68/stateful_uniform/subч
'random_rotation_68/stateful_uniform/mulMulErandom_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_68/stateful_uniform/mulя
#random_rotation_68/stateful_uniformAdd+random_rotation_68/stateful_uniform/mul:z:00random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         2%
#random_rotation_68/stateful_uniformЎ
(random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2*
(random_rotation_68/rotation_matrix/sub/y╩
&random_rotation_68/rotation_matrix/subSubrandom_rotation_68/Cast_1:y:01random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_68/rotation_matrix/sub«
&random_rotation_68/rotation_matrix/CosCos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/CosЮ
*random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_1/yл
(random_rotation_68/rotation_matrix/sub_1Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_1▀
&random_rotation_68/rotation_matrix/mulMul*random_rotation_68/rotation_matrix/Cos:y:0,random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/mul«
&random_rotation_68/rotation_matrix/SinSin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/SinЮ
*random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_2/y╬
(random_rotation_68/rotation_matrix/sub_2Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_2с
(random_rotation_68/rotation_matrix/mul_1Mul*random_rotation_68/rotation_matrix/Sin:y:0,random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_1с
(random_rotation_68/rotation_matrix/sub_3Sub*random_rotation_68/rotation_matrix/mul:z:0,random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_3с
(random_rotation_68/rotation_matrix/sub_4Sub*random_rotation_68/rotation_matrix/sub:z:0,random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_4А
,random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_68/rotation_matrix/truediv/yШ
*random_rotation_68/rotation_matrix/truedivRealDiv,random_rotation_68/rotation_matrix/sub_4:z:05random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2,
*random_rotation_68/rotation_matrix/truedivЮ
*random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_5/y╬
(random_rotation_68/rotation_matrix/sub_5Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_5▓
(random_rotation_68/rotation_matrix/Sin_1Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_1Ю
*random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_6/yл
(random_rotation_68/rotation_matrix/sub_6Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_6т
(random_rotation_68/rotation_matrix/mul_2Mul,random_rotation_68/rotation_matrix/Sin_1:y:0,random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_2▓
(random_rotation_68/rotation_matrix/Cos_1Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_1Ю
*random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_7/y╬
(random_rotation_68/rotation_matrix/sub_7Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_7т
(random_rotation_68/rotation_matrix/mul_3Mul,random_rotation_68/rotation_matrix/Cos_1:y:0,random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_3с
&random_rotation_68/rotation_matrix/addAddV2,random_rotation_68/rotation_matrix/mul_2:z:0,random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/addс
(random_rotation_68/rotation_matrix/sub_8Sub,random_rotation_68/rotation_matrix/sub_5:z:0*random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_8Ц
.random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_68/rotation_matrix/truediv_1/yЧ
,random_rotation_68/rotation_matrix/truediv_1RealDiv,random_rotation_68/rotation_matrix/sub_8:z:07random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2.
,random_rotation_68/rotation_matrix/truediv_1Ф
(random_rotation_68/rotation_matrix/ShapeShape'random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_68/rotation_matrix/Shape║
6random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_68/rotation_matrix/strided_slice/stackЙ
8random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_1Й
8random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_2┤
0random_rotation_68/rotation_matrix/strided_sliceStridedSlice1random_rotation_68/rotation_matrix/Shape:output:0?random_rotation_68/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_68/rotation_matrix/strided_slice▓
(random_rotation_68/rotation_matrix/Cos_2Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_2┼
8random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_1/stack╔
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_1StridedSlice,random_rotation_68/rotation_matrix/Cos_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_1▓
(random_rotation_68/rotation_matrix/Sin_2Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_2┼
8random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_2/stack╔
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_2StridedSlice,random_rotation_68/rotation_matrix/Sin_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_2к
&random_rotation_68/rotation_matrix/NegNeg;random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/Neg┼
8random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_3/stack╔
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2в
2random_rotation_68/rotation_matrix/strided_slice_3StridedSlice.random_rotation_68/rotation_matrix/truediv:z:0Arandom_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_3▓
(random_rotation_68/rotation_matrix/Sin_3Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_3┼
8random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_4/stack╔
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_4StridedSlice,random_rotation_68/rotation_matrix/Sin_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_4▓
(random_rotation_68/rotation_matrix/Cos_3Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_3┼
8random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_5/stack╔
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_5StridedSlice,random_rotation_68/rotation_matrix/Cos_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_5┼
8random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_6/stack╔
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2ь
2random_rotation_68/rotation_matrix/strided_slice_6StridedSlice0random_rotation_68/rotation_matrix/truediv_1:z:0Arandom_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_6б
.random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/zeros/mul/yЭ
,random_rotation_68/rotation_matrix/zeros/mulMul9random_rotation_68/rotation_matrix/strided_slice:output:07random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_68/rotation_matrix/zeros/mulЦ
/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У21
/random_rotation_68/rotation_matrix/zeros/Less/yз
-random_rotation_68/rotation_matrix/zeros/LessLess0random_rotation_68/rotation_matrix/zeros/mul:z:08random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_68/rotation_matrix/zeros/Lessе
1random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_68/rotation_matrix/zeros/packed/1Ј
/random_rotation_68/rotation_matrix/zeros/packedPack9random_rotation_68/rotation_matrix/strided_slice:output:0:random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_68/rotation_matrix/zeros/packedЦ
.random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_68/rotation_matrix/zeros/ConstЂ
(random_rotation_68/rotation_matrix/zerosFill8random_rotation_68/rotation_matrix/zeros/packed:output:07random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/zerosб
.random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/concat/axisТ
)random_rotation_68/rotation_matrix/concatConcatV2;random_rotation_68/rotation_matrix/strided_slice_1:output:0*random_rotation_68/rotation_matrix/Neg:y:0;random_rotation_68/rotation_matrix/strided_slice_3:output:0;random_rotation_68/rotation_matrix/strided_slice_4:output:0;random_rotation_68/rotation_matrix/strided_slice_5:output:0;random_rotation_68/rotation_matrix/strided_slice_6:output:01random_rotation_68/rotation_matrix/zeros:output:07random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2+
)random_rotation_68/rotation_matrix/concatЦ
"random_rotation_68/transform/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_rotation_68/transform/Shape«
0random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_68/transform/strided_slice/stack▓
2random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_1▓
2random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_2Ч
*random_rotation_68/transform/strided_sliceStridedSlice+random_rotation_68/transform/Shape:output:09random_rotation_68/transform/strided_slice/stack:output:0;random_rotation_68/transform/strided_slice/stack_1:output:0;random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_68/transform/strided_sliceЌ
'random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_68/transform/fill_value═
7random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_68/random_flip_left_right/add:z:02random_rotation_68/rotation_matrix/concat:output:03random_rotation_68/transform/strided_slice:output:00random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:         @@*
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
 *Ђђђ;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xЛ
rescaling_51/mulMulLrandom_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/mulЮ
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/addЦ
IdentityIdentityrescaling_51/add:z:03^random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @@: 2h
2random_rotation_68/stateful_uniform/RngReadAndSkip2random_rotation_68/stateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ц
џ
,__inference_dense_layer_layer_call_fn_108665

inputs
unknown:	љ
	unknown_0:
identityѕбStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_1068572
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
ѓ
f
J__inference_activation_128_layer_call_and_return_conditional_losses_106765

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:         >>2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >>:W S
/
_output_shapes
:         >>
 
_user_specified_nameinputs
├
┐
$__inference_BN3_layer_call_fn_108531

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1064622
StatefulPartitionedCallе
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
«

ш
D__inference_dense_76_layer_call_and_return_conditional_losses_106905

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї
ъ
?__inference_BN4_layer_call_and_return_conditional_losses_108749

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpњ
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
 *oЃ:2
batchnorm/add/yѕ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrtъ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOpЁ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         2
batchnorm/mul_1ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1Ё
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2Ѓ
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЁ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
batchnorm/add_1█
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ч
┐
$__inference_BN3_layer_call_fn_108557

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1070772
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ДЭ
┤"
"__inference__traced_restore_109264
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
&assignvariableop_12_dense_layer_kernel:	љ2
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
-assignvariableop_39_adam_dense_layer_kernel_m:	љ9
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
-assignvariableop_53_adam_dense_layer_kernel_v:	љ9
+assignvariableop_54_adam_dense_layer_bias_v:2
$assignvariableop_55_adam_bn4_gamma_v:1
#assignvariableop_56_adam_bn4_beta_v:<
*assignvariableop_57_adam_dense_76_kernel_v:6
(assignvariableop_58_adam_dense_76_bias_v:
identity_60ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9с 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*№
valueтBР<B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЅ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Ї
valueЃBђ<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*є
_output_shapesз
­::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityю
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1б
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2А
AssignVariableOp_2AssignVariableOpassignvariableop_2_bn1_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3а
AssignVariableOp_3AssignVariableOpassignvariableop_3_bn1_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Д
AssignVariableOp_4AssignVariableOp"assignvariableop_4_bn1_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ф
AssignVariableOp_5AssignVariableOp&assignvariableop_5_bn1_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ц
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7б
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8А
AssignVariableOp_8AssignVariableOpassignvariableop_8_bn3_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9а
AssignVariableOp_9AssignVariableOpassignvariableop_9_bn3_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_bn3_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11»
AssignVariableOp_11AssignVariableOp'assignvariableop_11_bn3_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp&assignvariableop_12_dense_layer_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13г
AssignVariableOp_13AssignVariableOp$assignvariableop_13_dense_layer_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ц
AssignVariableOp_14AssignVariableOpassignvariableop_14_bn4_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ц
AssignVariableOp_15AssignVariableOpassignvariableop_15_bn4_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ф
AssignVariableOp_16AssignVariableOp#assignvariableop_16_bn4_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17»
AssignVariableOp_17AssignVariableOp'assignvariableop_17_bn4_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ф
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_76_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Е
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_76_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20Ц
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Д
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Д
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23д
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24«
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_25ц
AssignVariableOp_25AssignVariableOpassignvariableop_25_variableIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26д
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27А
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28А
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Б
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Б
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31»
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_conv1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Г
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_conv1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33г
AssignVariableOp_33AssignVariableOp$assignvariableop_33_adam_bn1_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ф
AssignVariableOp_34AssignVariableOp#assignvariableop_34_adam_bn1_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35»
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_conv2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Г
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_conv2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37г
AssignVariableOp_37AssignVariableOp$assignvariableop_37_adam_bn3_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ф
AssignVariableOp_38AssignVariableOp#assignvariableop_38_adam_bn3_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39х
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adam_dense_layer_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40│
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_dense_layer_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41г
AssignVariableOp_41AssignVariableOp$assignvariableop_41_adam_bn4_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Ф
AssignVariableOp_42AssignVariableOp#assignvariableop_42_adam_bn4_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43▓
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_76_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44░
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_76_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45»
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_conv1_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Г
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_conv1_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47г
AssignVariableOp_47AssignVariableOp$assignvariableop_47_adam_bn1_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Ф
AssignVariableOp_48AssignVariableOp#assignvariableop_48_adam_bn1_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49»
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_conv2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Г
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_conv2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51г
AssignVariableOp_51AssignVariableOp$assignvariableop_51_adam_bn3_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Ф
AssignVariableOp_52AssignVariableOp#assignvariableop_52_adam_bn3_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53х
AssignVariableOp_53AssignVariableOp-assignvariableop_53_adam_dense_layer_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54│
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_dense_layer_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55г
AssignVariableOp_55AssignVariableOp$assignvariableop_55_adam_bn4_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Ф
AssignVariableOp_56AssignVariableOp#assignvariableop_56_adam_bn4_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57▓
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_76_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58░
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_76_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_589
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp­

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_59с

Identity_60IdentityIdentity_59:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_60"#
identity_60Identity_60:output:0*І
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
┐
e
I__inference_sequential_68_layer_call_and_return_conditional_losses_108176

inputs
identityo
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xІ
rescaling_51/mulMulinputsrescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/mulЮ
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/addp
IdentityIdentityrescaling_51/add:z:0*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
¤
ќ
'__inference_Model2_layer_call_fn_107747

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

unknown_12:	љ

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identityѕбStatefulPartitionedCallЫ
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
:         : : *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_1073102
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:         @@: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
г
Ч
'__inference_Model2_layer_call_fn_107698

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

unknown_11:	љ

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:
identityѕбStatefulPartitionedCallв
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
:         : : *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_1069262
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Т
J
.__inference_sequential_68_layer_call_fn_108161

inputs
identity¤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1059152
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
╦v
Ѕ
B__inference_Model2_layer_call_and_return_conditional_losses_107495
input_79&
conv1_107410:
conv1_107412:

bn1_107415:>

bn1_107417:>

bn1_107419:>

bn1_107421:>&
conv2_107426:
conv2_107428:

bn3_107439:

bn3_107441:

bn3_107443:

bn3_107445:%
dense_layer_107451:	љ 
dense_layer_107453:

bn4_107465:

bn4_107467:

bn4_107469:

bn4_107471:!
dense_76_107475:
dense_76_107477:
identity

identity_1

identity_2ѕбBN1/StatefulPartitionedCallбBN3/StatefulPartitionedCallбBN4/StatefulPartitionedCallбCONV1/StatefulPartitionedCallбCONV2/StatefulPartitionedCallб dense_76/StatefulPartitionedCallб#dense_layer/StatefulPartitionedCallб(kernel/Regularizer/Square/ReadVariableOpб*kernel/Regularizer_1/Square/ReadVariableOpь
sequential_68/PartitionedCallPartitionedCallinput_79*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1059152
sequential_68/PartitionedCallГ
CONV1/StatefulPartitionedCallStatefulPartitionedCall&sequential_68/PartitionedCall:output:0conv1_107410conv1_107412*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_1067272
CONV1/StatefulPartitionedCall┐
BN1/StatefulPartitionedCallStatefulPartitionedCall&CONV1/StatefulPartitionedCall:output:0
bn1_107415
bn1_107417
bn1_107419
bn1_107421*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN1_layer_call_and_return_conditional_losses_1067502
BN1/StatefulPartitionedCallї
activation_128/PartitionedCallPartitionedCall$BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_128_layer_call_and_return_conditional_losses_1067652 
activation_128/PartitionedCallў
!max_pooling2d_160/PartitionedCallPartitionedCall'activation_128/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_1063772#
!max_pooling2d_160/PartitionedCall▒
CONV2/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_160/PartitionedCall:output:0conv2_107426conv2_107428*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_1067842
CONV2/StatefulPartitionedCallЬ
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
GPU 2J 8ѓ *6
f1R/
-__inference_CONV2_activity_regularizer_1063962+
)CONV2/ActivityRegularizer/PartitionedCallў
CONV2/ActivityRegularizer/ShapeShape&CONV2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shapeе
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stackг
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1г
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2■
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceф
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast╩
!CONV2/ActivityRegularizer/truedivRealDiv2CONV2/ActivityRegularizer/PartitionedCall:output:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truediv┐
BN3/StatefulPartitionedCallStatefulPartitionedCall&CONV2/StatefulPartitionedCall:output:0
bn3_107439
bn3_107441
bn3_107443
bn3_107445*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1068152
BN3/StatefulPartitionedCallї
activation_129/PartitionedCallPartitionedCall$BN3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_129_layer_call_and_return_conditional_losses_1068302 
activation_129/PartitionedCallА
$average_pooling2d_76/PartitionedCallPartitionedCall'activation_129/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *Y
fTRR
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_1065282&
$average_pooling2d_76/PartitionedCallѓ
flatten_76/PartitionedCallPartitionedCall-average_pooling2d_76/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *O
fJRH
F__inference_flatten_76_layer_call_and_return_conditional_losses_1068392
flatten_76/PartitionedCall└
#dense_layer/StatefulPartitionedCallStatefulPartitionedCall#flatten_76/PartitionedCall:output:0dense_layer_107451dense_layer_107453*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_dense_layer_layer_call_and_return_conditional_losses_1068572%
#dense_layer/StatefulPartitionedCallє
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
GPU 2J 8ѓ *<
f7R5
3__inference_dense_layer_activity_regularizer_10654721
/dense_layer/ActivityRegularizer/PartitionedCallф
%dense_layer/ActivityRegularizer/ShapeShape,dense_layer/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape┤
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stackИ
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1И
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2б
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice╝
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastР
'dense_layer/ActivityRegularizer/truedivRealDiv8dense_layer/ActivityRegularizer/PartitionedCall:output:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truediv§
dropout_9/PartitionedCallPartitionedCall,dense_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_1068762
dropout_9/PartitionedCall│
BN4/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0
bn4_107465
bn4_107467
bn4_107469
bn4_107471*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN4_layer_call_and_return_conditional_losses_1065712
BN4/StatefulPartitionedCallё
activation_130/PartitionedCallPartitionedCall$BN4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_activation_130_layer_call_and_return_conditional_losses_1068922 
activation_130/PartitionedCallх
 dense_76/StatefulPartitionedCallStatefulPartitionedCall'activation_130/PartitionedCall:output:0dense_76_107475dense_76_107477*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_dense_76_layer_call_and_return_conditional_losses_1069052"
 dense_76/StatefulPartitionedCallЕ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2_107426*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulг
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_layer_107451*
_output_shapes
:	љ*
dtype02,
*kernel/Regularizer_1/Square/ReadVariableOpб
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer_1/SquareЅ
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer_1/Constб
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/Sum}
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer_1/mul/xц
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/mulИ
IdentityIdentity)dense_76/StatefulPartitionedCall:output:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*'
_output_shapes
:         2

IdentityД

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1Г

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0^BN1/StatefulPartitionedCall^BN3/StatefulPartitionedCall^BN4/StatefulPartitionedCall^CONV1/StatefulPartitionedCall^CONV2/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall$^dense_layer/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 2:
BN1/StatefulPartitionedCallBN1/StatefulPartitionedCall2:
BN3/StatefulPartitionedCallBN3/StatefulPartitionedCall2:
BN4/StatefulPartitionedCallBN4/StatefulPartitionedCall2>
CONV1/StatefulPartitionedCallCONV1/StatefulPartitionedCall2>
CONV2/StatefulPartitionedCallCONV2/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2J
#dense_layer/StatefulPartitionedCall#dense_layer/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp:Y U
/
_output_shapes
:         @@
"
_user_specified_name
input_79
с)
п
?__inference_BN4_layer_call_and_return_conditional_losses_108783

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityѕбAssignMovingAvgбAssignMovingAvg/ReadVariableOpбAssignMovingAvg_1б AssignMovingAvg_1/ReadVariableOpбbatchnorm/ReadVariableOpбbatchnorm/mul/ReadVariableOpі
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesЈ
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
moments/StopGradientц
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:         2
moments/SquaredDifferenceњ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices▓
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(2
moments/varianceђ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 2
moments/Squeezeѕ
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
О#<2
AssignMovingAvg/decayц
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOpў
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/subЈ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg/mul┐
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
О#<2
AssignMovingAvg_1/decayф
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpа
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/subЌ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:2
AssignMovingAvg_1/mul╔
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
 *oЃ:2
batchnorm/add/yѓ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrtъ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOpЁ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2њ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOpЂ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЁ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
batchnorm/add_1І
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
▓
«
?__inference_BN3_layer_call_and_return_conditional_losses_108593

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
data_formatNCHW*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1љ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ё
Ц
A__inference_CONV2_layer_call_and_return_conditional_losses_106784

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpб(kernel/Regularizer/Square/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd╗
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul╚
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
■
і
?__inference_BN3_layer_call_and_return_conditional_losses_106418

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1р
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3В
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ж
«
?__inference_BN3_layer_call_and_return_conditional_losses_107077

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1П
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
љ
і
?__inference_BN1_layer_call_and_return_conditional_losses_106267

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1з
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+         >                  :>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3В
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+         >                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+         >                  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+         >                  
 
_user_specified_nameinputs
ў
ц
G__inference_dense_layer_layer_call_and_return_conditional_losses_108867

inputs1
matmul_readvariableop_resource:	љ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpб(kernel/Regularizer/Square/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdd┤
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpю
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer/SquareЁ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul└
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:         љ
 
_user_specified_nameinputs
┴
╩
E__inference_CONV2_layer_call_and_return_all_conditional_losses_108505

inputs!
unknown:
	unknown_0:
identity

identity_1ѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV2_layer_call_and_return_conditional_losses_1067842
StatefulPartitionedCall┤
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
GPU 2J 8ѓ *6
f1R/
-__inference_CONV2_activity_regularizer_1063962
PartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

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
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ое
«
B__inference_Model2_layer_call_and_return_conditional_losses_107870

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
*dense_layer_matmul_readvariableop_resource:	љ9
+dense_layer_biasadd_readvariableop_resource:3
%bn4_batchnorm_readvariableop_resource:7
)bn4_batchnorm_mul_readvariableop_resource:5
'bn4_batchnorm_readvariableop_1_resource:5
'bn4_batchnorm_readvariableop_2_resource:9
'dense_76_matmul_readvariableop_resource:6
(dense_76_biasadd_readvariableop_resource:
identity

identity_1

identity_2ѕб#BN1/FusedBatchNormV3/ReadVariableOpб%BN1/FusedBatchNormV3/ReadVariableOp_1бBN1/ReadVariableOpбBN1/ReadVariableOp_1б#BN3/FusedBatchNormV3/ReadVariableOpб%BN3/FusedBatchNormV3/ReadVariableOp_1бBN3/ReadVariableOpбBN3/ReadVariableOp_1бBN4/batchnorm/ReadVariableOpбBN4/batchnorm/ReadVariableOp_1бBN4/batchnorm/ReadVariableOp_2б BN4/batchnorm/mul/ReadVariableOpбCONV1/BiasAdd/ReadVariableOpбCONV1/Conv2D/ReadVariableOpбCONV2/BiasAdd/ReadVariableOpбCONV2/Conv2D/ReadVariableOpбdense_76/BiasAdd/ReadVariableOpбdense_76/MatMul/ReadVariableOpб"dense_layer/BiasAdd/ReadVariableOpб!dense_layer/MatMul/ReadVariableOpб(kernel/Regularizer/Square/ReadVariableOpб*kernel/Regularizer_1/Square/ReadVariableOpІ
!sequential_68/rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2#
!sequential_68/rescaling_51/Cast/xЈ
#sequential_68/rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_68/rescaling_51/Cast_1/xх
sequential_68/rescaling_51/mulMulinputs*sequential_68/rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2 
sequential_68/rescaling_51/mulН
sequential_68/rescaling_51/addAddV2"sequential_68/rescaling_51/mul:z:0,sequential_68/rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2 
sequential_68/rescaling_51/addД
CONV1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV1/Conv2D/ReadVariableOpм
CONV1/Conv2DConv2D"sequential_68/rescaling_51/add:z:0#CONV1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
CONV1/Conv2Dъ
CONV1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV1/BiasAdd/ReadVariableOpа
CONV1/BiasAddBiasAddCONV1/Conv2D:output:0$CONV1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2
CONV1/BiasAddђ
BN1/ReadVariableOpReadVariableOpbn1_readvariableop_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOpє
BN1/ReadVariableOp_1ReadVariableOpbn1_readvariableop_1_resource*
_output_shapes
:>*
dtype02
BN1/ReadVariableOp_1│
#BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02%
#BN1/FusedBatchNormV3/ReadVariableOp╣
%BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02'
%BN1/FusedBatchNormV3/ReadVariableOp_1Ѕ
BN1/FusedBatchNormV3FusedBatchNormV3CONV1/BiasAdd:output:0BN1/ReadVariableOp:value:0BN1/ReadVariableOp_1:value:0+BN1/FusedBatchNormV3/ReadVariableOp:value:0-BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         >>:>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
is_training( 2
BN1/FusedBatchNormV3є
activation_128/ReluReluBN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         >>2
activation_128/ReluЛ
max_pooling2d_160/MaxPoolMaxPool!activation_128/Relu:activations:0*/
_output_shapes
:         *
ksize
*
paddingVALID*
strides
2
max_pooling2d_160/MaxPoolД
CONV2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
CONV2/Conv2D/ReadVariableOpм
CONV2/Conv2DConv2D"max_pooling2d_160/MaxPool:output:0#CONV2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingVALID*
strides
2
CONV2/Conv2Dъ
CONV2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
CONV2/BiasAdd/ReadVariableOpа
CONV2/BiasAddBiasAddCONV2/Conv2D:output:0$CONV2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
CONV2/BiasAddа
 CONV2/ActivityRegularizer/SquareSquareCONV2/BiasAdd:output:0*
T0*/
_output_shapes
:         2"
 CONV2/ActivityRegularizer/SquareЏ
CONV2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2!
CONV2/ActivityRegularizer/ConstХ
CONV2/ActivityRegularizer/SumSum$CONV2/ActivityRegularizer/Square:y:0(CONV2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/SumЄ
CONV2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2!
CONV2/ActivityRegularizer/mul/xИ
CONV2/ActivityRegularizer/mulMul(CONV2/ActivityRegularizer/mul/x:output:0&CONV2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2
CONV2/ActivityRegularizer/mulѕ
CONV2/ActivityRegularizer/ShapeShapeCONV2/BiasAdd:output:0*
T0*
_output_shapes
:2!
CONV2/ActivityRegularizer/Shapeе
-CONV2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-CONV2/ActivityRegularizer/strided_slice/stackг
/CONV2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_1г
/CONV2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/CONV2/ActivityRegularizer/strided_slice/stack_2■
'CONV2/ActivityRegularizer/strided_sliceStridedSlice(CONV2/ActivityRegularizer/Shape:output:06CONV2/ActivityRegularizer/strided_slice/stack:output:08CONV2/ActivityRegularizer/strided_slice/stack_1:output:08CONV2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'CONV2/ActivityRegularizer/strided_sliceф
CONV2/ActivityRegularizer/CastCast0CONV2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2 
CONV2/ActivityRegularizer/Cast╣
!CONV2/ActivityRegularizer/truedivRealDiv!CONV2/ActivityRegularizer/mul:z:0"CONV2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2#
!CONV2/ActivityRegularizer/truedivђ
BN3/ReadVariableOpReadVariableOpbn3_readvariableop_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOpє
BN3/ReadVariableOp_1ReadVariableOpbn3_readvariableop_1_resource*
_output_shapes
:*
dtype02
BN3/ReadVariableOp_1│
#BN3/FusedBatchNormV3/ReadVariableOpReadVariableOp,bn3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02%
#BN3/FusedBatchNormV3/ReadVariableOp╣
%BN3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp.bn3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02'
%BN3/FusedBatchNormV3/ReadVariableOp_1э
BN3/FusedBatchNormV3FusedBatchNormV3CONV2/BiasAdd:output:0BN3/ReadVariableOp:value:0BN3/ReadVariableOp_1:value:0+BN3/FusedBatchNormV3/ReadVariableOp:value:0-BN3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
is_training( 2
BN3/FusedBatchNormV3є
activation_129/ReluReluBN3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         2
activation_129/ReluЯ
average_pooling2d_76/AvgPoolAvgPool!activation_129/Relu:activations:0*
T0*/
_output_shapes
:         *
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
valueB"    љ
  2
flatten_76/Constе
flatten_76/ReshapeReshape%average_pooling2d_76/AvgPool:output:0flatten_76/Const:output:0*
T0*(
_output_shapes
:         љ2
flatten_76/Reshape▓
!dense_layer/MatMul/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02#
!dense_layer/MatMul/ReadVariableOpг
dense_layer/MatMulMatMulflatten_76/Reshape:output:0)dense_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_layer/MatMul░
"dense_layer/BiasAdd/ReadVariableOpReadVariableOp+dense_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"dense_layer/BiasAdd/ReadVariableOp▒
dense_layer/BiasAddBiasAdddense_layer/MatMul:product:0*dense_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_layer/BiasAddф
&dense_layer/ActivityRegularizer/SquareSquaredense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         2(
&dense_layer/ActivityRegularizer/SquareЪ
%dense_layer/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2'
%dense_layer/ActivityRegularizer/Const╬
#dense_layer/ActivityRegularizer/SumSum*dense_layer/ActivityRegularizer/Square:y:0.dense_layer/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/SumЊ
%dense_layer/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2'
%dense_layer/ActivityRegularizer/mul/xл
#dense_layer/ActivityRegularizer/mulMul.dense_layer/ActivityRegularizer/mul/x:output:0,dense_layer/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2%
#dense_layer/ActivityRegularizer/mulџ
%dense_layer/ActivityRegularizer/ShapeShapedense_layer/BiasAdd:output:0*
T0*
_output_shapes
:2'
%dense_layer/ActivityRegularizer/Shape┤
3dense_layer/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3dense_layer/ActivityRegularizer/strided_slice/stackИ
5dense_layer/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_1И
5dense_layer/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5dense_layer/ActivityRegularizer/strided_slice/stack_2б
-dense_layer/ActivityRegularizer/strided_sliceStridedSlice.dense_layer/ActivityRegularizer/Shape:output:0<dense_layer/ActivityRegularizer/strided_slice/stack:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_1:output:0>dense_layer/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-dense_layer/ActivityRegularizer/strided_slice╝
$dense_layer/ActivityRegularizer/CastCast6dense_layer/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$dense_layer/ActivityRegularizer/CastЛ
'dense_layer/ActivityRegularizer/truedivRealDiv'dense_layer/ActivityRegularizer/mul:z:0(dense_layer/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2)
'dense_layer/ActivityRegularizer/truedivё
dropout_9/IdentityIdentitydense_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dropout_9/Identityъ
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
 *oЃ:2
BN4/batchnorm/add/yў
BN4/batchnorm/addAddV2$BN4/batchnorm/ReadVariableOp:value:0BN4/batchnorm/add/y:output:0*
T0*
_output_shapes
:2
BN4/batchnorm/addo
BN4/batchnorm/RsqrtRsqrtBN4/batchnorm/add:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/Rsqrtф
 BN4/batchnorm/mul/ReadVariableOpReadVariableOp)bn4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02"
 BN4/batchnorm/mul/ReadVariableOpЋ
BN4/batchnorm/mulMulBN4/batchnorm/Rsqrt:y:0(BN4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
BN4/batchnorm/mulЌ
BN4/batchnorm/mul_1Muldropout_9/Identity:output:0BN4/batchnorm/mul:z:0*
T0*'
_output_shapes
:         2
BN4/batchnorm/mul_1ц
BN4/batchnorm/ReadVariableOp_1ReadVariableOp'bn4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02 
BN4/batchnorm/ReadVariableOp_1Ћ
BN4/batchnorm/mul_2Mul&BN4/batchnorm/ReadVariableOp_1:value:0BN4/batchnorm/mul:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/mul_2ц
BN4/batchnorm/ReadVariableOp_2ReadVariableOp'bn4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02 
BN4/batchnorm/ReadVariableOp_2Њ
BN4/batchnorm/subSub&BN4/batchnorm/ReadVariableOp_2:value:0BN4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
BN4/batchnorm/subЋ
BN4/batchnorm/add_1AddV2BN4/batchnorm/mul_1:z:0BN4/batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
BN4/batchnorm/add_1}
activation_130/ReluReluBN4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:         2
activation_130/Reluе
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:*
dtype02 
dense_76/MatMul/ReadVariableOpЕ
dense_76/MatMulMatMul!activation_130/Relu:activations:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_76/MatMulД
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_76/BiasAdd/ReadVariableOpЦ
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_76/BiasAdd|
dense_76/SigmoidSigmoiddense_76/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_76/Sigmoid┴
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul─
*kernel/Regularizer_1/Square/ReadVariableOpReadVariableOp*dense_layer_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype02,
*kernel/Regularizer_1/Square/ReadVariableOpб
kernel/Regularizer_1/SquareSquare2kernel/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer_1/SquareЅ
kernel/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer_1/Constб
kernel/Regularizer_1/SumSumkernel/Regularizer_1/Square:y:0#kernel/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/Sum}
kernel/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer_1/mul/xц
kernel/Regularizer_1/mulMul#kernel/Regularizer_1/mul/x:output:0!kernel/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer_1/mulЙ
IdentityIdentitydense_76/Sigmoid:y:0$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp^BN4/batchnorm/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp_2!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity┬

Identity_1Identity%CONV2/ActivityRegularizer/truediv:z:0$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp^BN4/batchnorm/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp_2!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1╚

Identity_2Identity+dense_layer/ActivityRegularizer/truediv:z:0$^BN1/FusedBatchNormV3/ReadVariableOp&^BN1/FusedBatchNormV3/ReadVariableOp_1^BN1/ReadVariableOp^BN1/ReadVariableOp_1$^BN3/FusedBatchNormV3/ReadVariableOp&^BN3/FusedBatchNormV3/ReadVariableOp_1^BN3/ReadVariableOp^BN3/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp^BN4/batchnorm/ReadVariableOp_1^BN4/batchnorm/ReadVariableOp_2!^BN4/batchnorm/mul/ReadVariableOp^CONV1/BiasAdd/ReadVariableOp^CONV1/Conv2D/ReadVariableOp^CONV2/BiasAdd/ReadVariableOp^CONV2/Conv2D/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp#^dense_layer/BiasAdd/ReadVariableOp"^dense_layer/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp+^kernel/Regularizer_1/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 2J
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
CONV2/Conv2D/ReadVariableOpCONV2/Conv2D/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2H
"dense_layer/BiasAdd/ReadVariableOp"dense_layer/BiasAdd/ReadVariableOp2F
!dense_layer/MatMul/ReadVariableOp!dense_layer/MatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2X
*kernel/Regularizer_1/Square/ReadVariableOp*kernel/Regularizer_1/Square/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
У
b
F__inference_flatten_76_layer_call_and_return_conditional_losses_108650

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    љ
  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         љ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         љ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
█
N
2__inference_max_pooling2d_160_layer_call_fn_106383

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *V
fQRO
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_1063772
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж
s
I__inference_sequential_68_layer_call_and_return_conditional_losses_106095
random_flip_68_input
identityo
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xЎ
rescaling_51/mulMulrandom_flip_68_inputrescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/mulЮ
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/addp
IdentityIdentityrescaling_51/add:z:0*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:e a
/
_output_shapes
:         @@
.
_user_specified_namerandom_flip_68_input
й
Џ
&__inference_CONV1_layer_call_fn_108335

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *J
fERC
A__inference_CONV1_layer_call_and_return_conditional_losses_1067272
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Хі
Ш
I__inference_sequential_68_layer_call_and_return_conditional_losses_106245
random_flip_68_inputI
;random_rotation_68_stateful_uniform_rngreadandskip_resource:	
identityѕб2random_rotation_68/stateful_uniform/RngReadAndSkipщ
8random_flip_68/random_flip_left_right/control_dependencyIdentityrandom_flip_68_input*
T0*'
_class
loc:@random_flip_68_input*/
_output_shapes
:         @@2:
8random_flip_68/random_flip_left_right/control_dependency╦
+random_flip_68/random_flip_left_right/ShapeShapeArandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2-
+random_flip_68/random_flip_left_right/Shape└
9random_flip_68/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9random_flip_68/random_flip_left_right/strided_slice/stack─
;random_flip_68/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_1─
;random_flip_68/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_flip_68/random_flip_left_right/strided_slice/stack_2к
3random_flip_68/random_flip_left_right/strided_sliceStridedSlice4random_flip_68/random_flip_left_right/Shape:output:0Brandom_flip_68/random_flip_left_right/strided_slice/stack:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_1:output:0Drandom_flip_68/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask25
3random_flip_68/random_flip_left_right/strided_sliceВ
:random_flip_68/random_flip_left_right/random_uniform/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2<
:random_flip_68/random_flip_left_right/random_uniform/shape╣
8random_flip_68/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2:
8random_flip_68/random_flip_left_right/random_uniform/min╣
8random_flip_68/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2:
8random_flip_68/random_flip_left_right/random_uniform/maxЎ
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniformRandomUniformCrandom_flip_68/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:         *
dtype02D
Brandom_flip_68/random_flip_left_right/random_uniform/RandomUniform╣
8random_flip_68/random_flip_left_right/random_uniform/MulMulKrandom_flip_68/random_flip_left_right/random_uniform/RandomUniform:output:0Arandom_flip_68/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:         2:
8random_flip_68/random_flip_left_right/random_uniform/Mul░
5random_flip_68/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/1░
5random_flip_68/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/2░
5random_flip_68/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :27
5random_flip_68/random_flip_left_right/Reshape/shape/3ъ
3random_flip_68/random_flip_left_right/Reshape/shapePack<random_flip_68/random_flip_left_right/strided_slice:output:0>random_flip_68/random_flip_left_right/Reshape/shape/1:output:0>random_flip_68/random_flip_left_right/Reshape/shape/2:output:0>random_flip_68/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:25
3random_flip_68/random_flip_left_right/Reshape/shapeЪ
-random_flip_68/random_flip_left_right/ReshapeReshape<random_flip_68/random_flip_left_right/random_uniform/Mul:z:0<random_flip_68/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         2/
-random_flip_68/random_flip_left_right/ReshapeН
+random_flip_68/random_flip_left_right/RoundRound6random_flip_68/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         2-
+random_flip_68/random_flip_left_right/RoundХ
4random_flip_68/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:26
4random_flip_68/random_flip_left_right/ReverseV2/axisФ
/random_flip_68/random_flip_left_right/ReverseV2	ReverseV2Arandom_flip_68/random_flip_left_right/control_dependency:output:0=random_flip_68/random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:         @@21
/random_flip_68/random_flip_left_right/ReverseV2ѓ
)random_flip_68/random_flip_left_right/mulMul/random_flip_68/random_flip_left_right/Round:y:08random_flip_68/random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:         @@2+
)random_flip_68/random_flip_left_right/mulЪ
+random_flip_68/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2-
+random_flip_68/random_flip_left_right/sub/x■
)random_flip_68/random_flip_left_right/subSub4random_flip_68/random_flip_left_right/sub/x:output:0/random_flip_68/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         2+
)random_flip_68/random_flip_left_right/subЇ
+random_flip_68/random_flip_left_right/mul_1Mul-random_flip_68/random_flip_left_right/sub:z:0Arandom_flip_68/random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:         @@2-
+random_flip_68/random_flip_left_right/mul_1щ
)random_flip_68/random_flip_left_right/addAddV2-random_flip_68/random_flip_left_right/mul:z:0/random_flip_68/random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:         @@2+
)random_flip_68/random_flip_left_right/addЉ
random_rotation_68/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2
random_rotation_68/Shapeџ
&random_rotation_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&random_rotation_68/strided_slice/stackъ
(random_rotation_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_1ъ
(random_rotation_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice/stack_2н
 random_rotation_68/strided_sliceStridedSlice!random_rotation_68/Shape:output:0/random_rotation_68/strided_slice/stack:output:01random_rotation_68/strided_slice/stack_1:output:01random_rotation_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 random_rotation_68/strided_sliceъ
(random_rotation_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_1/stackб
*random_rotation_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_1б
*random_rotation_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_1/stack_2я
"random_rotation_68/strided_slice_1StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_1/stack:output:03random_rotation_68/strided_slice_1/stack_1:output:03random_rotation_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_1Ќ
random_rotation_68/CastCast+random_rotation_68/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Castъ
(random_rotation_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(random_rotation_68/strided_slice_2/stackб
*random_rotation_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_1б
*random_rotation_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*random_rotation_68/strided_slice_2/stack_2я
"random_rotation_68/strided_slice_2StridedSlice!random_rotation_68/Shape:output:01random_rotation_68/strided_slice_2/stack:output:03random_rotation_68/strided_slice_2/stack_1:output:03random_rotation_68/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"random_rotation_68/strided_slice_2Џ
random_rotation_68/Cast_1Cast+random_rotation_68/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_68/Cast_1и
)random_rotation_68/stateful_uniform/shapePack)random_rotation_68/strided_slice:output:0*
N*
T0*
_output_shapes
:2+
)random_rotation_68/stateful_uniform/shapeЌ
'random_rotation_68/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐2)
'random_rotation_68/stateful_uniform/minЌ
'random_rotation_68/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?2)
'random_rotation_68/stateful_uniform/maxа
)random_rotation_68/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2+
)random_rotation_68/stateful_uniform/Constт
(random_rotation_68/stateful_uniform/ProdProd2random_rotation_68/stateful_uniform/shape:output:02random_rotation_68/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/stateful_uniform/Prodџ
*random_rotation_68/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2,
*random_rotation_68/stateful_uniform/Cast/x├
*random_rotation_68/stateful_uniform/Cast_1Cast1random_rotation_68/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2,
*random_rotation_68/stateful_uniform/Cast_1И
2random_rotation_68/stateful_uniform/RngReadAndSkipRngReadAndSkip;random_rotation_68_stateful_uniform_rngreadandskip_resource3random_rotation_68/stateful_uniform/Cast/x:output:0.random_rotation_68/stateful_uniform/Cast_1:y:0*
_output_shapes
:24
2random_rotation_68/stateful_uniform/RngReadAndSkip╝
7random_rotation_68/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7random_rotation_68/stateful_uniform/strided_slice/stack└
9random_rotation_68/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_1└
9random_rotation_68/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice/stack_2└
1random_rotation_68/stateful_uniform/strided_sliceStridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0@random_rotation_68/stateful_uniform/strided_slice/stack:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_1:output:0Brandom_rotation_68/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask23
1random_rotation_68/stateful_uniform/strided_sliceм
+random_rotation_68/stateful_uniform/BitcastBitcast:random_rotation_68/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02-
+random_rotation_68/stateful_uniform/Bitcast└
9random_rotation_68/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2;
9random_rotation_68/stateful_uniform/strided_slice_1/stack─
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_1─
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;random_rotation_68/stateful_uniform/strided_slice_1/stack_2И
3random_rotation_68/stateful_uniform/strided_slice_1StridedSlice:random_rotation_68/stateful_uniform/RngReadAndSkip:value:0Brandom_rotation_68/stateful_uniform/strided_slice_1/stack:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_1:output:0Drandom_rotation_68/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:25
3random_rotation_68/stateful_uniform/strided_slice_1п
-random_rotation_68/stateful_uniform/Bitcast_1Bitcast<random_rotation_68/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02/
-random_rotation_68/stateful_uniform/Bitcast_1к
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2B
@random_rotation_68/stateful_uniform/StatelessRandomUniformV2/algф
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV22random_rotation_68/stateful_uniform/shape:output:06random_rotation_68/stateful_uniform/Bitcast_1:output:04random_rotation_68/stateful_uniform/Bitcast:output:0Irandom_rotation_68/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         2>
<random_rotation_68/stateful_uniform/StatelessRandomUniformV2я
'random_rotation_68/stateful_uniform/subSub0random_rotation_68/stateful_uniform/max:output:00random_rotation_68/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2)
'random_rotation_68/stateful_uniform/subч
'random_rotation_68/stateful_uniform/mulMulErandom_rotation_68/stateful_uniform/StatelessRandomUniformV2:output:0+random_rotation_68/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         2)
'random_rotation_68/stateful_uniform/mulя
#random_rotation_68/stateful_uniformAdd+random_rotation_68/stateful_uniform/mul:z:00random_rotation_68/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         2%
#random_rotation_68/stateful_uniformЎ
(random_rotation_68/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2*
(random_rotation_68/rotation_matrix/sub/y╩
&random_rotation_68/rotation_matrix/subSubrandom_rotation_68/Cast_1:y:01random_rotation_68/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2(
&random_rotation_68/rotation_matrix/sub«
&random_rotation_68/rotation_matrix/CosCos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/CosЮ
*random_rotation_68/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_1/yл
(random_rotation_68/rotation_matrix/sub_1Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_1▀
&random_rotation_68/rotation_matrix/mulMul*random_rotation_68/rotation_matrix/Cos:y:0,random_rotation_68/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/mul«
&random_rotation_68/rotation_matrix/SinSin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/SinЮ
*random_rotation_68/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_2/y╬
(random_rotation_68/rotation_matrix/sub_2Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_2с
(random_rotation_68/rotation_matrix/mul_1Mul*random_rotation_68/rotation_matrix/Sin:y:0,random_rotation_68/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_1с
(random_rotation_68/rotation_matrix/sub_3Sub*random_rotation_68/rotation_matrix/mul:z:0,random_rotation_68/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_3с
(random_rotation_68/rotation_matrix/sub_4Sub*random_rotation_68/rotation_matrix/sub:z:0,random_rotation_68/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_4А
,random_rotation_68/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2.
,random_rotation_68/rotation_matrix/truediv/yШ
*random_rotation_68/rotation_matrix/truedivRealDiv,random_rotation_68/rotation_matrix/sub_4:z:05random_rotation_68/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         2,
*random_rotation_68/rotation_matrix/truedivЮ
*random_rotation_68/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_5/y╬
(random_rotation_68/rotation_matrix/sub_5Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_5▓
(random_rotation_68/rotation_matrix/Sin_1Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_1Ю
*random_rotation_68/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_6/yл
(random_rotation_68/rotation_matrix/sub_6Subrandom_rotation_68/Cast_1:y:03random_rotation_68/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_6т
(random_rotation_68/rotation_matrix/mul_2Mul,random_rotation_68/rotation_matrix/Sin_1:y:0,random_rotation_68/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_2▓
(random_rotation_68/rotation_matrix/Cos_1Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_1Ю
*random_rotation_68/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2,
*random_rotation_68/rotation_matrix/sub_7/y╬
(random_rotation_68/rotation_matrix/sub_7Subrandom_rotation_68/Cast:y:03random_rotation_68/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2*
(random_rotation_68/rotation_matrix/sub_7т
(random_rotation_68/rotation_matrix/mul_3Mul,random_rotation_68/rotation_matrix/Cos_1:y:0,random_rotation_68/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/mul_3с
&random_rotation_68/rotation_matrix/addAddV2,random_rotation_68/rotation_matrix/mul_2:z:0,random_rotation_68/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/addс
(random_rotation_68/rotation_matrix/sub_8Sub,random_rotation_68/rotation_matrix/sub_5:z:0*random_rotation_68/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/sub_8Ц
.random_rotation_68/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @20
.random_rotation_68/rotation_matrix/truediv_1/yЧ
,random_rotation_68/rotation_matrix/truediv_1RealDiv,random_rotation_68/rotation_matrix/sub_8:z:07random_rotation_68/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         2.
,random_rotation_68/rotation_matrix/truediv_1Ф
(random_rotation_68/rotation_matrix/ShapeShape'random_rotation_68/stateful_uniform:z:0*
T0*
_output_shapes
:2*
(random_rotation_68/rotation_matrix/Shape║
6random_rotation_68/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_68/rotation_matrix/strided_slice/stackЙ
8random_rotation_68/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_1Й
8random_rotation_68/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_68/rotation_matrix/strided_slice/stack_2┤
0random_rotation_68/rotation_matrix/strided_sliceStridedSlice1random_rotation_68/rotation_matrix/Shape:output:0?random_rotation_68/rotation_matrix/strided_slice/stack:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_1:output:0Arandom_rotation_68/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0random_rotation_68/rotation_matrix/strided_slice▓
(random_rotation_68/rotation_matrix/Cos_2Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_2┼
8random_rotation_68/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_1/stack╔
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_1/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_1StridedSlice,random_rotation_68/rotation_matrix/Cos_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_1/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_1▓
(random_rotation_68/rotation_matrix/Sin_2Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_2┼
8random_rotation_68/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_2/stack╔
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_2/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_2StridedSlice,random_rotation_68/rotation_matrix/Sin_2:y:0Arandom_rotation_68/rotation_matrix/strided_slice_2/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_2к
&random_rotation_68/rotation_matrix/NegNeg;random_rotation_68/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         2(
&random_rotation_68/rotation_matrix/Neg┼
8random_rotation_68/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_3/stack╔
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_3/stack_2в
2random_rotation_68/rotation_matrix/strided_slice_3StridedSlice.random_rotation_68/rotation_matrix/truediv:z:0Arandom_rotation_68/rotation_matrix/strided_slice_3/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_3▓
(random_rotation_68/rotation_matrix/Sin_3Sin'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Sin_3┼
8random_rotation_68/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_4/stack╔
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_4/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_4StridedSlice,random_rotation_68/rotation_matrix/Sin_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_4/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_4▓
(random_rotation_68/rotation_matrix/Cos_3Cos'random_rotation_68/stateful_uniform:z:0*
T0*#
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/Cos_3┼
8random_rotation_68/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_5/stack╔
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_5/stack_2ж
2random_rotation_68/rotation_matrix/strided_slice_5StridedSlice,random_rotation_68/rotation_matrix/Cos_3:y:0Arandom_rotation_68/rotation_matrix/strided_slice_5/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_5┼
8random_rotation_68/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2:
8random_rotation_68/rotation_matrix/strided_slice_6/stack╔
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_1╔
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2<
:random_rotation_68/rotation_matrix/strided_slice_6/stack_2ь
2random_rotation_68/rotation_matrix/strided_slice_6StridedSlice0random_rotation_68/rotation_matrix/truediv_1:z:0Arandom_rotation_68/rotation_matrix/strided_slice_6/stack:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_1:output:0Crandom_rotation_68/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask24
2random_rotation_68/rotation_matrix/strided_slice_6б
.random_rotation_68/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/zeros/mul/yЭ
,random_rotation_68/rotation_matrix/zeros/mulMul9random_rotation_68/rotation_matrix/strided_slice:output:07random_rotation_68/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_68/rotation_matrix/zeros/mulЦ
/random_rotation_68/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У21
/random_rotation_68/rotation_matrix/zeros/Less/yз
-random_rotation_68/rotation_matrix/zeros/LessLess0random_rotation_68/rotation_matrix/zeros/mul:z:08random_rotation_68/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2/
-random_rotation_68/rotation_matrix/zeros/Lessе
1random_rotation_68/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_rotation_68/rotation_matrix/zeros/packed/1Ј
/random_rotation_68/rotation_matrix/zeros/packedPack9random_rotation_68/rotation_matrix/strided_slice:output:0:random_rotation_68/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:21
/random_rotation_68/rotation_matrix/zeros/packedЦ
.random_rotation_68/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.random_rotation_68/rotation_matrix/zeros/ConstЂ
(random_rotation_68/rotation_matrix/zerosFill8random_rotation_68/rotation_matrix/zeros/packed:output:07random_rotation_68/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         2*
(random_rotation_68/rotation_matrix/zerosб
.random_rotation_68/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :20
.random_rotation_68/rotation_matrix/concat/axisТ
)random_rotation_68/rotation_matrix/concatConcatV2;random_rotation_68/rotation_matrix/strided_slice_1:output:0*random_rotation_68/rotation_matrix/Neg:y:0;random_rotation_68/rotation_matrix/strided_slice_3:output:0;random_rotation_68/rotation_matrix/strided_slice_4:output:0;random_rotation_68/rotation_matrix/strided_slice_5:output:0;random_rotation_68/rotation_matrix/strided_slice_6:output:01random_rotation_68/rotation_matrix/zeros:output:07random_rotation_68/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         2+
)random_rotation_68/rotation_matrix/concatЦ
"random_rotation_68/transform/ShapeShape-random_flip_68/random_flip_left_right/add:z:0*
T0*
_output_shapes
:2$
"random_rotation_68/transform/Shape«
0random_rotation_68/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0random_rotation_68/transform/strided_slice/stack▓
2random_rotation_68/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_1▓
2random_rotation_68/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2random_rotation_68/transform/strided_slice/stack_2Ч
*random_rotation_68/transform/strided_sliceStridedSlice+random_rotation_68/transform/Shape:output:09random_rotation_68/transform/strided_slice/stack:output:0;random_rotation_68/transform/strided_slice/stack_1:output:0;random_rotation_68/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2,
*random_rotation_68/transform/strided_sliceЌ
'random_rotation_68/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_rotation_68/transform/fill_value═
7random_rotation_68/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_flip_68/random_flip_left_right/add:z:02random_rotation_68/rotation_matrix/concat:output:03random_rotation_68/transform/strided_slice:output:00random_rotation_68/transform/fill_value:output:0*/
_output_shapes
:         @@*
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
 *Ђђђ;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xЛ
rescaling_51/mulMulLrandom_rotation_68/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/mulЮ
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/addЦ
IdentityIdentityrescaling_51/add:z:03^random_rotation_68/stateful_uniform/RngReadAndSkip*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @@: 2h
2random_rotation_68/stateful_uniform/RngReadAndSkip2random_rotation_68/stateful_uniform/RngReadAndSkip:e a
/
_output_shapes
:         @@
.
_user_specified_namerandom_flip_68_input
§
┐
$__inference_BN3_layer_call_fn_108544

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallЉ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_BN3_layer_call_and_return_conditional_losses_1068152
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
▓
■
'__inference_Model2_layer_call_fn_106971
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

unknown_11:	љ

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:
identityѕбStatefulPartitionedCallь
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
:         : : *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_Model2_layer_call_and_return_conditional_losses_1069262
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:         @@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         @@
"
_user_specified_name
input_79
Р
D
-__inference_CONV2_activity_regularizer_106396
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
:         2
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
╣
l
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_106528

inputs
identityХ
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
AvgPoolЄ
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┐
e
I__inference_sequential_68_layer_call_and_return_conditional_losses_105915

inputs
identityo
rescaling_51/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_51/Cast/xs
rescaling_51/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_51/Cast_1/xІ
rescaling_51/mulMulinputsrescaling_51/Cast/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/mulЮ
rescaling_51/addAddV2rescaling_51/mul:z:0rescaling_51/Cast_1/x:output:0*
T0*/
_output_shapes
:         @@2
rescaling_51/addp
IdentityIdentityrescaling_51/add:z:0*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @@:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Ћ
~
.__inference_sequential_68_layer_call_fn_108168

inputs
unknown:	
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *R
fMRK
I__inference_sequential_68_layer_call_and_return_conditional_losses_1060752
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         @@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         @@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
Е
Д
__inference_loss_fn_0_108824K
1kernel_regularizer_square_readvariableop_resource:
identityѕб(kernel/Regularizer/Square/ReadVariableOp╬
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpБ
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2
kernel/Regularizer/SquareЇ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulѕ
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
Х
і
?__inference_BN3_layer_call_and_return_conditional_losses_108611

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1¤
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3┌
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
«

Щ
A__inference_CONV1_layer_call_and_return_conditional_losses_106727

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         >>2	
BiasAddЮ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         >>2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @@
 
_user_specified_nameinputs
ї
а
__inference_loss_fn_1_108835D
1kernel_regularizer_square_readvariableop_resource:	љ
identityѕб(kernel/Regularizer/Square/ReadVariableOpК
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	љ*
dtype02*
(kernel/Regularizer/Square/ReadVariableOpю
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	љ2
kernel/Regularizer/SquareЁ
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Constџ
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;2
kernel/Regularizer/mul/xю
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulѕ
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
ї
ъ
?__inference_BN4_layer_call_and_return_conditional_losses_106571

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityѕбbatchnorm/ReadVariableOpбbatchnorm/ReadVariableOp_1бbatchnorm/ReadVariableOp_2бbatchnorm/mul/ReadVariableOpњ
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
 *oЃ:2
batchnorm/add/yѕ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:2
batchnorm/Rsqrtъ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOpЁ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:         2
batchnorm/mul_1ў
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_1Ё
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:2
batchnorm/mul_2ў
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp_2Ѓ
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:2
batchnorm/subЁ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:         2
batchnorm/add_1█
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
─
«
?__inference_BN1_layer_call_and_return_conditional_losses_108433

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ђ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+         >                  :>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1љ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+         >                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+         >                  : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+         >                  
 
_user_specified_nameinputs
Р
f
J__inference_activation_130_layer_call_and_return_conditional_losses_106892

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
љ
і
?__inference_BN1_layer_call_and_return_conditional_losses_108415

inputs%
readvariableop_resource:>'
readvariableop_1_resource:>6
(fusedbatchnormv3_readvariableop_resource:>8
*fusedbatchnormv3_readvariableop_1_resource:>
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:>*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:>*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:>*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:>*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1з
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+         >                  :>:>:>:>:*
data_formatNCHW*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3В
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+         >                  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+         >                  : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+         >                  
 
_user_specified_nameinputs
■
і
?__inference_BN3_layer_call_and_return_conditional_losses_108575

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1р
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
data_formatNCHW*
is_training( 2
FusedBatchNormV3В
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ф
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_108703

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape┤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>2
dropout/GreaterEqual/yЙ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ж
«
?__inference_BN3_layer_call_and_return_conditional_losses_108629

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1П
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         :::::*
data_formatNCHW*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1■
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*х
serving_defaultА
E
input_799
serving_default_input_79:0         @@<
dense_760
StatefulPartitionedCall:0         tensorflow/serving/predict:н┼
їІ
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

signatures
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
	keras_api
є__call__
Є_default_save_signature
+ѕ&call_and_return_all_conditional_losses"їє
_tf_keras_network№Ё{"name": "Model2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Model2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_79"}, "name": "input_79", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "name": "sequential_68", "inbound_nodes": [[["input_79", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CONV1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV1", "inbound_nodes": [[["sequential_68", 1, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1", "inbound_nodes": [[["CONV1", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_128", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_128", "inbound_nodes": [[["BN1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_160", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_160", "inbound_nodes": [[["activation_128", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "CONV2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV2", "inbound_nodes": [[["max_pooling2d_160", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.0001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3", "inbound_nodes": [[["CONV2", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_129", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_129", "inbound_nodes": [[["BN3", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_76", "inbound_nodes": [[["activation_129", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_76", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_76", "inbound_nodes": [[["average_pooling2d_76", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_layer", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer", "inbound_nodes": [[["flatten_76", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_9", "inbound_nodes": [[["dense_layer", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BN4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN4", "inbound_nodes": [[["dropout_9", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_130", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_130", "inbound_nodes": [[["BN4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_76", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_76", "inbound_nodes": [[["activation_130", 0, 0, {}]]]}], "input_layers": [["input_79", 0, 0]], "output_layers": [["dense_76", 0, 0]]}, "shared_object_id": 44, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "float32", "input_79"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Model2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_79"}, "name": "input_79", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "name": "sequential_68", "inbound_nodes": [[["input_79", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "CONV1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV1", "inbound_nodes": [[["sequential_68", 1, 0, {}]]], "shared_object_id": 8}, {"class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 12}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN1", "inbound_nodes": [[["CONV1", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Activation", "config": {"name": "activation_128", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_128", "inbound_nodes": [[["BN1", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_160", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_160", "inbound_nodes": [[["activation_128", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Conv2D", "config": {"name": "CONV2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 19}, "kernel_constraint": null, "bias_constraint": null}, "name": "CONV2", "inbound_nodes": [[["max_pooling2d_160", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.0001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN3", "inbound_nodes": [[["CONV2", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Activation", "config": {"name": "activation_129", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_129", "inbound_nodes": [[["BN3", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "average_pooling2d_76", "inbound_nodes": [[["activation_129", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Flatten", "config": {"name": "flatten_76", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_76", "inbound_nodes": [[["average_pooling2d_76", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Dense", "config": {"name": "dense_layer", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 31}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 32}, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_layer", "inbound_nodes": [[["flatten_76", 0, 0, {}]]], "shared_object_id": 33}, {"class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_9", "inbound_nodes": [[["dense_layer", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "BatchNormalization", "config": {"name": "BN4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BN4", "inbound_nodes": [[["dropout_9", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Activation", "config": {"name": "activation_130", "trainable": true, "dtype": "float32", "activation": "relu"}, "name": "activation_130", "inbound_nodes": [[["BN4", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "Dense", "config": {"name": "dense_76", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_76", "inbound_nodes": [[["activation_130", 0, 0, {}]]], "shared_object_id": 43}], "input_layers": [["input_79", 0, 0]], "output_layers": [["dense_76", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 46}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
а
#_self_saveable_object_factories"Э
_tf_keras_input_layerп{"class_name": "InputLayer", "name": "input_79", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_79"}}
Ы
layer-0
layer-1
layer-2
#_self_saveable_object_factories
trainable_variables
regularization_losses
	variables
 	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"Ћ
_tf_keras_sequentialШ{"name": "sequential_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "inbound_nodes": [[["input_79", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 47}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 64, 64, 3]}, "float32", "random_flip_68_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 64, 64, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_68_input"}, "shared_object_id": 1}, {"class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "shared_object_id": 2}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}, {"class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 4}]}}}
Б

!kernel
"bias
##_self_saveable_object_factories
$trainable_variables
%regularization_losses
&	variables
'	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"О	
_tf_keras_layerй	{"name": "CONV1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "CONV1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["sequential_68", 1, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 3]}}
Ш

(axis
	)gamma
*beta
+moving_mean
,moving_variance
#-_self_saveable_object_factories
.trainable_variables
/regularization_losses
0	variables
1	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"ч
_tf_keras_layerр{"name": "BN1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN1", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 12}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["CONV1", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"1": 62}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 62, 62, 16]}}
└
#2_self_saveable_object_factories
3trainable_variables
4regularization_losses
5	variables
6	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"і
_tf_keras_layer­{"name": "activation_128", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_128", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["BN1", 0, 0, {}]]], "shared_object_id": 14}
Ї
#7_self_saveable_object_factories
8trainable_variables
9regularization_losses
:	variables
;	keras_api
Љ__call__
+њ&call_and_return_all_conditional_losses"О
_tf_keras_layerй{"name": "max_pooling2d_160", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_160", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_128", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 50}}
й

<kernel
=bias
#>_self_saveable_object_factories
?trainable_variables
@regularization_losses
A	variables
B	keras_api
Њ__call__
+ћ&call_and_return_all_conditional_losses"ы
_tf_keras_layerО{"name": "CONV2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "CONV2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 19}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_160", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 51}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 16]}}
Э

Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
Ћ__call__
+ќ&call_and_return_all_conditional_losses"§
_tf_keras_layerс{"name": "BN3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN3", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.0001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["CONV2", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"1": 28}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 16]}}
└
#M_self_saveable_object_factories
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
Ќ__call__
+ў&call_and_return_all_conditional_losses"і
_tf_keras_layer­{"name": "activation_129", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_129", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["BN3", 0, 0, {}]]], "shared_object_id": 26}
Ќ
#R_self_saveable_object_factories
Strainable_variables
Tregularization_losses
U	variables
V	keras_api
Ў__call__
+џ&call_and_return_all_conditional_losses"р
_tf_keras_layerК{"name": "average_pooling2d_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_76", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["activation_129", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 53}}
Э
#W_self_saveable_object_factories
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
Џ__call__
+ю&call_and_return_all_conditional_losses"┬
_tf_keras_layerе{"name": "flatten_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_76", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["average_pooling2d_76", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 54}}
┼

\kernel
]bias
#^_self_saveable_object_factories
_trainable_variables
`regularization_losses
a	variables
b	keras_api
Ю__call__
+ъ&call_and_return_all_conditional_losses"щ	
_tf_keras_layer▀	{"name": "dense_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_layer", "trainable": true, "dtype": "float32", "units": 16, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 31}, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 32}, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_76", 0, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2704}}, "shared_object_id": 55}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 0.0020000000949949026}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2704]}}
н
#c_self_saveable_object_factories
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
Ъ__call__
+а&call_and_return_all_conditional_losses"ъ
_tf_keras_layerё{"name": "dropout_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_9", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_layer", 0, 0, {}]]], "shared_object_id": 34}
з

haxis
	igamma
jbeta
kmoving_mean
lmoving_variance
#m_self_saveable_object_factories
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
А__call__
+б&call_and_return_all_conditional_losses"Э
_tf_keras_layerя{"name": "BN4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BN4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 36}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 37}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 38}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["dropout_9", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 16}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
└
#r_self_saveable_object_factories
strainable_variables
tregularization_losses
u	variables
v	keras_api
Б__call__
+ц&call_and_return_all_conditional_losses"і
_tf_keras_layer­{"name": "activation_130", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_130", "trainable": true, "dtype": "float32", "activation": "relu"}, "inbound_nodes": [[["BN4", 0, 0, {}]]], "shared_object_id": 40}
«	

wkernel
xbias
#y_self_saveable_object_factories
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
Ц__call__
+д&call_and_return_all_conditional_losses"Р
_tf_keras_layer╚{"name": "dense_76", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_76", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["activation_130", 0, 0, {}]]], "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
Ь
~iter

beta_1
ђbeta_2

Ђdecay
ѓlearning_rate!mЖ"mв)mВ*mь<mЬ=m№Dm­Emы\mЫ]mзimЗjmшwmШxmэ!vЭ"vщ)vЩ*vч<vЧ=v§Dv■Ev \vђ]vЂivѓjvЃwvёxvЁ"
	optimizer
-
Дserving_default"
signature_map
 "
trackable_dict_wrapper
є
!0
"1
)2
*3
<4
=5
D6
E7
\8
]9
i10
j11
w12
x13"
trackable_list_wrapper
0
е0
Е1"
trackable_list_wrapper
Х
!0
"1
)2
*3
+4
,5
<6
=7
D8
E9
F10
G11
\12
]13
i14
j15
k16
l17
w18
x19"
trackable_list_wrapper
М
Ѓmetrics
trainable_variables
regularization_losses
ёlayers
Ёnon_trainable_variables
	variables
єlayer_metrics
 Єlayer_regularization_losses
є__call__
Є_default_save_signature
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
┘
	ѕ_rng
$Ѕ_self_saveable_object_factories
і	keras_api"Ћ
_tf_keras_layerч{"name": "random_flip_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomFlip", "config": {"name": "random_flip_68", "trainable": true, "dtype": "float32", "mode": "horizontal", "seed": null}, "shared_object_id": 2, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 47}}
■
	І_rng
$ї_self_saveable_object_factories
Ї	keras_api"║
_tf_keras_layerа{"name": "random_rotation_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation_68", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 3}
Ф
$ј_self_saveable_object_factories
Ј	keras_api"Ы
_tf_keras_layerп{"name": "rescaling_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling_51", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 4}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
љmetrics
trainable_variables
regularization_losses
Љlayers
њnon_trainable_variables
	variables
Њlayer_metrics
 ћlayer_regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
&:$2CONV1/kernel
:2
CONV1/bias
 "
trackable_dict_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
х
Ћmetrics
$trainable_variables
%regularization_losses
ќlayers
Ќnon_trainable_variables
&	variables
ўlayer_metrics
 Ўlayer_regularization_losses
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:>2	BN1/gamma
:>2BN1/beta
:> (2BN1/moving_mean
#:!> (2BN1/moving_variance
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
)0
*1
+2
,3"
trackable_list_wrapper
х
џmetrics
.trainable_variables
/regularization_losses
Џlayers
юnon_trainable_variables
0	variables
Юlayer_metrics
 ъlayer_regularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ъmetrics
3trainable_variables
4regularization_losses
аlayers
Аnon_trainable_variables
5	variables
бlayer_metrics
 Бlayer_regularization_losses
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
цmetrics
8trainable_variables
9regularization_losses
Цlayers
дnon_trainable_variables
:	variables
Дlayer_metrics
 еlayer_regularization_losses
Љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
&:$2CONV2/kernel
:2
CONV2/bias
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
(
е0"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
М
Еmetrics
?trainable_variables
@regularization_losses
фlayers
Фnon_trainable_variables
A	variables
гlayer_metrics
 Гlayer_regularization_losses
Њ__call__
фactivity_regularizer_fn
+ћ&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	BN3/gamma
:2BN3/beta
: (2BN3/moving_mean
#:! (2BN3/moving_variance
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
х
«metrics
Itrainable_variables
Jregularization_losses
»layers
░non_trainable_variables
K	variables
▒layer_metrics
 ▓layer_regularization_losses
Ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
│metrics
Ntrainable_variables
Oregularization_losses
┤layers
хnon_trainable_variables
P	variables
Хlayer_metrics
 иlayer_regularization_losses
Ќ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Иmetrics
Strainable_variables
Tregularization_losses
╣layers
║non_trainable_variables
U	variables
╗layer_metrics
 ╝layer_regularization_losses
Ў__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
йmetrics
Xtrainable_variables
Yregularization_losses
Йlayers
┐non_trainable_variables
Z	variables
└layer_metrics
 ┴layer_regularization_losses
Џ__call__
+ю&call_and_return_all_conditional_losses
'ю"call_and_return_conditional_losses"
_generic_user_object
%:#	љ2dense_layer/kernel
:2dense_layer/bias
 "
trackable_dict_wrapper
.
\0
]1"
trackable_list_wrapper
(
Е0"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
М
┬metrics
_trainable_variables
`regularization_losses
├layers
─non_trainable_variables
a	variables
┼layer_metrics
 кlayer_regularization_losses
Ю__call__
гactivity_regularizer_fn
+ъ&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Кmetrics
dtrainable_variables
eregularization_losses
╚layers
╔non_trainable_variables
f	variables
╩layer_metrics
 ╦layer_regularization_losses
Ъ__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2	BN4/gamma
:2BN4/beta
: (2BN4/moving_mean
#:! (2BN4/moving_variance
 "
trackable_dict_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
i0
j1
k2
l3"
trackable_list_wrapper
х
╠metrics
ntrainable_variables
oregularization_losses
═layers
╬non_trainable_variables
p	variables
¤layer_metrics
 лlayer_regularization_losses
А__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Лmetrics
strainable_variables
tregularization_losses
мlayers
Мnon_trainable_variables
u	variables
нlayer_metrics
 Нlayer_regularization_losses
Б__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
!:2dense_76/kernel
:2dense_76/bias
 "
trackable_dict_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
х
оmetrics
ztrainable_variables
{regularization_losses
Оlayers
пnon_trainable_variables
|	variables
┘layer_metrics
 ┌layer_regularization_losses
Ц__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
█0
▄1"
trackable_list_wrapper
ќ
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
J
+0
,1
F2
G3
k4
l5"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
U
П
_state_var
$я_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
U
▀
_state_var
$Я_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
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
+0
,1"
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
(
е0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
F0
G1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
Е0"
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
k0
l1"
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
п

рtotal

Рcount
с	variables
С	keras_api"Ю
_tf_keras_metricѓ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 58}
Ќ

тtotal

Тcount
у
_fn_kwargs
У	variables
ж	keras_api"╦
_tf_keras_metric░{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 46}
:	2Variable
 "
trackable_dict_wrapper
:	2Variable
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
р0
Р1"
trackable_list_wrapper
.
с	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
т0
Т1"
trackable_list_wrapper
.
У	variables"
_generic_user_object
+:)2Adam/CONV1/kernel/m
:2Adam/CONV1/bias/m
:>2Adam/BN1/gamma/m
:>2Adam/BN1/beta/m
+:)2Adam/CONV2/kernel/m
:2Adam/CONV2/bias/m
:2Adam/BN3/gamma/m
:2Adam/BN3/beta/m
*:(	љ2Adam/dense_layer/kernel/m
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
*:(	љ2Adam/dense_layer/kernel/v
#:!2Adam/dense_layer/bias/v
:2Adam/BN4/gamma/v
:2Adam/BN4/beta/v
&:$2Adam/dense_76/kernel/v
 :2Adam/dense_76/bias/v
Ж2у
'__inference_Model2_layer_call_fn_106971
'__inference_Model2_layer_call_fn_107698
'__inference_Model2_layer_call_fn_107747
'__inference_Model2_layer_call_fn_107406└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
У2т
!__inference__wrapped_model_105903┐
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф */б,
*і'
input_79         @@
о2М
B__inference_Model2_layer_call_and_return_conditional_losses_107870
B__inference_Model2_layer_call_and_return_conditional_losses_108156
B__inference_Model2_layer_call_and_return_conditional_losses_107495
B__inference_Model2_layer_call_and_return_conditional_losses_107586└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
є2Ѓ
.__inference_sequential_68_layer_call_fn_105918
.__inference_sequential_68_layer_call_fn_108161
.__inference_sequential_68_layer_call_fn_108168
.__inference_sequential_68_layer_call_fn_106087└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ы2№
I__inference_sequential_68_layer_call_and_return_conditional_losses_108176
I__inference_sequential_68_layer_call_and_return_conditional_losses_108326
I__inference_sequential_68_layer_call_and_return_conditional_losses_106095
I__inference_sequential_68_layer_call_and_return_conditional_losses_106245└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
&__inference_CONV1_layer_call_fn_108335б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
в2У
A__inference_CONV1_layer_call_and_return_conditional_losses_108345б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
$__inference_BN1_layer_call_fn_108358
$__inference_BN1_layer_call_fn_108371
$__inference_BN1_layer_call_fn_108384
$__inference_BN1_layer_call_fn_108397┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Й2╗
?__inference_BN1_layer_call_and_return_conditional_losses_108415
?__inference_BN1_layer_call_and_return_conditional_losses_108433
?__inference_BN1_layer_call_and_return_conditional_losses_108451
?__inference_BN1_layer_call_and_return_conditional_losses_108469┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
┘2о
/__inference_activation_128_layer_call_fn_108474б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_activation_128_layer_call_and_return_conditional_losses_108479б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џ2Ќ
2__inference_max_pooling2d_160_layer_call_fn_106383Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
х2▓
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_106377Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
л2═
&__inference_CONV2_layer_call_fn_108494б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_CONV2_layer_call_and_return_all_conditional_losses_108505б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
м2¤
$__inference_BN3_layer_call_fn_108518
$__inference_BN3_layer_call_fn_108531
$__inference_BN3_layer_call_fn_108544
$__inference_BN3_layer_call_fn_108557┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Й2╗
?__inference_BN3_layer_call_and_return_conditional_losses_108575
?__inference_BN3_layer_call_and_return_conditional_losses_108593
?__inference_BN3_layer_call_and_return_conditional_losses_108611
?__inference_BN3_layer_call_and_return_conditional_losses_108629┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
┘2о
/__inference_activation_129_layer_call_fn_108634б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_activation_129_layer_call_and_return_conditional_losses_108639б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ю2џ
5__inference_average_pooling2d_76_layer_call_fn_106534Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
И2х
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_106528Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
Н2м
+__inference_flatten_76_layer_call_fn_108644б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_76_layer_call_and_return_conditional_losses_108650б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
о2М
,__inference_dense_layer_layer_call_fn_108665б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ш2Ы
K__inference_dense_layer_layer_call_and_return_all_conditional_losses_108676б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
њ2Ј
*__inference_dropout_9_layer_call_fn_108681
*__inference_dropout_9_layer_call_fn_108686┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╚2┼
E__inference_dropout_9_layer_call_and_return_conditional_losses_108691
E__inference_dropout_9_layer_call_and_return_conditional_losses_108703┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
є2Ѓ
$__inference_BN4_layer_call_fn_108716
$__inference_BN4_layer_call_fn_108729┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
╝2╣
?__inference_BN4_layer_call_and_return_conditional_losses_108749
?__inference_BN4_layer_call_and_return_conditional_losses_108783┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
┘2о
/__inference_activation_130_layer_call_fn_108788б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_activation_130_layer_call_and_return_conditional_losses_108793б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_dense_76_layer_call_fn_108802б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_dense_76_layer_call_and_return_conditional_losses_108813б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╠B╔
$__inference_signature_wrapper_107651input_79"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
│2░
__inference_loss_fn_0_108824Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
│2░
__inference_loss_fn_1_108835Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
я2█
-__inference_CONV2_activity_regularizer_106396Е
ћ▓љ
FullArgSpec
argsџ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б
	і
в2У
A__inference_CONV2_layer_call_and_return_conditional_losses_108851б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
С2р
3__inference_dense_layer_activity_regularizer_106547Е
ћ▓љ
FullArgSpec
argsџ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б
	і
ы2Ь
G__inference_dense_layer_layer_call_and_return_conditional_losses_108867б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 ┌
?__inference_BN1_layer_call_and_return_conditional_losses_108415ќ)*+,MбJ
Cб@
:і7
inputs+         >                  
p 
ф "?б<
5і2
0+         >                  
џ ┌
?__inference_BN1_layer_call_and_return_conditional_losses_108433ќ)*+,MбJ
Cб@
:і7
inputs+         >                  
p
ф "?б<
5і2
0+         >                  
џ х
?__inference_BN1_layer_call_and_return_conditional_losses_108451r)*+,;б8
1б.
(і%
inputs         >>
p 
ф "-б*
#і 
0         >>
џ х
?__inference_BN1_layer_call_and_return_conditional_losses_108469r)*+,;б8
1б.
(і%
inputs         >>
p
ф "-б*
#і 
0         >>
џ ▓
$__inference_BN1_layer_call_fn_108358Ѕ)*+,MбJ
Cб@
:і7
inputs+         >                  
p 
ф "2і/+         >                  ▓
$__inference_BN1_layer_call_fn_108371Ѕ)*+,MбJ
Cб@
:і7
inputs+         >                  
p
ф "2і/+         >                  Ї
$__inference_BN1_layer_call_fn_108384e)*+,;б8
1б.
(і%
inputs         >>
p 
ф " і         >>Ї
$__inference_BN1_layer_call_fn_108397e)*+,;б8
1б.
(і%
inputs         >>
p
ф " і         >>┌
?__inference_BN3_layer_call_and_return_conditional_losses_108575ќDEFGMбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ ┌
?__inference_BN3_layer_call_and_return_conditional_losses_108593ќDEFGMбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ х
?__inference_BN3_layer_call_and_return_conditional_losses_108611rDEFG;б8
1б.
(і%
inputs         
p 
ф "-б*
#і 
0         
џ х
?__inference_BN3_layer_call_and_return_conditional_losses_108629rDEFG;б8
1б.
(і%
inputs         
p
ф "-б*
#і 
0         
џ ▓
$__inference_BN3_layer_call_fn_108518ЅDEFGMбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           ▓
$__inference_BN3_layer_call_fn_108531ЅDEFGMбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           Ї
$__inference_BN3_layer_call_fn_108544eDEFG;б8
1б.
(і%
inputs         
p 
ф " і         Ї
$__inference_BN3_layer_call_fn_108557eDEFG;б8
1б.
(і%
inputs         
p
ф " і         Ц
?__inference_BN4_layer_call_and_return_conditional_losses_108749blikj3б0
)б&
 і
inputs         
p 
ф "%б"
і
0         
џ Ц
?__inference_BN4_layer_call_and_return_conditional_losses_108783bklij3б0
)б&
 і
inputs         
p
ф "%б"
і
0         
џ }
$__inference_BN4_layer_call_fn_108716Ulikj3б0
)б&
 і
inputs         
p 
ф "і         }
$__inference_BN4_layer_call_fn_108729Uklij3б0
)б&
 і
inputs         
p
ф "і         ▒
A__inference_CONV1_layer_call_and_return_conditional_losses_108345l!"7б4
-б*
(і%
inputs         @@
ф "-б*
#і 
0         >>
џ Ѕ
&__inference_CONV1_layer_call_fn_108335_!"7б4
-б*
(і%
inputs         @@
ф " і         >>W
-__inference_CONV2_activity_regularizer_106396&б
б
і	
x
ф "і ├
E__inference_CONV2_layer_call_and_return_all_conditional_losses_108505z<=7б4
-б*
(і%
inputs         
ф ";б8
#і 
0         
џ
і	
1/0 ▒
A__inference_CONV2_layer_call_and_return_conditional_losses_108851l<=7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ Ѕ
&__inference_CONV2_layer_call_fn_108494_<=7б4
-б*
(і%
inputs         
ф " і         с
B__inference_Model2_layer_call_and_return_conditional_losses_107495ю!")*+,<=DEFG\]likjwxAб>
7б4
*і'
input_79         @@
p 

 
ф "Aб>
і
0         
џ
і	
1/0 
і	
1/1 т
B__inference_Model2_layer_call_and_return_conditional_losses_107586ъ▀!")*+,<=DEFG\]klijwxAб>
7б4
*і'
input_79         @@
p

 
ф "Aб>
і
0         
џ
і	
1/0 
і	
1/1 р
B__inference_Model2_layer_call_and_return_conditional_losses_107870џ!")*+,<=DEFG\]likjwx?б<
5б2
(і%
inputs         @@
p 

 
ф "Aб>
і
0         
џ
і	
1/0 
і	
1/1 с
B__inference_Model2_layer_call_and_return_conditional_losses_108156ю▀!")*+,<=DEFG\]klijwx?б<
5б2
(і%
inputs         @@
p

 
ф "Aб>
і
0         
џ
і	
1/0 
і	
1/1 ъ
'__inference_Model2_layer_call_fn_106971s!")*+,<=DEFG\]likjwxAб>
7б4
*і'
input_79         @@
p 

 
ф "і         а
'__inference_Model2_layer_call_fn_107406u▀!")*+,<=DEFG\]klijwxAб>
7б4
*і'
input_79         @@
p

 
ф "і         ю
'__inference_Model2_layer_call_fn_107698q!")*+,<=DEFG\]likjwx?б<
5б2
(і%
inputs         @@
p 

 
ф "і         ъ
'__inference_Model2_layer_call_fn_107747s▀!")*+,<=DEFG\]klijwx?б<
5б2
(і%
inputs         @@
p

 
ф "і         г
!__inference__wrapped_model_105903є!")*+,<=DEFG\]likjwx9б6
/б,
*і'
input_79         @@
ф "3ф0
.
dense_76"і
dense_76         Х
J__inference_activation_128_layer_call_and_return_conditional_losses_108479h7б4
-б*
(і%
inputs         >>
ф "-б*
#і 
0         >>
џ ј
/__inference_activation_128_layer_call_fn_108474[7б4
-б*
(і%
inputs         >>
ф " і         >>Х
J__inference_activation_129_layer_call_and_return_conditional_losses_108639h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         
џ ј
/__inference_activation_129_layer_call_fn_108634[7б4
-б*
(і%
inputs         
ф " і         д
J__inference_activation_130_layer_call_and_return_conditional_losses_108793X/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ ~
/__inference_activation_130_layer_call_fn_108788K/б,
%б"
 і
inputs         
ф "і         з
P__inference_average_pooling2d_76_layer_call_and_return_conditional_losses_106528ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╦
5__inference_average_pooling2d_76_layer_call_fn_106534ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ц
D__inference_dense_76_layer_call_and_return_conditional_losses_108813\wx/б,
%б"
 і
inputs         
ф "%б"
і
0         
џ |
)__inference_dense_76_layer_call_fn_108802Owx/б,
%б"
 і
inputs         
ф "і         ]
3__inference_dense_layer_activity_regularizer_106547&б
б
і	
x
ф "і ║
K__inference_dense_layer_layer_call_and_return_all_conditional_losses_108676k\]0б-
&б#
!і
inputs         љ
ф "3б0
і
0         
џ
і	
1/0 е
G__inference_dense_layer_layer_call_and_return_conditional_losses_108867]\]0б-
&б#
!і
inputs         љ
ф "%б"
і
0         
џ ђ
,__inference_dense_layer_layer_call_fn_108665P\]0б-
&б#
!і
inputs         љ
ф "і         Ц
E__inference_dropout_9_layer_call_and_return_conditional_losses_108691\3б0
)б&
 і
inputs         
p 
ф "%б"
і
0         
џ Ц
E__inference_dropout_9_layer_call_and_return_conditional_losses_108703\3б0
)б&
 і
inputs         
p
ф "%б"
і
0         
џ }
*__inference_dropout_9_layer_call_fn_108681O3б0
)б&
 і
inputs         
p 
ф "і         }
*__inference_dropout_9_layer_call_fn_108686O3б0
)б&
 і
inputs         
p
ф "і         Ф
F__inference_flatten_76_layer_call_and_return_conditional_losses_108650a7б4
-б*
(і%
inputs         
ф "&б#
і
0         љ
џ Ѓ
+__inference_flatten_76_layer_call_fn_108644T7б4
-б*
(і%
inputs         
ф "і         љ;
__inference_loss_fn_0_108824<б

б 
ф "і ;
__inference_loss_fn_1_108835\б

б 
ф "і ­
M__inference_max_pooling2d_160_layer_call_and_return_conditional_losses_106377ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╚
2__inference_max_pooling2d_160_layer_call_fn_106383ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ╦
I__inference_sequential_68_layer_call_and_return_conditional_losses_106095~MбJ
Cб@
6і3
random_flip_68_input         @@
p 

 
ф "-б*
#і 
0         @@
џ л
I__inference_sequential_68_layer_call_and_return_conditional_losses_106245ѓ▀MбJ
Cб@
6і3
random_flip_68_input         @@
p

 
ф "-б*
#і 
0         @@
џ й
I__inference_sequential_68_layer_call_and_return_conditional_losses_108176p?б<
5б2
(і%
inputs         @@
p 

 
ф "-б*
#і 
0         @@
џ ┴
I__inference_sequential_68_layer_call_and_return_conditional_losses_108326t▀?б<
5б2
(і%
inputs         @@
p

 
ф "-б*
#і 
0         @@
џ Б
.__inference_sequential_68_layer_call_fn_105918qMбJ
Cб@
6і3
random_flip_68_input         @@
p 

 
ф " і         @@Д
.__inference_sequential_68_layer_call_fn_106087u▀MбJ
Cб@
6і3
random_flip_68_input         @@
p

 
ф " і         @@Ћ
.__inference_sequential_68_layer_call_fn_108161c?б<
5б2
(і%
inputs         @@
p 

 
ф " і         @@Ў
.__inference_sequential_68_layer_call_fn_108168g▀?б<
5б2
(і%
inputs         @@
p

 
ф " і         @@╗
$__inference_signature_wrapper_107651њ!")*+,<=DEFG\]likjwxEбB
б 
;ф8
6
input_79*і'
input_79         @@"3ф0
.
dense_76"і
dense_76         