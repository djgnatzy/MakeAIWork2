«║.
ЦШ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
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
њ
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ЭЊ*
ё
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
: *
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
: *
dtype0
љ
batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_29/gamma
Ѕ
0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes
: *
dtype0
ј
batch_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_29/beta
Є
/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes
: *
dtype0
ю
"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_29/moving_mean
Ћ
6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes
: *
dtype0
ц
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_29/moving_variance
Ю
:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes
: *
dtype0
ё
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:@*
dtype0
љ
batch_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_30/gamma
Ѕ
0batch_normalization_30/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_30/gamma*
_output_shapes
:@*
dtype0
ј
batch_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_30/beta
Є
/batch_normalization_30/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_30/beta*
_output_shapes
:@*
dtype0
ю
"batch_normalization_30/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_30/moving_mean
Ћ
6batch_normalization_30/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_30/moving_mean*
_output_shapes
:@*
dtype0
ц
&batch_normalization_30/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_30/moving_variance
Ю
:batch_normalization_30/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_30/moving_variance*
_output_shapes
:@*
dtype0
ё
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
:@*
dtype0
љ
batch_normalization_31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_31/gamma
Ѕ
0batch_normalization_31/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_31/gamma*
_output_shapes
:@*
dtype0
ј
batch_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_31/beta
Є
/batch_normalization_31/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_31/beta*
_output_shapes
:@*
dtype0
ю
"batch_normalization_31/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_31/moving_mean
Ћ
6batch_normalization_31/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_31/moving_mean*
_output_shapes
:@*
dtype0
ц
&batch_normalization_31/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_31/moving_variance
Ю
:batch_normalization_31/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_31/moving_variance*
_output_shapes
:@*
dtype0
Ё
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*!
shared_nameconv2d_27/kernel
~
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*'
_output_shapes
:@ђ*
dtype0
u
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_27/bias
n
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes	
:ђ*
dtype0
Љ
batch_normalization_32/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_namebatch_normalization_32/gamma
і
0batch_normalization_32/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_32/gamma*
_output_shapes	
:ђ*
dtype0
Ј
batch_normalization_32/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*,
shared_namebatch_normalization_32/beta
ѕ
/batch_normalization_32/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_32/beta*
_output_shapes	
:ђ*
dtype0
Ю
"batch_normalization_32/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"batch_normalization_32/moving_mean
ќ
6batch_normalization_32/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_32/moving_mean*
_output_shapes	
:ђ*
dtype0
Ц
&batch_normalization_32/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*7
shared_name(&batch_normalization_32/moving_variance
ъ
:batch_normalization_32/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_32/moving_variance*
_output_shapes	
:ђ*
dtype0
є
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*!
shared_nameconv2d_28/kernel

$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*(
_output_shapes
:ђђ*
dtype0
u
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_28/bias
n
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes	
:ђ*
dtype0
Љ
batch_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_namebatch_normalization_33/gamma
і
0batch_normalization_33/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_33/gamma*
_output_shapes	
:ђ*
dtype0
Ј
batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*,
shared_namebatch_normalization_33/beta
ѕ
/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes	
:ђ*
dtype0
Ю
"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"batch_normalization_33/moving_mean
ќ
6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes	
:ђ*
dtype0
Ц
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*7
shared_name(&batch_normalization_33/moving_variance
ъ
:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes	
:ђ*
dtype0
є
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*!
shared_nameconv2d_29/kernel

$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*(
_output_shapes
:ђђ*
dtype0
u
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_29/bias
n
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes	
:ђ*
dtype0
Љ
batch_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_namebatch_normalization_34/gamma
і
0batch_normalization_34/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_34/gamma*
_output_shapes	
:ђ*
dtype0
Ј
batch_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*,
shared_namebatch_normalization_34/beta
ѕ
/batch_normalization_34/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_34/beta*
_output_shapes	
:ђ*
dtype0
Ю
"batch_normalization_34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"batch_normalization_34/moving_mean
ќ
6batch_normalization_34/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_34/moving_mean*
_output_shapes	
:ђ*
dtype0
Ц
&batch_normalization_34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*7
shared_name(&batch_normalization_34/moving_variance
ъ
:batch_normalization_34/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_34/moving_variance*
_output_shapes	
:ђ*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	ђ@*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:@*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:@*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
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
ё
random_flip_4/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_flip_4/StateVar
}
*random_flip_4/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_4/StateVar*
_output_shapes
:*
dtype0	
ї
random_rotation_4/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*+
shared_namerandom_rotation_4/StateVar
Ё
.random_rotation_4/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_4/StateVar*
_output_shapes
:*
dtype0	
ё
random_zoom_3/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_zoom_3/StateVar
}
*random_zoom_3/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom_3/StateVar*
_output_shapes
:*
dtype0	
њ
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_24/kernel/m
І
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
: *
dtype0
ѓ
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
: *
dtype0
ъ
#Adam/batch_normalization_29/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_29/gamma/m
Ќ
7Adam/batch_normalization_29/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_29/gamma/m*
_output_shapes
: *
dtype0
ю
"Adam/batch_normalization_29/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_29/beta/m
Ћ
6Adam/batch_normalization_29/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_29/beta/m*
_output_shapes
: *
dtype0
њ
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_25/kernel/m
І
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
: @*
dtype0
ѓ
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:@*
dtype0
ъ
#Adam/batch_normalization_30/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_30/gamma/m
Ќ
7Adam/batch_normalization_30/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_30/gamma/m*
_output_shapes
:@*
dtype0
ю
"Adam/batch_normalization_30/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_30/beta/m
Ћ
6Adam/batch_normalization_30/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_30/beta/m*
_output_shapes
:@*
dtype0
њ
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_26/kernel/m
І
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*&
_output_shapes
:@@*
dtype0
ѓ
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_26/bias/m
{
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes
:@*
dtype0
ъ
#Adam/batch_normalization_31/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_31/gamma/m
Ќ
7Adam/batch_normalization_31/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_31/gamma/m*
_output_shapes
:@*
dtype0
ю
"Adam/batch_normalization_31/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_31/beta/m
Ћ
6Adam/batch_normalization_31/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_31/beta/m*
_output_shapes
:@*
dtype0
Њ
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*(
shared_nameAdam/conv2d_27/kernel/m
ї
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*'
_output_shapes
:@ђ*
dtype0
Ѓ
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_27/bias/m
|
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes	
:ђ*
dtype0
Ъ
#Adam/batch_normalization_32/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#Adam/batch_normalization_32/gamma/m
ў
7Adam/batch_normalization_32/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_32/gamma/m*
_output_shapes	
:ђ*
dtype0
Ю
"Adam/batch_normalization_32/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"Adam/batch_normalization_32/beta/m
ќ
6Adam/batch_normalization_32/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_32/beta/m*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_28/kernel/m
Ї
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_28/bias/m
|
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes	
:ђ*
dtype0
Ъ
#Adam/batch_normalization_33/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#Adam/batch_normalization_33/gamma/m
ў
7Adam/batch_normalization_33/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_33/gamma/m*
_output_shapes	
:ђ*
dtype0
Ю
"Adam/batch_normalization_33/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"Adam/batch_normalization_33/beta/m
ќ
6Adam/batch_normalization_33/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_33/beta/m*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_29/kernel/m
Ї
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_29/bias/m
|
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes	
:ђ*
dtype0
Ъ
#Adam/batch_normalization_34/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#Adam/batch_normalization_34/gamma/m
ў
7Adam/batch_normalization_34/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_34/gamma/m*
_output_shapes	
:ђ*
dtype0
Ю
"Adam/batch_normalization_34/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"Adam/batch_normalization_34/beta/m
ќ
6Adam/batch_normalization_34/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_34/beta/m*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*&
shared_nameAdam/dense_8/kernel/m
ђ
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes
:	ђ@*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:@*
dtype0
є
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_24/kernel/v
І
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
: *
dtype0
ѓ
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
: *
dtype0
ъ
#Adam/batch_normalization_29/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_29/gamma/v
Ќ
7Adam/batch_normalization_29/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_29/gamma/v*
_output_shapes
: *
dtype0
ю
"Adam/batch_normalization_29/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_29/beta/v
Ћ
6Adam/batch_normalization_29/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_29/beta/v*
_output_shapes
: *
dtype0
њ
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_25/kernel/v
І
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
: @*
dtype0
ѓ
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:@*
dtype0
ъ
#Adam/batch_normalization_30/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_30/gamma/v
Ќ
7Adam/batch_normalization_30/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_30/gamma/v*
_output_shapes
:@*
dtype0
ю
"Adam/batch_normalization_30/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_30/beta/v
Ћ
6Adam/batch_normalization_30/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_30/beta/v*
_output_shapes
:@*
dtype0
њ
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_26/kernel/v
І
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*&
_output_shapes
:@@*
dtype0
ѓ
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_26/bias/v
{
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes
:@*
dtype0
ъ
#Adam/batch_normalization_31/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_31/gamma/v
Ќ
7Adam/batch_normalization_31/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_31/gamma/v*
_output_shapes
:@*
dtype0
ю
"Adam/batch_normalization_31/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_31/beta/v
Ћ
6Adam/batch_normalization_31/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_31/beta/v*
_output_shapes
:@*
dtype0
Њ
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*(
shared_nameAdam/conv2d_27/kernel/v
ї
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*'
_output_shapes
:@ђ*
dtype0
Ѓ
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_27/bias/v
|
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes	
:ђ*
dtype0
Ъ
#Adam/batch_normalization_32/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#Adam/batch_normalization_32/gamma/v
ў
7Adam/batch_normalization_32/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_32/gamma/v*
_output_shapes	
:ђ*
dtype0
Ю
"Adam/batch_normalization_32/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"Adam/batch_normalization_32/beta/v
ќ
6Adam/batch_normalization_32/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_32/beta/v*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_28/kernel/v
Ї
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_28/bias/v
|
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes	
:ђ*
dtype0
Ъ
#Adam/batch_normalization_33/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#Adam/batch_normalization_33/gamma/v
ў
7Adam/batch_normalization_33/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_33/gamma/v*
_output_shapes	
:ђ*
dtype0
Ю
"Adam/batch_normalization_33/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"Adam/batch_normalization_33/beta/v
ќ
6Adam/batch_normalization_33/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_33/beta/v*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_29/kernel/v
Ї
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_29/bias/v
|
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes	
:ђ*
dtype0
Ъ
#Adam/batch_normalization_34/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*4
shared_name%#Adam/batch_normalization_34/gamma/v
ў
7Adam/batch_normalization_34/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_34/gamma/v*
_output_shapes	
:ђ*
dtype0
Ю
"Adam/batch_normalization_34/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*3
shared_name$"Adam/batch_normalization_34/beta/v
ќ
6Adam/batch_normalization_34/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_34/beta/v*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ@*&
shared_nameAdam/dense_8/kernel/v
ђ
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes
:	ђ@*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:@*
dtype0
є
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ѕЗ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┬з
valueизB│з BФз
З
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
layer-20
layer_with_weights-12
layer-21
layer_with_weights-13
layer-22
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 
signatures*
е
!layer-0
"layer-1
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
и
)layer-0
*layer-1
+layer-2
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
д

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
Н
:axis
	;gamma
<beta
=moving_mean
>moving_variance
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
ј
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
д

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
Н
Saxis
	Tgamma
Ubeta
Vmoving_mean
Wmoving_variance
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses*
ј
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
д

dkernel
ebias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses*
Н
laxis
	mgamma
nbeta
omoving_mean
pmoving_variance
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
ј
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 
Ф

}kernel
~bias
	variables
ђtrainable_variables
Ђregularization_losses
ѓ	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses*
Я
	Ёaxis

єgamma
	Єbeta
ѕmoving_mean
Ѕmoving_variance
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses*
ћ
љ	variables
Љtrainable_variables
њregularization_losses
Њ	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses* 
«
ќkernel
	Ќbias
ў	variables
Ўtrainable_variables
џregularization_losses
Џ	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses*
Я
	ъaxis

Ъgamma
	аbeta
Аmoving_mean
бmoving_variance
Б	variables
цtrainable_variables
Цregularization_losses
д	keras_api
Д__call__
+е&call_and_return_all_conditional_losses*
ћ
Е	variables
фtrainable_variables
Фregularization_losses
г	keras_api
Г__call__
+«&call_and_return_all_conditional_losses* 
«
»kernel
	░bias
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
х__call__
+Х&call_and_return_all_conditional_losses*
Я
	иaxis

Иgamma
	╣beta
║moving_mean
╗moving_variance
╝	variables
йtrainable_variables
Йregularization_losses
┐	keras_api
└__call__
+┴&call_and_return_all_conditional_losses*
ћ
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
к__call__
+К&call_and_return_all_conditional_losses* 
ћ
╚	variables
╔trainable_variables
╩regularization_losses
╦	keras_api
╠__call__
+═&call_and_return_all_conditional_losses* 
«
╬kernel
	¤bias
л	variables
Лtrainable_variables
мregularization_losses
М	keras_api
н__call__
+Н&call_and_return_all_conditional_losses*
«
оkernel
	Оbias
п	variables
┘trainable_variables
┌regularization_losses
█	keras_api
▄__call__
+П&call_and_return_all_conditional_losses*
Ћ
	яiter
▀beta_1
Яbeta_2

рdecay
Рlearning_rate2mД3mе;mЕ<mфKmФLmгTmГUm«dm»em░mm▒nm▓}m│~m┤	єmх	ЄmХ	ќmи	ЌmИ	Ъm╣	аm║	»m╗	░m╝	Иmй	╣mЙ	╬m┐	¤m└	оm┴	Оm┬2v├3v─;v┼<vкKvКLv╚Tv╔Uv╩dv╦ev╠mv═nv╬}v¤~vл	єvЛ	Єvм	ќvМ	Ќvн	ЪvН	аvо	»vО	░vп	Иv┘	╣v┌	╬v█	¤v▄	оvП	Оvя*
╬
20
31
;2
<3
=4
>5
K6
L7
T8
U9
V10
W11
d12
e13
m14
n15
o16
p17
}18
~19
є20
Є21
ѕ22
Ѕ23
ќ24
Ќ25
Ъ26
а27
А28
б29
»30
░31
И32
╣33
║34
╗35
╬36
¤37
о38
О39*
У
20
31
;2
<3
K4
L5
T6
U7
d8
e9
m10
n11
}12
~13
є14
Є15
ќ16
Ќ17
Ъ18
а19
»20
░21
И22
╣23
╬24
¤25
о26
О27*
* 
х
сnon_trainable_variables
Сlayers
тmetrics
 Тlayer_regularization_losses
уlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Уserving_default* 
ћ
ж	variables
Жtrainable_variables
вregularization_losses
В	keras_api
ь__call__
+Ь&call_and_return_all_conditional_losses* 
ћ
№	variables
­trainable_variables
ыregularization_losses
Ы	keras_api
з__call__
+З&call_and_return_all_conditional_losses* 
* 
* 
* 
ќ
шnon_trainable_variables
Шlayers
эmetrics
 Эlayer_regularization_losses
щlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 
* 
* 
«
Щ	variables
чtrainable_variables
Чregularization_losses
§	keras_api
■_random_generator
 __call__
+ђ&call_and_return_all_conditional_losses*
«
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
ё	keras_api
Ё_random_generator
є__call__
+Є&call_and_return_all_conditional_losses*
«
ѕ	variables
Ѕtrainable_variables
іregularization_losses
І	keras_api
ї_random_generator
Ї__call__
+ј&call_and_return_all_conditional_losses*
* 
* 
* 
ў
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
ў
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_29/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_29/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_29/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_29/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
;0
<1
=2
>3*

;0
<1*
* 
ў
Ўnon_trainable_variables
џlayers
Џmetrics
 юlayer_regularization_losses
Юlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ќ
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 
ў
Бnon_trainable_variables
цlayers
Цmetrics
 дlayer_regularization_losses
Дlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_30/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_30/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_30/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_30/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
T0
U1
V2
W3*

T0
U1*
* 
ў
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ќ
Гnon_trainable_variables
«layers
»metrics
 ░layer_regularization_losses
▒layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

d0
e1*

d0
e1*
* 
ў
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_31/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_31/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_31/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_31/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
m0
n1
o2
p3*

m0
n1*
* 
ў
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ќ
╝non_trainable_variables
йlayers
Йmetrics
 ┐layer_regularization_losses
└layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

}0
~1*

}0
~1*
* 
Ю
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
	variables
ђtrainable_variables
Ђregularization_losses
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_32/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_32/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_32/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_32/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
є0
Є1
ѕ2
Ѕ3*

є0
Є1*
* 
ъ
кnon_trainable_variables
Кlayers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
і	variables
Іtrainable_variables
їregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ю
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
љ	variables
Љtrainable_variables
њregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

ќ0
Ќ1*

ќ0
Ќ1*
* 
ъ
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
ў	variables
Ўtrainable_variables
џregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_33/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_33/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_33/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_33/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
Ъ0
а1
А2
б3*

Ъ0
а1*
* 
ъ
Нnon_trainable_variables
оlayers
Оmetrics
 пlayer_regularization_losses
┘layer_metrics
Б	variables
цtrainable_variables
Цregularization_losses
Д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ю
┌non_trainable_variables
█layers
▄metrics
 Пlayer_regularization_losses
яlayer_metrics
Е	variables
фtrainable_variables
Фregularization_losses
Г__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_29/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_29/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

»0
░1*

»0
░1*
* 
ъ
▀non_trainable_variables
Яlayers
рmetrics
 Рlayer_regularization_losses
сlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_34/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_34/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_34/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUE&batch_normalization_34/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
И0
╣1
║2
╗3*

И0
╣1*
* 
ъ
Сnon_trainable_variables
тlayers
Тmetrics
 уlayer_regularization_losses
Уlayer_metrics
╝	variables
йtrainable_variables
Йregularization_losses
└__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ю
жnon_trainable_variables
Жlayers
вmetrics
 Вlayer_regularization_losses
ьlayer_metrics
┬	variables
├trainable_variables
─regularization_losses
к__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
ю
Ьnon_trainable_variables
№layers
­metrics
 ыlayer_regularization_losses
Ыlayer_metrics
╚	variables
╔trainable_variables
╩regularization_losses
╠__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_8/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_8/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

╬0
¤1*

╬0
¤1*
* 
ъ
зnon_trainable_variables
Зlayers
шmetrics
 Шlayer_regularization_losses
эlayer_metrics
л	variables
Лtrainable_variables
мregularization_losses
н__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_9/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

о0
О1*

о0
О1*
* 
ъ
Эnon_trainable_variables
щlayers
Щmetrics
 чlayer_regularization_losses
Чlayer_metrics
п	variables
┘trainable_variables
┌regularization_losses
▄__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
`
=0
>1
V2
W3
o4
p5
ѕ6
Ѕ7
А8
б9
║10
╗11*
▓
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
16
17
18
19
20
21
22*

§0
■1*
* 
* 
* 
* 
* 
* 
ю
 non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
ж	variables
Жtrainable_variables
вregularization_losses
ь__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
ю
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
№	variables
­trainable_variables
ыregularization_losses
з__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses* 
* 
* 
* 

!0
"1* 
* 
* 
* 
* 
* 
* 
ю
Ѕnon_trainable_variables
іlayers
Іmetrics
 їlayer_regularization_losses
Їlayer_metrics
Щ	variables
чtrainable_variables
Чregularization_losses
 __call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses* 

ј
_generator*
* 
* 
* 
* 
* 
ю
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses* 

ћ
_generator*
* 
* 
* 
* 
* 
ю
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
ѕ	variables
Ѕtrainable_variables
іregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses* 

џ
_generator*
* 
* 
* 

)0
*1
+2*
* 
* 
* 
* 
* 
* 
* 
* 

=0
>1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

o0
p1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ѕ0
Ѕ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

А0
б1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

║0
╗1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Џtotal

юcount
Ю	variables
ъ	keras_api*
M

Ъtotal

аcount
А
_fn_kwargs
б	variables
Б	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ц
_state_var*
* 
* 
* 
* 
* 

Ц
_state_var*
* 
* 
* 
* 
* 

д
_state_var*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Џ0
ю1*

Ю	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ъ0
а1*

б	variables*
ѓ|
VARIABLE_VALUErandom_flip_4/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Єђ
VARIABLE_VALUErandom_rotation_4/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUErandom_zoom_3/StateVarRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_24/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_24/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_29/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_29/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_30/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_30/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_31/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_31/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_32/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_32/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_33/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_33/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_29/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_29/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
љЅ
VARIABLE_VALUE#Adam/batch_normalization_34/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
јЄ
VARIABLE_VALUE"Adam/batch_normalization_34/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_8/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_8/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_9/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_9/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_24/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_24/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_29/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_29/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_30/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_30/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_31/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_31/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_32/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_32/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ѓ}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Јѕ
VARIABLE_VALUE#Adam/batch_normalization_33/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Їє
VARIABLE_VALUE"Adam/batch_normalization_33/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ё~
VARIABLE_VALUEAdam/conv2d_29/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ђz
VARIABLE_VALUEAdam/conv2d_29/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
љЅ
VARIABLE_VALUE#Adam/batch_normalization_34/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
јЄ
VARIABLE_VALUE"Adam/batch_normalization_34/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_8/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_8/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_9/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_9/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
џ
#serving_default_sequential_12_inputPlaceholder*1
_output_shapes
:         ЯЯ*
dtype0*&
shape:         ЯЯ
├
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_12_inputconv2d_24/kernelconv2d_24/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_25/kernelconv2d_25/biasbatch_normalization_30/gammabatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_31/gammabatch_normalization_31/beta"batch_normalization_31/moving_mean&batch_normalization_31/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_variancedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8ѓ *-
f(R&
$__inference_signature_wrapper_665856
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╣*
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp0batch_normalization_29/gamma/Read/ReadVariableOp/batch_normalization_29/beta/Read/ReadVariableOp6batch_normalization_29/moving_mean/Read/ReadVariableOp:batch_normalization_29/moving_variance/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp0batch_normalization_30/gamma/Read/ReadVariableOp/batch_normalization_30/beta/Read/ReadVariableOp6batch_normalization_30/moving_mean/Read/ReadVariableOp:batch_normalization_30/moving_variance/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp0batch_normalization_31/gamma/Read/ReadVariableOp/batch_normalization_31/beta/Read/ReadVariableOp6batch_normalization_31/moving_mean/Read/ReadVariableOp:batch_normalization_31/moving_variance/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp0batch_normalization_32/gamma/Read/ReadVariableOp/batch_normalization_32/beta/Read/ReadVariableOp6batch_normalization_32/moving_mean/Read/ReadVariableOp:batch_normalization_32/moving_variance/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp0batch_normalization_33/gamma/Read/ReadVariableOp/batch_normalization_33/beta/Read/ReadVariableOp6batch_normalization_33/moving_mean/Read/ReadVariableOp:batch_normalization_33/moving_variance/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOp0batch_normalization_34/gamma/Read/ReadVariableOp/batch_normalization_34/beta/Read/ReadVariableOp6batch_normalization_34/moving_mean/Read/ReadVariableOp:batch_normalization_34/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*random_flip_4/StateVar/Read/ReadVariableOp.random_rotation_4/StateVar/Read/ReadVariableOp*random_zoom_3/StateVar/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp7Adam/batch_normalization_29/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_29/beta/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp7Adam/batch_normalization_30/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_30/beta/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp7Adam/batch_normalization_31/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_31/beta/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp7Adam/batch_normalization_32/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_32/beta/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp7Adam/batch_normalization_33/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_33/beta/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp7Adam/batch_normalization_34/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_34/beta/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp7Adam/batch_normalization_29/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_29/beta/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp7Adam/batch_normalization_30/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_30/beta/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp7Adam/batch_normalization_31/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_31/beta/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp7Adam/batch_normalization_32/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_32/beta/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp7Adam/batch_normalization_33/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_33/beta/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOp7Adam/batch_normalization_34/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_34/beta/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpConst*y
Tinr
p2n				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *(
f#R!
__inference__traced_save_667597
─
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_24/kernelconv2d_24/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_varianceconv2d_25/kernelconv2d_25/biasbatch_normalization_30/gammabatch_normalization_30/beta"batch_normalization_30/moving_mean&batch_normalization_30/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_31/gammabatch_normalization_31/beta"batch_normalization_31/moving_mean&batch_normalization_31/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_variancedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1random_flip_4/StateVarrandom_rotation_4/StateVarrandom_zoom_3/StateVarAdam/conv2d_24/kernel/mAdam/conv2d_24/bias/m#Adam/batch_normalization_29/gamma/m"Adam/batch_normalization_29/beta/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/m#Adam/batch_normalization_30/gamma/m"Adam/batch_normalization_30/beta/mAdam/conv2d_26/kernel/mAdam/conv2d_26/bias/m#Adam/batch_normalization_31/gamma/m"Adam/batch_normalization_31/beta/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/m#Adam/batch_normalization_32/gamma/m"Adam/batch_normalization_32/beta/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/m#Adam/batch_normalization_33/gamma/m"Adam/batch_normalization_33/beta/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/m#Adam/batch_normalization_34/gamma/m"Adam/batch_normalization_34/beta/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/v#Adam/batch_normalization_29/gamma/v"Adam/batch_normalization_29/beta/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/v#Adam/batch_normalization_30/gamma/v"Adam/batch_normalization_30/beta/vAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/v#Adam/batch_normalization_31/gamma/v"Adam/batch_normalization_31/beta/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/v#Adam/batch_normalization_32/gamma/v"Adam/batch_normalization_32/beta/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/v#Adam/batch_normalization_33/gamma/v"Adam/batch_normalization_33/beta/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/v#Adam/batch_normalization_34/gamma/v"Adam/batch_normalization_34/beta/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v*x
Tinq
o2m*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__traced_restore_667931Ыс%
№
¤	
.__inference_sequential_14_layer_call_fn_665043

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@ђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:	ђ

unknown_26:	ђ

unknown_27:	ђ

unknown_28:	ђ&

unknown_29:ђђ

unknown_30:	ђ

unknown_31:	ђ

unknown_32:	ђ

unknown_33:	ђ

unknown_34:	ђ

unknown_35:	ђ@

unknown_36:@

unknown_37:@

unknown_38:
identityѕбStatefulPartitionedCallВ
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
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_664183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Љ
Ђ
E__inference_conv2d_28_layer_call_and_return_conditional_losses_664097

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         

ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         

ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_663966

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Љ
Ђ
E__inference_conv2d_29_layer_call_and_return_conditional_losses_666709

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ќ
▄	
.__inference_sequential_14_layer_call_fn_664266
sequential_12_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@ђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:	ђ

unknown_26:	ђ

unknown_27:	ђ

unknown_28:	ђ&

unknown_29:ђђ

unknown_30:	ђ

unknown_31:	ђ

unknown_32:	ђ

unknown_33:	ђ

unknown_34:	ђ

unknown_35:	ђ@

unknown_36:@

unknown_37:@

unknown_38:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_664183o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namesequential_12_input
ћ
h
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_666321

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
і	
o
I__inference_sequential_12_layer_call_and_return_conditional_losses_663054
resizing_4_input
identityМ
resizing_4/PartitionedCallPartitionedCallresizing_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_resizing_4_layer_call_and_return_conditional_losses_662993У
rescaling_4/PartitionedCallPartitionedCall#resizing_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_663003v
IdentityIdentity$rescaling_4/PartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:c _
1
_output_shapes
:         ЯЯ
*
_user_specified_nameresizing_4_input
й
й
.__inference_sequential_13_layer_call_fn_663493
random_flip_4_input
unknown:	
	unknown_0:	
	unknown_1:	
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_4_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663473y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ЯЯ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namerandom_flip_4_input
щ
c
G__inference_rescaling_4_layer_call_and_return_conditional_losses_666856

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ЯЯd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
═
Ю
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663535

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
в
┼
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663794

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
­
T
.__inference_sequential_12_layer_call_fn_663009
resizing_4_input
identity╦
PartitionedCallPartitionedCallresizing_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663006j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:c _
1
_output_shapes
:         ЯЯ
*
_user_specified_nameresizing_4_input
Х
F
*__inference_flatten_4_layer_call_fn_666786

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_664146a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ё
■
E__inference_conv2d_26_layer_call_and_return_conditional_losses_664043

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         44@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         44@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         66@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         66@
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_666413

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ё
■
E__inference_conv2d_26_layer_call_and_return_conditional_losses_666433

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         44@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         44@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         66@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         66@
 
_user_specified_nameinputs
Ї
ђ
E__inference_conv2d_27_layer_call_and_return_conditional_losses_664070

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ц	
e
I__inference_sequential_12_layer_call_and_return_conditional_losses_665886

inputs
identityg
resizing_4/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   ▒
 resizing_4/resize/ResizeBilinearResizeBilinearinputsresizing_4/resize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(W
rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;Y
rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    б
rescaling_4/mulMul1resizing_4/resize/ResizeBilinear:resized_images:0rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ЯЯѕ
rescaling_4/addAddV2rescaling_4/mul:z:0rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯe
IdentityIdentityrescaling_4/add:z:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
П
А
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663915

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
█
┴
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666311

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
јї
╩+
I__inference_sequential_14_layer_call_and_return_conditional_losses_665769

inputs[
Msequential_13_random_flip_4_stateful_uniform_full_int_rngreadandskip_resource:	V
Hsequential_13_random_rotation_4_stateful_uniform_rngreadandskip_resource:	R
Dsequential_13_random_zoom_3_stateful_uniform_rngreadandskip_resource:	B
(conv2d_24_conv2d_readvariableop_resource: 7
)conv2d_24_biasadd_readvariableop_resource: <
.batch_normalization_29_readvariableop_resource: >
0batch_normalization_29_readvariableop_1_resource: M
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_25_conv2d_readvariableop_resource: @7
)conv2d_25_biasadd_readvariableop_resource:@<
.batch_normalization_30_readvariableop_resource:@>
0batch_normalization_30_readvariableop_1_resource:@M
?batch_normalization_30_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_26_conv2d_readvariableop_resource:@@7
)conv2d_26_biasadd_readvariableop_resource:@<
.batch_normalization_31_readvariableop_resource:@>
0batch_normalization_31_readvariableop_1_resource:@M
?batch_normalization_31_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_27_conv2d_readvariableop_resource:@ђ8
)conv2d_27_biasadd_readvariableop_resource:	ђ=
.batch_normalization_32_readvariableop_resource:	ђ?
0batch_normalization_32_readvariableop_1_resource:	ђN
?batch_normalization_32_fusedbatchnormv3_readvariableop_resource:	ђP
Abatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource:	ђD
(conv2d_28_conv2d_readvariableop_resource:ђђ8
)conv2d_28_biasadd_readvariableop_resource:	ђ=
.batch_normalization_33_readvariableop_resource:	ђ?
0batch_normalization_33_readvariableop_1_resource:	ђN
?batch_normalization_33_fusedbatchnormv3_readvariableop_resource:	ђP
Abatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:	ђD
(conv2d_29_conv2d_readvariableop_resource:ђђ8
)conv2d_29_biasadd_readvariableop_resource:	ђ=
.batch_normalization_34_readvariableop_resource:	ђ?
0batch_normalization_34_readvariableop_1_resource:	ђN
?batch_normalization_34_fusedbatchnormv3_readvariableop_resource:	ђP
Abatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource:	ђ9
&dense_8_matmul_readvariableop_resource:	ђ@5
'dense_8_biasadd_readvariableop_resource:@8
&dense_9_matmul_readvariableop_resource:@5
'dense_9_biasadd_readvariableop_resource:
identityѕб%batch_normalization_29/AssignNewValueб'batch_normalization_29/AssignNewValue_1б6batch_normalization_29/FusedBatchNormV3/ReadVariableOpб8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_29/ReadVariableOpб'batch_normalization_29/ReadVariableOp_1б%batch_normalization_30/AssignNewValueб'batch_normalization_30/AssignNewValue_1б6batch_normalization_30/FusedBatchNormV3/ReadVariableOpб8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_30/ReadVariableOpб'batch_normalization_30/ReadVariableOp_1б%batch_normalization_31/AssignNewValueб'batch_normalization_31/AssignNewValue_1б6batch_normalization_31/FusedBatchNormV3/ReadVariableOpб8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_31/ReadVariableOpб'batch_normalization_31/ReadVariableOp_1б%batch_normalization_32/AssignNewValueб'batch_normalization_32/AssignNewValue_1б6batch_normalization_32/FusedBatchNormV3/ReadVariableOpб8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_32/ReadVariableOpб'batch_normalization_32/ReadVariableOp_1б%batch_normalization_33/AssignNewValueб'batch_normalization_33/AssignNewValue_1б6batch_normalization_33/FusedBatchNormV3/ReadVariableOpб8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_33/ReadVariableOpб'batch_normalization_33/ReadVariableOp_1б%batch_normalization_34/AssignNewValueб'batch_normalization_34/AssignNewValue_1б6batch_normalization_34/FusedBatchNormV3/ReadVariableOpб8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_34/ReadVariableOpб'batch_normalization_34/ReadVariableOp_1б conv2d_24/BiasAdd/ReadVariableOpбconv2d_24/Conv2D/ReadVariableOpб conv2d_25/BiasAdd/ReadVariableOpбconv2d_25/Conv2D/ReadVariableOpб conv2d_26/BiasAdd/ReadVariableOpбconv2d_26/Conv2D/ReadVariableOpб conv2d_27/BiasAdd/ReadVariableOpбconv2d_27/Conv2D/ReadVariableOpб conv2d_28/BiasAdd/ReadVariableOpбconv2d_28/Conv2D/ReadVariableOpб conv2d_29/BiasAdd/ReadVariableOpбconv2d_29/Conv2D/ReadVariableOpбdense_8/BiasAdd/ReadVariableOpбdense_8/MatMul/ReadVariableOpбdense_9/BiasAdd/ReadVariableOpбdense_9/MatMul/ReadVariableOpбDsequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkipбFsequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkipб?sequential_13/random_rotation_4/stateful_uniform/RngReadAndSkipб;sequential_13/random_zoom_3/stateful_uniform/RngReadAndSkipu
$sequential_12/resizing_4/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   ═
.sequential_12/resizing_4/resize/ResizeBilinearResizeBilinearinputs-sequential_12/resizing_4/resize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(e
 sequential_12/rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;g
"sequential_12/rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ╠
sequential_12/rescaling_4/mulMul?sequential_12/resizing_4/resize/ResizeBilinear:resized_images:0)sequential_12/rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ЯЯ▓
sequential_12/rescaling_4/addAddV2!sequential_12/rescaling_4/mul:z:0+sequential_12/rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯЁ
;sequential_13/random_flip_4/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ё
;sequential_13/random_flip_4/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: №
:sequential_13/random_flip_4/stateful_uniform_full_int/ProdProdDsequential_13/random_flip_4/stateful_uniform_full_int/shape:output:0Dsequential_13/random_flip_4/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: ~
<sequential_13/random_flip_4/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :╣
<sequential_13/random_flip_4/stateful_uniform_full_int/Cast_1CastCsequential_13/random_flip_4/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╩
Dsequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipMsequential_13_random_flip_4_stateful_uniform_full_int_rngreadandskip_resourceEsequential_13/random_flip_4/stateful_uniform_full_int/Cast/x:output:0@sequential_13/random_flip_4/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Њ
Isequential_13/random_flip_4/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ћ
Ksequential_13/random_flip_4/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ћ
Ksequential_13/random_flip_4/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
Csequential_13/random_flip_4/stateful_uniform_full_int/strided_sliceStridedSliceLsequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkip:value:0Rsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice/stack:output:0Tsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice/stack_1:output:0Tsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskК
=sequential_13/random_flip_4/stateful_uniform_full_int/BitcastBitcastLsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ћ
Ksequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ќ
Msequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ќ
Msequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
Esequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1StridedSliceLsequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkip:value:0Tsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1/stack:output:0Vsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Vsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:╦
?sequential_13/random_flip_4/stateful_uniform_full_int/Bitcast_1BitcastNsequential_13/random_flip_4/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0{
9sequential_13/random_flip_4/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Ю
5sequential_13/random_flip_4/stateful_uniform_full_intStatelessRandomUniformFullIntV2Dsequential_13/random_flip_4/stateful_uniform_full_int/shape:output:0Hsequential_13/random_flip_4/stateful_uniform_full_int/Bitcast_1:output:0Fsequential_13/random_flip_4/stateful_uniform_full_int/Bitcast:output:0Bsequential_13/random_flip_4/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	p
&sequential_13/random_flip_4/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ╠
!sequential_13/random_flip_4/stackPack>sequential_13/random_flip_4/stateful_uniform_full_int:output:0/sequential_13/random_flip_4/zeros_like:output:0*
N*
T0	*
_output_shapes

:ђ
/sequential_13/random_flip_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ѓ
1sequential_13/random_flip_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ѓ
1sequential_13/random_flip_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
)sequential_13/random_flip_4/strided_sliceStridedSlice*sequential_13/random_flip_4/stack:output:08sequential_13/random_flip_4/strided_slice/stack:output:0:sequential_13/random_flip_4/strided_slice/stack_1:output:0:sequential_13/random_flip_4/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskВ
Osequential_13/random_flip_4/stateless_random_flip_left_right/control_dependencyIdentity!sequential_12/rescaling_4/add:z:0*
T0*0
_class&
$"loc:@sequential_12/rescaling_4/add*1
_output_shapes
:         ЯЯ╩
Bsequential_13/random_flip_4/stateless_random_flip_left_right/ShapeShapeXsequential_13/random_flip_4/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:џ
Psequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ю
Rsequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ю
Rsequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
Jsequential_13/random_flip_4/stateless_random_flip_left_right/strided_sliceStridedSliceKsequential_13/random_flip_4/stateless_random_flip_left_right/Shape:output:0Ysequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice/stack:output:0[sequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice/stack_1:output:0[sequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
[sequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/shapePackSsequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:ъ
Ysequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ъ
Ysequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?У
rsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter2sequential_13/random_flip_4/strided_slice:output:0* 
_output_shapes
::┤
rsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :і
nsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2dsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0xsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0|sequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0{sequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ╔
Ysequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/subSubbsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/max:output:0bsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
Ysequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/mulMulwsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0]sequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         ¤
Usequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniformAddV2]sequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0bsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         ј
Lsequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ј
Lsequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ј
Lsequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┌
Jsequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shapePackSsequential_13/random_flip_4/stateless_random_flip_left_right/strided_slice:output:0Usequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape/1:output:0Usequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape/2:output:0Usequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:╣
Dsequential_13/random_flip_4/stateless_random_flip_left_right/ReshapeReshapeYsequential_13/random_flip_4/stateless_random_flip_left_right/stateless_random_uniform:z:0Ssequential_13/random_flip_4/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         н
Bsequential_13/random_flip_4/stateless_random_flip_left_right/RoundRoundMsequential_13/random_flip_4/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         Ћ
Ksequential_13/random_flip_4/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:┐
Fsequential_13/random_flip_4/stateless_random_flip_left_right/ReverseV2	ReverseV2Xsequential_13/random_flip_4/stateless_random_flip_left_right/control_dependency:output:0Tsequential_13/random_flip_4/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯю
@sequential_13/random_flip_4/stateless_random_flip_left_right/mulMulFsequential_13/random_flip_4/stateless_random_flip_left_right/Round:y:0Osequential_13/random_flip_4/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯЄ
Bsequential_13/random_flip_4/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
@sequential_13/random_flip_4/stateless_random_flip_left_right/subSubKsequential_13/random_flip_4/stateless_random_flip_left_right/sub/x:output:0Fsequential_13/random_flip_4/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         Ц
Bsequential_13/random_flip_4/stateless_random_flip_left_right/mul_1MulDsequential_13/random_flip_4/stateless_random_flip_left_right/sub:z:0Xsequential_13/random_flip_4/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯЊ
@sequential_13/random_flip_4/stateless_random_flip_left_right/addAddV2Dsequential_13/random_flip_4/stateless_random_flip_left_right/mul:z:0Fsequential_13/random_flip_4/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯЄ
=sequential_13/random_flip_4/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:Є
=sequential_13/random_flip_4/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ш
<sequential_13/random_flip_4/stateful_uniform_full_int_1/ProdProdFsequential_13/random_flip_4/stateful_uniform_full_int_1/shape:output:0Fsequential_13/random_flip_4/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: ђ
>sequential_13/random_flip_4/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :й
>sequential_13/random_flip_4/stateful_uniform_full_int_1/Cast_1CastEsequential_13/random_flip_4/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ќ
Fsequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipMsequential_13_random_flip_4_stateful_uniform_full_int_rngreadandskip_resourceGsequential_13/random_flip_4/stateful_uniform_full_int_1/Cast/x:output:0Bsequential_13/random_flip_4/stateful_uniform_full_int_1/Cast_1:y:0E^sequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Ћ
Ksequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ќ
Msequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ќ
Msequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
Esequential_13/random_flip_4/stateful_uniform_full_int_1/strided_sliceStridedSliceNsequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip:value:0Tsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice/stack:output:0Vsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Vsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask╦
?sequential_13/random_flip_4/stateful_uniform_full_int_1/BitcastBitcastNsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ќ
Msequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ў
Osequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ў
Osequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
Gsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1StridedSliceNsequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip:value:0Vsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Xsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Xsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:¤
Asequential_13/random_flip_4/stateful_uniform_full_int_1/Bitcast_1BitcastPsequential_13/random_flip_4/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;sequential_13/random_flip_4/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Д
7sequential_13/random_flip_4/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Fsequential_13/random_flip_4/stateful_uniform_full_int_1/shape:output:0Jsequential_13/random_flip_4/stateful_uniform_full_int_1/Bitcast_1:output:0Hsequential_13/random_flip_4/stateful_uniform_full_int_1/Bitcast:output:0Dsequential_13/random_flip_4/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	r
(sequential_13/random_flip_4/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R м
#sequential_13/random_flip_4/stack_1Pack@sequential_13/random_flip_4/stateful_uniform_full_int_1:output:01sequential_13/random_flip_4/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:ѓ
1sequential_13/random_flip_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        ё
3sequential_13/random_flip_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ё
3sequential_13/random_flip_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
+sequential_13/random_flip_4/strided_slice_1StridedSlice,sequential_13/random_flip_4/stack_1:output:0:sequential_13/random_flip_4/strided_slice_1/stack:output:0<sequential_13/random_flip_4/strided_slice_1/stack_1:output:0<sequential_13/random_flip_4/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask»
Lsequential_13/random_flip_4/stateless_random_flip_up_down/control_dependencyIdentityDsequential_13/random_flip_4/stateless_random_flip_left_right/add:z:0*
T0*S
_classI
GEloc:@sequential_13/random_flip_4/stateless_random_flip_left_right/add*1
_output_shapes
:         ЯЯ─
?sequential_13/random_flip_4/stateless_random_flip_up_down/ShapeShapeUsequential_13/random_flip_4/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:Ќ
Msequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ў
Osequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ў
Osequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
Gsequential_13/random_flip_4/stateless_random_flip_up_down/strided_sliceStridedSliceHsequential_13/random_flip_4/stateless_random_flip_up_down/Shape:output:0Vsequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice/stack:output:0Xsequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice/stack_1:output:0Xsequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЯ
Xsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/shapePackPsequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Џ
Vsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Џ
Vsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?у
osequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter4sequential_13/random_flip_4/strided_slice_1:output:0* 
_output_shapes
::▒
osequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ч
ksequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2asequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0usequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ysequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         └
Vsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/subSub_sequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/max:output:0_sequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: П
Vsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/mulMultsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Zsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         к
Rsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniformAddV2Zsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0_sequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         І
Isequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :І
Isequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :І
Isequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╦
Gsequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shapePackPsequential_13/random_flip_4/stateless_random_flip_up_down/strided_slice:output:0Rsequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape/1:output:0Rsequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape/2:output:0Rsequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:░
Asequential_13/random_flip_4/stateless_random_flip_up_down/ReshapeReshapeVsequential_13/random_flip_4/stateless_random_flip_up_down/stateless_random_uniform:z:0Psequential_13/random_flip_4/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         ╬
?sequential_13/random_flip_4/stateless_random_flip_up_down/RoundRoundJsequential_13/random_flip_4/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         њ
Hsequential_13/random_flip_4/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Х
Csequential_13/random_flip_4/stateless_random_flip_up_down/ReverseV2	ReverseV2Usequential_13/random_flip_4/stateless_random_flip_up_down/control_dependency:output:0Qsequential_13/random_flip_4/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯЊ
=sequential_13/random_flip_4/stateless_random_flip_up_down/mulMulCsequential_13/random_flip_4/stateless_random_flip_up_down/Round:y:0Lsequential_13/random_flip_4/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯё
?sequential_13/random_flip_4/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ї
=sequential_13/random_flip_4/stateless_random_flip_up_down/subSubHsequential_13/random_flip_4/stateless_random_flip_up_down/sub/x:output:0Csequential_13/random_flip_4/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ю
?sequential_13/random_flip_4/stateless_random_flip_up_down/mul_1MulAsequential_13/random_flip_4/stateless_random_flip_up_down/sub:z:0Usequential_13/random_flip_4/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯі
=sequential_13/random_flip_4/stateless_random_flip_up_down/addAddV2Asequential_13/random_flip_4/stateless_random_flip_up_down/mul:z:0Csequential_13/random_flip_4/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯќ
%sequential_13/random_rotation_4/ShapeShapeAsequential_13/random_flip_4/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:}
3sequential_13/random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_13/random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_13/random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
-sequential_13/random_rotation_4/strided_sliceStridedSlice.sequential_13/random_rotation_4/Shape:output:0<sequential_13/random_rotation_4/strided_slice/stack:output:0>sequential_13/random_rotation_4/strided_slice/stack_1:output:0>sequential_13/random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskѕ
5sequential_13/random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        і
7sequential_13/random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        Ђ
7sequential_13/random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
/sequential_13/random_rotation_4/strided_slice_1StridedSlice.sequential_13/random_rotation_4/Shape:output:0>sequential_13/random_rotation_4/strided_slice_1/stack:output:0@sequential_13/random_rotation_4/strided_slice_1/stack_1:output:0@sequential_13/random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskќ
$sequential_13/random_rotation_4/CastCast8sequential_13/random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ѕ
5sequential_13/random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        і
7sequential_13/random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         Ђ
7sequential_13/random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
/sequential_13/random_rotation_4/strided_slice_2StridedSlice.sequential_13/random_rotation_4/Shape:output:0>sequential_13/random_rotation_4/strided_slice_2/stack:output:0@sequential_13/random_rotation_4/strided_slice_2/stack_1:output:0@sequential_13/random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskў
&sequential_13/random_rotation_4/Cast_1Cast8sequential_13/random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ц
6sequential_13/random_rotation_4/stateful_uniform/shapePack6sequential_13/random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:y
4sequential_13/random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы┐y
4sequential_13/random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы?ђ
6sequential_13/random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Я
5sequential_13/random_rotation_4/stateful_uniform/ProdProd?sequential_13/random_rotation_4/stateful_uniform/shape:output:0?sequential_13/random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: y
7sequential_13/random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :»
7sequential_13/random_rotation_4/stateful_uniform/Cast_1Cast>sequential_13/random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Х
?sequential_13/random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_13_random_rotation_4_stateful_uniform_rngreadandskip_resource@sequential_13/random_rotation_4/stateful_uniform/Cast/x:output:0;sequential_13/random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:ј
Dsequential_13/random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: љ
Fsequential_13/random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:љ
Fsequential_13/random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╠
>sequential_13/random_rotation_4/stateful_uniform/strided_sliceStridedSliceGsequential_13/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Msequential_13/random_rotation_4/stateful_uniform/strided_slice/stack:output:0Osequential_13/random_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Osequential_13/random_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskй
8sequential_13/random_rotation_4/stateful_uniform/BitcastBitcastGsequential_13/random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0љ
Fsequential_13/random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:њ
Hsequential_13/random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:њ
Hsequential_13/random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┬
@sequential_13/random_rotation_4/stateful_uniform/strided_slice_1StridedSliceGsequential_13/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Osequential_13/random_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Qsequential_13/random_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_13/random_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:┴
:sequential_13/random_rotation_4/stateful_uniform/Bitcast_1BitcastIsequential_13/random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Ј
Msequential_13/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ф
Isequential_13/random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_13/random_rotation_4/stateful_uniform/shape:output:0Csequential_13/random_rotation_4/stateful_uniform/Bitcast_1:output:0Asequential_13/random_rotation_4/stateful_uniform/Bitcast:output:0Vsequential_13/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ┌
4sequential_13/random_rotation_4/stateful_uniform/subSub=sequential_13/random_rotation_4/stateful_uniform/max:output:0=sequential_13/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: э
4sequential_13/random_rotation_4/stateful_uniform/mulMulRsequential_13/random_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:08sequential_13/random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         Я
0sequential_13/random_rotation_4/stateful_uniformAddV28sequential_13/random_rotation_4/stateful_uniform/mul:z:0=sequential_13/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         z
5sequential_13/random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?К
3sequential_13/random_rotation_4/rotation_matrix/subSub*sequential_13/random_rotation_4/Cast_1:y:0>sequential_13/random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ъ
3sequential_13/random_rotation_4/rotation_matrix/CosCos4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         |
7sequential_13/random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╦
5sequential_13/random_rotation_4/rotation_matrix/sub_1Sub*sequential_13/random_rotation_4/Cast_1:y:0@sequential_13/random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ▄
3sequential_13/random_rotation_4/rotation_matrix/mulMul7sequential_13/random_rotation_4/rotation_matrix/Cos:y:09sequential_13/random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ъ
3sequential_13/random_rotation_4/rotation_matrix/SinSin4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         |
7sequential_13/random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╔
5sequential_13/random_rotation_4/rotation_matrix/sub_2Sub(sequential_13/random_rotation_4/Cast:y:0@sequential_13/random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: я
5sequential_13/random_rotation_4/rotation_matrix/mul_1Mul7sequential_13/random_rotation_4/rotation_matrix/Sin:y:09sequential_13/random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         я
5sequential_13/random_rotation_4/rotation_matrix/sub_3Sub7sequential_13/random_rotation_4/rotation_matrix/mul:z:09sequential_13/random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         я
5sequential_13/random_rotation_4/rotation_matrix/sub_4Sub7sequential_13/random_rotation_4/rotation_matrix/sub:z:09sequential_13/random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ~
9sequential_13/random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @№
7sequential_13/random_rotation_4/rotation_matrix/truedivRealDiv9sequential_13/random_rotation_4/rotation_matrix/sub_4:z:0Bsequential_13/random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         |
7sequential_13/random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╔
5sequential_13/random_rotation_4/rotation_matrix/sub_5Sub(sequential_13/random_rotation_4/Cast:y:0@sequential_13/random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: а
5sequential_13/random_rotation_4/rotation_matrix/Sin_1Sin4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         |
7sequential_13/random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╦
5sequential_13/random_rotation_4/rotation_matrix/sub_6Sub*sequential_13/random_rotation_4/Cast_1:y:0@sequential_13/random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Я
5sequential_13/random_rotation_4/rotation_matrix/mul_2Mul9sequential_13/random_rotation_4/rotation_matrix/Sin_1:y:09sequential_13/random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         а
5sequential_13/random_rotation_4/rotation_matrix/Cos_1Cos4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         |
7sequential_13/random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╔
5sequential_13/random_rotation_4/rotation_matrix/sub_7Sub(sequential_13/random_rotation_4/Cast:y:0@sequential_13/random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Я
5sequential_13/random_rotation_4/rotation_matrix/mul_3Mul9sequential_13/random_rotation_4/rotation_matrix/Cos_1:y:09sequential_13/random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         Я
3sequential_13/random_rotation_4/rotation_matrix/addAddV29sequential_13/random_rotation_4/rotation_matrix/mul_2:z:09sequential_13/random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         я
5sequential_13/random_rotation_4/rotation_matrix/sub_8Sub9sequential_13/random_rotation_4/rotation_matrix/sub_5:z:07sequential_13/random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         ђ
;sequential_13/random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @з
9sequential_13/random_rotation_4/rotation_matrix/truediv_1RealDiv9sequential_13/random_rotation_4/rotation_matrix/sub_8:z:0Dsequential_13/random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         Ў
5sequential_13/random_rotation_4/rotation_matrix/ShapeShape4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:Ї
Csequential_13/random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ј
Esequential_13/random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ј
Esequential_13/random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┴
=sequential_13/random_rotation_4/rotation_matrix/strided_sliceStridedSlice>sequential_13/random_rotation_4/rotation_matrix/Shape:output:0Lsequential_13/random_rotation_4/rotation_matrix/strided_slice/stack:output:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskа
5sequential_13/random_rotation_4/rotation_matrix/Cos_2Cos4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ќ
Esequential_13/random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      З
?sequential_13/random_rotation_4/rotation_matrix/strided_slice_1StridedSlice9sequential_13/random_rotation_4/rotation_matrix/Cos_2:y:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskа
5sequential_13/random_rotation_4/rotation_matrix/Sin_2Sin4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ќ
Esequential_13/random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      З
?sequential_13/random_rotation_4/rotation_matrix/strided_slice_2StridedSlice9sequential_13/random_rotation_4/rotation_matrix/Sin_2:y:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskХ
3sequential_13/random_rotation_4/rotation_matrix/NegNegHsequential_13/random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         ќ
Esequential_13/random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ш
?sequential_13/random_rotation_4/rotation_matrix/strided_slice_3StridedSlice;sequential_13/random_rotation_4/rotation_matrix/truediv:z:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskа
5sequential_13/random_rotation_4/rotation_matrix/Sin_3Sin4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ќ
Esequential_13/random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      З
?sequential_13/random_rotation_4/rotation_matrix/strided_slice_4StridedSlice9sequential_13/random_rotation_4/rotation_matrix/Sin_3:y:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskа
5sequential_13/random_rotation_4/rotation_matrix/Cos_3Cos4sequential_13/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ќ
Esequential_13/random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      З
?sequential_13/random_rotation_4/rotation_matrix/strided_slice_5StridedSlice9sequential_13/random_rotation_4/rotation_matrix/Cos_3:y:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskќ
Esequential_13/random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ў
Gsequential_13/random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Э
?sequential_13/random_rotation_4/rotation_matrix/strided_slice_6StridedSlice=sequential_13/random_rotation_4/rotation_matrix/truediv_1:z:0Nsequential_13/random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_13/random_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskђ
>sequential_13/random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѓ
<sequential_13/random_rotation_4/rotation_matrix/zeros/packedPackFsequential_13/random_rotation_4/rotation_matrix/strided_slice:output:0Gsequential_13/random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:ђ
;sequential_13/random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ч
5sequential_13/random_rotation_4/rotation_matrix/zerosFillEsequential_13/random_rotation_4/rotation_matrix/zeros/packed:output:0Dsequential_13/random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         }
;sequential_13/random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
6sequential_13/random_rotation_4/rotation_matrix/concatConcatV2Hsequential_13/random_rotation_4/rotation_matrix/strided_slice_1:output:07sequential_13/random_rotation_4/rotation_matrix/Neg:y:0Hsequential_13/random_rotation_4/rotation_matrix/strided_slice_3:output:0Hsequential_13/random_rotation_4/rotation_matrix/strided_slice_4:output:0Hsequential_13/random_rotation_4/rotation_matrix/strided_slice_5:output:0Hsequential_13/random_rotation_4/rotation_matrix/strided_slice_6:output:0>sequential_13/random_rotation_4/rotation_matrix/zeros:output:0Dsequential_13/random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         а
/sequential_13/random_rotation_4/transform/ShapeShapeAsequential_13/random_flip_4/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:Є
=sequential_13/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Ѕ
?sequential_13/random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
?sequential_13/random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ј
7sequential_13/random_rotation_4/transform/strided_sliceStridedSlice8sequential_13/random_rotation_4/transform/Shape:output:0Fsequential_13/random_rotation_4/transform/strided_slice/stack:output:0Hsequential_13/random_rotation_4/transform/strided_slice/stack_1:output:0Hsequential_13/random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:y
4sequential_13/random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ▄
Dsequential_13/random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Asequential_13/random_flip_4/stateless_random_flip_up_down/add:z:0?sequential_13/random_rotation_4/rotation_matrix/concat:output:0@sequential_13/random_rotation_4/transform/strided_slice:output:0=sequential_13/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARф
!sequential_13/random_zoom_3/ShapeShapeYsequential_13/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:y
/sequential_13/random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_13/random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_13/random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
)sequential_13/random_zoom_3/strided_sliceStridedSlice*sequential_13/random_zoom_3/Shape:output:08sequential_13/random_zoom_3/strided_slice/stack:output:0:sequential_13/random_zoom_3/strided_slice/stack_1:output:0:sequential_13/random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskё
1sequential_13/random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        є
3sequential_13/random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        }
3sequential_13/random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
+sequential_13/random_zoom_3/strided_slice_1StridedSlice*sequential_13/random_zoom_3/Shape:output:0:sequential_13/random_zoom_3/strided_slice_1/stack:output:0<sequential_13/random_zoom_3/strided_slice_1/stack_1:output:0<sequential_13/random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskј
 sequential_13/random_zoom_3/CastCast4sequential_13/random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: ё
1sequential_13/random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        є
3sequential_13/random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         }
3sequential_13/random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
+sequential_13/random_zoom_3/strided_slice_2StridedSlice*sequential_13/random_zoom_3/Shape:output:0:sequential_13/random_zoom_3/strided_slice_2/stack:output:0<sequential_13/random_zoom_3/strided_slice_2/stack_1:output:0<sequential_13/random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskљ
"sequential_13/random_zoom_3/Cast_1Cast4sequential_13/random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: v
4sequential_13/random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :█
2sequential_13/random_zoom_3/stateful_uniform/shapePack2sequential_13/random_zoom_3/strided_slice:output:0=sequential_13/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:u
0sequential_13/random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?u
0sequential_13/random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33│?|
2sequential_13/random_zoom_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: н
1sequential_13/random_zoom_3/stateful_uniform/ProdProd;sequential_13/random_zoom_3/stateful_uniform/shape:output:0;sequential_13/random_zoom_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: u
3sequential_13/random_zoom_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Д
3sequential_13/random_zoom_3/stateful_uniform/Cast_1Cast:sequential_13/random_zoom_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: д
;sequential_13/random_zoom_3/stateful_uniform/RngReadAndSkipRngReadAndSkipDsequential_13_random_zoom_3_stateful_uniform_rngreadandskip_resource<sequential_13/random_zoom_3/stateful_uniform/Cast/x:output:07sequential_13/random_zoom_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:і
@sequential_13/random_zoom_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ї
Bsequential_13/random_zoom_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ї
Bsequential_13/random_zoom_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
:sequential_13/random_zoom_3/stateful_uniform/strided_sliceStridedSliceCsequential_13/random_zoom_3/stateful_uniform/RngReadAndSkip:value:0Isequential_13/random_zoom_3/stateful_uniform/strided_slice/stack:output:0Ksequential_13/random_zoom_3/stateful_uniform/strided_slice/stack_1:output:0Ksequential_13/random_zoom_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskх
4sequential_13/random_zoom_3/stateful_uniform/BitcastBitcastCsequential_13/random_zoom_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0ї
Bsequential_13/random_zoom_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:ј
Dsequential_13/random_zoom_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ј
Dsequential_13/random_zoom_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
<sequential_13/random_zoom_3/stateful_uniform/strided_slice_1StridedSliceCsequential_13/random_zoom_3/stateful_uniform/RngReadAndSkip:value:0Ksequential_13/random_zoom_3/stateful_uniform/strided_slice_1/stack:output:0Msequential_13/random_zoom_3/stateful_uniform/strided_slice_1/stack_1:output:0Msequential_13/random_zoom_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:╣
6sequential_13/random_zoom_3/stateful_uniform/Bitcast_1BitcastEsequential_13/random_zoom_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0І
Isequential_13/random_zoom_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Џ
Esequential_13/random_zoom_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2;sequential_13/random_zoom_3/stateful_uniform/shape:output:0?sequential_13/random_zoom_3/stateful_uniform/Bitcast_1:output:0=sequential_13/random_zoom_3/stateful_uniform/Bitcast:output:0Rsequential_13/random_zoom_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         ╬
0sequential_13/random_zoom_3/stateful_uniform/subSub9sequential_13/random_zoom_3/stateful_uniform/max:output:09sequential_13/random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: №
0sequential_13/random_zoom_3/stateful_uniform/mulMulNsequential_13/random_zoom_3/stateful_uniform/StatelessRandomUniformV2:output:04sequential_13/random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         п
,sequential_13/random_zoom_3/stateful_uniformAddV24sequential_13/random_zoom_3/stateful_uniform/mul:z:09sequential_13/random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:         i
'sequential_13/random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
"sequential_13/random_zoom_3/concatConcatV20sequential_13/random_zoom_3/stateful_uniform:z:00sequential_13/random_zoom_3/stateful_uniform:z:00sequential_13/random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ѕ
-sequential_13/random_zoom_3/zoom_matrix/ShapeShape+sequential_13/random_zoom_3/concat:output:0*
T0*
_output_shapes
:Ё
;sequential_13/random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Є
=sequential_13/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Є
=sequential_13/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
5sequential_13/random_zoom_3/zoom_matrix/strided_sliceStridedSlice6sequential_13/random_zoom_3/zoom_matrix/Shape:output:0Dsequential_13/random_zoom_3/zoom_matrix/strided_slice/stack:output:0Fsequential_13/random_zoom_3/zoom_matrix/strided_slice/stack_1:output:0Fsequential_13/random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
-sequential_13/random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?│
+sequential_13/random_zoom_3/zoom_matrix/subSub&sequential_13/random_zoom_3/Cast_1:y:06sequential_13/random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: v
1sequential_13/random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @╚
/sequential_13/random_zoom_3/zoom_matrix/truedivRealDiv/sequential_13/random_zoom_3/zoom_matrix/sub:z:0:sequential_13/random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: њ
=sequential_13/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         я
7sequential_13/random_zoom_3/zoom_matrix/strided_slice_1StridedSlice+sequential_13/random_zoom_3/concat:output:0Fsequential_13/random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_13/random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Р
-sequential_13/random_zoom_3/zoom_matrix/sub_1Sub8sequential_13/random_zoom_3/zoom_matrix/sub_1/x:output:0@sequential_13/random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         ╠
+sequential_13/random_zoom_3/zoom_matrix/mulMul3sequential_13/random_zoom_3/zoom_matrix/truediv:z:01sequential_13/random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         t
/sequential_13/random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?х
-sequential_13/random_zoom_3/zoom_matrix/sub_2Sub$sequential_13/random_zoom_3/Cast:y:08sequential_13/random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: x
3sequential_13/random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @╬
1sequential_13/random_zoom_3/zoom_matrix/truediv_1RealDiv1sequential_13/random_zoom_3/zoom_matrix/sub_2:z:0<sequential_13/random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: њ
=sequential_13/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         я
7sequential_13/random_zoom_3/zoom_matrix/strided_slice_2StridedSlice+sequential_13/random_zoom_3/concat:output:0Fsequential_13/random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskt
/sequential_13/random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Р
-sequential_13/random_zoom_3/zoom_matrix/sub_3Sub8sequential_13/random_zoom_3/zoom_matrix/sub_3/x:output:0@sequential_13/random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         л
-sequential_13/random_zoom_3/zoom_matrix/mul_1Mul5sequential_13/random_zoom_3/zoom_matrix/truediv_1:z:01sequential_13/random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         њ
=sequential_13/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         я
7sequential_13/random_zoom_3/zoom_matrix/strided_slice_3StridedSlice+sequential_13/random_zoom_3/concat:output:0Fsequential_13/random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
6sequential_13/random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :в
4sequential_13/random_zoom_3/zoom_matrix/zeros/packedPack>sequential_13/random_zoom_3/zoom_matrix/strided_slice:output:0?sequential_13/random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:x
3sequential_13/random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    С
-sequential_13/random_zoom_3/zoom_matrix/zerosFill=sequential_13/random_zoom_3/zoom_matrix/zeros/packed:output:0<sequential_13/random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         z
8sequential_13/random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :№
6sequential_13/random_zoom_3/zoom_matrix/zeros_1/packedPack>sequential_13/random_zoom_3/zoom_matrix/strided_slice:output:0Asequential_13/random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_13/random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ж
/sequential_13/random_zoom_3/zoom_matrix/zeros_1Fill?sequential_13/random_zoom_3/zoom_matrix/zeros_1/packed:output:0>sequential_13/random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         њ
=sequential_13/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           ћ
?sequential_13/random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         я
7sequential_13/random_zoom_3/zoom_matrix/strided_slice_4StridedSlice+sequential_13/random_zoom_3/concat:output:0Fsequential_13/random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0Hsequential_13/random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskz
8sequential_13/random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :№
6sequential_13/random_zoom_3/zoom_matrix/zeros_2/packedPack>sequential_13/random_zoom_3/zoom_matrix/strided_slice:output:0Asequential_13/random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:z
5sequential_13/random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ж
/sequential_13/random_zoom_3/zoom_matrix/zeros_2Fill?sequential_13/random_zoom_3/zoom_matrix/zeros_2/packed:output:0>sequential_13/random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         u
3sequential_13/random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :К
.sequential_13/random_zoom_3/zoom_matrix/concatConcatV2@sequential_13/random_zoom_3/zoom_matrix/strided_slice_3:output:06sequential_13/random_zoom_3/zoom_matrix/zeros:output:0/sequential_13/random_zoom_3/zoom_matrix/mul:z:08sequential_13/random_zoom_3/zoom_matrix/zeros_1:output:0@sequential_13/random_zoom_3/zoom_matrix/strided_slice_4:output:01sequential_13/random_zoom_3/zoom_matrix/mul_1:z:08sequential_13/random_zoom_3/zoom_matrix/zeros_2:output:0<sequential_13/random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ┤
+sequential_13/random_zoom_3/transform/ShapeShapeYsequential_13/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:Ѓ
9sequential_13/random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Ё
;sequential_13/random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ё
;sequential_13/random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
3sequential_13/random_zoom_3/transform/strided_sliceStridedSlice4sequential_13/random_zoom_3/transform/Shape:output:0Bsequential_13/random_zoom_3/transform/strided_slice/stack:output:0Dsequential_13/random_zoom_3/transform/strided_slice/stack_1:output:0Dsequential_13/random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:u
0sequential_13/random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
@sequential_13/random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Ysequential_13/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:07sequential_13/random_zoom_3/zoom_matrix/concat:output:0<sequential_13/random_zoom_3/transform/strided_slice:output:09sequential_13/random_zoom_3/transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARљ
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
conv2d_24/Conv2DConv2DUsequential_13/random_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя *
paddingVALID*
strides
є
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя n
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:         яя љ
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes
: *
dtype0ћ
'batch_normalization_29/ReadVariableOp_1ReadVariableOp0batch_normalization_29_readvariableop_1_resource*
_output_shapes
: *
dtype0▓
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Х
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0¤
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3conv2d_24/Relu:activations:0-batch_normalization_29/ReadVariableOp:value:0/batch_normalization_29/ReadVariableOp_1:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         яя : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<ї
%batch_normalization_29/AssignNewValueAssignVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource4batch_normalization_29/FusedBatchNormV3:batch_mean:07^batch_normalization_29/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0ќ
'batch_normalization_29/AssignNewValue_1AssignVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_29/FusedBatchNormV3:batch_variance:09^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0й
max_pooling2d_24/MaxPoolMaxPool+batch_normalization_29/FusedBatchNormV3:y:0*/
_output_shapes
:         oo *
ksize
*
paddingVALID*
strides
љ
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_25/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@*
paddingVALID*
strides
є
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@l
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         mm@љ
%batch_normalization_30/ReadVariableOpReadVariableOp.batch_normalization_30_readvariableop_resource*
_output_shapes
:@*
dtype0ћ
'batch_normalization_30/ReadVariableOp_1ReadVariableOp0batch_normalization_30_readvariableop_1_resource*
_output_shapes
:@*
dtype0▓
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Х
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0═
'batch_normalization_30/FusedBatchNormV3FusedBatchNormV3conv2d_25/Relu:activations:0-batch_normalization_30/ReadVariableOp:value:0/batch_normalization_30/ReadVariableOp_1:value:0>batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         mm@:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ї
%batch_normalization_30/AssignNewValueAssignVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource4batch_normalization_30/FusedBatchNormV3:batch_mean:07^batch_normalization_30/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0ќ
'batch_normalization_30/AssignNewValue_1AssignVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_30/FusedBatchNormV3:batch_variance:09^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0й
max_pooling2d_25/MaxPoolMaxPool+batch_normalization_30/FusedBatchNormV3:y:0*/
_output_shapes
:         66@*
ksize
*
paddingVALID*
strides
љ
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_26/Conv2DConv2D!max_pooling2d_25/MaxPool:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@*
paddingVALID*
strides
є
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@l
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:         44@љ
%batch_normalization_31/ReadVariableOpReadVariableOp.batch_normalization_31_readvariableop_resource*
_output_shapes
:@*
dtype0ћ
'batch_normalization_31/ReadVariableOp_1ReadVariableOp0batch_normalization_31_readvariableop_1_resource*
_output_shapes
:@*
dtype0▓
6batch_normalization_31/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Х
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0═
'batch_normalization_31/FusedBatchNormV3FusedBatchNormV3conv2d_26/Relu:activations:0-batch_normalization_31/ReadVariableOp:value:0/batch_normalization_31/ReadVariableOp_1:value:0>batch_normalization_31/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         44@:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ї
%batch_normalization_31/AssignNewValueAssignVariableOp?batch_normalization_31_fusedbatchnormv3_readvariableop_resource4batch_normalization_31/FusedBatchNormV3:batch_mean:07^batch_normalization_31/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0ќ
'batch_normalization_31/AssignNewValue_1AssignVariableOpAbatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_31/FusedBatchNormV3:batch_variance:09^batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0й
max_pooling2d_26/MaxPoolMaxPool+batch_normalization_31/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Љ
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0╩
conv2d_27/Conv2DConv2D!max_pooling2d_26/MaxPool:output:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Є
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ю
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђm
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*0
_output_shapes
:         ђЉ
%batch_normalization_32/ReadVariableOpReadVariableOp.batch_normalization_32_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ћ
'batch_normalization_32/ReadVariableOp_1ReadVariableOp0batch_normalization_32_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0│
6batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0и
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0м
'batch_normalization_32/FusedBatchNormV3FusedBatchNormV3conv2d_27/Relu:activations:0-batch_normalization_32/ReadVariableOp:value:0/batch_normalization_32/ReadVariableOp_1:value:0>batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ї
%batch_normalization_32/AssignNewValueAssignVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource4batch_normalization_32/FusedBatchNormV3:batch_mean:07^batch_normalization_32/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0ќ
'batch_normalization_32/AssignNewValue_1AssignVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_32/FusedBatchNormV3:batch_variance:09^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0Й
max_pooling2d_27/MaxPoolMaxPool+batch_normalization_32/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
њ
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0╩
conv2d_28/Conv2DConv2D!max_pooling2d_27/MaxPool:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђ*
paddingVALID*
strides
Є
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ю
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђm
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:         

ђЉ
%batch_normalization_33/ReadVariableOpReadVariableOp.batch_normalization_33_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ћ
'batch_normalization_33/ReadVariableOp_1ReadVariableOp0batch_normalization_33_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0│
6batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0и
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0м
'batch_normalization_33/FusedBatchNormV3FusedBatchNormV3conv2d_28/Relu:activations:0-batch_normalization_33/ReadVariableOp:value:0/batch_normalization_33/ReadVariableOp_1:value:0>batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         

ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ї
%batch_normalization_33/AssignNewValueAssignVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource4batch_normalization_33/FusedBatchNormV3:batch_mean:07^batch_normalization_33/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0ќ
'batch_normalization_33/AssignNewValue_1AssignVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_33/FusedBatchNormV3:batch_variance:09^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0Й
max_pooling2d_28/MaxPoolMaxPool+batch_normalization_33/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
њ
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0╩
conv2d_29/Conv2DConv2D!max_pooling2d_28/MaxPool:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Є
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ю
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђm
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:         ђЉ
%batch_normalization_34/ReadVariableOpReadVariableOp.batch_normalization_34_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ћ
'batch_normalization_34/ReadVariableOp_1ReadVariableOp0batch_normalization_34_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0│
6batch_normalization_34/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_34_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0и
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0м
'batch_normalization_34/FusedBatchNormV3FusedBatchNormV3conv2d_29/Relu:activations:0-batch_normalization_34/ReadVariableOp:value:0/batch_normalization_34/ReadVariableOp_1:value:0>batch_normalization_34/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<ї
%batch_normalization_34/AssignNewValueAssignVariableOp?batch_normalization_34_fusedbatchnormv3_readvariableop_resource4batch_normalization_34/FusedBatchNormV3:batch_mean:07^batch_normalization_34/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0ќ
'batch_normalization_34/AssignNewValue_1AssignVariableOpAbatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_34/FusedBatchNormV3:batch_variance:09^batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0Й
max_pooling2d_29/MaxPoolMaxPool+batch_normalization_34/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ї
flatten_4/ReshapeReshape!max_pooling2d_29/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:         ђЁ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0Ї
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ј
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @ё
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ї
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         є
NoOpNoOp&^batch_normalization_29/AssignNewValue(^batch_normalization_29/AssignNewValue_17^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp(^batch_normalization_29/ReadVariableOp_1&^batch_normalization_30/AssignNewValue(^batch_normalization_30/AssignNewValue_17^batch_normalization_30/FusedBatchNormV3/ReadVariableOp9^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_30/ReadVariableOp(^batch_normalization_30/ReadVariableOp_1&^batch_normalization_31/AssignNewValue(^batch_normalization_31/AssignNewValue_17^batch_normalization_31/FusedBatchNormV3/ReadVariableOp9^batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_31/ReadVariableOp(^batch_normalization_31/ReadVariableOp_1&^batch_normalization_32/AssignNewValue(^batch_normalization_32/AssignNewValue_17^batch_normalization_32/FusedBatchNormV3/ReadVariableOp9^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_32/ReadVariableOp(^batch_normalization_32/ReadVariableOp_1&^batch_normalization_33/AssignNewValue(^batch_normalization_33/AssignNewValue_17^batch_normalization_33/FusedBatchNormV3/ReadVariableOp9^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_33/ReadVariableOp(^batch_normalization_33/ReadVariableOp_1&^batch_normalization_34/AssignNewValue(^batch_normalization_34/AssignNewValue_17^batch_normalization_34/FusedBatchNormV3/ReadVariableOp9^batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_34/ReadVariableOp(^batch_normalization_34/ReadVariableOp_1!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOpE^sequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkipG^sequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip@^sequential_13/random_rotation_4/stateful_uniform/RngReadAndSkip<^sequential_13/random_zoom_3/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*є
_input_shapesu
s:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_29/AssignNewValue%batch_normalization_29/AssignNewValue2R
'batch_normalization_29/AssignNewValue_1'batch_normalization_29/AssignNewValue_12p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2R
'batch_normalization_29/ReadVariableOp_1'batch_normalization_29/ReadVariableOp_12N
%batch_normalization_30/AssignNewValue%batch_normalization_30/AssignNewValue2R
'batch_normalization_30/AssignNewValue_1'batch_normalization_30/AssignNewValue_12p
6batch_normalization_30/FusedBatchNormV3/ReadVariableOp6batch_normalization_30/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_18batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_30/ReadVariableOp%batch_normalization_30/ReadVariableOp2R
'batch_normalization_30/ReadVariableOp_1'batch_normalization_30/ReadVariableOp_12N
%batch_normalization_31/AssignNewValue%batch_normalization_31/AssignNewValue2R
'batch_normalization_31/AssignNewValue_1'batch_normalization_31/AssignNewValue_12p
6batch_normalization_31/FusedBatchNormV3/ReadVariableOp6batch_normalization_31/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_18batch_normalization_31/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_31/ReadVariableOp%batch_normalization_31/ReadVariableOp2R
'batch_normalization_31/ReadVariableOp_1'batch_normalization_31/ReadVariableOp_12N
%batch_normalization_32/AssignNewValue%batch_normalization_32/AssignNewValue2R
'batch_normalization_32/AssignNewValue_1'batch_normalization_32/AssignNewValue_12p
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp6batch_normalization_32/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_18batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_32/ReadVariableOp%batch_normalization_32/ReadVariableOp2R
'batch_normalization_32/ReadVariableOp_1'batch_normalization_32/ReadVariableOp_12N
%batch_normalization_33/AssignNewValue%batch_normalization_33/AssignNewValue2R
'batch_normalization_33/AssignNewValue_1'batch_normalization_33/AssignNewValue_12p
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp6batch_normalization_33/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_18batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_33/ReadVariableOp%batch_normalization_33/ReadVariableOp2R
'batch_normalization_33/ReadVariableOp_1'batch_normalization_33/ReadVariableOp_12N
%batch_normalization_34/AssignNewValue%batch_normalization_34/AssignNewValue2R
'batch_normalization_34/AssignNewValue_1'batch_normalization_34/AssignNewValue_12p
6batch_normalization_34/FusedBatchNormV3/ReadVariableOp6batch_normalization_34/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_18batch_normalization_34/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_34/ReadVariableOp%batch_normalization_34/ReadVariableOp2R
'batch_normalization_34/ReadVariableOp_1'batch_normalization_34/ReadVariableOp_12D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2ї
Dsequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkipDsequential_13/random_flip_4/stateful_uniform_full_int/RngReadAndSkip2љ
Fsequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkipFsequential_13/random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip2ѓ
?sequential_13/random_rotation_4/stateful_uniform/RngReadAndSkip?sequential_13/random_rotation_4/stateful_uniform/RngReadAndSkip2z
;sequential_13/random_zoom_3/stateful_uniform/RngReadAndSkip;sequential_13/random_zoom_3/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Ќ
e
I__inference_random_flip_4_layer_call_and_return_conditional_losses_666872

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ќ	
м
7__inference_batch_normalization_30_layer_call_fn_666354

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663611Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
═
Ю
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663687

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ш
б
*__inference_conv2d_28_layer_call_fn_666606

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_664097x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         

ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
фн
Ъ
I__inference_sequential_13_layer_call_and_return_conditional_losses_666229

inputsM
?random_flip_4_stateful_uniform_full_int_rngreadandskip_resource:	H
:random_rotation_4_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_3_stateful_uniform_rngreadandskip_resource:	
identityѕб6random_flip_4/stateful_uniform_full_int/RngReadAndSkipб8random_flip_4/stateful_uniform_full_int_1/RngReadAndSkipб1random_rotation_4/stateful_uniform/RngReadAndSkipб-random_zoom_3/stateful_uniform/RngReadAndSkipw
-random_flip_4/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip_4/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┼
,random_flip_4/stateful_uniform_full_int/ProdProd6random_flip_4/stateful_uniform_full_int/shape:output:06random_flip_4/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: p
.random_flip_4/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ю
.random_flip_4/stateful_uniform_full_int/Cast_1Cast5random_flip_4/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: њ
6random_flip_4/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_4_stateful_uniform_full_int_rngreadandskip_resource7random_flip_4/stateful_uniform_full_int/Cast/x:output:02random_flip_4/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Ё
;random_flip_4/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Є
=random_flip_4/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Є
=random_flip_4/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
5random_flip_4/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_4/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_4/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_4/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_4/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskФ
/random_flip_4/stateful_uniform_full_int/BitcastBitcast>random_flip_4/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Є
=random_flip_4/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ѕ
?random_flip_4/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
?random_flip_4/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ћ
7random_flip_4/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_4/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_4/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_4/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_4/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:»
1random_flip_4/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_4/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip_4/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :О
'random_flip_4/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_4/stateful_uniform_full_int/shape:output:0:random_flip_4/stateful_uniform_full_int/Bitcast_1:output:08random_flip_4/stateful_uniform_full_int/Bitcast:output:04random_flip_4/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip_4/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R б
random_flip_4/stackPack0random_flip_4/stateful_uniform_full_int:output:0!random_flip_4/zeros_like:output:0*
N*
T0	*
_output_shapes

:r
!random_flip_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
random_flip_4/strided_sliceStridedSlicerandom_flip_4/stack:output:0*random_flip_4/strided_slice/stack:output:0,random_flip_4/strided_slice/stack_1:output:0,random_flip_4/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskг
Arandom_flip_4/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ЯЯ«
4random_flip_4/stateless_random_flip_left_right/ShapeShapeJrandom_flip_4/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:ї
Brandom_flip_4/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ј
Drandom_flip_4/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ј
Drandom_flip_4/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╝
<random_flip_4/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_4/stateless_random_flip_left_right/Shape:output:0Krandom_flip_4/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_4/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_4/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╩
Mrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_4/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:љ
Krandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
Krandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╠
drandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_4/strided_slice:output:0* 
_output_shapes
::д
drandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :─
`random_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0mrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Ъ
Krandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ╝
Krandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Ц
Grandom_flip_4/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         ђ
>random_flip_4/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ђ
>random_flip_4/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :ђ
>random_flip_4/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ћ
<random_flip_4/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_4/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_4/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_4/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_4/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ј
6random_flip_4/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_4/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_4/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         И
4random_flip_4/stateless_random_flip_left_right/RoundRound?random_flip_4/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         Є
=random_flip_4/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ћ
8random_flip_4/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_4/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_4/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯЫ
2random_flip_4/stateless_random_flip_left_right/mulMul8random_flip_4/stateless_random_flip_left_right/Round:y:0Arandom_flip_4/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯy
4random_flip_4/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?В
2random_flip_4/stateless_random_flip_left_right/subSub=random_flip_4/stateless_random_flip_left_right/sub/x:output:08random_flip_4/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ч
4random_flip_4/stateless_random_flip_left_right/mul_1Mul6random_flip_4/stateless_random_flip_left_right/sub:z:0Jrandom_flip_4/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯж
2random_flip_4/stateless_random_flip_left_right/addAddV26random_flip_4/stateless_random_flip_left_right/mul:z:08random_flip_4/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯy
/random_flip_4/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:y
/random_flip_4/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ╦
.random_flip_4/stateful_uniform_full_int_1/ProdProd8random_flip_4/stateful_uniform_full_int_1/shape:output:08random_flip_4/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: r
0random_flip_4/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :А
0random_flip_4/stateful_uniform_full_int_1/Cast_1Cast7random_flip_4/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
8random_flip_4/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip?random_flip_4_stateful_uniform_full_int_rngreadandskip_resource9random_flip_4/stateful_uniform_full_int_1/Cast/x:output:04random_flip_4/stateful_uniform_full_int_1/Cast_1:y:07^random_flip_4/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Є
=random_flip_4/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ѕ
?random_flip_4/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
?random_flip_4/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
7random_flip_4/stateful_uniform_full_int_1/strided_sliceStridedSlice@random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip_4/stateful_uniform_full_int_1/strided_slice/stack:output:0Hrandom_flip_4/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Hrandom_flip_4/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask»
1random_flip_4/stateful_uniform_full_int_1/BitcastBitcast@random_flip_4/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ѕ
?random_flip_4/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:І
Arandom_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:І
Arandom_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
9random_flip_4/stateful_uniform_full_int_1/strided_slice_1StridedSlice@random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip:value:0Hrandom_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Jrandom_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Jrandom_flip_4/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:│
3random_flip_4/stateful_uniform_full_int_1/Bitcast_1BitcastBrandom_flip_4/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-random_flip_4/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :р
)random_flip_4/stateful_uniform_full_int_1StatelessRandomUniformFullIntV28random_flip_4/stateful_uniform_full_int_1/shape:output:0<random_flip_4/stateful_uniform_full_int_1/Bitcast_1:output:0:random_flip_4/stateful_uniform_full_int_1/Bitcast:output:06random_flip_4/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	d
random_flip_4/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R е
random_flip_4/stack_1Pack2random_flip_4/stateful_uniform_full_int_1:output:0#random_flip_4/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:t
#random_flip_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%random_flip_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%random_flip_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
random_flip_4/strided_slice_1StridedSlicerandom_flip_4/stack_1:output:0,random_flip_4/strided_slice_1/stack:output:0.random_flip_4/strided_slice_1/stack_1:output:0.random_flip_4/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЁ
>random_flip_4/stateless_random_flip_up_down/control_dependencyIdentity6random_flip_4/stateless_random_flip_left_right/add:z:0*
T0*E
_class;
97loc:@random_flip_4/stateless_random_flip_left_right/add*1
_output_shapes
:         ЯЯе
1random_flip_4/stateless_random_flip_up_down/ShapeShapeGrandom_flip_4/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:Ѕ
?random_flip_4/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: І
Arandom_flip_4/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:І
Arandom_flip_4/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
9random_flip_4/stateless_random_flip_up_down/strided_sliceStridedSlice:random_flip_4/stateless_random_flip_up_down/Shape:output:0Hrandom_flip_4/stateless_random_flip_up_down/strided_slice/stack:output:0Jrandom_flip_4/stateless_random_flip_up_down/strided_slice/stack_1:output:0Jrandom_flip_4/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask─
Jrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/shapePackBrandom_flip_4/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Ї
Hrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
Hrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╦
arandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter&random_flip_4/strided_slice_1:output:0* 
_output_shapes
::Б
arandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :х
]random_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Srandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0grandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0krandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ќ
Hrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/subSubQrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Qrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: │
Hrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/mulMulfrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Lrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         ю
Drandom_flip_4/stateless_random_flip_up_down/stateless_random_uniformAddV2Lrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Qrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         }
;random_flip_4/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_4/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_4/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ё
9random_flip_4/stateless_random_flip_up_down/Reshape/shapePackBrandom_flip_4/stateless_random_flip_up_down/strided_slice:output:0Drandom_flip_4/stateless_random_flip_up_down/Reshape/shape/1:output:0Drandom_flip_4/stateless_random_flip_up_down/Reshape/shape/2:output:0Drandom_flip_4/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:є
3random_flip_4/stateless_random_flip_up_down/ReshapeReshapeHrandom_flip_4/stateless_random_flip_up_down/stateless_random_uniform:z:0Brandom_flip_4/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         ▓
1random_flip_4/stateless_random_flip_up_down/RoundRound<random_flip_4/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         ё
:random_flip_4/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ї
5random_flip_4/stateless_random_flip_up_down/ReverseV2	ReverseV2Grandom_flip_4/stateless_random_flip_up_down/control_dependency:output:0Crandom_flip_4/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯж
/random_flip_4/stateless_random_flip_up_down/mulMul5random_flip_4/stateless_random_flip_up_down/Round:y:0>random_flip_4/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯv
1random_flip_4/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?с
/random_flip_4/stateless_random_flip_up_down/subSub:random_flip_4/stateless_random_flip_up_down/sub/x:output:05random_flip_4/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         Ы
1random_flip_4/stateless_random_flip_up_down/mul_1Mul3random_flip_4/stateless_random_flip_up_down/sub:z:0Grandom_flip_4/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯЯ
/random_flip_4/stateless_random_flip_up_down/addAddV23random_flip_4/stateless_random_flip_up_down/mul:z:05random_flip_4/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯz
random_rotation_4/ShapeShape3random_flip_4/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:o
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        |
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        s
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:│
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        |
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         s
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:│
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ѕ
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы┐k
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы?r
(random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Х
'random_rotation_4/stateful_uniform/ProdProd1random_rotation_4/stateful_uniform/shape:output:01random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Њ
)random_rotation_4/stateful_uniform/Cast_1Cast0random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ■
1random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_4_stateful_uniform_rngreadandskip_resource2random_rotation_4/stateful_uniform/Cast/x:output:0-random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:ђ
6random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ѓ
8random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ѓ
8random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:є
0random_rotation_4/stateful_uniform/strided_sliceStridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0?random_rotation_4/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskА
*random_rotation_4/stateful_uniform/BitcastBitcast9random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0ѓ
8random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:ё
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ё
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
2random_rotation_4/stateful_uniform/strided_slice_1StridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ц
,random_rotation_4/stateful_uniform/Bitcast_1Bitcast;random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Ђ
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :т
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_4/stateful_uniform/shape:output:05random_rotation_4/stateful_uniform/Bitcast_1:output:03random_rotation_4/stateful_uniform/Bitcast:output:0Hrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ░
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: ═
&random_rotation_4/stateful_uniform/mulMulDrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         Х
"random_rotation_4/stateful_uniformAddV2*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         l
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ю
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ѓ
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ▓
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ѓ
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ъ
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ┤
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ┤
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ┤
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         p
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @┼
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         n
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ъ
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: ё
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?А
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Х
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         ё
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         n
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ъ
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Х
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         Х
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ┤
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         r
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @╔
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         }
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ђ
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ђ
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskё
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ѕ
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskё
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ѕ
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskџ
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         ѕ
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ░
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskё
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ѕ
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskё
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:         ѕ
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskѕ
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        і
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▓
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┘
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    м
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         o
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :░
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ё
!random_rotation_4/transform/ShapeShape3random_flip_4/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:y
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_flip_4/stateless_random_flip_up_down/add:z:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARј
random_zoom_3/ShapeShapeKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:k
!random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
random_zoom_3/strided_sliceStridedSlicerandom_zoom_3/Shape:output:0*random_zoom_3/strided_slice/stack:output:0,random_zoom_3/strided_slice/stack_1:output:0,random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        x
%random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        o
%random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
random_zoom_3/strided_slice_1StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_1/stack:output:0.random_zoom_3/strided_slice_1/stack_1:output:0.random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_3/CastCast&random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        x
%random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         o
%random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ъ
random_zoom_3/strided_slice_2StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_2/stack:output:0.random_zoom_3/strided_slice_2/stack_1:output:0.random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_3/Cast_1Cast&random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :▒
$random_zoom_3/stateful_uniform/shapePack$random_zoom_3/strided_slice:output:0/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?g
"random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33│?n
$random_zoom_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ф
#random_zoom_3/stateful_uniform/ProdProd-random_zoom_3/stateful_uniform/shape:output:0-random_zoom_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :І
%random_zoom_3/stateful_uniform/Cast_1Cast,random_zoom_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ь
-random_zoom_3/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_3_stateful_uniform_rngreadandskip_resource.random_zoom_3/stateful_uniform/Cast/x:output:0)random_zoom_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ы
,random_zoom_3/stateful_uniform/strided_sliceStridedSlice5random_zoom_3/stateful_uniform/RngReadAndSkip:value:0;random_zoom_3/stateful_uniform/strided_slice/stack:output:0=random_zoom_3/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЎ
&random_zoom_3/stateful_uniform/BitcastBitcast5random_zoom_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:ђ
6random_zoom_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6random_zoom_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:У
.random_zoom_3/stateful_uniform/strided_slice_1StridedSlice5random_zoom_3/stateful_uniform/RngReadAndSkip:value:0=random_zoom_3/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_3/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ю
(random_zoom_3/stateful_uniform/Bitcast_1Bitcast7random_zoom_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Н
7random_zoom_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_3/stateful_uniform/shape:output:01random_zoom_3/stateful_uniform/Bitcast_1:output:0/random_zoom_3/stateful_uniform/Bitcast:output:0Drandom_zoom_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         ц
"random_zoom_3/stateful_uniform/subSub+random_zoom_3/stateful_uniform/max:output:0+random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: ┼
"random_zoom_3/stateful_uniform/mulMul@random_zoom_3/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         «
random_zoom_3/stateful_uniformAddV2&random_zoom_3/stateful_uniform/mul:z:0+random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:         [
random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :К
random_zoom_3/concatConcatV2"random_zoom_3/stateful_uniform:z:0"random_zoom_3/stateful_uniform:z:0"random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:         l
random_zoom_3/zoom_matrix/ShapeShaperandom_zoom_3/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'random_zoom_3/zoom_matrix/strided_sliceStridedSlice(random_zoom_3/zoom_matrix/Shape:output:06random_zoom_3/zoom_matrix/strided_slice/stack:output:08random_zoom_3/zoom_matrix/strided_slice/stack_1:output:08random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ѕ
random_zoom_3/zoom_matrix/subSubrandom_zoom_3/Cast_1:y:0(random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ъ
!random_zoom_3/zoom_matrix/truedivRealDiv!random_zoom_3/zoom_matrix/sub:z:0,random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: ё
/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            є
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           є
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
)random_zoom_3/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?И
random_zoom_3/zoom_matrix/sub_1Sub*random_zoom_3/zoom_matrix/sub_1/x:output:02random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         б
random_zoom_3/zoom_matrix/mulMul%random_zoom_3/zoom_matrix/truediv:z:0#random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         f
!random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?І
random_zoom_3/zoom_matrix/sub_2Subrandom_zoom_3/Cast:y:0*random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ц
#random_zoom_3/zoom_matrix/truediv_1RealDiv#random_zoom_3/zoom_matrix/sub_2:z:0.random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: ё
/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           є
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           є
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
)random_zoom_3/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?И
random_zoom_3/zoom_matrix/sub_3Sub*random_zoom_3/zoom_matrix/sub_3/x:output:02random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         д
random_zoom_3/zoom_matrix/mul_1Mul'random_zoom_3/zoom_matrix/truediv_1:z:0#random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         ё
/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            є
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           є
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
)random_zoom_3/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┴
&random_zoom_3/zoom_matrix/zeros/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:01random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
random_zoom_3/zoom_matrix/zerosFill/random_zoom_3/zoom_matrix/zeros/packed:output:0.random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         l
*random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┼
(random_zoom_3/zoom_matrix/zeros_1/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!random_zoom_3/zoom_matrix/zeros_1Fill1random_zoom_3/zoom_matrix/zeros_1/packed:output:00random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         ё
/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           є
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           є
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
)random_zoom_3/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :┼
(random_zoom_3/zoom_matrix/zeros_2/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    └
!random_zoom_3/zoom_matrix/zeros_2Fill1random_zoom_3/zoom_matrix/zeros_2/packed:output:00random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         g
%random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╔
 random_zoom_3/zoom_matrix/concatConcatV22random_zoom_3/zoom_matrix/strided_slice_3:output:0(random_zoom_3/zoom_matrix/zeros:output:0!random_zoom_3/zoom_matrix/mul:z:0*random_zoom_3/zoom_matrix/zeros_1:output:02random_zoom_3/zoom_matrix/strided_slice_4:output:0#random_zoom_3/zoom_matrix/mul_1:z:0*random_zoom_3/zoom_matrix/zeros_2:output:0.random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         ў
random_zoom_3/transform/ShapeShapeKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:u
+random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
%random_zoom_3/transform/strided_sliceStridedSlice&random_zoom_3/transform/Shape:output:04random_zoom_3/transform/strided_slice/stack:output:06random_zoom_3/transform/strided_slice/stack_1:output:06random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    џ
2random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_3/zoom_matrix/concat:output:0.random_zoom_3/transform/strided_slice:output:0+random_zoom_3/transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARа
IdentityIdentityGrandom_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ЯЯъ
NoOpNoOp7^random_flip_4/stateful_uniform_full_int/RngReadAndSkip9^random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip2^random_rotation_4/stateful_uniform/RngReadAndSkip.^random_zoom_3/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ЯЯ: : : 2p
6random_flip_4/stateful_uniform_full_int/RngReadAndSkip6random_flip_4/stateful_uniform_full_int/RngReadAndSkip2t
8random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip8random_flip_4/stateful_uniform_full_int_1/RngReadAndSkip2f
1random_rotation_4/stateful_uniform/RngReadAndSkip1random_rotation_4/stateful_uniform/RngReadAndSkip2^
-random_zoom_3/stateful_uniform/RngReadAndSkip-random_zoom_3/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
м
J
.__inference_random_flip_4_layer_call_fn_666861

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663065j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
П
А
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663763

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Ё
■
E__inference_conv2d_25_layer_call_and_return_conditional_losses_666341

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         mm@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         mm@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         oo : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         oo 
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_28_layer_call_fn_666684

inputs
identityП
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
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_663890Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
№
Ъ
*__inference_conv2d_25_layer_call_fn_666330

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_664016w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         mm@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         oo : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         oo 
 
_user_specified_nameinputs
ќ	
м
7__inference_batch_normalization_31_layer_call_fn_666446

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663687Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ю	
о
7__inference_batch_normalization_34_layer_call_fn_666735

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663946і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
юr
╠
I__inference_sequential_14_layer_call_and_return_conditional_losses_664839
sequential_12_input*
conv2d_24_664737: 
conv2d_24_664739: +
batch_normalization_29_664742: +
batch_normalization_29_664744: +
batch_normalization_29_664746: +
batch_normalization_29_664748: *
conv2d_25_664752: @
conv2d_25_664754:@+
batch_normalization_30_664757:@+
batch_normalization_30_664759:@+
batch_normalization_30_664761:@+
batch_normalization_30_664763:@*
conv2d_26_664767:@@
conv2d_26_664769:@+
batch_normalization_31_664772:@+
batch_normalization_31_664774:@+
batch_normalization_31_664776:@+
batch_normalization_31_664778:@+
conv2d_27_664782:@ђ
conv2d_27_664784:	ђ,
batch_normalization_32_664787:	ђ,
batch_normalization_32_664789:	ђ,
batch_normalization_32_664791:	ђ,
batch_normalization_32_664793:	ђ,
conv2d_28_664797:ђђ
conv2d_28_664799:	ђ,
batch_normalization_33_664802:	ђ,
batch_normalization_33_664804:	ђ,
batch_normalization_33_664806:	ђ,
batch_normalization_33_664808:	ђ,
conv2d_29_664812:ђђ
conv2d_29_664814:	ђ,
batch_normalization_34_664817:	ђ,
batch_normalization_34_664819:	ђ,
batch_normalization_34_664821:	ђ,
batch_normalization_34_664823:	ђ!
dense_8_664828:	ђ@
dense_8_664830:@ 
dense_9_664833:@
dense_9_664835:
identityѕб.batch_normalization_29/StatefulPartitionedCallб.batch_normalization_30/StatefulPartitionedCallб.batch_normalization_31/StatefulPartitionedCallб.batch_normalization_32/StatefulPartitionedCallб.batch_normalization_33/StatefulPartitionedCallб.batch_normalization_34/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб!conv2d_28/StatefulPartitionedCallб!conv2d_29/StatefulPartitionedCallбdense_8/StatefulPartitionedCallбdense_9/StatefulPartitionedCall▄
sequential_12/PartitionedCallPartitionedCallsequential_12_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663006№
sequential_13/PartitionedCallPartitionedCall&sequential_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663080А
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall&sequential_13/PartitionedCall:output:0conv2d_24_664737conv2d_24_664739*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_663989Џ
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_29_664742batch_normalization_29_664744batch_normalization_29_664746batch_normalization_29_664748*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663535ё
 max_pooling2d_24/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         oo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_663586б
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_664752conv2d_25_664754*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_664016Ў
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_30_664757batch_normalization_30_664759batch_normalization_30_664761batch_normalization_30_664763*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663611ё
 max_pooling2d_25/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_663662б
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_26_664767conv2d_26_664769*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_664043Ў
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_31_664772batch_normalization_31_664774batch_normalization_31_664776batch_normalization_31_664778*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663687ё
 max_pooling2d_26/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_663738Б
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0conv2d_27_664782conv2d_27_664784*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_664070џ
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_32_664787batch_normalization_32_664789batch_normalization_32_664791batch_normalization_32_664793*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663763Ё
 max_pooling2d_27/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_663814Б
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_28_664797conv2d_28_664799*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_664097џ
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_33_664802batch_normalization_33_664804batch_normalization_33_664806batch_normalization_33_664808*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663839Ё
 max_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_663890Б
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_29_664812conv2d_29_664814*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_664124џ
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_34_664817batch_normalization_34_664819batch_normalization_34_664821batch_normalization_34_664823*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663915Ё
 max_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_663966р
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_664146І
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_664828dense_8_664830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_664159Љ
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_664833dense_9_664835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_664176w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ѕ
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namesequential_12_input
█
┴
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663642

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
їn
┬
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663193

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Є
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33│?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ђ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Х
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ј
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Џ
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         ё
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:         M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:         P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ј
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ј
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         |
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ќ
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Џ
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Џ
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╦
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARњ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ЯЯh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Ќ
e
I__inference_sequential_13_layer_call_and_return_conditional_losses_665906

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
█
┴
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663718

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ц	
e
I__inference_sequential_12_layer_call_and_return_conditional_losses_665876

inputs
identityg
resizing_4/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   ▒
 resizing_4/resize/ResizeBilinearResizeBilinearinputsresizing_4/resize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(W
rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;Y
rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    б
rescaling_4/mulMul1resizing_4/resize/ResizeBilinear:resized_images:0rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ЯЯѕ
rescaling_4/addAddV2rescaling_4/mul:z:0rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯe
IdentityIdentityrescaling_4/add:z:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
═
Ю
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_666385

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
░
b
F__inference_resizing_4_layer_call_and_return_conditional_losses_662993

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   Џ
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
а
r
I__inference_sequential_13_layer_call_and_return_conditional_losses_663500
random_flip_4_input
identity▄
random_flip_4/PartitionedCallPartitionedCallrandom_flip_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663065э
!random_rotation_4/PartitionedCallPartitionedCall&random_flip_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663071з
random_zoom_3/PartitionedCallPartitionedCall*random_rotation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663077x
IdentityIdentity&random_zoom_3/PartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namerandom_flip_4_input
В
р
I__inference_sequential_13_layer_call_and_return_conditional_losses_663513
random_flip_4_input"
random_flip_4_663503:	&
random_rotation_4_663506:	"
random_zoom_3_663509:	
identityѕб%random_flip_4/StatefulPartitionedCallб)random_rotation_4/StatefulPartitionedCallб%random_zoom_3/StatefulPartitionedCallЃ
%random_flip_4/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_4_inputrandom_flip_4_663503*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663448ф
)random_rotation_4/StatefulPartitionedCallStatefulPartitionedCall.random_flip_4/StatefulPartitionedCall:output:0random_rotation_4_663506*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663324б
%random_zoom_3/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_4/StatefulPartitionedCall:output:0random_zoom_3_663509*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663193Є
IdentityIdentity.random_zoom_3/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ┬
NoOpNoOp&^random_flip_4/StatefulPartitionedCall*^random_rotation_4/StatefulPartitionedCall&^random_zoom_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ЯЯ: : : 2N
%random_flip_4/StatefulPartitionedCall%random_flip_4/StatefulPartitionedCall2V
)random_rotation_4/StatefulPartitionedCall)random_rotation_4/StatefulPartitionedCall2N
%random_zoom_3/StatefulPartitionedCall%random_zoom_3/StatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namerandom_flip_4_input
═
Ю
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666293

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ю	
о
7__inference_batch_normalization_32_layer_call_fn_666551

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663794і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
П
А
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_666569

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
П
А
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_666753

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
╬
H
,__inference_rescaling_4_layer_call_fn_666848

inputs
identity┐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_663003j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
л
ѓ
2__inference_random_rotation_4_layer_call_fn_666995

inputs
unknown:	
identityѕбStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663324y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
╔
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_666792

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
┼
н
I__inference_sequential_13_layer_call_and_return_conditional_losses_663473

inputs"
random_flip_4_663463:	&
random_rotation_4_663466:	"
random_zoom_3_663469:	
identityѕб%random_flip_4/StatefulPartitionedCallб)random_rotation_4/StatefulPartitionedCallб%random_zoom_3/StatefulPartitionedCallШ
%random_flip_4/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_4_663463*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663448ф
)random_rotation_4/StatefulPartitionedCallStatefulPartitionedCall.random_flip_4/StatefulPartitionedCall:output:0random_rotation_4_663466*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663324б
%random_zoom_3/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_4/StatefulPartitionedCall:output:0random_zoom_3_663469*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663193Є
IdentityIdentity.random_zoom_3/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ┬
NoOpNoOp&^random_flip_4/StatefulPartitionedCall*^random_rotation_4/StatefulPartitionedCall&^random_zoom_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ЯЯ: : : 2N
%random_flip_4/StatefulPartitionedCall%random_flip_4/StatefulPartitionedCall2V
)random_rotation_4/StatefulPartitionedCall)random_rotation_4/StatefulPartitionedCall2N
%random_zoom_3/StatefulPartitionedCall%random_zoom_3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
э
Ъ
*__inference_conv2d_24_layer_call_fn_666238

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_663989y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         яя `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЯЯ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
і	
o
I__inference_sequential_12_layer_call_and_return_conditional_losses_663048
resizing_4_input
identityМ
resizing_4/PartitionedCallPartitionedCallresizing_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_resizing_4_layer_call_and_return_conditional_losses_662993У
rescaling_4/PartitionedCallPartitionedCall#resizing_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_663003v
IdentityIdentity$rescaling_4/PartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:c _
1
_output_shapes
:         ЯЯ
*
_user_specified_nameresizing_4_input
Ё
ф

.__inference_sequential_14_layer_call_fn_664732
sequential_12_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: #
	unknown_8: @
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@%

unknown_20:@ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:	ђ

unknown_24:	ђ

unknown_25:	ђ&

unknown_26:ђђ

unknown_27:	ђ

unknown_28:	ђ

unknown_29:	ђ

unknown_30:	ђ

unknown_31:	ђ&

unknown_32:ђђ

unknown_33:	ђ

unknown_34:	ђ

unknown_35:	ђ

unknown_36:	ђ

unknown_37:	ђ

unknown_38:	ђ@

unknown_39:@

unknown_40:@

unknown_41:
identityѕбStatefulPartitionedCallћ
StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 

"#$%()*+*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_664552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*є
_input_shapesu
s:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namesequential_12_input
њМ
┐1
__inference__traced_save_667597
file_prefix/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop;
7savev2_batch_normalization_29_gamma_read_readvariableop:
6savev2_batch_normalization_29_beta_read_readvariableopA
=savev2_batch_normalization_29_moving_mean_read_readvariableopE
Asavev2_batch_normalization_29_moving_variance_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop;
7savev2_batch_normalization_30_gamma_read_readvariableop:
6savev2_batch_normalization_30_beta_read_readvariableopA
=savev2_batch_normalization_30_moving_mean_read_readvariableopE
Asavev2_batch_normalization_30_moving_variance_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop;
7savev2_batch_normalization_31_gamma_read_readvariableop:
6savev2_batch_normalization_31_beta_read_readvariableopA
=savev2_batch_normalization_31_moving_mean_read_readvariableopE
Asavev2_batch_normalization_31_moving_variance_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop;
7savev2_batch_normalization_32_gamma_read_readvariableop:
6savev2_batch_normalization_32_beta_read_readvariableopA
=savev2_batch_normalization_32_moving_mean_read_readvariableopE
Asavev2_batch_normalization_32_moving_variance_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop;
7savev2_batch_normalization_33_gamma_read_readvariableop:
6savev2_batch_normalization_33_beta_read_readvariableopA
=savev2_batch_normalization_33_moving_mean_read_readvariableopE
Asavev2_batch_normalization_33_moving_variance_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop;
7savev2_batch_normalization_34_gamma_read_readvariableop:
6savev2_batch_normalization_34_beta_read_readvariableopA
=savev2_batch_normalization_34_moving_mean_read_readvariableopE
Asavev2_batch_normalization_34_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_random_flip_4_statevar_read_readvariableop	9
5savev2_random_rotation_4_statevar_read_readvariableop	5
1savev2_random_zoom_3_statevar_read_readvariableop	6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_29_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_29_beta_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_30_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_30_beta_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_31_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_31_beta_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_32_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_32_beta_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_33_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_33_beta_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_34_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_34_beta_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_29_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_29_beta_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_30_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_30_beta_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_31_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_31_beta_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_32_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_32_beta_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_33_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_33_beta_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_34_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_34_beta_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: в<
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:m*
dtype0*ћ<
valueі<BЄ<mB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╩
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:m*
dtype0*№
valueтBРmB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┐/
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop7savev2_batch_normalization_29_gamma_read_readvariableop6savev2_batch_normalization_29_beta_read_readvariableop=savev2_batch_normalization_29_moving_mean_read_readvariableopAsavev2_batch_normalization_29_moving_variance_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop7savev2_batch_normalization_30_gamma_read_readvariableop6savev2_batch_normalization_30_beta_read_readvariableop=savev2_batch_normalization_30_moving_mean_read_readvariableopAsavev2_batch_normalization_30_moving_variance_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop7savev2_batch_normalization_31_gamma_read_readvariableop6savev2_batch_normalization_31_beta_read_readvariableop=savev2_batch_normalization_31_moving_mean_read_readvariableopAsavev2_batch_normalization_31_moving_variance_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop7savev2_batch_normalization_32_gamma_read_readvariableop6savev2_batch_normalization_32_beta_read_readvariableop=savev2_batch_normalization_32_moving_mean_read_readvariableopAsavev2_batch_normalization_32_moving_variance_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop7savev2_batch_normalization_33_gamma_read_readvariableop6savev2_batch_normalization_33_beta_read_readvariableop=savev2_batch_normalization_33_moving_mean_read_readvariableopAsavev2_batch_normalization_33_moving_variance_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop7savev2_batch_normalization_34_gamma_read_readvariableop6savev2_batch_normalization_34_beta_read_readvariableop=savev2_batch_normalization_34_moving_mean_read_readvariableopAsavev2_batch_normalization_34_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_random_flip_4_statevar_read_readvariableop5savev2_random_rotation_4_statevar_read_readvariableop1savev2_random_zoom_3_statevar_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop>savev2_adam_batch_normalization_29_gamma_m_read_readvariableop=savev2_adam_batch_normalization_29_beta_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop>savev2_adam_batch_normalization_30_gamma_m_read_readvariableop=savev2_adam_batch_normalization_30_beta_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop>savev2_adam_batch_normalization_31_gamma_m_read_readvariableop=savev2_adam_batch_normalization_31_beta_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop>savev2_adam_batch_normalization_32_gamma_m_read_readvariableop=savev2_adam_batch_normalization_32_beta_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop>savev2_adam_batch_normalization_33_gamma_m_read_readvariableop=savev2_adam_batch_normalization_33_beta_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop>savev2_adam_batch_normalization_34_gamma_m_read_readvariableop=savev2_adam_batch_normalization_34_beta_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop>savev2_adam_batch_normalization_29_gamma_v_read_readvariableop=savev2_adam_batch_normalization_29_beta_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop>savev2_adam_batch_normalization_30_gamma_v_read_readvariableop=savev2_adam_batch_normalization_30_beta_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop>savev2_adam_batch_normalization_31_gamma_v_read_readvariableop=savev2_adam_batch_normalization_31_beta_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop>savev2_adam_batch_normalization_32_gamma_v_read_readvariableop=savev2_adam_batch_normalization_32_beta_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop>savev2_adam_batch_normalization_33_gamma_v_read_readvariableop=savev2_adam_batch_normalization_33_beta_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableop>savev2_adam_batch_normalization_34_gamma_v_read_readvariableop=savev2_adam_batch_normalization_34_beta_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *{
dtypesq
o2m				љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*а
_input_shapesј
І: : : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:@ђ:ђ:ђ:ђ:ђ:ђ:ђђ:ђ:ђ:ђ:ђ:ђ:ђђ:ђ:ђ:ђ:ђ:ђ:	ђ@:@:@:: : : : : : : : : :::: : : : : @:@:@:@:@@:@:@:@:@ђ:ђ:ђ:ђ:ђђ:ђ:ђ:ђ:ђђ:ђ:ђ:ђ:	ђ@:@:@:: : : : : @:@:@:@:@@:@:@:@:@ђ:ђ:ђ:ђ:ђђ:ђ:ђ:ђ:ђђ:ђ:ђ:ђ:	ђ@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:! 

_output_shapes	
:ђ:!!

_output_shapes	
:ђ:!"

_output_shapes	
:ђ:!#

_output_shapes	
:ђ:!$

_output_shapes	
:ђ:%%!

_output_shapes
:	ђ@: &

_output_shapes
:@:$' 

_output_shapes

:@: (

_output_shapes
::)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: : 2

_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
::,5(
&
_output_shapes
: : 6

_output_shapes
: : 7

_output_shapes
: : 8

_output_shapes
: :,9(
&
_output_shapes
: @: :

_output_shapes
:@: ;

_output_shapes
:@: <

_output_shapes
:@:,=(
&
_output_shapes
:@@: >

_output_shapes
:@: ?

_output_shapes
:@: @

_output_shapes
:@:-A)
'
_output_shapes
:@ђ:!B

_output_shapes	
:ђ:!C

_output_shapes	
:ђ:!D

_output_shapes	
:ђ:.E*
(
_output_shapes
:ђђ:!F

_output_shapes	
:ђ:!G

_output_shapes	
:ђ:!H

_output_shapes	
:ђ:.I*
(
_output_shapes
:ђђ:!J

_output_shapes	
:ђ:!K

_output_shapes	
:ђ:!L

_output_shapes	
:ђ:%M!

_output_shapes
:	ђ@: N

_output_shapes
:@:$O 

_output_shapes

:@: P

_output_shapes
::,Q(
&
_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: : T

_output_shapes
: :,U(
&
_output_shapes
: @: V

_output_shapes
:@: W

_output_shapes
:@: X

_output_shapes
:@:,Y(
&
_output_shapes
:@@: Z

_output_shapes
:@: [

_output_shapes
:@: \

_output_shapes
:@:-])
'
_output_shapes
:@ђ:!^

_output_shapes	
:ђ:!_

_output_shapes	
:ђ:!`

_output_shapes	
:ђ:.a*
(
_output_shapes
:ђђ:!b

_output_shapes	
:ђ:!c

_output_shapes	
:ђ:!d

_output_shapes	
:ђ:.e*
(
_output_shapes
:ђђ:!f

_output_shapes	
:ђ:!g

_output_shapes	
:ђ:!h

_output_shapes	
:ђ:%i!

_output_shapes
:	ђ@: j

_output_shapes
:@:$k 

_output_shapes

:@: l

_output_shapes
::m

_output_shapes
: 
ЁЌ
Ђ
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663448

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityѕб(stateful_uniform_full_int/RngReadAndSkipб*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ђ
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ┌
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЈ
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Њ
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Љ
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskъ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ЯЯњ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ш
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask«
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:ѓ
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ѓ
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::ў
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :■
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ш
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: њ
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         ч
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╬
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:т
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         ю
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯ╚
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?┬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         Л
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯ┐
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ё
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: І
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЊ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ќ
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Џ
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask█
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:         ЯЯї
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskе
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Ћ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :№
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         В
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ѕ
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Ы
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┐
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:▄
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         ќ
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Р
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯ┐
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╣
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ╚
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯХ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯ~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:         ЯЯъ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
щ
W
.__inference_sequential_13_layer_call_fn_663083
random_flip_4_input
identity╬
PartitionedCallPartitionedCallrandom_flip_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663080j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namerandom_flip_4_input
пt
М
I__inference_sequential_14_layer_call_and_return_conditional_losses_664552

inputs"
sequential_13_664443:	"
sequential_13_664445:	"
sequential_13_664447:	*
conv2d_24_664450: 
conv2d_24_664452: +
batch_normalization_29_664455: +
batch_normalization_29_664457: +
batch_normalization_29_664459: +
batch_normalization_29_664461: *
conv2d_25_664465: @
conv2d_25_664467:@+
batch_normalization_30_664470:@+
batch_normalization_30_664472:@+
batch_normalization_30_664474:@+
batch_normalization_30_664476:@*
conv2d_26_664480:@@
conv2d_26_664482:@+
batch_normalization_31_664485:@+
batch_normalization_31_664487:@+
batch_normalization_31_664489:@+
batch_normalization_31_664491:@+
conv2d_27_664495:@ђ
conv2d_27_664497:	ђ,
batch_normalization_32_664500:	ђ,
batch_normalization_32_664502:	ђ,
batch_normalization_32_664504:	ђ,
batch_normalization_32_664506:	ђ,
conv2d_28_664510:ђђ
conv2d_28_664512:	ђ,
batch_normalization_33_664515:	ђ,
batch_normalization_33_664517:	ђ,
batch_normalization_33_664519:	ђ,
batch_normalization_33_664521:	ђ,
conv2d_29_664525:ђђ
conv2d_29_664527:	ђ,
batch_normalization_34_664530:	ђ,
batch_normalization_34_664532:	ђ,
batch_normalization_34_664534:	ђ,
batch_normalization_34_664536:	ђ!
dense_8_664541:	ђ@
dense_8_664543:@ 
dense_9_664546:@
dense_9_664548:
identityѕб.batch_normalization_29/StatefulPartitionedCallб.batch_normalization_30/StatefulPartitionedCallб.batch_normalization_31/StatefulPartitionedCallб.batch_normalization_32/StatefulPartitionedCallб.batch_normalization_33/StatefulPartitionedCallб.batch_normalization_34/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб!conv2d_28/StatefulPartitionedCallб!conv2d_29/StatefulPartitionedCallбdense_8/StatefulPartitionedCallбdense_9/StatefulPartitionedCallб%sequential_13/StatefulPartitionedCall¤
sequential_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663034─
%sequential_13/StatefulPartitionedCallStatefulPartitionedCall&sequential_12/PartitionedCall:output:0sequential_13_664443sequential_13_664445sequential_13_664447*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663473Е
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall.sequential_13/StatefulPartitionedCall:output:0conv2d_24_664450conv2d_24_664452*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_663989Ў
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_29_664455batch_normalization_29_664457batch_normalization_29_664459batch_normalization_29_664461*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663566ё
 max_pooling2d_24/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         oo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_663586б
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_664465conv2d_25_664467*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_664016Ќ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_30_664470batch_normalization_30_664472batch_normalization_30_664474batch_normalization_30_664476*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663642ё
 max_pooling2d_25/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_663662б
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_26_664480conv2d_26_664482*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_664043Ќ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_31_664485batch_normalization_31_664487batch_normalization_31_664489batch_normalization_31_664491*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663718ё
 max_pooling2d_26/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_663738Б
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0conv2d_27_664495conv2d_27_664497*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_664070ў
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_32_664500batch_normalization_32_664502batch_normalization_32_664504batch_normalization_32_664506*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663794Ё
 max_pooling2d_27/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_663814Б
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_28_664510conv2d_28_664512*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_664097ў
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_33_664515batch_normalization_33_664517batch_normalization_33_664519batch_normalization_33_664521*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663870Ё
 max_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_663890Б
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_29_664525conv2d_29_664527*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_664124ў
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_34_664530batch_normalization_34_664532batch_normalization_34_664534batch_normalization_34_664536*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663946Ё
 max_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_663966р
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_664146І
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_664541dense_8_664543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_664159Љ
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_664546dense_9_664548*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_664176w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall&^sequential_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*є
_input_shapesu
s:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%sequential_13/StatefulPartitionedCall%sequential_13/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_25_layer_call_fn_666408

inputs
identityП
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
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_663662Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█
┴
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_666403

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
м
J
.__inference_sequential_12_layer_call_fn_665866

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663034j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_666597

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Љ
■
E__inference_conv2d_24_layer_call_and_return_conditional_losses_663989

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         яя k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         яя w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЯЯ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
­х
аH
"__inference__traced_restore_667931
file_prefix;
!assignvariableop_conv2d_24_kernel: /
!assignvariableop_1_conv2d_24_bias: =
/assignvariableop_2_batch_normalization_29_gamma: <
.assignvariableop_3_batch_normalization_29_beta: C
5assignvariableop_4_batch_normalization_29_moving_mean: G
9assignvariableop_5_batch_normalization_29_moving_variance: =
#assignvariableop_6_conv2d_25_kernel: @/
!assignvariableop_7_conv2d_25_bias:@=
/assignvariableop_8_batch_normalization_30_gamma:@<
.assignvariableop_9_batch_normalization_30_beta:@D
6assignvariableop_10_batch_normalization_30_moving_mean:@H
:assignvariableop_11_batch_normalization_30_moving_variance:@>
$assignvariableop_12_conv2d_26_kernel:@@0
"assignvariableop_13_conv2d_26_bias:@>
0assignvariableop_14_batch_normalization_31_gamma:@=
/assignvariableop_15_batch_normalization_31_beta:@D
6assignvariableop_16_batch_normalization_31_moving_mean:@H
:assignvariableop_17_batch_normalization_31_moving_variance:@?
$assignvariableop_18_conv2d_27_kernel:@ђ1
"assignvariableop_19_conv2d_27_bias:	ђ?
0assignvariableop_20_batch_normalization_32_gamma:	ђ>
/assignvariableop_21_batch_normalization_32_beta:	ђE
6assignvariableop_22_batch_normalization_32_moving_mean:	ђI
:assignvariableop_23_batch_normalization_32_moving_variance:	ђ@
$assignvariableop_24_conv2d_28_kernel:ђђ1
"assignvariableop_25_conv2d_28_bias:	ђ?
0assignvariableop_26_batch_normalization_33_gamma:	ђ>
/assignvariableop_27_batch_normalization_33_beta:	ђE
6assignvariableop_28_batch_normalization_33_moving_mean:	ђI
:assignvariableop_29_batch_normalization_33_moving_variance:	ђ@
$assignvariableop_30_conv2d_29_kernel:ђђ1
"assignvariableop_31_conv2d_29_bias:	ђ?
0assignvariableop_32_batch_normalization_34_gamma:	ђ>
/assignvariableop_33_batch_normalization_34_beta:	ђE
6assignvariableop_34_batch_normalization_34_moving_mean:	ђI
:assignvariableop_35_batch_normalization_34_moving_variance:	ђ5
"assignvariableop_36_dense_8_kernel:	ђ@.
 assignvariableop_37_dense_8_bias:@4
"assignvariableop_38_dense_9_kernel:@.
 assignvariableop_39_dense_9_bias:'
assignvariableop_40_adam_iter:	 )
assignvariableop_41_adam_beta_1: )
assignvariableop_42_adam_beta_2: (
assignvariableop_43_adam_decay: 0
&assignvariableop_44_adam_learning_rate: #
assignvariableop_45_total: #
assignvariableop_46_count: %
assignvariableop_47_total_1: %
assignvariableop_48_count_1: 8
*assignvariableop_49_random_flip_4_statevar:	<
.assignvariableop_50_random_rotation_4_statevar:	8
*assignvariableop_51_random_zoom_3_statevar:	E
+assignvariableop_52_adam_conv2d_24_kernel_m: 7
)assignvariableop_53_adam_conv2d_24_bias_m: E
7assignvariableop_54_adam_batch_normalization_29_gamma_m: D
6assignvariableop_55_adam_batch_normalization_29_beta_m: E
+assignvariableop_56_adam_conv2d_25_kernel_m: @7
)assignvariableop_57_adam_conv2d_25_bias_m:@E
7assignvariableop_58_adam_batch_normalization_30_gamma_m:@D
6assignvariableop_59_adam_batch_normalization_30_beta_m:@E
+assignvariableop_60_adam_conv2d_26_kernel_m:@@7
)assignvariableop_61_adam_conv2d_26_bias_m:@E
7assignvariableop_62_adam_batch_normalization_31_gamma_m:@D
6assignvariableop_63_adam_batch_normalization_31_beta_m:@F
+assignvariableop_64_adam_conv2d_27_kernel_m:@ђ8
)assignvariableop_65_adam_conv2d_27_bias_m:	ђF
7assignvariableop_66_adam_batch_normalization_32_gamma_m:	ђE
6assignvariableop_67_adam_batch_normalization_32_beta_m:	ђG
+assignvariableop_68_adam_conv2d_28_kernel_m:ђђ8
)assignvariableop_69_adam_conv2d_28_bias_m:	ђF
7assignvariableop_70_adam_batch_normalization_33_gamma_m:	ђE
6assignvariableop_71_adam_batch_normalization_33_beta_m:	ђG
+assignvariableop_72_adam_conv2d_29_kernel_m:ђђ8
)assignvariableop_73_adam_conv2d_29_bias_m:	ђF
7assignvariableop_74_adam_batch_normalization_34_gamma_m:	ђE
6assignvariableop_75_adam_batch_normalization_34_beta_m:	ђ<
)assignvariableop_76_adam_dense_8_kernel_m:	ђ@5
'assignvariableop_77_adam_dense_8_bias_m:@;
)assignvariableop_78_adam_dense_9_kernel_m:@5
'assignvariableop_79_adam_dense_9_bias_m:E
+assignvariableop_80_adam_conv2d_24_kernel_v: 7
)assignvariableop_81_adam_conv2d_24_bias_v: E
7assignvariableop_82_adam_batch_normalization_29_gamma_v: D
6assignvariableop_83_adam_batch_normalization_29_beta_v: E
+assignvariableop_84_adam_conv2d_25_kernel_v: @7
)assignvariableop_85_adam_conv2d_25_bias_v:@E
7assignvariableop_86_adam_batch_normalization_30_gamma_v:@D
6assignvariableop_87_adam_batch_normalization_30_beta_v:@E
+assignvariableop_88_adam_conv2d_26_kernel_v:@@7
)assignvariableop_89_adam_conv2d_26_bias_v:@E
7assignvariableop_90_adam_batch_normalization_31_gamma_v:@D
6assignvariableop_91_adam_batch_normalization_31_beta_v:@F
+assignvariableop_92_adam_conv2d_27_kernel_v:@ђ8
)assignvariableop_93_adam_conv2d_27_bias_v:	ђF
7assignvariableop_94_adam_batch_normalization_32_gamma_v:	ђE
6assignvariableop_95_adam_batch_normalization_32_beta_v:	ђG
+assignvariableop_96_adam_conv2d_28_kernel_v:ђђ8
)assignvariableop_97_adam_conv2d_28_bias_v:	ђF
7assignvariableop_98_adam_batch_normalization_33_gamma_v:	ђE
6assignvariableop_99_adam_batch_normalization_33_beta_v:	ђH
,assignvariableop_100_adam_conv2d_29_kernel_v:ђђ9
*assignvariableop_101_adam_conv2d_29_bias_v:	ђG
8assignvariableop_102_adam_batch_normalization_34_gamma_v:	ђF
7assignvariableop_103_adam_batch_normalization_34_beta_v:	ђ=
*assignvariableop_104_adam_dense_8_kernel_v:	ђ@6
(assignvariableop_105_adam_dense_8_bias_v:@<
*assignvariableop_106_adam_dense_9_kernel_v:@6
(assignvariableop_107_adam_dense_9_bias_v:
identity_109ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_100бAssignVariableOp_101бAssignVariableOp_102бAssignVariableOp_103бAssignVariableOp_104бAssignVariableOp_105бAssignVariableOp_106бAssignVariableOp_107бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_60бAssignVariableOp_61бAssignVariableOp_62бAssignVariableOp_63бAssignVariableOp_64бAssignVariableOp_65бAssignVariableOp_66бAssignVariableOp_67бAssignVariableOp_68бAssignVariableOp_69бAssignVariableOp_7бAssignVariableOp_70бAssignVariableOp_71бAssignVariableOp_72бAssignVariableOp_73бAssignVariableOp_74бAssignVariableOp_75бAssignVariableOp_76бAssignVariableOp_77бAssignVariableOp_78бAssignVariableOp_79бAssignVariableOp_8бAssignVariableOp_80бAssignVariableOp_81бAssignVariableOp_82бAssignVariableOp_83бAssignVariableOp_84бAssignVariableOp_85бAssignVariableOp_86бAssignVariableOp_87бAssignVariableOp_88бAssignVariableOp_89бAssignVariableOp_9бAssignVariableOp_90бAssignVariableOp_91бAssignVariableOp_92бAssignVariableOp_93бAssignVariableOp_94бAssignVariableOp_95бAssignVariableOp_96бAssignVariableOp_97бAssignVariableOp_98бAssignVariableOp_99Ь<
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:m*
dtype0*ћ<
valueі<BЄ<mB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH═
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:m*
dtype0*№
valueтBРmB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┬
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╩
_output_shapesи
┤:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*{
dtypesq
o2m				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_24_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_24_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ъ
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_29_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_29_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ц
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_29_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_29_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_25_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_25_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ъ
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_30_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_30_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_30_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_30_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_26_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_26_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_31_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_31_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_31_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_31_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_27_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_27_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_32_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_32_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_32_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_32_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_28_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_28_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_33_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_33_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_33_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_33_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_29_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_29_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:А
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_34_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_34_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_34_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_34_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_8_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_8_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_38AssignVariableOp"assignvariableop_38_dense_9_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_39AssignVariableOp assignvariableop_39_dense_9_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0	*
_output_shapes
:ј
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_iterIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_beta_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_beta_2Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_decayIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_learning_rateIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_47AssignVariableOpassignvariableop_47_total_1Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_48AssignVariableOpassignvariableop_48_count_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0	*
_output_shapes
:Џ
AssignVariableOp_49AssignVariableOp*assignvariableop_49_random_flip_4_statevarIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0	*
_output_shapes
:Ъ
AssignVariableOp_50AssignVariableOp.assignvariableop_50_random_rotation_4_statevarIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0	*
_output_shapes
:Џ
AssignVariableOp_51AssignVariableOp*assignvariableop_51_random_zoom_3_statevarIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_24_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_24_bias_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_batch_normalization_29_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_29_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_conv2d_25_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_conv2d_25_bias_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_batch_normalization_30_gamma_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_batch_normalization_30_beta_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_conv2d_26_kernel_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_conv2d_26_bias_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_62AssignVariableOp7assignvariableop_62_adam_batch_normalization_31_gamma_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_31_beta_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv2d_27_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_conv2d_27_bias_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_66AssignVariableOp7assignvariableop_66_adam_batch_normalization_32_gamma_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_batch_normalization_32_beta_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_conv2d_28_kernel_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_conv2d_28_bias_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_batch_normalization_33_gamma_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_33_beta_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_72AssignVariableOp+assignvariableop_72_adam_conv2d_29_kernel_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_conv2d_29_bias_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_74AssignVariableOp7assignvariableop_74_adam_batch_normalization_34_gamma_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_batch_normalization_34_beta_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_dense_8_kernel_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_77AssignVariableOp'assignvariableop_77_adam_dense_8_bias_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_dense_9_kernel_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_79AssignVariableOp'assignvariableop_79_adam_dense_9_bias_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_80AssignVariableOp+assignvariableop_80_adam_conv2d_24_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_conv2d_24_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_82AssignVariableOp7assignvariableop_82_adam_batch_normalization_29_gamma_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_83AssignVariableOp6assignvariableop_83_adam_batch_normalization_29_beta_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_84AssignVariableOp+assignvariableop_84_adam_conv2d_25_kernel_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_85AssignVariableOp)assignvariableop_85_adam_conv2d_25_bias_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_86AssignVariableOp7assignvariableop_86_adam_batch_normalization_30_gamma_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adam_batch_normalization_30_beta_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_88AssignVariableOp+assignvariableop_88_adam_conv2d_26_kernel_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_89AssignVariableOp)assignvariableop_89_adam_conv2d_26_bias_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_90AssignVariableOp7assignvariableop_90_adam_batch_normalization_31_gamma_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_91AssignVariableOp6assignvariableop_91_adam_batch_normalization_31_beta_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_92AssignVariableOp+assignvariableop_92_adam_conv2d_27_kernel_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_93AssignVariableOp)assignvariableop_93_adam_conv2d_27_bias_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_94AssignVariableOp7assignvariableop_94_adam_batch_normalization_32_gamma_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adam_batch_normalization_32_beta_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_96AssignVariableOp+assignvariableop_96_adam_conv2d_28_kernel_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_conv2d_28_bias_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_98AssignVariableOp7assignvariableop_98_adam_batch_normalization_33_gamma_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_99AssignVariableOp6assignvariableop_99_adam_batch_normalization_33_beta_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_100AssignVariableOp,assignvariableop_100_adam_conv2d_29_kernel_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_101AssignVariableOp*assignvariableop_101_adam_conv2d_29_bias_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_102AssignVariableOp8assignvariableop_102_adam_batch_normalization_34_gamma_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:ф
AssignVariableOp_103AssignVariableOp7assignvariableop_103_adam_batch_normalization_34_beta_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_dense_8_kernel_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_105AssignVariableOp(assignvariableop_105_adam_dense_8_bias_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_106AssignVariableOp*assignvariableop_106_adam_dense_9_kernel_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_107AssignVariableOp(assignvariableop_107_adam_dense_9_bias_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 а
Identity_108Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_109IdentityIdentity_108:output:0^NoOp_1*
T0*
_output_shapes
: ї
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_109Identity_109:output:0*№
_input_shapesП
┌: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072*
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
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ќ	
м
7__inference_batch_normalization_29_layer_call_fn_666262

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663535Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_27_layer_call_fn_666592

inputs
identityП
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
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_663814Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
П
А
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663839

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ъ	
о
7__inference_batch_normalization_33_layer_call_fn_666630

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663839і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_24_layer_call_fn_666316

inputs
identityП
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
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_663586Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ъ

З
C__inference_dense_9_layer_call_and_return_conditional_losses_666832

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ўђ
к
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663324

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ђ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Х
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :І
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ќ
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         ђ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ј
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ђ
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ђ
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         ђ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Њ
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ј
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    А
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARњ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ЯЯh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Џ
i
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_666999

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
 t
Я
I__inference_sequential_14_layer_call_and_return_conditional_losses_664952
sequential_12_input"
sequential_13_664843:	"
sequential_13_664845:	"
sequential_13_664847:	*
conv2d_24_664850: 
conv2d_24_664852: +
batch_normalization_29_664855: +
batch_normalization_29_664857: +
batch_normalization_29_664859: +
batch_normalization_29_664861: *
conv2d_25_664865: @
conv2d_25_664867:@+
batch_normalization_30_664870:@+
batch_normalization_30_664872:@+
batch_normalization_30_664874:@+
batch_normalization_30_664876:@*
conv2d_26_664880:@@
conv2d_26_664882:@+
batch_normalization_31_664885:@+
batch_normalization_31_664887:@+
batch_normalization_31_664889:@+
batch_normalization_31_664891:@+
conv2d_27_664895:@ђ
conv2d_27_664897:	ђ,
batch_normalization_32_664900:	ђ,
batch_normalization_32_664902:	ђ,
batch_normalization_32_664904:	ђ,
batch_normalization_32_664906:	ђ,
conv2d_28_664910:ђђ
conv2d_28_664912:	ђ,
batch_normalization_33_664915:	ђ,
batch_normalization_33_664917:	ђ,
batch_normalization_33_664919:	ђ,
batch_normalization_33_664921:	ђ,
conv2d_29_664925:ђђ
conv2d_29_664927:	ђ,
batch_normalization_34_664930:	ђ,
batch_normalization_34_664932:	ђ,
batch_normalization_34_664934:	ђ,
batch_normalization_34_664936:	ђ!
dense_8_664941:	ђ@
dense_8_664943:@ 
dense_9_664946:@
dense_9_664948:
identityѕб.batch_normalization_29/StatefulPartitionedCallб.batch_normalization_30/StatefulPartitionedCallб.batch_normalization_31/StatefulPartitionedCallб.batch_normalization_32/StatefulPartitionedCallб.batch_normalization_33/StatefulPartitionedCallб.batch_normalization_34/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб!conv2d_28/StatefulPartitionedCallб!conv2d_29/StatefulPartitionedCallбdense_8/StatefulPartitionedCallбdense_9/StatefulPartitionedCallб%sequential_13/StatefulPartitionedCall▄
sequential_12/PartitionedCallPartitionedCallsequential_12_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663034─
%sequential_13/StatefulPartitionedCallStatefulPartitionedCall&sequential_12/PartitionedCall:output:0sequential_13_664843sequential_13_664845sequential_13_664847*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663473Е
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall.sequential_13/StatefulPartitionedCall:output:0conv2d_24_664850conv2d_24_664852*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_663989Ў
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_29_664855batch_normalization_29_664857batch_normalization_29_664859batch_normalization_29_664861*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663566ё
 max_pooling2d_24/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         oo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_663586б
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_664865conv2d_25_664867*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_664016Ќ
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_30_664870batch_normalization_30_664872batch_normalization_30_664874batch_normalization_30_664876*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663642ё
 max_pooling2d_25/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_663662б
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_26_664880conv2d_26_664882*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_664043Ќ
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_31_664885batch_normalization_31_664887batch_normalization_31_664889batch_normalization_31_664891*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663718ё
 max_pooling2d_26/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_663738Б
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0conv2d_27_664895conv2d_27_664897*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_664070ў
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_32_664900batch_normalization_32_664902batch_normalization_32_664904batch_normalization_32_664906*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663794Ё
 max_pooling2d_27/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_663814Б
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_28_664910conv2d_28_664912*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_664097ў
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_33_664915batch_normalization_33_664917batch_normalization_33_664919batch_normalization_33_664921*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663870Ё
 max_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_663890Б
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_29_664925conv2d_29_664927*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_664124ў
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_34_664930batch_normalization_34_664932batch_normalization_34_664934batch_normalization_34_664936*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663946Ё
 max_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_663966р
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_664146І
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_664941dense_8_664943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_664159Љ
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_664946dense_9_664948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_664176w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall&^sequential_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*є
_input_shapesu
s:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%sequential_13/StatefulPartitionedCall%sequential_13/StatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namesequential_12_input
ћ	
м
7__inference_batch_normalization_30_layer_call_fn_666367

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663642Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╔
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_664146

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
К
~
.__inference_random_flip_4_layer_call_fn_666868

inputs
unknown:	
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663448y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Ш
б
*__inference_conv2d_29_layer_call_fn_666698

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_664124x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ЁЌ
Ђ
I__inference_random_flip_4_layer_call_and_return_conditional_losses_666983

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityѕб(stateful_uniform_full_int/RngReadAndSkipб*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Џ
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ђ
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ┌
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЈ
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Њ
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Љ
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskъ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ЯЯњ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ђ
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:ђ
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ш
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask«
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:ѓ
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ѓ
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::ў
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :■
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ш
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: њ
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         ч
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╬
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:т
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         ю
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯ╚
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?┬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         Л
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯ┐
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ё
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: І
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЊ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ќ
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Џ
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask█
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:         ЯЯї
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskе
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?»
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Ћ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :№
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         В
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ѕ
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Ы
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┐
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:▄
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         ќ
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Р
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ЯЯ┐
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ЯЯh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?╣
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ╚
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         ЯЯХ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ЯЯ~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:         ЯЯъ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ўђ
к
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_667117

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:Fы?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ђ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Х
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :І
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ќ
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         ђ
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ј
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ђ
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ђ
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         ђ
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Њ
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      о
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      н
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Б
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ю
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ј
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    А
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARњ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ЯЯh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Ї
ђ
E__inference_conv2d_27_layer_call_and_return_conditional_losses_666525

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
к
ќ
(__inference_dense_8_layer_call_fn_666801

inputs
unknown:	ђ@
	unknown_0:@
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_664159o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
шq
┐
I__inference_sequential_14_layer_call_and_return_conditional_losses_664183

inputs*
conv2d_24_663990: 
conv2d_24_663992: +
batch_normalization_29_663995: +
batch_normalization_29_663997: +
batch_normalization_29_663999: +
batch_normalization_29_664001: *
conv2d_25_664017: @
conv2d_25_664019:@+
batch_normalization_30_664022:@+
batch_normalization_30_664024:@+
batch_normalization_30_664026:@+
batch_normalization_30_664028:@*
conv2d_26_664044:@@
conv2d_26_664046:@+
batch_normalization_31_664049:@+
batch_normalization_31_664051:@+
batch_normalization_31_664053:@+
batch_normalization_31_664055:@+
conv2d_27_664071:@ђ
conv2d_27_664073:	ђ,
batch_normalization_32_664076:	ђ,
batch_normalization_32_664078:	ђ,
batch_normalization_32_664080:	ђ,
batch_normalization_32_664082:	ђ,
conv2d_28_664098:ђђ
conv2d_28_664100:	ђ,
batch_normalization_33_664103:	ђ,
batch_normalization_33_664105:	ђ,
batch_normalization_33_664107:	ђ,
batch_normalization_33_664109:	ђ,
conv2d_29_664125:ђђ
conv2d_29_664127:	ђ,
batch_normalization_34_664130:	ђ,
batch_normalization_34_664132:	ђ,
batch_normalization_34_664134:	ђ,
batch_normalization_34_664136:	ђ!
dense_8_664160:	ђ@
dense_8_664162:@ 
dense_9_664177:@
dense_9_664179:
identityѕб.batch_normalization_29/StatefulPartitionedCallб.batch_normalization_30/StatefulPartitionedCallб.batch_normalization_31/StatefulPartitionedCallб.batch_normalization_32/StatefulPartitionedCallб.batch_normalization_33/StatefulPartitionedCallб.batch_normalization_34/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб!conv2d_28/StatefulPartitionedCallб!conv2d_29/StatefulPartitionedCallбdense_8/StatefulPartitionedCallбdense_9/StatefulPartitionedCall¤
sequential_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663006№
sequential_13/PartitionedCallPartitionedCall&sequential_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663080А
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall&sequential_13/PartitionedCall:output:0conv2d_24_663990conv2d_24_663992*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_663989Џ
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0batch_normalization_29_663995batch_normalization_29_663997batch_normalization_29_663999batch_normalization_29_664001*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         яя *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663535ё
 max_pooling2d_24/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         oo * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_663586б
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_664017conv2d_25_664019*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_664016Ў
.batch_normalization_30/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_30_664022batch_normalization_30_664024batch_normalization_30_664026batch_normalization_30_664028*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         mm@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663611ё
 max_pooling2d_25/PartitionedCallPartitionedCall7batch_normalization_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         66@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_663662б
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0conv2d_26_664044conv2d_26_664046*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_664043Ў
.batch_normalization_31/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_31_664049batch_normalization_31_664051batch_normalization_31_664053batch_normalization_31_664055*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663687ё
 max_pooling2d_26/PartitionedCallPartitionedCall7batch_normalization_31/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_663738Б
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0conv2d_27_664071conv2d_27_664073*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_664070џ
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_32_664076batch_normalization_32_664078batch_normalization_32_664080batch_normalization_32_664082*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663763Ё
 max_pooling2d_27/PartitionedCallPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_663814Б
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0conv2d_28_664098conv2d_28_664100*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_664097џ
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_33_664103batch_normalization_33_664105batch_normalization_33_664107batch_normalization_33_664109*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663839Ё
 max_pooling2d_28/PartitionedCallPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_663890Б
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_28/PartitionedCall:output:0conv2d_29_664125conv2d_29_664127*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_664124џ
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_34_664130batch_normalization_34_664132batch_normalization_34_664134batch_normalization_34_664136*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663915Ё
 max_pooling2d_29/PartitionedCallPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_663966р
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_664146І
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_664160dense_8_664162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_664159Љ
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_664177dense_9_664179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_664176w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ѕ
NoOpNoOp/^batch_normalization_29/StatefulPartitionedCall/^batch_normalization_30/StatefulPartitionedCall/^batch_normalization_31/StatefulPartitionedCall/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2`
.batch_normalization_30/StatefulPartitionedCall.batch_normalization_30/StatefulPartitionedCall2`
.batch_normalization_31/StatefulPartitionedCall.batch_normalization_31/StatefulPartitionedCall2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
├
Ћ
(__inference_dense_9_layer_call_fn_666821

inputs
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_664176o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
В
e
I__inference_sequential_12_layer_call_and_return_conditional_losses_663006

inputs
identity╔
resizing_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_resizing_4_layer_call_and_return_conditional_losses_662993У
rescaling_4/PartitionedCallPartitionedCall#resizing_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_663003v
IdentityIdentity$rescaling_4/PartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_29_layer_call_fn_666776

inputs
identityП
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
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_663966Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
й
M
1__inference_max_pooling2d_26_layer_call_fn_666500

inputs
identityП
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
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_663738Ѓ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
e
I__inference_sequential_12_layer_call_and_return_conditional_losses_663034

inputs
identity╔
resizing_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_resizing_4_layer_call_and_return_conditional_losses_662993У
rescaling_4/PartitionedCallPartitionedCall#resizing_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_rescaling_4_layer_call_and_return_conditional_losses_663003v
IdentityIdentity$rescaling_4/PartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
┌
N
2__inference_random_rotation_4_layer_call_fn_666988

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663071j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ъ

ш
C__inference_dense_8_layer_call_and_return_conditional_losses_664159

inputs1
matmul_readvariableop_resource:	ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
м
J
.__inference_sequential_12_layer_call_fn_665861

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663006j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
╠
G
+__inference_resizing_4_layer_call_fn_666837

inputs
identityЙ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_resizing_4_layer_call_and_return_conditional_losses_662993j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ћ	
м
7__inference_batch_normalization_31_layer_call_fn_666459

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityѕбStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_663718Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Џ
i
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663071

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
К
~
.__inference_random_zoom_3_layer_call_fn_667129

inputs
unknown:	
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663193y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ю	
о
7__inference_batch_normalization_33_layer_call_fn_666643

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663870і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Љ
■
E__inference_conv2d_24_layer_call_and_return_conditional_losses_666249

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         яя k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         яя w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ЯЯ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Ќ
e
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663077

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
м
J
.__inference_random_zoom_3_layer_call_fn_667122

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663077j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Їы
і,
!__inference__wrapped_model_662980
sequential_12_inputP
6sequential_14_conv2d_24_conv2d_readvariableop_resource: E
7sequential_14_conv2d_24_biasadd_readvariableop_resource: J
<sequential_14_batch_normalization_29_readvariableop_resource: L
>sequential_14_batch_normalization_29_readvariableop_1_resource: [
Msequential_14_batch_normalization_29_fusedbatchnormv3_readvariableop_resource: ]
Osequential_14_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource: P
6sequential_14_conv2d_25_conv2d_readvariableop_resource: @E
7sequential_14_conv2d_25_biasadd_readvariableop_resource:@J
<sequential_14_batch_normalization_30_readvariableop_resource:@L
>sequential_14_batch_normalization_30_readvariableop_1_resource:@[
Msequential_14_batch_normalization_30_fusedbatchnormv3_readvariableop_resource:@]
Osequential_14_batch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:@P
6sequential_14_conv2d_26_conv2d_readvariableop_resource:@@E
7sequential_14_conv2d_26_biasadd_readvariableop_resource:@J
<sequential_14_batch_normalization_31_readvariableop_resource:@L
>sequential_14_batch_normalization_31_readvariableop_1_resource:@[
Msequential_14_batch_normalization_31_fusedbatchnormv3_readvariableop_resource:@]
Osequential_14_batch_normalization_31_fusedbatchnormv3_readvariableop_1_resource:@Q
6sequential_14_conv2d_27_conv2d_readvariableop_resource:@ђF
7sequential_14_conv2d_27_biasadd_readvariableop_resource:	ђK
<sequential_14_batch_normalization_32_readvariableop_resource:	ђM
>sequential_14_batch_normalization_32_readvariableop_1_resource:	ђ\
Msequential_14_batch_normalization_32_fusedbatchnormv3_readvariableop_resource:	ђ^
Osequential_14_batch_normalization_32_fusedbatchnormv3_readvariableop_1_resource:	ђR
6sequential_14_conv2d_28_conv2d_readvariableop_resource:ђђF
7sequential_14_conv2d_28_biasadd_readvariableop_resource:	ђK
<sequential_14_batch_normalization_33_readvariableop_resource:	ђM
>sequential_14_batch_normalization_33_readvariableop_1_resource:	ђ\
Msequential_14_batch_normalization_33_fusedbatchnormv3_readvariableop_resource:	ђ^
Osequential_14_batch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:	ђR
6sequential_14_conv2d_29_conv2d_readvariableop_resource:ђђF
7sequential_14_conv2d_29_biasadd_readvariableop_resource:	ђK
<sequential_14_batch_normalization_34_readvariableop_resource:	ђM
>sequential_14_batch_normalization_34_readvariableop_1_resource:	ђ\
Msequential_14_batch_normalization_34_fusedbatchnormv3_readvariableop_resource:	ђ^
Osequential_14_batch_normalization_34_fusedbatchnormv3_readvariableop_1_resource:	ђG
4sequential_14_dense_8_matmul_readvariableop_resource:	ђ@C
5sequential_14_dense_8_biasadd_readvariableop_resource:@F
4sequential_14_dense_9_matmul_readvariableop_resource:@C
5sequential_14_dense_9_biasadd_readvariableop_resource:
identityѕбDsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOpбFsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1б3sequential_14/batch_normalization_29/ReadVariableOpб5sequential_14/batch_normalization_29/ReadVariableOp_1бDsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOpбFsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1б3sequential_14/batch_normalization_30/ReadVariableOpб5sequential_14/batch_normalization_30/ReadVariableOp_1бDsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOpбFsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1б3sequential_14/batch_normalization_31/ReadVariableOpб5sequential_14/batch_normalization_31/ReadVariableOp_1бDsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOpбFsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1б3sequential_14/batch_normalization_32/ReadVariableOpб5sequential_14/batch_normalization_32/ReadVariableOp_1бDsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOpбFsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1б3sequential_14/batch_normalization_33/ReadVariableOpб5sequential_14/batch_normalization_33/ReadVariableOp_1бDsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOpбFsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1б3sequential_14/batch_normalization_34/ReadVariableOpб5sequential_14/batch_normalization_34/ReadVariableOp_1б.sequential_14/conv2d_24/BiasAdd/ReadVariableOpб-sequential_14/conv2d_24/Conv2D/ReadVariableOpб.sequential_14/conv2d_25/BiasAdd/ReadVariableOpб-sequential_14/conv2d_25/Conv2D/ReadVariableOpб.sequential_14/conv2d_26/BiasAdd/ReadVariableOpб-sequential_14/conv2d_26/Conv2D/ReadVariableOpб.sequential_14/conv2d_27/BiasAdd/ReadVariableOpб-sequential_14/conv2d_27/Conv2D/ReadVariableOpб.sequential_14/conv2d_28/BiasAdd/ReadVariableOpб-sequential_14/conv2d_28/Conv2D/ReadVariableOpб.sequential_14/conv2d_29/BiasAdd/ReadVariableOpб-sequential_14/conv2d_29/Conv2D/ReadVariableOpб,sequential_14/dense_8/BiasAdd/ReadVariableOpб+sequential_14/dense_8/MatMul/ReadVariableOpб,sequential_14/dense_9/BiasAdd/ReadVariableOpб+sequential_14/dense_9/MatMul/ReadVariableOpЃ
2sequential_14/sequential_12/resizing_4/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   Ш
<sequential_14/sequential_12/resizing_4/resize/ResizeBilinearResizeBilinearsequential_12_input;sequential_14/sequential_12/resizing_4/resize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(s
.sequential_14/sequential_12/rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;u
0sequential_14/sequential_12/rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ш
+sequential_14/sequential_12/rescaling_4/mulMulMsequential_14/sequential_12/resizing_4/resize/ResizeBilinear:resized_images:07sequential_14/sequential_12/rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ЯЯ▄
+sequential_14/sequential_12/rescaling_4/addAddV2/sequential_14/sequential_12/rescaling_4/mul:z:09sequential_14/sequential_12/rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯг
-sequential_14/conv2d_24/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ш
sequential_14/conv2d_24/Conv2DConv2D/sequential_14/sequential_12/rescaling_4/add:z:05sequential_14/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя *
paddingVALID*
strides
б
.sequential_14/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0К
sequential_14/conv2d_24/BiasAddBiasAdd'sequential_14/conv2d_24/Conv2D:output:06sequential_14/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя і
sequential_14/conv2d_24/ReluRelu(sequential_14/conv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:         яя г
3sequential_14/batch_normalization_29/ReadVariableOpReadVariableOp<sequential_14_batch_normalization_29_readvariableop_resource*
_output_shapes
: *
dtype0░
5sequential_14/batch_normalization_29/ReadVariableOp_1ReadVariableOp>sequential_14_batch_normalization_29_readvariableop_1_resource*
_output_shapes
: *
dtype0╬
Dsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_14_batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0м
Fsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_14_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ћ
5sequential_14/batch_normalization_29/FusedBatchNormV3FusedBatchNormV3*sequential_14/conv2d_24/Relu:activations:0;sequential_14/batch_normalization_29/ReadVariableOp:value:0=sequential_14/batch_normalization_29/ReadVariableOp_1:value:0Lsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         яя : : : : :*
epsilon%oЃ:*
is_training( ┘
&sequential_14/max_pooling2d_24/MaxPoolMaxPool9sequential_14/batch_normalization_29/FusedBatchNormV3:y:0*/
_output_shapes
:         oo *
ksize
*
paddingVALID*
strides
г
-sequential_14/conv2d_25/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0з
sequential_14/conv2d_25/Conv2DConv2D/sequential_14/max_pooling2d_24/MaxPool:output:05sequential_14/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@*
paddingVALID*
strides
б
.sequential_14/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┼
sequential_14/conv2d_25/BiasAddBiasAdd'sequential_14/conv2d_25/Conv2D:output:06sequential_14/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@ѕ
sequential_14/conv2d_25/ReluRelu(sequential_14/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         mm@г
3sequential_14/batch_normalization_30/ReadVariableOpReadVariableOp<sequential_14_batch_normalization_30_readvariableop_resource*
_output_shapes
:@*
dtype0░
5sequential_14/batch_normalization_30/ReadVariableOp_1ReadVariableOp>sequential_14_batch_normalization_30_readvariableop_1_resource*
_output_shapes
:@*
dtype0╬
Dsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_14_batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0м
Fsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_14_batch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Њ
5sequential_14/batch_normalization_30/FusedBatchNormV3FusedBatchNormV3*sequential_14/conv2d_25/Relu:activations:0;sequential_14/batch_normalization_30/ReadVariableOp:value:0=sequential_14/batch_normalization_30/ReadVariableOp_1:value:0Lsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         mm@:@:@:@:@:*
epsilon%oЃ:*
is_training( ┘
&sequential_14/max_pooling2d_25/MaxPoolMaxPool9sequential_14/batch_normalization_30/FusedBatchNormV3:y:0*/
_output_shapes
:         66@*
ksize
*
paddingVALID*
strides
г
-sequential_14/conv2d_26/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0з
sequential_14/conv2d_26/Conv2DConv2D/sequential_14/max_pooling2d_25/MaxPool:output:05sequential_14/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@*
paddingVALID*
strides
б
.sequential_14/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┼
sequential_14/conv2d_26/BiasAddBiasAdd'sequential_14/conv2d_26/Conv2D:output:06sequential_14/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@ѕ
sequential_14/conv2d_26/ReluRelu(sequential_14/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:         44@г
3sequential_14/batch_normalization_31/ReadVariableOpReadVariableOp<sequential_14_batch_normalization_31_readvariableop_resource*
_output_shapes
:@*
dtype0░
5sequential_14/batch_normalization_31/ReadVariableOp_1ReadVariableOp>sequential_14_batch_normalization_31_readvariableop_1_resource*
_output_shapes
:@*
dtype0╬
Dsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_14_batch_normalization_31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0м
Fsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_14_batch_normalization_31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Њ
5sequential_14/batch_normalization_31/FusedBatchNormV3FusedBatchNormV3*sequential_14/conv2d_26/Relu:activations:0;sequential_14/batch_normalization_31/ReadVariableOp:value:0=sequential_14/batch_normalization_31/ReadVariableOp_1:value:0Lsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         44@:@:@:@:@:*
epsilon%oЃ:*
is_training( ┘
&sequential_14/max_pooling2d_26/MaxPoolMaxPool9sequential_14/batch_normalization_31/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Г
-sequential_14/conv2d_27/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_27_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0З
sequential_14/conv2d_27/Conv2DConv2D/sequential_14/max_pooling2d_26/MaxPool:output:05sequential_14/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Б
.sequential_14/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0к
sequential_14/conv2d_27/BiasAddBiasAdd'sequential_14/conv2d_27/Conv2D:output:06sequential_14/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЅ
sequential_14/conv2d_27/ReluRelu(sequential_14/conv2d_27/BiasAdd:output:0*
T0*0
_output_shapes
:         ђГ
3sequential_14/batch_normalization_32/ReadVariableOpReadVariableOp<sequential_14_batch_normalization_32_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▒
5sequential_14/batch_normalization_32/ReadVariableOp_1ReadVariableOp>sequential_14_batch_normalization_32_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0¤
Dsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_14_batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0М
Fsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_14_batch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0ў
5sequential_14/batch_normalization_32/FusedBatchNormV3FusedBatchNormV3*sequential_14/conv2d_27/Relu:activations:0;sequential_14/batch_normalization_32/ReadVariableOp:value:0=sequential_14/batch_normalization_32/ReadVariableOp_1:value:0Lsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ┌
&sequential_14/max_pooling2d_27/MaxPoolMaxPool9sequential_14/batch_normalization_32/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
«
-sequential_14/conv2d_28/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0З
sequential_14/conv2d_28/Conv2DConv2D/sequential_14/max_pooling2d_27/MaxPool:output:05sequential_14/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђ*
paddingVALID*
strides
Б
.sequential_14/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0к
sequential_14/conv2d_28/BiasAddBiasAdd'sequential_14/conv2d_28/Conv2D:output:06sequential_14/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђЅ
sequential_14/conv2d_28/ReluRelu(sequential_14/conv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:         

ђГ
3sequential_14/batch_normalization_33/ReadVariableOpReadVariableOp<sequential_14_batch_normalization_33_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▒
5sequential_14/batch_normalization_33/ReadVariableOp_1ReadVariableOp>sequential_14_batch_normalization_33_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0¤
Dsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_14_batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0М
Fsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_14_batch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0ў
5sequential_14/batch_normalization_33/FusedBatchNormV3FusedBatchNormV3*sequential_14/conv2d_28/Relu:activations:0;sequential_14/batch_normalization_33/ReadVariableOp:value:0=sequential_14/batch_normalization_33/ReadVariableOp_1:value:0Lsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         

ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ┌
&sequential_14/max_pooling2d_28/MaxPoolMaxPool9sequential_14/batch_normalization_33/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
«
-sequential_14/conv2d_29/Conv2D/ReadVariableOpReadVariableOp6sequential_14_conv2d_29_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0З
sequential_14/conv2d_29/Conv2DConv2D/sequential_14/max_pooling2d_28/MaxPool:output:05sequential_14/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Б
.sequential_14/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp7sequential_14_conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0к
sequential_14/conv2d_29/BiasAddBiasAdd'sequential_14/conv2d_29/Conv2D:output:06sequential_14/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђЅ
sequential_14/conv2d_29/ReluRelu(sequential_14/conv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:         ђГ
3sequential_14/batch_normalization_34/ReadVariableOpReadVariableOp<sequential_14_batch_normalization_34_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▒
5sequential_14/batch_normalization_34/ReadVariableOp_1ReadVariableOp>sequential_14_batch_normalization_34_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0¤
Dsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_14_batch_normalization_34_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0М
Fsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_14_batch_normalization_34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0ў
5sequential_14/batch_normalization_34/FusedBatchNormV3FusedBatchNormV3*sequential_14/conv2d_29/Relu:activations:0;sequential_14/batch_normalization_34/ReadVariableOp:value:0=sequential_14/batch_normalization_34/ReadVariableOp_1:value:0Lsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ┌
&sequential_14/max_pooling2d_29/MaxPoolMaxPool9sequential_14/batch_normalization_34/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
n
sequential_14/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
sequential_14/flatten_4/ReshapeReshape/sequential_14/max_pooling2d_29/MaxPool:output:0&sequential_14/flatten_4/Const:output:0*
T0*(
_output_shapes
:         ђА
+sequential_14/dense_8/MatMul/ReadVariableOpReadVariableOp4sequential_14_dense_8_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0и
sequential_14/dense_8/MatMulMatMul(sequential_14/flatten_4/Reshape:output:03sequential_14/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ъ
,sequential_14/dense_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_14_dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0И
sequential_14/dense_8/BiasAddBiasAdd&sequential_14/dense_8/MatMul:product:04sequential_14/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @|
sequential_14/dense_8/ReluRelu&sequential_14/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @а
+sequential_14/dense_9/MatMul/ReadVariableOpReadVariableOp4sequential_14_dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0и
sequential_14/dense_9/MatMulMatMul(sequential_14/dense_8/Relu:activations:03sequential_14/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ъ
,sequential_14/dense_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_14_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
sequential_14/dense_9/BiasAddBiasAdd&sequential_14/dense_9/MatMul:product:04sequential_14/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
sequential_14/dense_9/SoftmaxSoftmax&sequential_14/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_14/dense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ║
NoOpNoOpE^sequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOpG^sequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_14^sequential_14/batch_normalization_29/ReadVariableOp6^sequential_14/batch_normalization_29/ReadVariableOp_1E^sequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOpG^sequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_14^sequential_14/batch_normalization_30/ReadVariableOp6^sequential_14/batch_normalization_30/ReadVariableOp_1E^sequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOpG^sequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_14^sequential_14/batch_normalization_31/ReadVariableOp6^sequential_14/batch_normalization_31/ReadVariableOp_1E^sequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOpG^sequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_14^sequential_14/batch_normalization_32/ReadVariableOp6^sequential_14/batch_normalization_32/ReadVariableOp_1E^sequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOpG^sequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_14^sequential_14/batch_normalization_33/ReadVariableOp6^sequential_14/batch_normalization_33/ReadVariableOp_1E^sequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOpG^sequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_14^sequential_14/batch_normalization_34/ReadVariableOp6^sequential_14/batch_normalization_34/ReadVariableOp_1/^sequential_14/conv2d_24/BiasAdd/ReadVariableOp.^sequential_14/conv2d_24/Conv2D/ReadVariableOp/^sequential_14/conv2d_25/BiasAdd/ReadVariableOp.^sequential_14/conv2d_25/Conv2D/ReadVariableOp/^sequential_14/conv2d_26/BiasAdd/ReadVariableOp.^sequential_14/conv2d_26/Conv2D/ReadVariableOp/^sequential_14/conv2d_27/BiasAdd/ReadVariableOp.^sequential_14/conv2d_27/Conv2D/ReadVariableOp/^sequential_14/conv2d_28/BiasAdd/ReadVariableOp.^sequential_14/conv2d_28/Conv2D/ReadVariableOp/^sequential_14/conv2d_29/BiasAdd/ReadVariableOp.^sequential_14/conv2d_29/Conv2D/ReadVariableOp-^sequential_14/dense_8/BiasAdd/ReadVariableOp,^sequential_14/dense_8/MatMul/ReadVariableOp-^sequential_14/dense_9/BiasAdd/ReadVariableOp,^sequential_14/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2ї
Dsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOpDsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp2љ
Fsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1Fsequential_14/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12j
3sequential_14/batch_normalization_29/ReadVariableOp3sequential_14/batch_normalization_29/ReadVariableOp2n
5sequential_14/batch_normalization_29/ReadVariableOp_15sequential_14/batch_normalization_29/ReadVariableOp_12ї
Dsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOpDsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp2љ
Fsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1Fsequential_14/batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12j
3sequential_14/batch_normalization_30/ReadVariableOp3sequential_14/batch_normalization_30/ReadVariableOp2n
5sequential_14/batch_normalization_30/ReadVariableOp_15sequential_14/batch_normalization_30/ReadVariableOp_12ї
Dsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOpDsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp2љ
Fsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1Fsequential_14/batch_normalization_31/FusedBatchNormV3/ReadVariableOp_12j
3sequential_14/batch_normalization_31/ReadVariableOp3sequential_14/batch_normalization_31/ReadVariableOp2n
5sequential_14/batch_normalization_31/ReadVariableOp_15sequential_14/batch_normalization_31/ReadVariableOp_12ї
Dsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOpDsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp2љ
Fsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1Fsequential_14/batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12j
3sequential_14/batch_normalization_32/ReadVariableOp3sequential_14/batch_normalization_32/ReadVariableOp2n
5sequential_14/batch_normalization_32/ReadVariableOp_15sequential_14/batch_normalization_32/ReadVariableOp_12ї
Dsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOpDsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp2љ
Fsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1Fsequential_14/batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12j
3sequential_14/batch_normalization_33/ReadVariableOp3sequential_14/batch_normalization_33/ReadVariableOp2n
5sequential_14/batch_normalization_33/ReadVariableOp_15sequential_14/batch_normalization_33/ReadVariableOp_12ї
Dsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOpDsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp2љ
Fsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1Fsequential_14/batch_normalization_34/FusedBatchNormV3/ReadVariableOp_12j
3sequential_14/batch_normalization_34/ReadVariableOp3sequential_14/batch_normalization_34/ReadVariableOp2n
5sequential_14/batch_normalization_34/ReadVariableOp_15sequential_14/batch_normalization_34/ReadVariableOp_12`
.sequential_14/conv2d_24/BiasAdd/ReadVariableOp.sequential_14/conv2d_24/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_24/Conv2D/ReadVariableOp-sequential_14/conv2d_24/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_25/BiasAdd/ReadVariableOp.sequential_14/conv2d_25/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_25/Conv2D/ReadVariableOp-sequential_14/conv2d_25/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_26/BiasAdd/ReadVariableOp.sequential_14/conv2d_26/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_26/Conv2D/ReadVariableOp-sequential_14/conv2d_26/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_27/BiasAdd/ReadVariableOp.sequential_14/conv2d_27/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_27/Conv2D/ReadVariableOp-sequential_14/conv2d_27/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_28/BiasAdd/ReadVariableOp.sequential_14/conv2d_28/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_28/Conv2D/ReadVariableOp-sequential_14/conv2d_28/Conv2D/ReadVariableOp2`
.sequential_14/conv2d_29/BiasAdd/ReadVariableOp.sequential_14/conv2d_29/BiasAdd/ReadVariableOp2^
-sequential_14/conv2d_29/Conv2D/ReadVariableOp-sequential_14/conv2d_29/Conv2D/ReadVariableOp2\
,sequential_14/dense_8/BiasAdd/ReadVariableOp,sequential_14/dense_8/BiasAdd/ReadVariableOp2Z
+sequential_14/dense_8/MatMul/ReadVariableOp+sequential_14/dense_8/MatMul/ReadVariableOp2\
,sequential_14/dense_9/BiasAdd/ReadVariableOp,sequential_14/dense_9/BiasAdd/ReadVariableOp2Z
+sequential_14/dense_9/MatMul/ReadVariableOp+sequential_14/dense_9/MatMul/ReadVariableOp:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namesequential_12_input
Љ
Ђ
E__inference_conv2d_29_layer_call_and_return_conditional_losses_664124

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_663814

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
м
J
.__inference_sequential_13_layer_call_fn_665891

inputs
identity┴
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663080j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
в
┼
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_666587

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
в
┼
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_666679

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
Ќ
e
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663065

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
Ъ

З
C__inference_dense_9_layer_call_and_return_conditional_losses_664176

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ќ
e
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_667133

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
№
Ъ
*__inference_conv2d_26_layer_call_fn_666422

inputs!
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         44@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_664043w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         44@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         66@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         66@
 
_user_specified_nameinputs
з
А
*__inference_conv2d_27_layer_call_fn_666514

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_664070x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ъ	
о
7__inference_batch_normalization_34_layer_call_fn_666722

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663915і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
я
Ю

.__inference_sequential_14_layer_call_fn_665134

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: #
	unknown_8: @
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@

unknown_19:@%

unknown_20:@ђ

unknown_21:	ђ

unknown_22:	ђ

unknown_23:	ђ

unknown_24:	ђ

unknown_25:	ђ&

unknown_26:ђђ

unknown_27:	ђ

unknown_28:	ђ

unknown_29:	ђ

unknown_30:	ђ

unknown_31:	ђ&

unknown_32:ђђ

unknown_33:	ђ

unknown_34:	ђ

unknown_35:	ђ

unknown_36:	ђ

unknown_37:	ђ

unknown_38:	ђ@

unknown_39:@

unknown_40:@

unknown_41:
identityѕбStatefulPartitionedCallЄ
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
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *>
_read_only_resource_inputs 

"#$%()*+*0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_664552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*є
_input_shapesu
s:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
їn
┬
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_667235

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityѕбstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
§        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Є
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џЎ?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33│?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ђ
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Х
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ђ
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ј
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Џ
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:         ё
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:         M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ј
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:         P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ј
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:         x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:         X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ј
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         |
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ќ
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    љ
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Џ
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:         v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         м
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Џ
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:         Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :╦
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ю
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         ЯЯ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARњ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ЯЯh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ЯЯ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_663738

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ё
■
E__inference_conv2d_25_layer_call_and_return_conditional_losses_664016

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         mm@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         mm@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         oo : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         oo 
 
_user_specified_nameinputs
Љ
Ђ
E__inference_conv2d_28_layer_call_and_return_conditional_losses_666617

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0Џ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         

ђj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         

ђw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
С
м	
$__inference_signature_wrapper_665856
sequential_12_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@ђ

unknown_18:	ђ

unknown_19:	ђ

unknown_20:	ђ

unknown_21:	ђ

unknown_22:	ђ&

unknown_23:ђђ

unknown_24:	ђ

unknown_25:	ђ

unknown_26:	ђ

unknown_27:	ђ

unknown_28:	ђ&

unknown_29:ђђ

unknown_30:	ђ

unknown_31:	ђ

unknown_32:	ђ

unknown_33:	ђ

unknown_34:	ђ

unknown_35:	ђ@

unknown_36:@

unknown_37:@

unknown_38:
identityѕбStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallsequential_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__wrapped_model_662980o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         ЯЯ
-
_user_specified_namesequential_12_input
в
┼
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_666771

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
░
b
F__inference_resizing_4_layer_call_and_return_conditional_losses_666843

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   Џ
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_666689

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
­
T
.__inference_sequential_12_layer_call_fn_663042
resizing_4_input
identity╦
PartitionedCallPartitionedCallresizing_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_663034j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:c _
1
_output_shapes
:         ЯЯ
*
_user_specified_nameresizing_4_input
П
А
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_666661

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_663662

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_666505

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_663586

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
щ
c
G__inference_rescaling_4_layer_call_and_return_conditional_losses_663003

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ЯЯd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_663890

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
в
┼
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_663870

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
█
┴
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_666495

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
щ
e
I__inference_sequential_13_layer_call_and_return_conditional_losses_663080

inputs
identity¤
random_flip_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_flip_4_layer_call_and_return_conditional_losses_663065э
!random_rotation_4/PartitionedCallPartitionedCall&random_flip_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_663071з
random_zoom_3/PartitionedCallPartitionedCall*random_rotation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_663077x
IdentityIdentity&random_zoom_3/PartitionedCall:output:0*
T0*1
_output_shapes
:         ЯЯ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ЯЯ:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ћ	
м
7__inference_batch_normalization_29_layer_call_fn_666275

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityѕбStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663566Ѕ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ъ

ш
C__inference_dense_8_layer_call_and_return_conditional_losses_666812

inputs1
matmul_readvariableop_resource:	ђ@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ф─
┼#
I__inference_sequential_14_layer_call_and_return_conditional_losses_665292

inputsB
(conv2d_24_conv2d_readvariableop_resource: 7
)conv2d_24_biasadd_readvariableop_resource: <
.batch_normalization_29_readvariableop_resource: >
0batch_normalization_29_readvariableop_1_resource: M
?batch_normalization_29_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_25_conv2d_readvariableop_resource: @7
)conv2d_25_biasadd_readvariableop_resource:@<
.batch_normalization_30_readvariableop_resource:@>
0batch_normalization_30_readvariableop_1_resource:@M
?batch_normalization_30_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource:@B
(conv2d_26_conv2d_readvariableop_resource:@@7
)conv2d_26_biasadd_readvariableop_resource:@<
.batch_normalization_31_readvariableop_resource:@>
0batch_normalization_31_readvariableop_1_resource:@M
?batch_normalization_31_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_27_conv2d_readvariableop_resource:@ђ8
)conv2d_27_biasadd_readvariableop_resource:	ђ=
.batch_normalization_32_readvariableop_resource:	ђ?
0batch_normalization_32_readvariableop_1_resource:	ђN
?batch_normalization_32_fusedbatchnormv3_readvariableop_resource:	ђP
Abatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource:	ђD
(conv2d_28_conv2d_readvariableop_resource:ђђ8
)conv2d_28_biasadd_readvariableop_resource:	ђ=
.batch_normalization_33_readvariableop_resource:	ђ?
0batch_normalization_33_readvariableop_1_resource:	ђN
?batch_normalization_33_fusedbatchnormv3_readvariableop_resource:	ђP
Abatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource:	ђD
(conv2d_29_conv2d_readvariableop_resource:ђђ8
)conv2d_29_biasadd_readvariableop_resource:	ђ=
.batch_normalization_34_readvariableop_resource:	ђ?
0batch_normalization_34_readvariableop_1_resource:	ђN
?batch_normalization_34_fusedbatchnormv3_readvariableop_resource:	ђP
Abatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource:	ђ9
&dense_8_matmul_readvariableop_resource:	ђ@5
'dense_8_biasadd_readvariableop_resource:@8
&dense_9_matmul_readvariableop_resource:@5
'dense_9_biasadd_readvariableop_resource:
identityѕб6batch_normalization_29/FusedBatchNormV3/ReadVariableOpб8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_29/ReadVariableOpб'batch_normalization_29/ReadVariableOp_1б6batch_normalization_30/FusedBatchNormV3/ReadVariableOpб8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_30/ReadVariableOpб'batch_normalization_30/ReadVariableOp_1б6batch_normalization_31/FusedBatchNormV3/ReadVariableOpб8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_31/ReadVariableOpб'batch_normalization_31/ReadVariableOp_1б6batch_normalization_32/FusedBatchNormV3/ReadVariableOpб8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_32/ReadVariableOpб'batch_normalization_32/ReadVariableOp_1б6batch_normalization_33/FusedBatchNormV3/ReadVariableOpб8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_33/ReadVariableOpб'batch_normalization_33/ReadVariableOp_1б6batch_normalization_34/FusedBatchNormV3/ReadVariableOpб8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_34/ReadVariableOpб'batch_normalization_34/ReadVariableOp_1б conv2d_24/BiasAdd/ReadVariableOpбconv2d_24/Conv2D/ReadVariableOpб conv2d_25/BiasAdd/ReadVariableOpбconv2d_25/Conv2D/ReadVariableOpб conv2d_26/BiasAdd/ReadVariableOpбconv2d_26/Conv2D/ReadVariableOpб conv2d_27/BiasAdd/ReadVariableOpбconv2d_27/Conv2D/ReadVariableOpб conv2d_28/BiasAdd/ReadVariableOpбconv2d_28/Conv2D/ReadVariableOpб conv2d_29/BiasAdd/ReadVariableOpбconv2d_29/Conv2D/ReadVariableOpбdense_8/BiasAdd/ReadVariableOpбdense_8/MatMul/ReadVariableOpбdense_9/BiasAdd/ReadVariableOpбdense_9/MatMul/ReadVariableOpu
$sequential_12/resizing_4/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Я   Я   ═
.sequential_12/resizing_4/resize/ResizeBilinearResizeBilinearinputs-sequential_12/resizing_4/resize/size:output:0*
T0*1
_output_shapes
:         ЯЯ*
half_pixel_centers(e
 sequential_12/rescaling_4/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;g
"sequential_12/rescaling_4/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ╠
sequential_12/rescaling_4/mulMul?sequential_12/resizing_4/resize/ResizeBilinear:resized_images:0)sequential_12/rescaling_4/Cast/x:output:0*
T0*1
_output_shapes
:         ЯЯ▓
sequential_12/rescaling_4/addAddV2!sequential_12/rescaling_4/mul:z:0+sequential_12/rescaling_4/Cast_1/x:output:0*
T0*1
_output_shapes
:         ЯЯљ
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╦
conv2d_24/Conv2DConv2D!sequential_12/rescaling_4/add:z:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя *
paddingVALID*
strides
є
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ю
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         яя n
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:         яя љ
%batch_normalization_29/ReadVariableOpReadVariableOp.batch_normalization_29_readvariableop_resource*
_output_shapes
: *
dtype0ћ
'batch_normalization_29/ReadVariableOp_1ReadVariableOp0batch_normalization_29_readvariableop_1_resource*
_output_shapes
: *
dtype0▓
6batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Х
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0┴
'batch_normalization_29/FusedBatchNormV3FusedBatchNormV3conv2d_24/Relu:activations:0-batch_normalization_29/ReadVariableOp:value:0/batch_normalization_29/ReadVariableOp_1:value:0>batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         яя : : : : :*
epsilon%oЃ:*
is_training( й
max_pooling2d_24/MaxPoolMaxPool+batch_normalization_29/FusedBatchNormV3:y:0*/
_output_shapes
:         oo *
ksize
*
paddingVALID*
strides
љ
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_25/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@*
paddingVALID*
strides
є
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         mm@l
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         mm@љ
%batch_normalization_30/ReadVariableOpReadVariableOp.batch_normalization_30_readvariableop_resource*
_output_shapes
:@*
dtype0ћ
'batch_normalization_30/ReadVariableOp_1ReadVariableOp0batch_normalization_30_readvariableop_1_resource*
_output_shapes
:@*
dtype0▓
6batch_normalization_30/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_30_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Х
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_30_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0┐
'batch_normalization_30/FusedBatchNormV3FusedBatchNormV3conv2d_25/Relu:activations:0-batch_normalization_30/ReadVariableOp:value:0/batch_normalization_30/ReadVariableOp_1:value:0>batch_normalization_30/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         mm@:@:@:@:@:*
epsilon%oЃ:*
is_training( й
max_pooling2d_25/MaxPoolMaxPool+batch_normalization_30/FusedBatchNormV3:y:0*/
_output_shapes
:         66@*
ksize
*
paddingVALID*
strides
љ
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0╔
conv2d_26/Conv2DConv2D!max_pooling2d_25/MaxPool:output:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@*
paddingVALID*
strides
є
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Џ
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         44@l
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:         44@љ
%batch_normalization_31/ReadVariableOpReadVariableOp.batch_normalization_31_readvariableop_resource*
_output_shapes
:@*
dtype0ћ
'batch_normalization_31/ReadVariableOp_1ReadVariableOp0batch_normalization_31_readvariableop_1_resource*
_output_shapes
:@*
dtype0▓
6batch_normalization_31/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_31_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Х
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_31_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0┐
'batch_normalization_31/FusedBatchNormV3FusedBatchNormV3conv2d_26/Relu:activations:0-batch_normalization_31/ReadVariableOp:value:0/batch_normalization_31/ReadVariableOp_1:value:0>batch_normalization_31/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         44@:@:@:@:@:*
epsilon%oЃ:*
is_training( й
max_pooling2d_26/MaxPoolMaxPool+batch_normalization_31/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Љ
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype0╩
conv2d_27/Conv2DConv2D!max_pooling2d_26/MaxPool:output:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Є
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ю
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђm
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*0
_output_shapes
:         ђЉ
%batch_normalization_32/ReadVariableOpReadVariableOp.batch_normalization_32_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ћ
'batch_normalization_32/ReadVariableOp_1ReadVariableOp0batch_normalization_32_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0│
6batch_normalization_32/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_32_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0и
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_32_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0─
'batch_normalization_32/FusedBatchNormV3FusedBatchNormV3conv2d_27/Relu:activations:0-batch_normalization_32/ReadVariableOp:value:0/batch_normalization_32/ReadVariableOp_1:value:0>batch_normalization_32/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( Й
max_pooling2d_27/MaxPoolMaxPool+batch_normalization_32/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
њ
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0╩
conv2d_28/Conv2DConv2D!max_pooling2d_27/MaxPool:output:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђ*
paddingVALID*
strides
Є
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ю
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

ђm
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*0
_output_shapes
:         

ђЉ
%batch_normalization_33/ReadVariableOpReadVariableOp.batch_normalization_33_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ћ
'batch_normalization_33/ReadVariableOp_1ReadVariableOp0batch_normalization_33_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0│
6batch_normalization_33/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_33_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0и
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_33_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0─
'batch_normalization_33/FusedBatchNormV3FusedBatchNormV3conv2d_28/Relu:activations:0-batch_normalization_33/ReadVariableOp:value:0/batch_normalization_33/ReadVariableOp_1:value:0>batch_normalization_33/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         

ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( Й
max_pooling2d_28/MaxPoolMaxPool+batch_normalization_33/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
њ
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype0╩
conv2d_29/Conv2DConv2D!max_pooling2d_28/MaxPool:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
Є
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ю
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђm
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:         ђЉ
%batch_normalization_34/ReadVariableOpReadVariableOp.batch_normalization_34_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ћ
'batch_normalization_34/ReadVariableOp_1ReadVariableOp0batch_normalization_34_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0│
6batch_normalization_34/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_34_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0и
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_34_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0─
'batch_normalization_34/FusedBatchNormV3FusedBatchNormV3conv2d_29/Relu:activations:0-batch_normalization_34/ReadVariableOp:value:0/batch_normalization_34/ReadVariableOp_1:value:0>batch_normalization_34/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
is_training( Й
max_pooling2d_29/MaxPoolMaxPool+batch_normalization_34/FusedBatchNormV3:y:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ї
flatten_4/ReshapeReshape!max_pooling2d_29/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:         ђЁ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	ђ@*
dtype0Ї
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ѓ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ј
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:         @ё
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ї
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ѓ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ј
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_9/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_9/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         і
NoOpNoOp7^batch_normalization_29/FusedBatchNormV3/ReadVariableOp9^batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_29/ReadVariableOp(^batch_normalization_29/ReadVariableOp_17^batch_normalization_30/FusedBatchNormV3/ReadVariableOp9^batch_normalization_30/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_30/ReadVariableOp(^batch_normalization_30/ReadVariableOp_17^batch_normalization_31/FusedBatchNormV3/ReadVariableOp9^batch_normalization_31/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_31/ReadVariableOp(^batch_normalization_31/ReadVariableOp_17^batch_normalization_32/FusedBatchNormV3/ReadVariableOp9^batch_normalization_32/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_32/ReadVariableOp(^batch_normalization_32/ReadVariableOp_17^batch_normalization_33/FusedBatchNormV3/ReadVariableOp9^batch_normalization_33/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_33/ReadVariableOp(^batch_normalization_33/ReadVariableOp_17^batch_normalization_34/FusedBatchNormV3/ReadVariableOp9^batch_normalization_34/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_34/ReadVariableOp(^batch_normalization_34/ReadVariableOp_1!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*ђ
_input_shapeso
m:         ЯЯ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_29/FusedBatchNormV3/ReadVariableOp6batch_normalization_29/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_29/FusedBatchNormV3/ReadVariableOp_18batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_29/ReadVariableOp%batch_normalization_29/ReadVariableOp2R
'batch_normalization_29/ReadVariableOp_1'batch_normalization_29/ReadVariableOp_12p
6batch_normalization_30/FusedBatchNormV3/ReadVariableOp6batch_normalization_30/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_30/FusedBatchNormV3/ReadVariableOp_18batch_normalization_30/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_30/ReadVariableOp%batch_normalization_30/ReadVariableOp2R
'batch_normalization_30/ReadVariableOp_1'batch_normalization_30/ReadVariableOp_12p
6batch_normalization_31/FusedBatchNormV3/ReadVariableOp6batch_normalization_31/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_31/FusedBatchNormV3/ReadVariableOp_18batch_normalization_31/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_31/ReadVariableOp%batch_normalization_31/ReadVariableOp2R
'batch_normalization_31/ReadVariableOp_1'batch_normalization_31/ReadVariableOp_12p
6batch_normalization_32/FusedBatchNormV3/ReadVariableOp6batch_normalization_32/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_32/FusedBatchNormV3/ReadVariableOp_18batch_normalization_32/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_32/ReadVariableOp%batch_normalization_32/ReadVariableOp2R
'batch_normalization_32/ReadVariableOp_1'batch_normalization_32/ReadVariableOp_12p
6batch_normalization_33/FusedBatchNormV3/ReadVariableOp6batch_normalization_33/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_33/FusedBatchNormV3/ReadVariableOp_18batch_normalization_33/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_33/ReadVariableOp%batch_normalization_33/ReadVariableOp2R
'batch_normalization_33/ReadVariableOp_1'batch_normalization_33/ReadVariableOp_12p
6batch_normalization_34/FusedBatchNormV3/ReadVariableOp6batch_normalization_34/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_34/FusedBatchNormV3/ReadVariableOp_18batch_normalization_34/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_34/ReadVariableOp%batch_normalization_34/ReadVariableOp2R
'batch_normalization_34/ReadVariableOp_1'batch_normalization_34/ReadVariableOp_12D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
ъ	
о
7__inference_batch_normalization_32_layer_call_fn_666538

inputs
unknown:	ђ
	unknown_0:	ђ
	unknown_1:	ђ
	unknown_2:	ђ
identityѕбStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           ђ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *[
fVRT
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_663763і
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
ћ
h
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_666781

inputs
identityб
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ќ
░
.__inference_sequential_13_layer_call_fn_665902

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityѕбStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ЯЯ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_13_layer_call_and_return_conditional_losses_663473y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ЯЯ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         ЯЯ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ЯЯ
 
_user_specified_nameinputs
в
┼
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_663946

inputs&
readvariableop_resource:	ђ(
readvariableop_1_resource:	ђ7
(fusedbatchnormv3_readvariableop_resource:	ђ9
*fusedbatchnormv3_readvariableop_1_resource:	ђ
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:ђ*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:ђ*
dtype0Ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:ђ*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           ђ:ђ:ђ:ђ:ђ:*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           ђн
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           ђ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           ђ
 
_user_specified_nameinputs
█
┴
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_663566

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oЃ:*
exponential_avg_factor%
О#<░
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0║
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            н
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
═
Ю
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_663611

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
═
Ю
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_666477

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0ё
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ѕ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oЃ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╠
serving_defaultИ
]
sequential_12_inputF
%serving_default_sequential_12_input:0         ЯЯ;
dense_90
StatefulPartitionedCall:0         tensorflow/serving/predict:ѕІ
ј
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
layer-20
layer_with_weights-12
layer-21
layer_with_weights-13
layer-22
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
 
signatures"
_tf_keras_sequential
─
!layer-0
"layer-1
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_sequential
Л
)layer-0
*layer-1
+layer-2
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_sequential
╗

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
Ж
:axis
	;gamma
<beta
=moving_mean
>moving_variance
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
Ж
Saxis
	Tgamma
Ubeta
Vmoving_mean
Wmoving_variance
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

dkernel
ebias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
Ж
laxis
	mgamma
nbeta
omoving_mean
pmoving_variance
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
└

}kernel
~bias
	variables
ђtrainable_variables
Ђregularization_losses
ѓ	keras_api
Ѓ__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
	Ёaxis

єgamma
	Єbeta
ѕmoving_mean
Ѕmoving_variance
і	variables
Іtrainable_variables
їregularization_losses
Ї	keras_api
ј__call__
+Ј&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
љ	variables
Љtrainable_variables
њregularization_losses
Њ	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
├
ќkernel
	Ќbias
ў	variables
Ўtrainable_variables
џregularization_losses
Џ	keras_api
ю__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
	ъaxis

Ъgamma
	аbeta
Аmoving_mean
бmoving_variance
Б	variables
цtrainable_variables
Цregularization_losses
д	keras_api
Д__call__
+е&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
Е	variables
фtrainable_variables
Фregularization_losses
г	keras_api
Г__call__
+«&call_and_return_all_conditional_losses"
_tf_keras_layer
├
»kernel
	░bias
▒	variables
▓trainable_variables
│regularization_losses
┤	keras_api
х__call__
+Х&call_and_return_all_conditional_losses"
_tf_keras_layer
ш
	иaxis

Иgamma
	╣beta
║moving_mean
╗moving_variance
╝	variables
йtrainable_variables
Йregularization_losses
┐	keras_api
└__call__
+┴&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
к__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
╚	variables
╔trainable_variables
╩regularization_losses
╦	keras_api
╠__call__
+═&call_and_return_all_conditional_losses"
_tf_keras_layer
├
╬kernel
	¤bias
л	variables
Лtrainable_variables
мregularization_losses
М	keras_api
н__call__
+Н&call_and_return_all_conditional_losses"
_tf_keras_layer
├
оkernel
	Оbias
п	variables
┘trainable_variables
┌regularization_losses
█	keras_api
▄__call__
+П&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	яiter
▀beta_1
Яbeta_2

рdecay
Рlearning_rate2mД3mе;mЕ<mфKmФLmгTmГUm«dm»em░mm▒nm▓}m│~m┤	єmх	ЄmХ	ќmи	ЌmИ	Ъm╣	аm║	»m╗	░m╝	Иmй	╣mЙ	╬m┐	¤m└	оm┴	Оm┬2v├3v─;v┼<vкKvКLv╚Tv╔Uv╩dv╦ev╠mv═nv╬}v¤~vл	єvЛ	Єvм	ќvМ	Ќvн	ЪvН	аvо	»vО	░vп	Иv┘	╣v┌	╬v█	¤v▄	оvП	Оvя"
	optimizer
Ж
20
31
;2
<3
=4
>5
K6
L7
T8
U9
V10
W11
d12
e13
m14
n15
o16
p17
}18
~19
є20
Є21
ѕ22
Ѕ23
ќ24
Ќ25
Ъ26
а27
А28
б29
»30
░31
И32
╣33
║34
╗35
╬36
¤37
о38
О39"
trackable_list_wrapper
ё
20
31
;2
<3
K4
L5
T6
U7
d8
e9
m10
n11
}12
~13
є14
Є15
ќ16
Ќ17
Ъ18
а19
»20
░21
И22
╣23
╬24
¤25
о26
О27"
trackable_list_wrapper
 "
trackable_list_wrapper
¤
сnon_trainable_variables
Сlayers
тmetrics
 Тlayer_regularization_losses
уlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
є2Ѓ
.__inference_sequential_14_layer_call_fn_664266
.__inference_sequential_14_layer_call_fn_665043
.__inference_sequential_14_layer_call_fn_665134
.__inference_sequential_14_layer_call_fn_664732└
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
I__inference_sequential_14_layer_call_and_return_conditional_losses_665292
I__inference_sequential_14_layer_call_and_return_conditional_losses_665769
I__inference_sequential_14_layer_call_and_return_conditional_losses_664839
I__inference_sequential_14_layer_call_and_return_conditional_losses_664952└
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
пBН
!__inference__wrapped_model_662980sequential_12_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
-
Уserving_default"
signature_map
Ф
ж	variables
Жtrainable_variables
вregularization_losses
В	keras_api
ь__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
Ф
№	variables
­trainable_variables
ыregularization_losses
Ы	keras_api
з__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
шnon_trainable_variables
Шlayers
эmetrics
 Эlayer_regularization_losses
щlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
є2Ѓ
.__inference_sequential_12_layer_call_fn_663009
.__inference_sequential_12_layer_call_fn_665861
.__inference_sequential_12_layer_call_fn_665866
.__inference_sequential_12_layer_call_fn_663042└
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
I__inference_sequential_12_layer_call_and_return_conditional_losses_665876
I__inference_sequential_12_layer_call_and_return_conditional_losses_665886
I__inference_sequential_12_layer_call_and_return_conditional_losses_663048
I__inference_sequential_12_layer_call_and_return_conditional_losses_663054└
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
├
Щ	variables
чtrainable_variables
Чregularization_losses
§	keras_api
■_random_generator
 __call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
ё	keras_api
Ё_random_generator
є__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
├
ѕ	variables
Ѕtrainable_variables
іregularization_losses
І	keras_api
ї_random_generator
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
є2Ѓ
.__inference_sequential_13_layer_call_fn_663083
.__inference_sequential_13_layer_call_fn_665891
.__inference_sequential_13_layer_call_fn_665902
.__inference_sequential_13_layer_call_fn_663493└
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
I__inference_sequential_13_layer_call_and_return_conditional_losses_665906
I__inference_sequential_13_layer_call_and_return_conditional_losses_666229
I__inference_sequential_13_layer_call_and_return_conditional_losses_663500
I__inference_sequential_13_layer_call_and_return_conditional_losses_663513└
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
*:( 2conv2d_24/kernel
: 2conv2d_24/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ћnon_trainable_variables
Ћlayers
ќmetrics
 Ќlayer_regularization_losses
ўlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_24_layer_call_fn_666238б
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
E__inference_conv2d_24_layer_call_and_return_conditional_losses_666249б
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
 "
trackable_list_wrapper
*:( 2batch_normalization_29/gamma
):' 2batch_normalization_29/beta
2:0  (2"batch_normalization_29/moving_mean
6:4  (2&batch_normalization_29/moving_variance
<
;0
<1
=2
>3"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ўnon_trainable_variables
џlayers
Џmetrics
 юlayer_regularization_losses
Юlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
г2Е
7__inference_batch_normalization_29_layer_call_fn_666262
7__inference_batch_normalization_29_layer_call_fn_666275┤
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
Р2▀
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666293
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666311┤
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
Ъlayers
аmetrics
 Аlayer_regularization_losses
бlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling2d_24_layer_call_fn_666316б
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
Ш2з
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_666321б
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
*:( @2conv2d_25/kernel
:@2conv2d_25/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Бnon_trainable_variables
цlayers
Цmetrics
 дlayer_regularization_losses
Дlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_25_layer_call_fn_666330б
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
E__inference_conv2d_25_layer_call_and_return_conditional_losses_666341б
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
 "
trackable_list_wrapper
*:(@2batch_normalization_30/gamma
):'@2batch_normalization_30/beta
2:0@ (2"batch_normalization_30/moving_mean
6:4@ (2&batch_normalization_30/moving_variance
<
T0
U1
V2
W3"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
еnon_trainable_variables
Еlayers
фmetrics
 Фlayer_regularization_losses
гlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
г2Е
7__inference_batch_normalization_30_layer_call_fn_666354
7__inference_batch_normalization_30_layer_call_fn_666367┤
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
Р2▀
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_666385
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_666403┤
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Гnon_trainable_variables
«layers
»metrics
 ░layer_regularization_losses
▒layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling2d_25_layer_call_fn_666408б
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
Ш2з
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_666413б
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
*:(@@2conv2d_26/kernel
:@2conv2d_26/bias
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▓non_trainable_variables
│layers
┤metrics
 хlayer_regularization_losses
Хlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_26_layer_call_fn_666422б
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
E__inference_conv2d_26_layer_call_and_return_conditional_losses_666433б
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
 "
trackable_list_wrapper
*:(@2batch_normalization_31/gamma
):'@2batch_normalization_31/beta
2:0@ (2"batch_normalization_31/moving_mean
6:4@ (2&batch_normalization_31/moving_variance
<
m0
n1
o2
p3"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
иnon_trainable_variables
Иlayers
╣metrics
 ║layer_regularization_losses
╗layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
г2Е
7__inference_batch_normalization_31_layer_call_fn_666446
7__inference_batch_normalization_31_layer_call_fn_666459┤
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
Р2▀
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_666477
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_666495┤
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
йlayers
Йmetrics
 ┐layer_regularization_losses
└layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling2d_26_layer_call_fn_666500б
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
Ш2з
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_666505б
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
+:)@ђ2conv2d_27/kernel
:ђ2conv2d_27/bias
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
и
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
	variables
ђtrainable_variables
Ђregularization_losses
Ѓ__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_27_layer_call_fn_666514б
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
E__inference_conv2d_27_layer_call_and_return_conditional_losses_666525б
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
 "
trackable_list_wrapper
+:)ђ2batch_normalization_32/gamma
*:(ђ2batch_normalization_32/beta
3:1ђ (2"batch_normalization_32/moving_mean
7:5ђ (2&batch_normalization_32/moving_variance
@
є0
Є1
ѕ2
Ѕ3"
trackable_list_wrapper
0
є0
Є1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
кnon_trainable_variables
Кlayers
╚metrics
 ╔layer_regularization_losses
╩layer_metrics
і	variables
Іtrainable_variables
їregularization_losses
ј__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
г2Е
7__inference_batch_normalization_32_layer_call_fn_666538
7__inference_batch_normalization_32_layer_call_fn_666551┤
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
Р2▀
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_666569
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_666587┤
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
¤layer_metrics
љ	variables
Љtrainable_variables
њregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling2d_27_layer_call_fn_666592б
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
Ш2з
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_666597б
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
,:*ђђ2conv2d_28/kernel
:ђ2conv2d_28/bias
0
ќ0
Ќ1"
trackable_list_wrapper
0
ќ0
Ќ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
лnon_trainable_variables
Лlayers
мmetrics
 Мlayer_regularization_losses
нlayer_metrics
ў	variables
Ўtrainable_variables
џregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_28_layer_call_fn_666606б
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
E__inference_conv2d_28_layer_call_and_return_conditional_losses_666617б
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
 "
trackable_list_wrapper
+:)ђ2batch_normalization_33/gamma
*:(ђ2batch_normalization_33/beta
3:1ђ (2"batch_normalization_33/moving_mean
7:5ђ (2&batch_normalization_33/moving_variance
@
Ъ0
а1
А2
б3"
trackable_list_wrapper
0
Ъ0
а1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Нnon_trainable_variables
оlayers
Оmetrics
 пlayer_regularization_losses
┘layer_metrics
Б	variables
цtrainable_variables
Цregularization_losses
Д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
г2Е
7__inference_batch_normalization_33_layer_call_fn_666630
7__inference_batch_normalization_33_layer_call_fn_666643┤
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
Р2▀
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_666661
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_666679┤
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
┌non_trainable_variables
█layers
▄metrics
 Пlayer_regularization_losses
яlayer_metrics
Е	variables
фtrainable_variables
Фregularization_losses
Г__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling2d_28_layer_call_fn_666684б
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
Ш2з
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_666689б
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
,:*ђђ2conv2d_29/kernel
:ђ2conv2d_29/bias
0
»0
░1"
trackable_list_wrapper
0
»0
░1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
▀non_trainable_variables
Яlayers
рmetrics
 Рlayer_regularization_losses
сlayer_metrics
▒	variables
▓trainable_variables
│regularization_losses
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv2d_29_layer_call_fn_666698б
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
E__inference_conv2d_29_layer_call_and_return_conditional_losses_666709б
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
 "
trackable_list_wrapper
+:)ђ2batch_normalization_34/gamma
*:(ђ2batch_normalization_34/beta
3:1ђ (2"batch_normalization_34/moving_mean
7:5ђ (2&batch_normalization_34/moving_variance
@
И0
╣1
║2
╗3"
trackable_list_wrapper
0
И0
╣1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Сnon_trainable_variables
тlayers
Тmetrics
 уlayer_regularization_losses
Уlayer_metrics
╝	variables
йtrainable_variables
Йregularization_losses
└__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses"
_generic_user_object
г2Е
7__inference_batch_normalization_34_layer_call_fn_666722
7__inference_batch_normalization_34_layer_call_fn_666735┤
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
Р2▀
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_666753
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_666771┤
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
жnon_trainable_variables
Жlayers
вmetrics
 Вlayer_regularization_losses
ьlayer_metrics
┬	variables
├trainable_variables
─regularization_losses
к__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling2d_29_layer_call_fn_666776б
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
Ш2з
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_666781б
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ьnon_trainable_variables
№layers
­metrics
 ыlayer_regularization_losses
Ыlayer_metrics
╚	variables
╔trainable_variables
╩regularization_losses
╠__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_flatten_4_layer_call_fn_666786б
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
E__inference_flatten_4_layer_call_and_return_conditional_losses_666792б
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
!:	ђ@2dense_8/kernel
:@2dense_8/bias
0
╬0
¤1"
trackable_list_wrapper
0
╬0
¤1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
зnon_trainable_variables
Зlayers
шmetrics
 Шlayer_regularization_losses
эlayer_metrics
л	variables
Лtrainable_variables
мregularization_losses
н__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_dense_8_layer_call_fn_666801б
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
ь2Ж
C__inference_dense_8_layer_call_and_return_conditional_losses_666812б
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
 :@2dense_9/kernel
:2dense_9/bias
0
о0
О1"
trackable_list_wrapper
0
о0
О1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Эnon_trainable_variables
щlayers
Щmetrics
 чlayer_regularization_losses
Чlayer_metrics
п	variables
┘trainable_variables
┌regularization_losses
▄__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
м2¤
(__inference_dense_9_layer_call_fn_666821б
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
ь2Ж
C__inference_dense_9_layer_call_and_return_conditional_losses_666832б
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
|
=0
>1
V2
W3
o4
p5
ѕ6
Ѕ7
А8
б9
║10
╗11"
trackable_list_wrapper
╬
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
16
17
18
19
20
21
22"
trackable_list_wrapper
0
§0
■1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBн
$__inference_signature_wrapper_665856sequential_12_input"ћ
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
 non_trainable_variables
ђlayers
Ђmetrics
 ѓlayer_regularization_losses
Ѓlayer_metrics
ж	variables
Жtrainable_variables
вregularization_losses
ь__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
Н2м
+__inference_resizing_4_layer_call_fn_666837б
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
F__inference_resizing_4_layer_call_and_return_conditional_losses_666843б
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ёnon_trainable_variables
Ёlayers
єmetrics
 Єlayer_regularization_losses
ѕlayer_metrics
№	variables
­trainable_variables
ыregularization_losses
з__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
о2М
,__inference_rescaling_4_layer_call_fn_666848б
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
ы2Ь
G__inference_rescaling_4_layer_call_and_return_conditional_losses_666856б
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
 "
trackable_list_wrapper
.
!0
"1"
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
И
Ѕnon_trainable_variables
іlayers
Іmetrics
 їlayer_regularization_losses
Їlayer_metrics
Щ	variables
чtrainable_variables
Чregularization_losses
 __call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
/
ј
_generator"
_generic_user_object
џ2Ќ
.__inference_random_flip_4_layer_call_fn_666861
.__inference_random_flip_4_layer_call_fn_666868┤
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
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
I__inference_random_flip_4_layer_call_and_return_conditional_losses_666872
I__inference_random_flip_4_layer_call_and_return_conditional_losses_666983┤
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
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Јnon_trainable_variables
љlayers
Љmetrics
 њlayer_regularization_losses
Њlayer_metrics
Ђ	variables
ѓtrainable_variables
Ѓregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
/
ћ
_generator"
_generic_user_object
б2Ъ
2__inference_random_rotation_4_layer_call_fn_666988
2__inference_random_rotation_4_layer_call_fn_666995┤
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
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
п2Н
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_666999
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_667117┤
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
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ћnon_trainable_variables
ќlayers
Ќmetrics
 ўlayer_regularization_losses
Ўlayer_metrics
ѕ	variables
Ѕtrainable_variables
іregularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
/
џ
_generator"
_generic_user_object
џ2Ќ
.__inference_random_zoom_3_layer_call_fn_667122
.__inference_random_zoom_3_layer_call_fn_667129┤
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
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
л2═
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_667133
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_667235┤
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
p

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
 "
trackable_list_wrapper
5
)0
*1
+2"
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
.
=0
>1"
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
.
V0
W1"
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
.
o0
p1"
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
0
ѕ0
Ѕ1"
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
0
А0
б1"
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
0
║0
╗1"
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
R

Џtotal

юcount
Ю	variables
ъ	keras_api"
_tf_keras_metric
c

Ъtotal

аcount
А
_fn_kwargs
б	variables
Б	keras_api"
_tf_keras_metric
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
/
ц
_state_var"
_generic_user_object
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
/
Ц
_state_var"
_generic_user_object
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
/
д
_state_var"
_generic_user_object
:  (2total
:  (2count
0
Џ0
ю1"
trackable_list_wrapper
.
Ю	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ъ0
а1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
": 	2random_flip_4/StateVar
&:$	2random_rotation_4/StateVar
": 	2random_zoom_3/StateVar
/:- 2Adam/conv2d_24/kernel/m
!: 2Adam/conv2d_24/bias/m
/:- 2#Adam/batch_normalization_29/gamma/m
.:, 2"Adam/batch_normalization_29/beta/m
/:- @2Adam/conv2d_25/kernel/m
!:@2Adam/conv2d_25/bias/m
/:-@2#Adam/batch_normalization_30/gamma/m
.:,@2"Adam/batch_normalization_30/beta/m
/:-@@2Adam/conv2d_26/kernel/m
!:@2Adam/conv2d_26/bias/m
/:-@2#Adam/batch_normalization_31/gamma/m
.:,@2"Adam/batch_normalization_31/beta/m
0:.@ђ2Adam/conv2d_27/kernel/m
": ђ2Adam/conv2d_27/bias/m
0:.ђ2#Adam/batch_normalization_32/gamma/m
/:-ђ2"Adam/batch_normalization_32/beta/m
1:/ђђ2Adam/conv2d_28/kernel/m
": ђ2Adam/conv2d_28/bias/m
0:.ђ2#Adam/batch_normalization_33/gamma/m
/:-ђ2"Adam/batch_normalization_33/beta/m
1:/ђђ2Adam/conv2d_29/kernel/m
": ђ2Adam/conv2d_29/bias/m
0:.ђ2#Adam/batch_normalization_34/gamma/m
/:-ђ2"Adam/batch_normalization_34/beta/m
&:$	ђ@2Adam/dense_8/kernel/m
:@2Adam/dense_8/bias/m
%:#@2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
/:- 2Adam/conv2d_24/kernel/v
!: 2Adam/conv2d_24/bias/v
/:- 2#Adam/batch_normalization_29/gamma/v
.:, 2"Adam/batch_normalization_29/beta/v
/:- @2Adam/conv2d_25/kernel/v
!:@2Adam/conv2d_25/bias/v
/:-@2#Adam/batch_normalization_30/gamma/v
.:,@2"Adam/batch_normalization_30/beta/v
/:-@@2Adam/conv2d_26/kernel/v
!:@2Adam/conv2d_26/bias/v
/:-@2#Adam/batch_normalization_31/gamma/v
.:,@2"Adam/batch_normalization_31/beta/v
0:.@ђ2Adam/conv2d_27/kernel/v
": ђ2Adam/conv2d_27/bias/v
0:.ђ2#Adam/batch_normalization_32/gamma/v
/:-ђ2"Adam/batch_normalization_32/beta/v
1:/ђђ2Adam/conv2d_28/kernel/v
": ђ2Adam/conv2d_28/bias/v
0:.ђ2#Adam/batch_normalization_33/gamma/v
/:-ђ2"Adam/batch_normalization_33/beta/v
1:/ђђ2Adam/conv2d_29/kernel/v
": ђ2Adam/conv2d_29/bias/v
0:.ђ2#Adam/batch_normalization_34/gamma/v
/:-ђ2"Adam/batch_normalization_34/beta/v
&:$	ђ@2Adam/dense_8/kernel/v
:@2Adam/dense_8/bias/v
%:#@2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v▀
!__inference__wrapped_model_662980╣<23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОFбC
<б9
7і4
sequential_12_input         ЯЯ
ф "1ф.
,
dense_9!і
dense_9         ь
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666293ќ;<=>MбJ
Cб@
:і7
inputs+                            
p 
ф "?б<
5і2
0+                            
џ ь
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_666311ќ;<=>MбJ
Cб@
:і7
inputs+                            
p
ф "?б<
5і2
0+                            
џ ┼
7__inference_batch_normalization_29_layer_call_fn_666262Ѕ;<=>MбJ
Cб@
:і7
inputs+                            
p 
ф "2і/+                            ┼
7__inference_batch_normalization_29_layer_call_fn_666275Ѕ;<=>MбJ
Cб@
:і7
inputs+                            
p
ф "2і/+                            ь
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_666385ќTUVWMбJ
Cб@
:і7
inputs+                           @
p 
ф "?б<
5і2
0+                           @
џ ь
R__inference_batch_normalization_30_layer_call_and_return_conditional_losses_666403ќTUVWMбJ
Cб@
:і7
inputs+                           @
p
ф "?б<
5і2
0+                           @
џ ┼
7__inference_batch_normalization_30_layer_call_fn_666354ЅTUVWMбJ
Cб@
:і7
inputs+                           @
p 
ф "2і/+                           @┼
7__inference_batch_normalization_30_layer_call_fn_666367ЅTUVWMбJ
Cб@
:і7
inputs+                           @
p
ф "2і/+                           @ь
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_666477ќmnopMбJ
Cб@
:і7
inputs+                           @
p 
ф "?б<
5і2
0+                           @
џ ь
R__inference_batch_normalization_31_layer_call_and_return_conditional_losses_666495ќmnopMбJ
Cб@
:і7
inputs+                           @
p
ф "?б<
5і2
0+                           @
џ ┼
7__inference_batch_normalization_31_layer_call_fn_666446ЅmnopMбJ
Cб@
:і7
inputs+                           @
p 
ф "2і/+                           @┼
7__inference_batch_normalization_31_layer_call_fn_666459ЅmnopMбJ
Cб@
:і7
inputs+                           @
p
ф "2і/+                           @з
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_666569юєЄѕЅNбK
DбA
;і8
inputs,                           ђ
p 
ф "@б=
6і3
0,                           ђ
џ з
R__inference_batch_normalization_32_layer_call_and_return_conditional_losses_666587юєЄѕЅNбK
DбA
;і8
inputs,                           ђ
p
ф "@б=
6і3
0,                           ђ
џ ╦
7__inference_batch_normalization_32_layer_call_fn_666538ЈєЄѕЅNбK
DбA
;і8
inputs,                           ђ
p 
ф "3і0,                           ђ╦
7__inference_batch_normalization_32_layer_call_fn_666551ЈєЄѕЅNбK
DбA
;і8
inputs,                           ђ
p
ф "3і0,                           ђз
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_666661юЪаАбNбK
DбA
;і8
inputs,                           ђ
p 
ф "@б=
6і3
0,                           ђ
џ з
R__inference_batch_normalization_33_layer_call_and_return_conditional_losses_666679юЪаАбNбK
DбA
;і8
inputs,                           ђ
p
ф "@б=
6і3
0,                           ђ
џ ╦
7__inference_batch_normalization_33_layer_call_fn_666630ЈЪаАбNбK
DбA
;і8
inputs,                           ђ
p 
ф "3і0,                           ђ╦
7__inference_batch_normalization_33_layer_call_fn_666643ЈЪаАбNбK
DбA
;і8
inputs,                           ђ
p
ф "3і0,                           ђз
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_666753юИ╣║╗NбK
DбA
;і8
inputs,                           ђ
p 
ф "@б=
6і3
0,                           ђ
џ з
R__inference_batch_normalization_34_layer_call_and_return_conditional_losses_666771юИ╣║╗NбK
DбA
;і8
inputs,                           ђ
p
ф "@б=
6і3
0,                           ђ
џ ╦
7__inference_batch_normalization_34_layer_call_fn_666722ЈИ╣║╗NбK
DбA
;і8
inputs,                           ђ
p 
ф "3і0,                           ђ╦
7__inference_batch_normalization_34_layer_call_fn_666735ЈИ╣║╗NбK
DбA
;і8
inputs,                           ђ
p
ф "3і0,                           ђ╣
E__inference_conv2d_24_layer_call_and_return_conditional_losses_666249p239б6
/б,
*і'
inputs         ЯЯ
ф "/б,
%і"
0         яя 
џ Љ
*__inference_conv2d_24_layer_call_fn_666238c239б6
/б,
*і'
inputs         ЯЯ
ф ""і         яя х
E__inference_conv2d_25_layer_call_and_return_conditional_losses_666341lKL7б4
-б*
(і%
inputs         oo 
ф "-б*
#і 
0         mm@
џ Ї
*__inference_conv2d_25_layer_call_fn_666330_KL7б4
-б*
(і%
inputs         oo 
ф " і         mm@х
E__inference_conv2d_26_layer_call_and_return_conditional_losses_666433lde7б4
-б*
(і%
inputs         66@
ф "-б*
#і 
0         44@
џ Ї
*__inference_conv2d_26_layer_call_fn_666422_de7б4
-б*
(і%
inputs         66@
ф " і         44@Х
E__inference_conv2d_27_layer_call_and_return_conditional_losses_666525m}~7б4
-б*
(і%
inputs         @
ф ".б+
$і!
0         ђ
џ ј
*__inference_conv2d_27_layer_call_fn_666514`}~7б4
-б*
(і%
inputs         @
ф "!і         ђ╣
E__inference_conv2d_28_layer_call_and_return_conditional_losses_666617pќЌ8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         

ђ
џ Љ
*__inference_conv2d_28_layer_call_fn_666606cќЌ8б5
.б+
)і&
inputs         ђ
ф "!і         

ђ╣
E__inference_conv2d_29_layer_call_and_return_conditional_losses_666709p»░8б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ Љ
*__inference_conv2d_29_layer_call_fn_666698c»░8б5
.б+
)і&
inputs         ђ
ф "!і         ђд
C__inference_dense_8_layer_call_and_return_conditional_losses_666812_╬¤0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         @
џ ~
(__inference_dense_8_layer_call_fn_666801R╬¤0б-
&б#
!і
inputs         ђ
ф "і         @Ц
C__inference_dense_9_layer_call_and_return_conditional_losses_666832^оО/б,
%б"
 і
inputs         @
ф "%б"
і
0         
џ }
(__inference_dense_9_layer_call_fn_666821QоО/б,
%б"
 і
inputs         @
ф "і         Ф
E__inference_flatten_4_layer_call_and_return_conditional_losses_666792b8б5
.б+
)і&
inputs         ђ
ф "&б#
і
0         ђ
џ Ѓ
*__inference_flatten_4_layer_call_fn_666786U8б5
.б+
)і&
inputs         ђ
ф "і         ђ№
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_666321ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_24_layer_call_fn_666316ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_666413ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_25_layer_call_fn_666408ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_666505ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_26_layer_call_fn_666500ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_666597ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_27_layer_call_fn_666592ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_28_layer_call_and_return_conditional_losses_666689ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_28_layer_call_fn_666684ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    №
L__inference_max_pooling2d_29_layer_call_and_return_conditional_losses_666781ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ К
1__inference_max_pooling2d_29_layer_call_fn_666776ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    й
I__inference_random_flip_4_layer_call_and_return_conditional_losses_666872p=б:
3б0
*і'
inputs         ЯЯ
p 
ф "/б,
%і"
0         ЯЯ
џ ┴
I__inference_random_flip_4_layer_call_and_return_conditional_losses_666983tц=б:
3б0
*і'
inputs         ЯЯ
p
ф "/б,
%і"
0         ЯЯ
џ Ћ
.__inference_random_flip_4_layer_call_fn_666861c=б:
3б0
*і'
inputs         ЯЯ
p 
ф ""і         ЯЯЎ
.__inference_random_flip_4_layer_call_fn_666868gц=б:
3б0
*і'
inputs         ЯЯ
p
ф ""і         ЯЯ┴
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_666999p=б:
3б0
*і'
inputs         ЯЯ
p 
ф "/б,
%і"
0         ЯЯ
џ ┼
M__inference_random_rotation_4_layer_call_and_return_conditional_losses_667117tЦ=б:
3б0
*і'
inputs         ЯЯ
p
ф "/б,
%і"
0         ЯЯ
џ Ў
2__inference_random_rotation_4_layer_call_fn_666988c=б:
3б0
*і'
inputs         ЯЯ
p 
ф ""і         ЯЯЮ
2__inference_random_rotation_4_layer_call_fn_666995gЦ=б:
3б0
*і'
inputs         ЯЯ
p
ф ""і         ЯЯй
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_667133p=б:
3б0
*і'
inputs         ЯЯ
p 
ф "/б,
%і"
0         ЯЯ
џ ┴
I__inference_random_zoom_3_layer_call_and_return_conditional_losses_667235tд=б:
3б0
*і'
inputs         ЯЯ
p
ф "/б,
%і"
0         ЯЯ
џ Ћ
.__inference_random_zoom_3_layer_call_fn_667122c=б:
3б0
*і'
inputs         ЯЯ
p 
ф ""і         ЯЯЎ
.__inference_random_zoom_3_layer_call_fn_667129gд=б:
3б0
*і'
inputs         ЯЯ
p
ф ""і         ЯЯи
G__inference_rescaling_4_layer_call_and_return_conditional_losses_666856l9б6
/б,
*і'
inputs         ЯЯ
ф "/б,
%і"
0         ЯЯ
џ Ј
,__inference_rescaling_4_layer_call_fn_666848_9б6
/б,
*і'
inputs         ЯЯ
ф ""і         ЯЯХ
F__inference_resizing_4_layer_call_and_return_conditional_losses_666843l9б6
/б,
*і'
inputs         ЯЯ
ф "/б,
%і"
0         ЯЯ
џ ј
+__inference_resizing_4_layer_call_fn_666837_9б6
/б,
*і'
inputs         ЯЯ
ф ""і         ЯЯ╦
I__inference_sequential_12_layer_call_and_return_conditional_losses_663048~KбH
Aб>
4і1
resizing_4_input         ЯЯ
p 

 
ф "/б,
%і"
0         ЯЯ
џ ╦
I__inference_sequential_12_layer_call_and_return_conditional_losses_663054~KбH
Aб>
4і1
resizing_4_input         ЯЯ
p

 
ф "/б,
%і"
0         ЯЯ
џ ┴
I__inference_sequential_12_layer_call_and_return_conditional_losses_665876tAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф "/б,
%і"
0         ЯЯ
џ ┴
I__inference_sequential_12_layer_call_and_return_conditional_losses_665886tAб>
7б4
*і'
inputs         ЯЯ
p

 
ф "/б,
%і"
0         ЯЯ
џ Б
.__inference_sequential_12_layer_call_fn_663009qKбH
Aб>
4і1
resizing_4_input         ЯЯ
p 

 
ф ""і         ЯЯБ
.__inference_sequential_12_layer_call_fn_663042qKбH
Aб>
4і1
resizing_4_input         ЯЯ
p

 
ф ""і         ЯЯЎ
.__inference_sequential_12_layer_call_fn_665861gAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф ""і         ЯЯЎ
.__inference_sequential_12_layer_call_fn_665866gAб>
7б4
*і'
inputs         ЯЯ
p

 
ф ""і         ЯЯ¤
I__inference_sequential_13_layer_call_and_return_conditional_losses_663500ЂNбK
DбA
7і4
random_flip_4_input         ЯЯ
p 

 
ф "/б,
%і"
0         ЯЯ
џ О
I__inference_sequential_13_layer_call_and_return_conditional_losses_663513ЅцЦдNбK
DбA
7і4
random_flip_4_input         ЯЯ
p

 
ф "/б,
%і"
0         ЯЯ
џ ┴
I__inference_sequential_13_layer_call_and_return_conditional_losses_665906tAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф "/б,
%і"
0         ЯЯ
џ ╔
I__inference_sequential_13_layer_call_and_return_conditional_losses_666229|цЦдAб>
7б4
*і'
inputs         ЯЯ
p

 
ф "/б,
%і"
0         ЯЯ
џ д
.__inference_sequential_13_layer_call_fn_663083tNбK
DбA
7і4
random_flip_4_input         ЯЯ
p 

 
ф ""і         ЯЯ«
.__inference_sequential_13_layer_call_fn_663493|цЦдNбK
DбA
7і4
random_flip_4_input         ЯЯ
p

 
ф ""і         ЯЯЎ
.__inference_sequential_13_layer_call_fn_665891gAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф ""і         ЯЯА
.__inference_sequential_13_layer_call_fn_665902oцЦдAб>
7б4
*і'
inputs         ЯЯ
p

 
ф ""і         ЯЯЃ
I__inference_sequential_14_layer_call_and_return_conditional_losses_664839х<23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОNбK
DбA
7і4
sequential_12_input         ЯЯ
p 

 
ф "%б"
і
0         
џ Ѕ
I__inference_sequential_14_layer_call_and_return_conditional_losses_664952╗BцЦд23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОNбK
DбA
7і4
sequential_12_input         ЯЯ
p

 
ф "%б"
і
0         
џ Ш
I__inference_sequential_14_layer_call_and_return_conditional_losses_665292е<23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф "%б"
і
0         
џ Ч
I__inference_sequential_14_layer_call_and_return_conditional_losses_665769«BцЦд23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОAб>
7б4
*і'
inputs         ЯЯ
p

 
ф "%б"
і
0         
џ █
.__inference_sequential_14_layer_call_fn_664266е<23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОNбK
DбA
7і4
sequential_12_input         ЯЯ
p 

 
ф "і         р
.__inference_sequential_14_layer_call_fn_664732«BцЦд23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОNбK
DбA
7і4
sequential_12_input         ЯЯ
p

 
ф "і         ╬
.__inference_sequential_14_layer_call_fn_665043Џ<23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОAб>
7б4
*і'
inputs         ЯЯ
p 

 
ф "і         н
.__inference_sequential_14_layer_call_fn_665134АBцЦд23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оОAб>
7б4
*і'
inputs         ЯЯ
p

 
ф "і         щ
$__inference_signature_wrapper_665856л<23;<=>KLTUVWdemnop}~єЄѕЅќЌЪаАб»░И╣║╗╬¤оО]бZ
б 
SфP
N
sequential_12_input7і4
sequential_12_input         ЯЯ"1ф.
,
dense_9!і
dense_9         