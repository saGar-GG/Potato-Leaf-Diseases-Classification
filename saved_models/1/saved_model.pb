бП
Ў╞
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
Т
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628▀Н
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
Ж
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0
З
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_6/kernel/v
А
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	А@*
dtype0
В
Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_23/bias/v
{
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_23/kernel/v
Л
+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/v
{
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/v
Л
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/v
Л
+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/v
Л
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/v
{
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_19/kernel/v
Л
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_18/bias/v
{
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_18/kernel/v
Л
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
Ж
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0
З
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*&
shared_nameAdam/dense_6/kernel/m
А
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	А@*
dtype0
В
Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_23/bias/m
{
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_23/kernel/m
Л
+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/m
{
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/m
Л
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_21/kernel/m
Л
+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_20/kernel/m
Л
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
:@@*
dtype0
В
Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_19/bias/m
{
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_19/kernel/m
Л
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_18/bias/m
{
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_18/kernel/m
Л
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*&
_output_shapes
: *
dtype0
И
random_rotation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_namerandom_rotation/StateVar
Б
,random_rotation/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation/StateVar*
_output_shapes
:*
dtype0	
А
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
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
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	А@*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:@*
dtype0
Д
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:@*
dtype0
Д
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
Д
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
:@*
dtype0
Д
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
:@*
dtype0
Д
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
: *
dtype0
Д
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
: *
dtype0
Ч
 serving_default_sequential_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
т
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_25767

NoOpNoOp
рв
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ъв
valueПвBЛв BГв
А
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
и
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
к
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
╚
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
О
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
╚
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
╚
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*
О
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
╚
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op*
О
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
╚
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*
О
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
╚
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op*
У
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses* 
Ф
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses* 
о
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias*
о
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias*
~
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
С12
Т13
Щ14
Ъ15*
~
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
С12
Т13
Щ14
Ъ15*
* 
╡
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

аtrace_0
бtrace_1* 

вtrace_0
гtrace_1* 
* 
С
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_rate1mЎ2mў@m°Am∙Om·Pm√^m№_m¤mm■nm |mА}mБ	СmВ	ТmГ	ЩmД	ЪmЕ1vЖ2vЗ@vИAvЙOvКPvЛ^vМ_vНmvОnvП|vР}vС	СvТ	ТvУ	ЩvФ	ЪvХ*

йserving_default* 
Ф
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses* 
Ф
░	variables
▒trainable_variables
▓regularization_losses
│	keras_api
┤__call__
+╡&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
:
╗trace_0
╝trace_1
╜trace_2
╛trace_3* 
:
┐trace_0
└trace_1
┴trace_2
┬trace_3* 
о
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses
╔_random_generator*
о
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses
╨_random_generator*
* 
* 
* 
Ш
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
:
╓trace_0
╫trace_1
╪trace_2
┘trace_3* 
:
┌trace_0
█trace_1
▄trace_2
▌trace_3* 

10
21*

10
21*
* 
Ш
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

ъtrace_0* 

ыtrace_0* 

@0
A1*

@0
A1*
* 
Ш
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

ёtrace_0* 

Єtrace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

°trace_0* 

∙trace_0* 

O0
P1*

O0
P1*
* 
Ш
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

 trace_0* 

Аtrace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 

^0
_1*

^0
_1*
* 
Ш
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 

m0
n1*

m0
n1*
* 
Ш
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

Ыtrace_0* 

Ьtrace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

вtrace_0* 

гtrace_0* 

|0
}1*

|0
}1*
* 
Ш
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

йtrace_0* 

кtrace_0* 
`Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ы
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses* 

░trace_0* 

▒trace_0* 
* 
* 
* 
Ь
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses* 

╖trace_0* 

╕trace_0* 

С0
Т1*

С0
Т1*
* 
Ю
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

╛trace_0* 

┐trace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

Щ0
Ъ1*

Щ0
Ъ1*
* 
Ю
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

┼trace_0* 

╞trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
В
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
16*

╟0
╚1*
* 
* 
* 
* 
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
* 
* 
* 
* 
Ь
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses* 

╬trace_0* 

╧trace_0* 
* 
* 
* 
Ь
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
░	variables
▒trainable_variables
▓regularization_losses
┤__call__
+╡&call_and_return_all_conditional_losses
'╡"call_and_return_conditional_losses* 

╒trace_0* 

╓trace_0* 
* 

0
1* 
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
Ь
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses* 

▄trace_0
▌trace_1* 

▐trace_0
▀trace_1* 

р
_generator*
* 
* 
* 
Ь
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses* 

цtrace_0
чtrace_1* 

шtrace_0
щtrace_1* 

ъ
_generator*
* 

#0
$1*
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
ы	variables
ь	keras_api

эtotal

юcount*
M
я	variables
Ё	keras_api

ёtotal

Єcount
є
_fn_kwargs*
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

Ї
_state_var*
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
ї
_state_var*

э0
ю1*

ы	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ё0
Є1*

я	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Аz
VARIABLE_VALUErandom_flip/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUErandom_rotation/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
т
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountrandom_flip/StateVarrandom_rotation/StateVarAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vConst*H
TinA
?2=*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_26994
▌
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountrandom_flip/StateVarrandom_rotation/StateVarAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*G
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_27180┴╪
У
g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_26130

inputs
identityв
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
У
g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_26220

inputs
identityв
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
Ь
Ю
)__inference_conv2d_18_layer_call_fn_26049

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_25345y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ■■ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26045:%!

_user_specified_name26043:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_25797

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      н
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:         ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╜
K
/__inference_random_rotation_layer_call_fn_26483

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_24990e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Е
b
F__inference_random_flip_layer_call_and_return_conditional_losses_26471

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
ЖБ
├
J__inference_random_rotation_layer_call_and_return_conditional_losses_26604

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkipP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:         АV
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
¤        j
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
 *|┘а┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
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
valueB:м
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
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :В
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
:z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: О
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*
_output_shapes
:w
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*
_output_shapes
:Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: U
rotation_matrix/CosCosstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: s
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*
_output_shapes
:U
rotation_matrix/SinSinstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: u
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*
_output_shapes
:u
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*
_output_shapes
:u
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*
_output_shapes
:^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ж
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*
_output_shapes
:\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: W
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: w
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*
_output_shapes
:W
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: w
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*
_output_shapes
:w
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*
_output_shapes
:u
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*
_output_shapes
:`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @К
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*
_output_shapes
:_
rotation_matrix/ShapeConst*
_output_shapes
:*
dtype0*
valueB:m
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
valueB:б
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskW
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskm
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*
_output_shapes

:v
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
valueB"      ═
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskW
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskW
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

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
valueB"      ╧
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
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
 *    У
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*
_output_shapes

:]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Е
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*
_output_shapes

:`
transform/ShapeShapeExpandDims:output:0*
T0*
_output_shapes
::э╧g
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
valueB:я
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
 *    ╡
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3ExpandDims:output:0rotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*8
_output_shapes&
$:"                  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARЫ
SqueezeSqueeze9transform/ImageProjectiveTransformV3:transformed_images:0*
T0*,
_output_shapes
:         А*
squeeze_dims
 d
IdentityIdentitySqueeze:output:0^NoOp*
T0*,
_output_shapes
:         АD
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         А: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Я
D
(__inference_resizing_layer_call_fn_26276

inputs
identityл
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_24653]
IdentityIdentityPartitionedCall:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Х
c
G__inference_sequential_1_layer_call_and_return_conditional_losses_25494

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_22_layer_call_fn_26185

inputs
identity┘
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
GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_25076Г
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
й
└
+stateless_random_flip_left_right_true_26378b
^stateless_random_flip_left_right_reversev2_stateless_random_flip_left_right_control_dependency-
)stateless_random_flip_left_right_identityy
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:И
*stateless_random_flip_left_right/ReverseV2	ReverseV2^stateless_random_flip_left_right_reversev2_stateless_random_flip_left_right_control_dependency8stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*,
_output_shapes
:         Аб
)stateless_random_flip_left_right/IdentityIdentity3stateless_random_flip_left_right/ReverseV2:output:0*
T0*,
_output_shapes
:         А"_
)stateless_random_flip_left_right_identity2stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:Б }
,
_output_shapes
:         А
M
_user_specified_name53stateless_random_flip_left_right/control_dependency
└
¤
D__inference_conv2d_18_layer_call_and_return_conditional_losses_25345

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
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
:         ■■ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╗
N
*__inference_sequential_layer_call_fn_24676
resizing_input
identity╡
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24665]
IdentityIdentityPartitionedCall:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:\ X
,
_output_shapes
:         А
(
_user_specified_nameresizing_input
═

Ї
B__inference_dense_6_layer_call_and_return_conditional_losses_26251

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
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
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ы╩
Э
G__inference_sequential_1_layer_call_and_return_conditional_losses_26036

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identityИв4random_flip/stateful_uniform_full_int/RngReadAndSkipв6random_flip/stateful_uniform_full_int_1/RngReadAndSkipв/random_rotation/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┐
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: К
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Г
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskз
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:л
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :═
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ь
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      │
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskк
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         АА╕
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::э╧К
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▓
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╞
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╚
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::д
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :║
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Щ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ╢
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Я
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         ~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :К
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Й
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         ┤
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         Е
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:П
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААь
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААw
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ц
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ї
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ААу
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААw
-random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┼
,random_flip/stateful_uniform_full_int_1/ProdProd6random_flip/stateful_uniform_full_int_1/shape:output:06random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: p
.random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Э
.random_flip/stateful_uniform_full_int_1/Cast_1Cast5random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╟
6random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource7random_flip/stateful_uniform_full_int_1/Cast/x:output:02random_flip/stateful_uniform_full_int_1/Cast_1:y:05^random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Е
;random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
5random_flip/stateful_uniform_full_int_1/strided_sliceStridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskл
/random_flip/stateful_uniform_full_int_1/BitcastBitcast>random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0З
=random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
7random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:п
1random_flip/stateful_uniform_full_int_1/Bitcast_1Bitcast@random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :╫
'random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV26random_flip/stateful_uniform_full_int_1/shape:output:0:random_flip/stateful_uniform_full_int_1/Bitcast_1:output:08random_flip/stateful_uniform_full_int_1/Bitcast:output:04random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R в
random_flip/stack_1Pack0random_flip/stateful_uniform_full_int_1:output:0!random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:r
!random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
random_flip/strided_slice_1StridedSlicerandom_flip/stack_1:output:0*random_flip/strided_slice_1/stack:output:0,random_flip/strided_slice_1/stack_1:output:0,random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask 
<random_flip/stateless_random_flip_up_down/control_dependencyIdentity4random_flip/stateless_random_flip_left_right/add:z:0*
T0*C
_class9
75loc:@random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:         АА▓
/random_flip/stateless_random_flip_up_down/ShapeShapeErandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::э╧З
=random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
7random_flip/stateless_random_flip_up_down/strided_sliceStridedSlice8random_flip/stateless_random_flip_up_down/Shape:output:0Frandom_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask└
Hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╟
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip/strided_slice_1:output:0* 
_output_shapes
::б
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :л
[random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Qrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0erandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0irandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Р
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/subSubOrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: н
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMuldrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Ц
Brandom_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         {
9random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :√
7random_flip/stateless_random_flip_up_down/Reshape/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:А
1random_flip/stateless_random_flip_up_down/ReshapeReshapeFrandom_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0@random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         о
/random_flip/stateless_random_flip_up_down/RoundRound:random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         В
8random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ж
3random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0Arandom_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААу
-random_flip/stateless_random_flip_up_down/mulMul3random_flip/stateless_random_flip_up_down/Round:y:0<random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААt
/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▌
-random_flip/stateless_random_flip_up_down/subSub8random_flip/stateless_random_flip_up_down/sub/x:output:03random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ь
/random_flip/stateless_random_flip_up_down/mul_1Mul1random_flip/stateless_random_flip_up_down/sub:z:0Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         АА┌
-random_flip/stateless_random_flip_up_down/addAddV21random_flip/stateless_random_flip_up_down/mul:z:03random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ААД
random_rotation/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::э╧m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐i
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ░
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :П
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ў
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЭ
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0А
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:б
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :█
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         к
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: ╟
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         ░
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: м
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: о
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         о
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         о
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @┐
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: А
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ░
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         А
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ░
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         ░
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         о
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @├
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         З
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::э╧}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskА
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЦ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ж
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЖ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :╙
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╠
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ю
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         О
random_rotation/transform/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::э╧w
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    М
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV31random_flip/stateless_random_flip_up_down/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARв
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         АА─
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip7^random_flip/stateful_uniform_full_int_1/RngReadAndSkip0^random_rotation/stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2p
6random_flip/stateful_uniform_full_int_1/RngReadAndSkip6random_flip/stateful_uniform_full_int_1/RngReadAndSkip2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
■
┤
(stateless_random_flip_up_down_true_26454\
Xstateless_random_flip_up_down_reversev2_stateless_random_flip_up_down_control_dependency*
&stateless_random_flip_up_down_identityv
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: №
'stateless_random_flip_up_down/ReverseV2	ReverseV2Xstateless_random_flip_up_down_reversev2_stateless_random_flip_up_down_control_dependency5stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*,
_output_shapes
:         АЫ
&stateless_random_flip_up_down/IdentityIdentity0stateless_random_flip_up_down/ReverseV2:output:0*
T0*,
_output_shapes
:         А"Y
&stateless_random_flip_up_down_identity/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:~ z
,
_output_shapes
:         А
J
_user_specified_name20stateless_random_flip_up_down/control_dependency
ЖБ
├
J__inference_random_rotation_layer_call_and_return_conditional_losses_24974

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkipP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : t

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*0
_output_shapes
:         АV
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
¤        j
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
 *|┘а┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
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
valueB:м
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
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :В
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
:z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: О
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*
_output_shapes
:w
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*
_output_shapes
:Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: U
rotation_matrix/CosCosstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: s
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*
_output_shapes
:U
rotation_matrix/SinSinstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: u
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*
_output_shapes
:u
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*
_output_shapes
:u
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*
_output_shapes
:^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ж
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*
_output_shapes
:\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: W
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: w
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*
_output_shapes
:W
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*
_output_shapes
:\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: w
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*
_output_shapes
:w
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*
_output_shapes
:u
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*
_output_shapes
:`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @К
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*
_output_shapes
:_
rotation_matrix/ShapeConst*
_output_shapes
:*
dtype0*
valueB:m
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
valueB:б
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskW
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskm
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*
_output_shapes

:v
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
valueB"      ═
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskW
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskW
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*
_output_shapes
:v
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
valueB"      ╦
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

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
valueB"      ╧
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
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
 *    У
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*
_output_shapes

:]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Е
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*
_output_shapes

:`
transform/ShapeShapeExpandDims:output:0*
T0*
_output_shapes
::э╧g
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
valueB:я
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
 *    ╡
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3ExpandDims:output:0rotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*8
_output_shapes&
$:"                  *
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARЫ
SqueezeSqueeze9transform/ImageProjectiveTransformV3:transformed_images:0*
T0*,
_output_shapes
:         А*
squeeze_dims
 d
IdentityIdentitySqueeze:output:0^NoOp*
T0*,
_output_shapes
:         АD
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         А: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
·
_
C__inference_resizing_layer_call_and_return_conditional_losses_24653

inputs
identityW
resize/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : В
resize/ExpandDims
ExpandDimsinputsresize/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ж
resize/ResizeBilinearResizeBilinearresize/ExpandDims:output:0resize/size:output:0*
T0*(
_output_shapes
:АА*
half_pixel_centers(З
resize/SqueezeSqueeze&resize/ResizeBilinear:resized_images:0*
T0*$
_output_shapes
:АА*
squeeze_dims
 \
IdentityIdentityresize/Squeeze:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
■
┤
(stateless_random_flip_up_down_true_24837\
Xstateless_random_flip_up_down_reversev2_stateless_random_flip_up_down_control_dependency*
&stateless_random_flip_up_down_identityv
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: №
'stateless_random_flip_up_down/ReverseV2	ReverseV2Xstateless_random_flip_up_down_reversev2_stateless_random_flip_up_down_control_dependency5stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*,
_output_shapes
:         АЫ
&stateless_random_flip_up_down/IdentityIdentity0stateless_random_flip_up_down/ReverseV2:output:0*
T0*,
_output_shapes
:         А"Y
&stateless_random_flip_up_down_identity/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:~ z
,
_output_shapes
:         А
J
_user_specified_name20stateless_random_flip_up_down/control_dependency
╬

є
B__inference_dense_7_layer_call_and_return_conditional_losses_26271

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ф
Ю
)__inference_conv2d_21_layer_call_fn_26139

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_25396w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26135:%!

_user_specified_name26133:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
вЦ
Ї$
!__inference__traced_restore_27180
file_prefix;
!assignvariableop_conv2d_18_kernel: /
!assignvariableop_1_conv2d_18_bias: =
#assignvariableop_2_conv2d_19_kernel: @/
!assignvariableop_3_conv2d_19_bias:@=
#assignvariableop_4_conv2d_20_kernel:@@/
!assignvariableop_5_conv2d_20_bias:@=
#assignvariableop_6_conv2d_21_kernel:@@/
!assignvariableop_7_conv2d_21_bias:@=
#assignvariableop_8_conv2d_22_kernel:@@/
!assignvariableop_9_conv2d_22_bias:@>
$assignvariableop_10_conv2d_23_kernel:@@0
"assignvariableop_11_conv2d_23_bias:@5
"assignvariableop_12_dense_6_kernel:	А@.
 assignvariableop_13_dense_6_bias:@4
"assignvariableop_14_dense_7_kernel:@.
 assignvariableop_15_dense_7_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: 6
(assignvariableop_25_random_flip_statevar:	:
,assignvariableop_26_random_rotation_statevar:	E
+assignvariableop_27_adam_conv2d_18_kernel_m: 7
)assignvariableop_28_adam_conv2d_18_bias_m: E
+assignvariableop_29_adam_conv2d_19_kernel_m: @7
)assignvariableop_30_adam_conv2d_19_bias_m:@E
+assignvariableop_31_adam_conv2d_20_kernel_m:@@7
)assignvariableop_32_adam_conv2d_20_bias_m:@E
+assignvariableop_33_adam_conv2d_21_kernel_m:@@7
)assignvariableop_34_adam_conv2d_21_bias_m:@E
+assignvariableop_35_adam_conv2d_22_kernel_m:@@7
)assignvariableop_36_adam_conv2d_22_bias_m:@E
+assignvariableop_37_adam_conv2d_23_kernel_m:@@7
)assignvariableop_38_adam_conv2d_23_bias_m:@<
)assignvariableop_39_adam_dense_6_kernel_m:	А@5
'assignvariableop_40_adam_dense_6_bias_m:@;
)assignvariableop_41_adam_dense_7_kernel_m:@5
'assignvariableop_42_adam_dense_7_bias_m:E
+assignvariableop_43_adam_conv2d_18_kernel_v: 7
)assignvariableop_44_adam_conv2d_18_bias_v: E
+assignvariableop_45_adam_conv2d_19_kernel_v: @7
)assignvariableop_46_adam_conv2d_19_bias_v:@E
+assignvariableop_47_adam_conv2d_20_kernel_v:@@7
)assignvariableop_48_adam_conv2d_20_bias_v:@E
+assignvariableop_49_adam_conv2d_21_kernel_v:@@7
)assignvariableop_50_adam_conv2d_21_bias_v:@E
+assignvariableop_51_adam_conv2d_22_kernel_v:@@7
)assignvariableop_52_adam_conv2d_22_bias_v:@E
+assignvariableop_53_adam_conv2d_23_kernel_v:@@7
)assignvariableop_54_adam_conv2d_23_bias_v:@<
)assignvariableop_55_adam_dense_6_kernel_v:	А@5
'assignvariableop_56_adam_dense_6_bias_v:@;
)assignvariableop_57_adam_dense_7_kernel_v:@5
'assignvariableop_58_adam_dense_7_bias_v:
identity_60ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9┬!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*ш 
value▐ B█ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHы
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Н
valueГBА<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ═
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesє
Ё::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_19_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_19_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_20_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_20_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_21_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_21_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_22_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_22_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_23_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_23_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_7_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_7_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:┴
AssignVariableOp_25AssignVariableOp(assignvariableop_25_random_flip_statevarIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:┼
AssignVariableOp_26AssignVariableOp,assignvariableop_26_random_rotation_statevarIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_18_kernel_mIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_18_bias_mIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_19_kernel_mIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_19_bias_mIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_20_kernel_mIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_20_bias_mIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_21_kernel_mIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_21_bias_mIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_22_kernel_mIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_22_bias_mIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_23_kernel_mIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_23_bias_mIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_6_kernel_mIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_6_bias_mIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_7_kernel_mIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_7_bias_mIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_18_kernel_vIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_18_bias_vIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_19_kernel_vIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_19_bias_vIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_20_kernel_vIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_20_bias_vIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_21_kernel_vIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_21_bias_vIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_22_kernel_vIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_22_bias_vIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_23_kernel_vIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_23_bias_vIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_6_kernel_vIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_6_bias_vIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_7_kernel_vIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_7_bias_vIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 с

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: к

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_60Identity_60:output:0*(
_construction_contextkEagerRuntime*Л
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:3;/
-
_user_specified_nameAdam/dense_7/bias/v:5:1
/
_user_specified_nameAdam/dense_7/kernel/v:39/
-
_user_specified_nameAdam/dense_6/bias/v:581
/
_user_specified_nameAdam/dense_6/kernel/v:571
/
_user_specified_nameAdam/conv2d_23/bias/v:763
1
_user_specified_nameAdam/conv2d_23/kernel/v:551
/
_user_specified_nameAdam/conv2d_22/bias/v:743
1
_user_specified_nameAdam/conv2d_22/kernel/v:531
/
_user_specified_nameAdam/conv2d_21/bias/v:723
1
_user_specified_nameAdam/conv2d_21/kernel/v:511
/
_user_specified_nameAdam/conv2d_20/bias/v:703
1
_user_specified_nameAdam/conv2d_20/kernel/v:5/1
/
_user_specified_nameAdam/conv2d_19/bias/v:7.3
1
_user_specified_nameAdam/conv2d_19/kernel/v:5-1
/
_user_specified_nameAdam/conv2d_18/bias/v:7,3
1
_user_specified_nameAdam/conv2d_18/kernel/v:3+/
-
_user_specified_nameAdam/dense_7/bias/m:5*1
/
_user_specified_nameAdam/dense_7/kernel/m:3)/
-
_user_specified_nameAdam/dense_6/bias/m:5(1
/
_user_specified_nameAdam/dense_6/kernel/m:5'1
/
_user_specified_nameAdam/conv2d_23/bias/m:7&3
1
_user_specified_nameAdam/conv2d_23/kernel/m:5%1
/
_user_specified_nameAdam/conv2d_22/bias/m:7$3
1
_user_specified_nameAdam/conv2d_22/kernel/m:5#1
/
_user_specified_nameAdam/conv2d_21/bias/m:7"3
1
_user_specified_nameAdam/conv2d_21/kernel/m:5!1
/
_user_specified_nameAdam/conv2d_20/bias/m:7 3
1
_user_specified_nameAdam/conv2d_20/kernel/m:51
/
_user_specified_nameAdam/conv2d_19/bias/m:73
1
_user_specified_nameAdam/conv2d_19/kernel/m:51
/
_user_specified_nameAdam/conv2d_18/bias/m:73
1
_user_specified_nameAdam/conv2d_18/kernel/m:84
2
_user_specified_namerandom_rotation/StateVar:40
.
_user_specified_namerandom_flip/StateVar:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_7/bias:.*
(
_user_specified_namedense_7/kernel:,(
&
_user_specified_namedense_6/bias:.*
(
_user_specified_namedense_6/kernel:.*
(
_user_specified_nameconv2d_23/bias:0,
*
_user_specified_nameconv2d_23/kernel:.
*
(
_user_specified_nameconv2d_22/bias:0	,
*
_user_specified_nameconv2d_22/kernel:.*
(
_user_specified_nameconv2d_21/bias:0,
*
_user_specified_nameconv2d_21/kernel:.*
(
_user_specified_nameconv2d_20/bias:0,
*
_user_specified_nameconv2d_20/kernel:.*
(
_user_specified_nameconv2d_19/bias:0,
*
_user_specified_nameconv2d_19/kernel:.*
(
_user_specified_nameconv2d_18/bias:0,
*
_user_specified_nameconv2d_18/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
У
g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_25086

inputs
identityв
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
═┌
Ю
F__inference_random_flip_layer_call_and_return_conditional_losses_26467

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИв(stateful_uniform_full_int/RngReadAndSkipв*stateful_uniform_full_int_1/RngReadAndSkipвCstateless_random_flip_left_right/assert_greater_equal/Assert/AssertвJstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assertв@stateless_random_flip_up_down/assert_greater_equal/Assert/AssertвGstateless_random_flip_up_down/assert_positive/assert_less/Assert/Asserti
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
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

begin_maskП
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
valueB:╧
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
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
valueB"      ў
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskj
&stateless_random_flip_left_right/ShapeShapeinputs*
T0*
_output_shapes
::э╧З
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskx
6stateless_random_flip_left_right/assert_positive/ConstConst*
_output_shapes
: *
dtype0*
value	B : ш
Astateless_random_flip_left_right/assert_positive/assert_less/LessLess?stateless_random_flip_left_right/assert_positive/Const:output:07stateless_random_flip_left_right/strided_slice:output:0*
T0*
_output_shapes
:М
Bstateless_random_flip_left_right/assert_positive/assert_less/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
@stateless_random_flip_left_right/assert_positive/assert_less/AllAllEstateless_random_flip_left_right/assert_positive/assert_less/Less:z:0Kstateless_random_flip_left_right/assert_positive/assert_less/Const:output:0*
_output_shapes
: ┤
Istateless_random_flip_left_right/assert_positive/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.╝
Qstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.┼
Jstateless_random_flip_left_right/assert_positive/assert_less/Assert/AssertAssertIstateless_random_flip_left_right/assert_positive/assert_less/All:output:0Zstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 g
%stateless_random_flip_left_right/RankConst*
_output_shapes
: *
dtype0*
value	B :y
7stateless_random_flip_left_right/assert_greater_equal/yConst*
_output_shapes
: *
dtype0*
value	B :х
Bstateless_random_flip_left_right/assert_greater_equal/GreaterEqualGreaterEqual.stateless_random_flip_left_right/Rank:output:0@stateless_random_flip_left_right/assert_greater_equal/y:output:0*
T0*
_output_shapes
: |
:stateless_random_flip_left_right/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : Г
Astateless_random_flip_left_right/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : Г
Astateless_random_flip_left_right/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :╗
;stateless_random_flip_left_right/assert_greater_equal/rangeRangeJstateless_random_flip_left_right/assert_greater_equal/range/start:output:0Cstateless_random_flip_left_right/assert_greater_equal/Rank:output:0Jstateless_random_flip_left_right/assert_greater_equal/range/delta:output:0*
_output_shapes
: ц
9stateless_random_flip_left_right/assert_greater_equal/AllAllFstateless_random_flip_left_right/assert_greater_equal/GreaterEqual:z:0Dstateless_random_flip_left_right/assert_greater_equal/range:output:0*
_output_shapes
: о
Bstateless_random_flip_left_right/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.░
Dstateless_random_flip_left_right/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:│
Dstateless_random_flip_left_right/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (stateless_random_flip_left_right/Rank:0) = ┼
Dstateless_random_flip_left_right/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*Q
valueHBF B@y (stateless_random_flip_left_right/assert_greater_equal/y:0) = ╢
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.╢
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:╣
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (stateless_random_flip_left_right/Rank:0) = ╦
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_4Const*
_output_shapes
: *
dtype0*Q
valueHBF B@y (stateless_random_flip_left_right/assert_greater_equal/y:0) = є
Cstateless_random_flip_left_right/assert_greater_equal/Assert/AssertAssertBstateless_random_flip_left_right/assert_greater_equal/All:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_0:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_1:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_2:output:0.stateless_random_flip_left_right/Rank:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_4:output:0@stateless_random_flip_left_right/assert_greater_equal/y:output:0K^stateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T

2*&
 _has_manual_control_dependencies(*
_output_shapes
 м
3stateless_random_flip_left_right/control_dependencyIdentityinputsD^stateless_random_flip_left_right/assert_greater_equal/Assert/AssertK^stateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T0*
_class
loc:@inputs*,
_output_shapes
:         АВ
?stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ё
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ї
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Е
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ю
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: l
'stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?┐
%stateless_random_flip_left_right/LessLess=stateless_random_flip_left_right/stateless_random_uniform:z:00stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: с
 stateless_random_flip_left_rightStatelessIf)stateless_random_flip_left_right/Less:z:0<stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*,
_output_shapes
:         А* 
_read_only_resource_inputs
 *?
else_branch0R.
,stateless_random_flip_left_right_false_26379*+
output_shapes
:         А*>
then_branch/R-
+stateless_random_flip_left_right_true_26378Ч
)stateless_random_flip_left_right/IdentityIdentity)stateless_random_flip_left_right:output:0*
T0*,
_output_shapes
:         Аk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
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
valueB:у
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
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
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
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
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskУ
#stateless_random_flip_up_down/ShapeShape2stateless_random_flip_left_right/Identity:output:0*
T0*
_output_shapes
::э╧Д
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_masku
3stateless_random_flip_up_down/assert_positive/ConstConst*
_output_shapes
: *
dtype0*
value	B : ▀
>stateless_random_flip_up_down/assert_positive/assert_less/LessLess<stateless_random_flip_up_down/assert_positive/Const:output:04stateless_random_flip_up_down/strided_slice:output:0*
T0*
_output_shapes
:Й
?stateless_random_flip_up_down/assert_positive/assert_less/ConstConst*
_output_shapes
:*
dtype0*
valueB: ъ
=stateless_random_flip_up_down/assert_positive/assert_less/AllAllBstateless_random_flip_up_down/assert_positive/assert_less/Less:z:0Hstateless_random_flip_up_down/assert_positive/assert_less/Const:output:0*
_output_shapes
: ▒
Fstateless_random_flip_up_down/assert_positive/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.╣
Nstateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.В
Gstateless_random_flip_up_down/assert_positive/assert_less/Assert/AssertAssertFstateless_random_flip_up_down/assert_positive/assert_less/All:output:0Wstateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert/data_0:output:0D^stateless_random_flip_left_right/assert_greater_equal/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 d
"stateless_random_flip_up_down/RankConst*
_output_shapes
: *
dtype0*
value	B :v
4stateless_random_flip_up_down/assert_greater_equal/yConst*
_output_shapes
: *
dtype0*
value	B :▄
?stateless_random_flip_up_down/assert_greater_equal/GreaterEqualGreaterEqual+stateless_random_flip_up_down/Rank:output:0=stateless_random_flip_up_down/assert_greater_equal/y:output:0*
T0*
_output_shapes
: y
7stateless_random_flip_up_down/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : А
>stateless_random_flip_up_down/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : А
>stateless_random_flip_up_down/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :п
8stateless_random_flip_up_down/assert_greater_equal/rangeRangeGstateless_random_flip_up_down/assert_greater_equal/range/start:output:0@stateless_random_flip_up_down/assert_greater_equal/Rank:output:0Gstateless_random_flip_up_down/assert_greater_equal/range/delta:output:0*
_output_shapes
: ▌
6stateless_random_flip_up_down/assert_greater_equal/AllAllCstateless_random_flip_up_down/assert_greater_equal/GreaterEqual:z:0Astateless_random_flip_up_down/assert_greater_equal/range:output:0*
_output_shapes
: л
?stateless_random_flip_up_down/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.н
Astateless_random_flip_up_down/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:н
Astateless_random_flip_up_down/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+x (stateless_random_flip_up_down/Rank:0) = ┐
Astateless_random_flip_up_down/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*N
valueEBC B=y (stateless_random_flip_up_down/assert_greater_equal/y:0) = │
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.│
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:│
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+x (stateless_random_flip_up_down/Rank:0) = ┼
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_4Const*
_output_shapes
: *
dtype0*N
valueEBC B=y (stateless_random_flip_up_down/assert_greater_equal/y:0) = ╪
@stateless_random_flip_up_down/assert_greater_equal/Assert/AssertAssert?stateless_random_flip_up_down/assert_greater_equal/All:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_0:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_1:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_2:output:0+stateless_random_flip_up_down/Rank:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_4:output:0=stateless_random_flip_up_down/assert_greater_equal/y:output:0H^stateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert*
T

2*&
 _has_manual_control_dependencies(*
_output_shapes
 Є
0stateless_random_flip_up_down/control_dependencyIdentity2stateless_random_flip_left_right/Identity:output:0A^stateless_random_flip_up_down/assert_greater_equal/Assert/AssertH^stateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert*
T0*<
_class2
0.loc:@stateless_random_flip_left_right/Identity*,
_output_shapes
:         А
<stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
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
 *  А?п
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :т
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ь
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: №
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: х
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: i
$stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╢
"stateless_random_flip_up_down/LessLess:stateless_random_flip_up_down/stateless_random_uniform:z:0-stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ╥
stateless_random_flip_up_downStatelessIf&stateless_random_flip_up_down/Less:z:09stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*,
_output_shapes
:         А* 
_read_only_resource_inputs
 *<
else_branch-R+
)stateless_random_flip_up_down_false_26455*+
output_shapes
:         А*;
then_branch,R*
(stateless_random_flip_up_down_true_26454С
&stateless_random_flip_up_down/IdentityIdentity&stateless_random_flip_up_down:output:0*
T0*,
_output_shapes
:         АГ
IdentityIdentity/stateless_random_flip_up_down/Identity:output:0^NoOp*
T0*,
_output_shapes
:         АЪ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkipD^stateless_random_flip_left_right/assert_greater_equal/Assert/AssertK^stateless_random_flip_left_right/assert_positive/assert_less/Assert/AssertA^stateless_random_flip_up_down/assert_greater_equal/Assert/AssertH^stateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         А: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip2К
Cstateless_random_flip_left_right/assert_greater_equal/Assert/AssertCstateless_random_flip_left_right/assert_greater_equal/Assert/Assert2Ш
Jstateless_random_flip_left_right/assert_positive/assert_less/Assert/AssertJstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert2Д
@stateless_random_flip_up_down/assert_greater_equal/Assert/Assert@stateless_random_flip_up_down/assert_greater_equal/Assert/Assert2Т
Gstateless_random_flip_up_down/assert_positive/assert_less/Assert/AssertGstateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
╬

є
B__inference_dense_7_layer_call_and_return_conditional_losses_25470

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
┤
¤
D__inference_conv2d_22_layer_call_and_return_conditional_losses_25413

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┤
¤
D__inference_conv2d_22_layer_call_and_return_conditional_losses_26180

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╪
S
,__inference_sequential_1_layer_call_fn_25007
random_flip_input
identity┬
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_24993e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:_ [
,
_output_shapes
:         А
+
_user_specified_namerandom_flip_input
У
g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_25046

inputs
identityв
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
╗
i
E__inference_sequential_layer_call_and_return_conditional_losses_24665
resizing_input
identity╝
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_24653╤
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_24662g
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:\ X
,
_output_shapes
:         А
(
_user_specified_nameresizing_input
┤
¤
D__inference_conv2d_19_layer_call_and_return_conditional_losses_25362

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
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
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Х
c
G__inference_sequential_1_layer_call_and_return_conditional_losses_26040

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┤
¤
D__inference_conv2d_20_layer_call_and_return_conditional_losses_25379

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
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
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
╫I
┼
G__inference_sequential_5_layer_call_and_return_conditional_losses_25544
sequential_input)
conv2d_18_25496: 
conv2d_18_25498: )
conv2d_19_25502: @
conv2d_19_25504:@)
conv2d_20_25508:@@
conv2d_20_25510:@)
conv2d_21_25514:@@
conv2d_21_25516:@)
conv2d_22_25520:@@
conv2d_22_25522:@)
conv2d_23_25526:@@
conv2d_23_25528:@ 
dense_6_25533:	А@
dense_6_25535:@
dense_7_25538:@
dense_7_25540:
identityИв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCall╧
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25489ц
sequential_1/PartitionedCallPartitionedCall#sequential/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_25494Ъ
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_18_25496conv2d_18_25498*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_25345є
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_25036Ь
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_25502conv2d_19_25504*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_25362є
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_25046Ь
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_25508conv2d_20_25510*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_25379є
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_25056Ь
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_25514conv2d_21_25516*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_25396є
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_25066Ь
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_25520conv2d_22_25522*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_25413є
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_25076Ь
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_25526conv2d_23_25528*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_25430є
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_25086▌
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_25442Е
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_25533dense_6_25535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_25454Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_25538dense_7_25540*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_25470w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╛
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:%!

_user_specified_name25540:%!

_user_specified_name25538:%!

_user_specified_name25535:%!

_user_specified_name25533:%!

_user_specified_name25528:%!

_user_specified_name25526:%
!

_user_specified_name25522:%	!

_user_specified_name25520:%!

_user_specified_name25516:%!

_user_specified_name25514:%!

_user_specified_name25510:%!

_user_specified_name25508:%!

_user_specified_name25504:%!

_user_specified_name25502:%!

_user_specified_name25498:%!

_user_specified_name25496:c _
1
_output_shapes
:         АА
*
_user_specified_namesequential_input
═
└
,stateless_random_flip_left_right_false_26379a
]stateless_random_flip_left_right_identity_stateless_random_flip_left_right_control_dependency-
)stateless_random_flip_left_right_identity╦
)stateless_random_flip_left_right/IdentityIdentity]stateless_random_flip_left_right_identity_stateless_random_flip_left_right_control_dependency*
T0*,
_output_shapes
:         А"_
)stateless_random_flip_left_right_identity2stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:Б }
,
_output_shapes
:         А
M
_user_specified_name53stateless_random_flip_left_right/control_dependency
о
┤
)stateless_random_flip_up_down_false_24838[
Wstateless_random_flip_up_down_identity_stateless_random_flip_up_down_control_dependency*
&stateless_random_flip_up_down_identity┬
&stateless_random_flip_up_down/IdentityIdentityWstateless_random_flip_up_down_identity_stateless_random_flip_up_down_control_dependency*
T0*,
_output_shapes
:         А"Y
&stateless_random_flip_up_down_identity/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:~ z
,
_output_shapes
:         А
J
_user_specified_name20stateless_random_flip_up_down/control_dependency
Ф
Ю
)__inference_conv2d_22_layer_call_fn_26169

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_25413w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26165:%!

_user_specified_name26163:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
п
E
)__inference_flatten_3_layer_call_fn_26225

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_25442a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Тu
┌
 __inference__wrapped_model_24642
sequential_inputO
5sequential_5_conv2d_18_conv2d_readvariableop_resource: D
6sequential_5_conv2d_18_biasadd_readvariableop_resource: O
5sequential_5_conv2d_19_conv2d_readvariableop_resource: @D
6sequential_5_conv2d_19_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_20_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_20_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_21_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_21_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_22_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_22_biasadd_readvariableop_resource:@O
5sequential_5_conv2d_23_conv2d_readvariableop_resource:@@D
6sequential_5_conv2d_23_biasadd_readvariableop_resource:@F
3sequential_5_dense_6_matmul_readvariableop_resource:	А@B
4sequential_5_dense_6_biasadd_readvariableop_resource:@E
3sequential_5_dense_7_matmul_readvariableop_resource:@B
4sequential_5_dense_7_biasadd_readvariableop_resource:
identityИв-sequential_5/conv2d_18/BiasAdd/ReadVariableOpв,sequential_5/conv2d_18/Conv2D/ReadVariableOpв-sequential_5/conv2d_19/BiasAdd/ReadVariableOpв,sequential_5/conv2d_19/Conv2D/ReadVariableOpв-sequential_5/conv2d_20/BiasAdd/ReadVariableOpв,sequential_5/conv2d_20/Conv2D/ReadVariableOpв-sequential_5/conv2d_21/BiasAdd/ReadVariableOpв,sequential_5/conv2d_21/Conv2D/ReadVariableOpв-sequential_5/conv2d_22/BiasAdd/ReadVariableOpв,sequential_5/conv2d_22/Conv2D/ReadVariableOpв-sequential_5/conv2d_23/BiasAdd/ReadVariableOpв,sequential_5/conv2d_23/Conv2D/ReadVariableOpв+sequential_5/dense_6/BiasAdd/ReadVariableOpв*sequential_5/dense_6/MatMul/ReadVariableOpв+sequential_5/dense_7/BiasAdd/ReadVariableOpв*sequential_5/dense_7/MatMul/ReadVariableOp}
,sequential_5/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ч
6sequential_5/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input5sequential_5/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(m
(sequential_5/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;o
*sequential_5/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ф
%sequential_5/sequential/rescaling/mulMulGsequential_5/sequential/resizing/resize/ResizeBilinear:resized_images:01sequential_5/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:         АА╩
%sequential_5/sequential/rescaling/addAddV2)sequential_5/sequential/rescaling/mul:z:03sequential_5/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААк
,sequential_5/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0э
sequential_5/conv2d_18/Conv2DConv2D)sequential_5/sequential/rescaling/add:z:04sequential_5/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
а
-sequential_5/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0─
sequential_5/conv2d_18/BiasAddBiasAdd&sequential_5/conv2d_18/Conv2D:output:05sequential_5/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ И
sequential_5/conv2d_18/ReluRelu'sequential_5/conv2d_18/BiasAdd:output:0*
T0*1
_output_shapes
:         ■■ ╚
%sequential_5/max_pooling2d_18/MaxPoolMaxPool)sequential_5/conv2d_18/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
к
,sequential_5/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ё
sequential_5/conv2d_19/Conv2DConv2D.sequential_5/max_pooling2d_18/MaxPool:output:04sequential_5/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
а
-sequential_5/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_5/conv2d_19/BiasAddBiasAdd&sequential_5/conv2d_19/Conv2D:output:05sequential_5/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@Ж
sequential_5/conv2d_19/ReluRelu'sequential_5/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:         }}@╚
%sequential_5/max_pooling2d_19/MaxPoolMaxPool)sequential_5/conv2d_19/Relu:activations:0*/
_output_shapes
:         >>@*
ksize
*
paddingVALID*
strides
к
,sequential_5/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_5/conv2d_20/Conv2DConv2D.sequential_5/max_pooling2d_19/MaxPool:output:04sequential_5/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
а
-sequential_5/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_5/conv2d_20/BiasAddBiasAdd&sequential_5/conv2d_20/Conv2D:output:05sequential_5/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@Ж
sequential_5/conv2d_20/ReluRelu'sequential_5/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@╚
%sequential_5/max_pooling2d_20/MaxPoolMaxPool)sequential_5/conv2d_20/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_5/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_5/conv2d_21/Conv2DConv2D.sequential_5/max_pooling2d_20/MaxPool:output:04sequential_5/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_5/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_5/conv2d_21/BiasAddBiasAdd&sequential_5/conv2d_21/Conv2D:output:05sequential_5/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_5/conv2d_21/ReluRelu'sequential_5/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_5/max_pooling2d_21/MaxPoolMaxPool)sequential_5/conv2d_21/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_5/conv2d_22/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_5/conv2d_22/Conv2DConv2D.sequential_5/max_pooling2d_21/MaxPool:output:04sequential_5/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_5/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_5/conv2d_22/BiasAddBiasAdd&sequential_5/conv2d_22/Conv2D:output:05sequential_5/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_5/conv2d_22/ReluRelu'sequential_5/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_5/max_pooling2d_22/MaxPoolMaxPool)sequential_5/conv2d_22/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_5/conv2d_23/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_5/conv2d_23/Conv2DConv2D.sequential_5/max_pooling2d_22/MaxPool:output:04sequential_5/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_5/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_5/conv2d_23/BiasAddBiasAdd&sequential_5/conv2d_23/Conv2D:output:05sequential_5/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_5/conv2d_23/ReluRelu'sequential_5/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_5/max_pooling2d_23/MaxPoolMaxPool)sequential_5/conv2d_23/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
m
sequential_5/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
sequential_5/flatten_3/ReshapeReshape.sequential_5/max_pooling2d_23/MaxPool:output:0%sequential_5/flatten_3/Const:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_5/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_6_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0┤
sequential_5/dense_6/MatMulMatMul'sequential_5/flatten_3/Reshape:output:02sequential_5/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ь
+sequential_5/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╡
sequential_5/dense_6/BiasAddBiasAdd%sequential_5/dense_6/MatMul:product:03sequential_5/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_5/dense_6/ReluRelu%sequential_5/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ю
*sequential_5/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0┤
sequential_5/dense_7/MatMulMatMul'sequential_5/dense_6/Relu:activations:02sequential_5/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_5/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_5/dense_7/BiasAddBiasAdd%sequential_5/dense_7/MatMul:product:03sequential_5/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
sequential_5/dense_7/SoftmaxSoftmax%sequential_5/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_5/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp.^sequential_5/conv2d_18/BiasAdd/ReadVariableOp-^sequential_5/conv2d_18/Conv2D/ReadVariableOp.^sequential_5/conv2d_19/BiasAdd/ReadVariableOp-^sequential_5/conv2d_19/Conv2D/ReadVariableOp.^sequential_5/conv2d_20/BiasAdd/ReadVariableOp-^sequential_5/conv2d_20/Conv2D/ReadVariableOp.^sequential_5/conv2d_21/BiasAdd/ReadVariableOp-^sequential_5/conv2d_21/Conv2D/ReadVariableOp.^sequential_5/conv2d_22/BiasAdd/ReadVariableOp-^sequential_5/conv2d_22/Conv2D/ReadVariableOp.^sequential_5/conv2d_23/BiasAdd/ReadVariableOp-^sequential_5/conv2d_23/Conv2D/ReadVariableOp,^sequential_5/dense_6/BiasAdd/ReadVariableOp+^sequential_5/dense_6/MatMul/ReadVariableOp,^sequential_5/dense_7/BiasAdd/ReadVariableOp+^sequential_5/dense_7/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2^
-sequential_5/conv2d_18/BiasAdd/ReadVariableOp-sequential_5/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_18/Conv2D/ReadVariableOp,sequential_5/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_19/BiasAdd/ReadVariableOp-sequential_5/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_19/Conv2D/ReadVariableOp,sequential_5/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_20/BiasAdd/ReadVariableOp-sequential_5/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_20/Conv2D/ReadVariableOp,sequential_5/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_21/BiasAdd/ReadVariableOp-sequential_5/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_21/Conv2D/ReadVariableOp,sequential_5/conv2d_21/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_22/BiasAdd/ReadVariableOp-sequential_5/conv2d_22/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_22/Conv2D/ReadVariableOp,sequential_5/conv2d_22/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_23/BiasAdd/ReadVariableOp-sequential_5/conv2d_23/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_23/Conv2D/ReadVariableOp,sequential_5/conv2d_23/Conv2D/ReadVariableOp2Z
+sequential_5/dense_6/BiasAdd/ReadVariableOp+sequential_5/dense_6/BiasAdd/ReadVariableOp2X
*sequential_5/dense_6/MatMul/ReadVariableOp*sequential_5/dense_6/MatMul/ReadVariableOp2Z
+sequential_5/dense_7/BiasAdd/ReadVariableOp+sequential_5/dense_7/BiasAdd/ReadVariableOp2X
*sequential_5/dense_7/MatMul/ReadVariableOp*sequential_5/dense_7/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:c _
1
_output_shapes
:         АА
*
_user_specified_namesequential_input
┤
¤
D__inference_conv2d_21_layer_call_and_return_conditional_losses_25396

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╡
`
D__inference_rescaling_layer_call_and_return_conditional_losses_26298

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    R
mulMulinputsCast/x:output:0*
T0*$
_output_shapes
:ААW
addAddV2mul:z:0Cast_1/x:output:0*
T0*$
_output_shapes
:ААL
IdentityIdentityadd:z:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:L H
$
_output_shapes
:АА
 
_user_specified_nameinputs
╦L
░
G__inference_sequential_5_layer_call_and_return_conditional_losses_25477
sequential_input 
sequential_1_25330:	 
sequential_1_25332:	)
conv2d_18_25346: 
conv2d_18_25348: )
conv2d_19_25363: @
conv2d_19_25365:@)
conv2d_20_25380:@@
conv2d_20_25382:@)
conv2d_21_25397:@@
conv2d_21_25399:@)
conv2d_22_25414:@@
conv2d_22_25416:@)
conv2d_23_25431:@@
conv2d_23_25433:@ 
dense_6_25455:	А@
dense_6_25457:@
dense_7_25471:@
dense_7_25473:
identityИв!conv2d_18/StatefulPartitionedCallв!conv2d_19/StatefulPartitionedCallв!conv2d_20/StatefulPartitionedCallв!conv2d_21/StatefulPartitionedCallв!conv2d_22/StatefulPartitionedCallв!conv2d_23/StatefulPartitionedCallвdense_6/StatefulPartitionedCallвdense_7/StatefulPartitionedCallв$sequential_1/StatefulPartitionedCall╧
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25103а
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0sequential_1_25330sequential_1_25332*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_25329в
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall-sequential_1/StatefulPartitionedCall:output:0conv2d_18_25346conv2d_18_25348*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_25345є
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_25036Ь
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_25363conv2d_19_25365*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_25362є
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_25046Ь
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_25380conv2d_20_25382*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_25379є
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_25056Ь
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_25397conv2d_21_25399*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_21_layer_call_and_return_conditional_losses_25396є
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_25066Ь
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_25414conv2d_22_25416*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_22_layer_call_and_return_conditional_losses_25413є
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_25076Ь
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_25431conv2d_23_25433*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_25430є
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_25086▌
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_25442Е
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_25455dense_6_25457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_25454Л
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_25471dense_7_25473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_25470w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         АА: : : : : : : : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall:%!

_user_specified_name25473:%!

_user_specified_name25471:%!

_user_specified_name25457:%!

_user_specified_name25455:%!

_user_specified_name25433:%!

_user_specified_name25431:%!

_user_specified_name25416:%!

_user_specified_name25414:%
!

_user_specified_name25399:%	!

_user_specified_name25397:%!

_user_specified_name25382:%!

_user_specified_name25380:%!

_user_specified_name25365:%!

_user_specified_name25363:%!

_user_specified_name25348:%!

_user_specified_name25346:%!

_user_specified_name25332:%!

_user_specified_name25330:c _
1
_output_shapes
:         АА
*
_user_specified_namesequential_input
╕
L
0__inference_max_pooling2d_19_layer_call_fn_26095

inputs
identity┘
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
GPU 2J 8В *T
fORM
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_25046Г
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
═
╙
,__inference_sequential_5_layer_call_fn_25622
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИвStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_25544o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name25618:%!

_user_specified_name25616:%!

_user_specified_name25614:%!

_user_specified_name25612:%!

_user_specified_name25610:%!

_user_specified_name25608:%
!

_user_specified_name25606:%	!

_user_specified_name25604:%!

_user_specified_name25602:%!

_user_specified_name25600:%!

_user_specified_name25598:%!

_user_specified_name25596:%!

_user_specified_name25594:%!

_user_specified_name25592:%!

_user_specified_name25590:%!

_user_specified_name25588:c _
1
_output_shapes
:         АА
*
_user_specified_namesequential_input
й
└
+stateless_random_flip_left_right_true_24761b
^stateless_random_flip_left_right_reversev2_stateless_random_flip_left_right_control_dependency-
)stateless_random_flip_left_right_identityy
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:И
*stateless_random_flip_left_right/ReverseV2	ReverseV2^stateless_random_flip_left_right_reversev2_stateless_random_flip_left_right_control_dependency8stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*,
_output_shapes
:         Аб
)stateless_random_flip_left_right/IdentityIdentity3stateless_random_flip_left_right/ReverseV2:output:0*
T0*,
_output_shapes
:         А"_
)stateless_random_flip_left_right_identity2stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:Б }
,
_output_shapes
:         А
M
_user_specified_name53stateless_random_flip_left_right/control_dependency
У
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_25036

inputs
identityв
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
У
g
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_26070

inputs
identityв
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
ы╩
Э
G__inference_sequential_1_layer_call_and_return_conditional_losses_25329

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identityИв4random_flip/stateful_uniform_full_int/RngReadAndSkipв6random_flip/stateful_uniform_full_int_1/RngReadAndSkipв/random_rotation/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┐
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Щ
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: К
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Г
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskз
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Е
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:л
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :═
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ь
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      │
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskк
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         АА╕
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::э╧К
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:М
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▓
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╞
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    О
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╚
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::д
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :║
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Щ
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ╢
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Я
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         ~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :К
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Й
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         ┤
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         Е
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:П
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААь
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААw
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ц
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ї
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         ААу
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААw
-random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ┼
,random_flip/stateful_uniform_full_int_1/ProdProd6random_flip/stateful_uniform_full_int_1/shape:output:06random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: p
.random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Э
.random_flip/stateful_uniform_full_int_1/Cast_1Cast5random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╟
6random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource7random_flip/stateful_uniform_full_int_1/Cast/x:output:02random_flip/stateful_uniform_full_int_1/Cast_1:y:05^random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Е
;random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
5random_flip/stateful_uniform_full_int_1/strided_sliceStridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskл
/random_flip/stateful_uniform_full_int_1/BitcastBitcast>random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0З
=random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
7random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:п
1random_flip/stateful_uniform_full_int_1/Bitcast_1Bitcast@random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :╫
'random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV26random_flip/stateful_uniform_full_int_1/shape:output:0:random_flip/stateful_uniform_full_int_1/Bitcast_1:output:08random_flip/stateful_uniform_full_int_1/Bitcast:output:04random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R в
random_flip/stack_1Pack0random_flip/stateful_uniform_full_int_1:output:0!random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:r
!random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╜
random_flip/strided_slice_1StridedSlicerandom_flip/stack_1:output:0*random_flip/strided_slice_1/stack:output:0,random_flip/strided_slice_1/stack_1:output:0,random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask 
<random_flip/stateless_random_flip_up_down/control_dependencyIdentity4random_flip/stateless_random_flip_left_right/add:z:0*
T0*C
_class9
75loc:@random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:         АА▓
/random_flip/stateless_random_flip_up_down/ShapeShapeErandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::э╧З
=random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
7random_flip/stateless_random_flip_up_down/strided_sliceStridedSlice8random_flip/stateless_random_flip_up_down/Shape:output:0Frandom_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask└
Hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Л
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╟
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip/strided_slice_1:output:0* 
_output_shapes
::б
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :л
[random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Qrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0erandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0irandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         Р
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/subSubOrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: н
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMuldrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Ц
Brandom_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         {
9random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :√
7random_flip/stateless_random_flip_up_down/Reshape/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:А
1random_flip/stateless_random_flip_up_down/ReshapeReshapeFrandom_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0@random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         о
/random_flip/stateless_random_flip_up_down/RoundRound:random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         В
8random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ж
3random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0Arandom_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         ААу
-random_flip/stateless_random_flip_up_down/mulMul3random_flip/stateless_random_flip_up_down/Round:y:0<random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААt
/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?▌
-random_flip/stateless_random_flip_up_down/subSub8random_flip/stateless_random_flip_up_down/sub/x:output:03random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ь
/random_flip/stateless_random_flip_up_down/mul_1Mul1random_flip/stateless_random_flip_up_down/sub:z:0Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         АА┌
-random_flip/stateless_random_flip_up_down/addAddV21random_flip/stateless_random_flip_up_down/mul:z:03random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         ААД
random_rotation/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::э╧m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
■        z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а┐i
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ░
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :П
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ў
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:№
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЭ
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0А
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:б
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :█
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         к
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: ╟
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         ░
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:         j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ч
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: м
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: о
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         о
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         о
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @┐
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: А
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ░
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         А
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ░
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         ░
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         о
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:         p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @├
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         З
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::э╧}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskА
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЦ
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ж
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskА
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:         Ж
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      д
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskЖ
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        И
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      и
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :╙
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╠
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ю
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         О
random_rotation/transform/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::э╧w
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    М
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV31random_flip/stateless_random_flip_up_down/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARв
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         АА─
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip7^random_flip/stateful_uniform_full_int_1/RngReadAndSkip0^random_rotation/stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2p
6random_flip/stateful_uniform_full_int_1/RngReadAndSkip6random_flip/stateful_uniform_full_int_1/RngReadAndSkip2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
┤
¤
D__inference_conv2d_23_layer_call_and_return_conditional_losses_26210

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_25489

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      н
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:         ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
═┌
Ю
F__inference_random_flip_layer_call_and_return_conditional_losses_24850

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИв(stateful_uniform_full_int/RngReadAndSkipв*stateful_uniform_full_int_1/RngReadAndSkipвCstateless_random_flip_left_right/assert_greater_equal/Assert/AssertвJstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assertв@stateless_random_flip_up_down/assert_greater_equal/Assert/AssertвGstateless_random_flip_up_down/assert_positive/assert_less/Assert/Asserti
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
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

begin_maskП
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
valueB:╧
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
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
valueB"      ў
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskj
&stateless_random_flip_left_right/ShapeShapeinputs*
T0*
_output_shapes
::э╧З
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskx
6stateless_random_flip_left_right/assert_positive/ConstConst*
_output_shapes
: *
dtype0*
value	B : ш
Astateless_random_flip_left_right/assert_positive/assert_less/LessLess?stateless_random_flip_left_right/assert_positive/Const:output:07stateless_random_flip_left_right/strided_slice:output:0*
T0*
_output_shapes
:М
Bstateless_random_flip_left_right/assert_positive/assert_less/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
@stateless_random_flip_left_right/assert_positive/assert_less/AllAllEstateless_random_flip_left_right/assert_positive/assert_less/Less:z:0Kstateless_random_flip_left_right/assert_positive/assert_less/Const:output:0*
_output_shapes
: ┤
Istateless_random_flip_left_right/assert_positive/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.╝
Qstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.┼
Jstateless_random_flip_left_right/assert_positive/assert_less/Assert/AssertAssertIstateless_random_flip_left_right/assert_positive/assert_less/All:output:0Zstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert/data_0:output:0*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 g
%stateless_random_flip_left_right/RankConst*
_output_shapes
: *
dtype0*
value	B :y
7stateless_random_flip_left_right/assert_greater_equal/yConst*
_output_shapes
: *
dtype0*
value	B :х
Bstateless_random_flip_left_right/assert_greater_equal/GreaterEqualGreaterEqual.stateless_random_flip_left_right/Rank:output:0@stateless_random_flip_left_right/assert_greater_equal/y:output:0*
T0*
_output_shapes
: |
:stateless_random_flip_left_right/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : Г
Astateless_random_flip_left_right/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : Г
Astateless_random_flip_left_right/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :╗
;stateless_random_flip_left_right/assert_greater_equal/rangeRangeJstateless_random_flip_left_right/assert_greater_equal/range/start:output:0Cstateless_random_flip_left_right/assert_greater_equal/Rank:output:0Jstateless_random_flip_left_right/assert_greater_equal/range/delta:output:0*
_output_shapes
: ц
9stateless_random_flip_left_right/assert_greater_equal/AllAllFstateless_random_flip_left_right/assert_greater_equal/GreaterEqual:z:0Dstateless_random_flip_left_right/assert_greater_equal/range:output:0*
_output_shapes
: о
Bstateless_random_flip_left_right/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.░
Dstateless_random_flip_left_right/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:│
Dstateless_random_flip_left_right/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (stateless_random_flip_left_right/Rank:0) = ┼
Dstateless_random_flip_left_right/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*Q
valueHBF B@y (stateless_random_flip_left_right/assert_greater_equal/y:0) = ╢
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.╢
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:╣
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (stateless_random_flip_left_right/Rank:0) = ╦
Jstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_4Const*
_output_shapes
: *
dtype0*Q
valueHBF B@y (stateless_random_flip_left_right/assert_greater_equal/y:0) = є
Cstateless_random_flip_left_right/assert_greater_equal/Assert/AssertAssertBstateless_random_flip_left_right/assert_greater_equal/All:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_0:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_1:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_2:output:0.stateless_random_flip_left_right/Rank:output:0Sstateless_random_flip_left_right/assert_greater_equal/Assert/Assert/data_4:output:0@stateless_random_flip_left_right/assert_greater_equal/y:output:0K^stateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T

2*&
 _has_manual_control_dependencies(*
_output_shapes
 м
3stateless_random_flip_left_right/control_dependencyIdentityinputsD^stateless_random_flip_left_right/assert_greater_equal/Assert/AssertK^stateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert*
T0*
_class
loc:@inputs*,
_output_shapes
:         АВ
?stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ё
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ї
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Е
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ю
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: l
'stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?┐
%stateless_random_flip_left_right/LessLess=stateless_random_flip_left_right/stateless_random_uniform:z:00stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: с
 stateless_random_flip_left_rightStatelessIf)stateless_random_flip_left_right/Less:z:0<stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*,
_output_shapes
:         А* 
_read_only_resource_inputs
 *?
else_branch0R.
,stateless_random_flip_left_right_false_24762*+
output_shapes
:         А*>
then_branch/R-
+stateless_random_flip_left_right_true_24761Ч
)stateless_random_flip_left_right/IdentityIdentity)stateless_random_flip_left_right:output:0*
T0*,
_output_shapes
:         Аk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
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
valueB:у
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
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
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
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
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskУ
#stateless_random_flip_up_down/ShapeShape2stateless_random_flip_left_right/Identity:output:0*
T0*
_output_shapes
::э╧Д
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
¤        }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_masku
3stateless_random_flip_up_down/assert_positive/ConstConst*
_output_shapes
: *
dtype0*
value	B : ▀
>stateless_random_flip_up_down/assert_positive/assert_less/LessLess<stateless_random_flip_up_down/assert_positive/Const:output:04stateless_random_flip_up_down/strided_slice:output:0*
T0*
_output_shapes
:Й
?stateless_random_flip_up_down/assert_positive/assert_less/ConstConst*
_output_shapes
:*
dtype0*
valueB: ъ
=stateless_random_flip_up_down/assert_positive/assert_less/AllAllBstateless_random_flip_up_down/assert_positive/assert_less/Less:z:0Hstateless_random_flip_up_down/assert_positive/assert_less/Const:output:0*
_output_shapes
: ▒
Fstateless_random_flip_up_down/assert_positive/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.╣
Nstateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*;
value2B0 B*inner 3 dims of 'image.shape' must be > 0.В
Gstateless_random_flip_up_down/assert_positive/assert_less/Assert/AssertAssertFstateless_random_flip_up_down/assert_positive/assert_less/All:output:0Wstateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert/data_0:output:0D^stateless_random_flip_left_right/assert_greater_equal/Assert/Assert*

T
2*&
 _has_manual_control_dependencies(*
_output_shapes
 d
"stateless_random_flip_up_down/RankConst*
_output_shapes
: *
dtype0*
value	B :v
4stateless_random_flip_up_down/assert_greater_equal/yConst*
_output_shapes
: *
dtype0*
value	B :▄
?stateless_random_flip_up_down/assert_greater_equal/GreaterEqualGreaterEqual+stateless_random_flip_up_down/Rank:output:0=stateless_random_flip_up_down/assert_greater_equal/y:output:0*
T0*
_output_shapes
: y
7stateless_random_flip_up_down/assert_greater_equal/RankConst*
_output_shapes
: *
dtype0*
value	B : А
>stateless_random_flip_up_down/assert_greater_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : А
>stateless_random_flip_up_down/assert_greater_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :п
8stateless_random_flip_up_down/assert_greater_equal/rangeRangeGstateless_random_flip_up_down/assert_greater_equal/range/start:output:0@stateless_random_flip_up_down/assert_greater_equal/Rank:output:0Gstateless_random_flip_up_down/assert_greater_equal/range/delta:output:0*
_output_shapes
: ▌
6stateless_random_flip_up_down/assert_greater_equal/AllAllCstateless_random_flip_up_down/assert_greater_equal/GreaterEqual:z:0Astateless_random_flip_up_down/assert_greater_equal/range:output:0*
_output_shapes
: л
?stateless_random_flip_up_down/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.н
Astateless_random_flip_up_down/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:н
Astateless_random_flip_up_down/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+x (stateless_random_flip_up_down/Rank:0) = ┐
Astateless_random_flip_up_down/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*N
valueEBC B=y (stateless_random_flip_up_down/assert_greater_equal/y:0) = │
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_0Const*
_output_shapes
: *
dtype0*<
value3B1 B+'image' must be at least three-dimensional.│
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:│
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+x (stateless_random_flip_up_down/Rank:0) = ┼
Gstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_4Const*
_output_shapes
: *
dtype0*N
valueEBC B=y (stateless_random_flip_up_down/assert_greater_equal/y:0) = ╪
@stateless_random_flip_up_down/assert_greater_equal/Assert/AssertAssert?stateless_random_flip_up_down/assert_greater_equal/All:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_0:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_1:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_2:output:0+stateless_random_flip_up_down/Rank:output:0Pstateless_random_flip_up_down/assert_greater_equal/Assert/Assert/data_4:output:0=stateless_random_flip_up_down/assert_greater_equal/y:output:0H^stateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert*
T

2*&
 _has_manual_control_dependencies(*
_output_shapes
 Є
0stateless_random_flip_up_down/control_dependencyIdentity2stateless_random_flip_left_right/Identity:output:0A^stateless_random_flip_up_down/assert_greater_equal/Assert/AssertH^stateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert*
T0*<
_class2
0.loc:@stateless_random_flip_left_right/Identity*,
_output_shapes
:         А
<stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 
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
 *  А?п
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :т
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: ь
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: №
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: х
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: i
$stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╢
"stateless_random_flip_up_down/LessLess:stateless_random_flip_up_down/stateless_random_uniform:z:0-stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: ╥
stateless_random_flip_up_downStatelessIf&stateless_random_flip_up_down/Less:z:09stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*,
_output_shapes
:         А* 
_read_only_resource_inputs
 *<
else_branch-R+
)stateless_random_flip_up_down_false_24838*+
output_shapes
:         А*;
then_branch,R*
(stateless_random_flip_up_down_true_24837С
&stateless_random_flip_up_down/IdentityIdentity&stateless_random_flip_up_down:output:0*
T0*,
_output_shapes
:         АГ
IdentityIdentity/stateless_random_flip_up_down/Identity:output:0^NoOp*
T0*,
_output_shapes
:         АЪ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkipD^stateless_random_flip_left_right/assert_greater_equal/Assert/AssertK^stateless_random_flip_left_right/assert_positive/assert_less/Assert/AssertA^stateless_random_flip_up_down/assert_greater_equal/Assert/AssertH^stateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         А: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip2К
Cstateless_random_flip_left_right/assert_greater_equal/Assert/AssertCstateless_random_flip_left_right/assert_greater_equal/Assert/Assert2Ш
Jstateless_random_flip_left_right/assert_positive/assert_less/Assert/AssertJstateless_random_flip_left_right/assert_positive/assert_less/Assert/Assert2Д
@stateless_random_flip_up_down/assert_greater_equal/Assert/Assert@stateless_random_flip_up_down/assert_greater_equal/Assert/Assert2Т
Gstateless_random_flip_up_down/assert_positive/assert_less/Assert/AssertGstateless_random_flip_up_down/assert_positive/assert_less/Assert/Assert:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
│┼
Ф6
__inference__traced_save_26994
file_prefixA
'read_disablecopyonread_conv2d_18_kernel: 5
'read_1_disablecopyonread_conv2d_18_bias: C
)read_2_disablecopyonread_conv2d_19_kernel: @5
'read_3_disablecopyonread_conv2d_19_bias:@C
)read_4_disablecopyonread_conv2d_20_kernel:@@5
'read_5_disablecopyonread_conv2d_20_bias:@C
)read_6_disablecopyonread_conv2d_21_kernel:@@5
'read_7_disablecopyonread_conv2d_21_bias:@C
)read_8_disablecopyonread_conv2d_22_kernel:@@5
'read_9_disablecopyonread_conv2d_22_bias:@D
*read_10_disablecopyonread_conv2d_23_kernel:@@6
(read_11_disablecopyonread_conv2d_23_bias:@;
(read_12_disablecopyonread_dense_6_kernel:	А@4
&read_13_disablecopyonread_dense_6_bias:@:
(read_14_disablecopyonread_dense_7_kernel:@4
&read_15_disablecopyonread_dense_7_bias:-
#read_16_disablecopyonread_adam_iter:	 /
%read_17_disablecopyonread_adam_beta_1: /
%read_18_disablecopyonread_adam_beta_2: .
$read_19_disablecopyonread_adam_decay: 6
,read_20_disablecopyonread_adam_learning_rate: +
!read_21_disablecopyonread_total_1: +
!read_22_disablecopyonread_count_1: )
read_23_disablecopyonread_total: )
read_24_disablecopyonread_count: <
.read_25_disablecopyonread_random_flip_statevar:	@
2read_26_disablecopyonread_random_rotation_statevar:	K
1read_27_disablecopyonread_adam_conv2d_18_kernel_m: =
/read_28_disablecopyonread_adam_conv2d_18_bias_m: K
1read_29_disablecopyonread_adam_conv2d_19_kernel_m: @=
/read_30_disablecopyonread_adam_conv2d_19_bias_m:@K
1read_31_disablecopyonread_adam_conv2d_20_kernel_m:@@=
/read_32_disablecopyonread_adam_conv2d_20_bias_m:@K
1read_33_disablecopyonread_adam_conv2d_21_kernel_m:@@=
/read_34_disablecopyonread_adam_conv2d_21_bias_m:@K
1read_35_disablecopyonread_adam_conv2d_22_kernel_m:@@=
/read_36_disablecopyonread_adam_conv2d_22_bias_m:@K
1read_37_disablecopyonread_adam_conv2d_23_kernel_m:@@=
/read_38_disablecopyonread_adam_conv2d_23_bias_m:@B
/read_39_disablecopyonread_adam_dense_6_kernel_m:	А@;
-read_40_disablecopyonread_adam_dense_6_bias_m:@A
/read_41_disablecopyonread_adam_dense_7_kernel_m:@;
-read_42_disablecopyonread_adam_dense_7_bias_m:K
1read_43_disablecopyonread_adam_conv2d_18_kernel_v: =
/read_44_disablecopyonread_adam_conv2d_18_bias_v: K
1read_45_disablecopyonread_adam_conv2d_19_kernel_v: @=
/read_46_disablecopyonread_adam_conv2d_19_bias_v:@K
1read_47_disablecopyonread_adam_conv2d_20_kernel_v:@@=
/read_48_disablecopyonread_adam_conv2d_20_bias_v:@K
1read_49_disablecopyonread_adam_conv2d_21_kernel_v:@@=
/read_50_disablecopyonread_adam_conv2d_21_bias_v:@K
1read_51_disablecopyonread_adam_conv2d_22_kernel_v:@@=
/read_52_disablecopyonread_adam_conv2d_22_bias_v:@K
1read_53_disablecopyonread_adam_conv2d_23_kernel_v:@@=
/read_54_disablecopyonread_adam_conv2d_23_bias_v:@B
/read_55_disablecopyonread_adam_dense_6_kernel_v:	А@;
-read_56_disablecopyonread_adam_dense_6_bias_v:@A
/read_57_disablecopyonread_adam_dense_7_kernel_v:@;
-read_58_disablecopyonread_adam_dense_7_bias_v:
savev2_const
identity_119ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_42/DisableCopyOnReadвRead_42/ReadVariableOpвRead_43/DisableCopyOnReadвRead_43/ReadVariableOpвRead_44/DisableCopyOnReadвRead_44/ReadVariableOpвRead_45/DisableCopyOnReadвRead_45/ReadVariableOpвRead_46/DisableCopyOnReadвRead_46/ReadVariableOpвRead_47/DisableCopyOnReadвRead_47/ReadVariableOpвRead_48/DisableCopyOnReadвRead_48/ReadVariableOpвRead_49/DisableCopyOnReadвRead_49/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_50/DisableCopyOnReadвRead_50/ReadVariableOpвRead_51/DisableCopyOnReadвRead_51/ReadVariableOpвRead_52/DisableCopyOnReadвRead_52/ReadVariableOpвRead_53/DisableCopyOnReadвRead_53/ReadVariableOpвRead_54/DisableCopyOnReadвRead_54/ReadVariableOpвRead_55/DisableCopyOnReadвRead_55/ReadVariableOpвRead_56/DisableCopyOnReadвRead_56/ReadVariableOpвRead_57/DisableCopyOnReadвRead_57/ReadVariableOpвRead_58/DisableCopyOnReadвRead_58/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 л
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_18_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_18_bias"/device:CPU:0*
_output_shapes
 г
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_18_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_19_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_19_bias"/device:CPU:0*
_output_shapes
 г
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_19_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_20_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_20_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_20_bias"/device:CPU:0*
_output_shapes
 г
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_20_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_21_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_21_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_21_bias"/device:CPU:0*
_output_shapes
 г
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_21_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_22_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_22_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_22_bias"/device:CPU:0*
_output_shapes
 г
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_22_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_conv2d_23_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_conv2d_23_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_conv2d_23_bias"/device:CPU:0*
_output_shapes
 ж
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_conv2d_23_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_6_kernel"/device:CPU:0*
_output_shapes
 л
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_6_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_dense_6_bias"/device:CPU:0*
_output_shapes
 д
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_dense_6_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_14/DisableCopyOnReadDisableCopyOnRead(read_14_disablecopyonread_dense_7_kernel"/device:CPU:0*
_output_shapes
 к
Read_14/ReadVariableOpReadVariableOp(read_14_disablecopyonread_dense_7_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_dense_7_bias"/device:CPU:0*
_output_shapes
 д
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_dense_7_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_adam_iter"/device:CPU:0*
_output_shapes
 Э
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_adam_iter^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_adam_beta_1"/device:CPU:0*
_output_shapes
 Я
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_adam_beta_1^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_adam_beta_2"/device:CPU:0*
_output_shapes
 Я
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_adam_beta_2^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_adam_decay"/device:CPU:0*
_output_shapes
 Ю
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_adam_decay^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: Б
Read_20/DisableCopyOnReadDisableCopyOnRead,read_20_disablecopyonread_adam_learning_rate"/device:CPU:0*
_output_shapes
 ж
Read_20/ReadVariableOpReadVariableOp,read_20_disablecopyonread_adam_learning_rate^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_21/DisableCopyOnReadDisableCopyOnRead!read_21_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_21/ReadVariableOpReadVariableOp!read_21_disablecopyonread_total_1^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_22/DisableCopyOnReadDisableCopyOnRead!read_22_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_22/ReadVariableOpReadVariableOp!read_22_disablecopyonread_count_1^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_total^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_24/DisableCopyOnReadDisableCopyOnReadread_24_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_24/ReadVariableOpReadVariableOpread_24_disablecopyonread_count^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_random_flip_statevar"/device:CPU:0*
_output_shapes
 м
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_random_flip_statevar^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0	*
_output_shapes
:З
Read_26/DisableCopyOnReadDisableCopyOnRead2read_26_disablecopyonread_random_rotation_statevar"/device:CPU:0*
_output_shapes
 ░
Read_26/ReadVariableOpReadVariableOp2read_26_disablecopyonread_random_rotation_statevar^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0	*
_output_shapes
:Ж
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_conv2d_18_kernel_m"/device:CPU:0*
_output_shapes
 ╗
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_conv2d_18_kernel_m^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
: Д
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_conv2d_18_bias_m"/device:CPU:0*
_output_shapes
 н
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_conv2d_18_bias_m^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_29/DisableCopyOnReadDisableCopyOnRead1read_29_disablecopyonread_adam_conv2d_19_kernel_m"/device:CPU:0*
_output_shapes
 ╗
Read_29/ReadVariableOpReadVariableOp1read_29_disablecopyonread_adam_conv2d_19_kernel_m^Read_29/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Д
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_adam_conv2d_19_bias_m"/device:CPU:0*
_output_shapes
 н
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_adam_conv2d_19_bias_m^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_31/DisableCopyOnReadDisableCopyOnRead1read_31_disablecopyonread_adam_conv2d_20_kernel_m"/device:CPU:0*
_output_shapes
 ╗
Read_31/ReadVariableOpReadVariableOp1read_31_disablecopyonread_adam_conv2d_20_kernel_m^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_conv2d_20_bias_m"/device:CPU:0*
_output_shapes
 н
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_conv2d_20_bias_m^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_33/DisableCopyOnReadDisableCopyOnRead1read_33_disablecopyonread_adam_conv2d_21_kernel_m"/device:CPU:0*
_output_shapes
 ╗
Read_33/ReadVariableOpReadVariableOp1read_33_disablecopyonread_adam_conv2d_21_kernel_m^Read_33/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_conv2d_21_bias_m"/device:CPU:0*
_output_shapes
 н
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_conv2d_21_bias_m^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_conv2d_22_kernel_m"/device:CPU:0*
_output_shapes
 ╗
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_conv2d_22_kernel_m^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_conv2d_22_bias_m"/device:CPU:0*
_output_shapes
 н
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_conv2d_22_bias_m^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_37/DisableCopyOnReadDisableCopyOnRead1read_37_disablecopyonread_adam_conv2d_23_kernel_m"/device:CPU:0*
_output_shapes
 ╗
Read_37/ReadVariableOpReadVariableOp1read_37_disablecopyonread_adam_conv2d_23_kernel_m^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_38/DisableCopyOnReadDisableCopyOnRead/read_38_disablecopyonread_adam_conv2d_23_bias_m"/device:CPU:0*
_output_shapes
 н
Read_38/ReadVariableOpReadVariableOp/read_38_disablecopyonread_adam_conv2d_23_bias_m^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_39/DisableCopyOnReadDisableCopyOnRead/read_39_disablecopyonread_adam_dense_6_kernel_m"/device:CPU:0*
_output_shapes
 ▓
Read_39/ReadVariableOpReadVariableOp/read_39_disablecopyonread_adam_dense_6_kernel_m^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@В
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_adam_dense_6_bias_m"/device:CPU:0*
_output_shapes
 л
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_adam_dense_6_bias_m^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_dense_7_kernel_m"/device:CPU:0*
_output_shapes
 ▒
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_dense_7_kernel_m^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:@В
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_adam_dense_7_bias_m"/device:CPU:0*
_output_shapes
 л
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_adam_dense_7_bias_m^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:Ж
Read_43/DisableCopyOnReadDisableCopyOnRead1read_43_disablecopyonread_adam_conv2d_18_kernel_v"/device:CPU:0*
_output_shapes
 ╗
Read_43/ReadVariableOpReadVariableOp1read_43_disablecopyonread_adam_conv2d_18_kernel_v^Read_43/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*&
_output_shapes
: Д
Read_44/DisableCopyOnReadDisableCopyOnRead/read_44_disablecopyonread_adam_conv2d_18_bias_v"/device:CPU:0*
_output_shapes
 н
Read_44/ReadVariableOpReadVariableOp/read_44_disablecopyonread_adam_conv2d_18_bias_v^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_45/DisableCopyOnReadDisableCopyOnRead1read_45_disablecopyonread_adam_conv2d_19_kernel_v"/device:CPU:0*
_output_shapes
 ╗
Read_45/ReadVariableOpReadVariableOp1read_45_disablecopyonread_adam_conv2d_19_kernel_v^Read_45/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Д
Read_46/DisableCopyOnReadDisableCopyOnRead/read_46_disablecopyonread_adam_conv2d_19_bias_v"/device:CPU:0*
_output_shapes
 н
Read_46/ReadVariableOpReadVariableOp/read_46_disablecopyonread_adam_conv2d_19_bias_v^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_47/DisableCopyOnReadDisableCopyOnRead1read_47_disablecopyonread_adam_conv2d_20_kernel_v"/device:CPU:0*
_output_shapes
 ╗
Read_47/ReadVariableOpReadVariableOp1read_47_disablecopyonread_adam_conv2d_20_kernel_v^Read_47/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_48/DisableCopyOnReadDisableCopyOnRead/read_48_disablecopyonread_adam_conv2d_20_bias_v"/device:CPU:0*
_output_shapes
 н
Read_48/ReadVariableOpReadVariableOp/read_48_disablecopyonread_adam_conv2d_20_bias_v^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_49/DisableCopyOnReadDisableCopyOnRead1read_49_disablecopyonread_adam_conv2d_21_kernel_v"/device:CPU:0*
_output_shapes
 ╗
Read_49/ReadVariableOpReadVariableOp1read_49_disablecopyonread_adam_conv2d_21_kernel_v^Read_49/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_50/DisableCopyOnReadDisableCopyOnRead/read_50_disablecopyonread_adam_conv2d_21_bias_v"/device:CPU:0*
_output_shapes
 н
Read_50/ReadVariableOpReadVariableOp/read_50_disablecopyonread_adam_conv2d_21_bias_v^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_51/DisableCopyOnReadDisableCopyOnRead1read_51_disablecopyonread_adam_conv2d_22_kernel_v"/device:CPU:0*
_output_shapes
 ╗
Read_51/ReadVariableOpReadVariableOp1read_51_disablecopyonread_adam_conv2d_22_kernel_v^Read_51/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_52/DisableCopyOnReadDisableCopyOnRead/read_52_disablecopyonread_adam_conv2d_22_bias_v"/device:CPU:0*
_output_shapes
 н
Read_52/ReadVariableOpReadVariableOp/read_52_disablecopyonread_adam_conv2d_22_bias_v^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_53/DisableCopyOnReadDisableCopyOnRead1read_53_disablecopyonread_adam_conv2d_23_kernel_v"/device:CPU:0*
_output_shapes
 ╗
Read_53/ReadVariableOpReadVariableOp1read_53_disablecopyonread_adam_conv2d_23_kernel_v^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_54/DisableCopyOnReadDisableCopyOnRead/read_54_disablecopyonread_adam_conv2d_23_bias_v"/device:CPU:0*
_output_shapes
 н
Read_54/ReadVariableOpReadVariableOp/read_54_disablecopyonread_adam_conv2d_23_bias_v^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_55/DisableCopyOnReadDisableCopyOnRead/read_55_disablecopyonread_adam_dense_6_kernel_v"/device:CPU:0*
_output_shapes
 ▓
Read_55/ReadVariableOpReadVariableOp/read_55_disablecopyonread_adam_dense_6_kernel_v^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0q
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@h
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@В
Read_56/DisableCopyOnReadDisableCopyOnRead-read_56_disablecopyonread_adam_dense_6_bias_v"/device:CPU:0*
_output_shapes
 л
Read_56/ReadVariableOpReadVariableOp-read_56_disablecopyonread_adam_dense_6_bias_v^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_57/DisableCopyOnReadDisableCopyOnRead/read_57_disablecopyonread_adam_dense_7_kernel_v"/device:CPU:0*
_output_shapes
 ▒
Read_57/ReadVariableOpReadVariableOp/read_57_disablecopyonread_adam_dense_7_kernel_v^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0p
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes

:@В
Read_58/DisableCopyOnReadDisableCopyOnRead-read_58_disablecopyonread_adam_dense_7_bias_v"/device:CPU:0*
_output_shapes
 л
Read_58/ReadVariableOpReadVariableOp-read_58_disablecopyonread_adam_dense_7_bias_v^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:┐!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*ш 
value▐ B█ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHш
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Н
valueГBА<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B й
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *J
dtypes@
>2<			Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_118Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_119IdentityIdentity_118:output:0^NoOp*
T0*
_output_shapes
: ╓
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_119Identity_119:output:0*(
_construction_contextkEagerRuntime*Н
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=<9

_output_shapes
: 

_user_specified_nameConst:3;/
-
_user_specified_nameAdam/dense_7/bias/v:5:1
/
_user_specified_nameAdam/dense_7/kernel/v:39/
-
_user_specified_nameAdam/dense_6/bias/v:581
/
_user_specified_nameAdam/dense_6/kernel/v:571
/
_user_specified_nameAdam/conv2d_23/bias/v:763
1
_user_specified_nameAdam/conv2d_23/kernel/v:551
/
_user_specified_nameAdam/conv2d_22/bias/v:743
1
_user_specified_nameAdam/conv2d_22/kernel/v:531
/
_user_specified_nameAdam/conv2d_21/bias/v:723
1
_user_specified_nameAdam/conv2d_21/kernel/v:511
/
_user_specified_nameAdam/conv2d_20/bias/v:703
1
_user_specified_nameAdam/conv2d_20/kernel/v:5/1
/
_user_specified_nameAdam/conv2d_19/bias/v:7.3
1
_user_specified_nameAdam/conv2d_19/kernel/v:5-1
/
_user_specified_nameAdam/conv2d_18/bias/v:7,3
1
_user_specified_nameAdam/conv2d_18/kernel/v:3+/
-
_user_specified_nameAdam/dense_7/bias/m:5*1
/
_user_specified_nameAdam/dense_7/kernel/m:3)/
-
_user_specified_nameAdam/dense_6/bias/m:5(1
/
_user_specified_nameAdam/dense_6/kernel/m:5'1
/
_user_specified_nameAdam/conv2d_23/bias/m:7&3
1
_user_specified_nameAdam/conv2d_23/kernel/m:5%1
/
_user_specified_nameAdam/conv2d_22/bias/m:7$3
1
_user_specified_nameAdam/conv2d_22/kernel/m:5#1
/
_user_specified_nameAdam/conv2d_21/bias/m:7"3
1
_user_specified_nameAdam/conv2d_21/kernel/m:5!1
/
_user_specified_nameAdam/conv2d_20/bias/m:7 3
1
_user_specified_nameAdam/conv2d_20/kernel/m:51
/
_user_specified_nameAdam/conv2d_19/bias/m:73
1
_user_specified_nameAdam/conv2d_19/kernel/m:51
/
_user_specified_nameAdam/conv2d_18/bias/m:73
1
_user_specified_nameAdam/conv2d_18/kernel/m:84
2
_user_specified_namerandom_rotation/StateVar:40
.
_user_specified_namerandom_flip/StateVar:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:2.
,
_user_specified_nameAdam/learning_rate:*&
$
_user_specified_name
Adam/decay:+'
%
_user_specified_nameAdam/beta_2:+'
%
_user_specified_nameAdam/beta_1:)%
#
_user_specified_name	Adam/iter:,(
&
_user_specified_namedense_7/bias:.*
(
_user_specified_namedense_7/kernel:,(
&
_user_specified_namedense_6/bias:.*
(
_user_specified_namedense_6/kernel:.*
(
_user_specified_nameconv2d_23/bias:0,
*
_user_specified_nameconv2d_23/kernel:.
*
(
_user_specified_nameconv2d_22/bias:0	,
*
_user_specified_nameconv2d_22/kernel:.*
(
_user_specified_nameconv2d_21/bias:0,
*
_user_specified_nameconv2d_21/kernel:.*
(
_user_specified_nameconv2d_20/bias:0,
*
_user_specified_nameconv2d_20/kernel:.*
(
_user_specified_nameconv2d_19/bias:0,
*
_user_specified_nameconv2d_19/kernel:.*
(
_user_specified_nameconv2d_18/bias:0,
*
_user_specified_nameconv2d_18/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
┤
¤
D__inference_conv2d_20_layer_call_and_return_conditional_losses_26120

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
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
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
▌
З
G__inference_sequential_1_layer_call_and_return_conditional_losses_24979
random_flip_input
random_flip_24851:	#
random_rotation_24975:	
identityИв#random_flip/StatefulPartitionedCallв'random_rotation/StatefulPartitionedCallё
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_24851*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_24850Ш
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_24975*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_24974Д
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         Аr
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:%!

_user_specified_name24975:%!

_user_specified_name24851:_ [
,
_output_shapes
:         А
+
_user_specified_namerandom_flip_input
╡

/__inference_random_rotation_layer_call_fn_26478

inputs
unknown:	
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_24974t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         А: 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26474:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
╗
i
E__inference_sequential_layer_call_and_return_conditional_losses_24671
resizing_input
identity╝
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_24653╤
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_24662g
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:\ X
,
_output_shapes
:         А
(
_user_specified_nameresizing_input
Й
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_26608

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Т
Х
,__inference_sequential_1_layer_call_fn_25806

inputs
unknown:	
	unknown_0:	
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_25329y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name25802:%!

_user_specified_name25800:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╗
N
*__inference_sequential_layer_call_fn_24681
resizing_input
identity╡
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_24671]
IdentityIdentityPartitionedCall:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:\ X
,
_output_shapes
:         А
(
_user_specified_nameresizing_input
┤
¤
D__inference_conv2d_21_layer_call_and_return_conditional_losses_26150

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
└
¤
D__inference_conv2d_18_layer_call_and_return_conditional_losses_26060

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
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
:         ■■ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ф
Ю
)__inference_conv2d_20_layer_call_fn_26109

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_20_layer_call_and_return_conditional_losses_25379w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26105:%!

_user_specified_name26103:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs
Ф
Ю
)__inference_conv2d_19_layer_call_fn_26079

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_25362w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         }}@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26075:%!

_user_specified_name26073:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_25103

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      н
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:         ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_18_layer_call_fn_26065

inputs
identity┘
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
GPU 2J 8В *T
fORM
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_25036Г
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
·
_
C__inference_resizing_layer_call_and_return_conditional_losses_26285

inputs
identityW
resize/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : В
resize/ExpandDims
ExpandDimsinputsresize/ExpandDims/dim:output:0*
T0*0
_output_shapes
:         А\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ж
resize/ResizeBilinearResizeBilinearresize/ExpandDims:output:0resize/size:output:0*
T0*(
_output_shapes
:АА*
half_pixel_centers(З
resize/SqueezeSqueeze&resize/ResizeBilinear:resized_images:0*
T0*$
_output_shapes
:АА*
squeeze_dims
 \
IdentityIdentityresize/Squeeze:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Й	
a
E__inference_sequential_layer_call_and_return_conditional_losses_25787

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      н
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:         ААВ
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААc
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_26190

inputs
identityв
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
У
g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_26160

inputs
identityв
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
╞
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_26231

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
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_25056

inputs
identityв
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
╦
H
,__inference_sequential_1_layer_call_fn_25811

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_25494j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╡
G
+__inference_random_flip_layer_call_fn_26310

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_24985e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
С
E
)__inference_rescaling_layer_call_fn_26290

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *$
_output_shapes
:АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_24662]
IdentityIdentityPartitionedCall:output:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:L H
$
_output_shapes
:АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_25066

inputs
identityв
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
┤
¤
D__inference_conv2d_19_layer_call_and_return_conditional_losses_26090

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
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
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
н
{
+__inference_random_flip_layer_call_fn_26305

inputs
unknown:	
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_24850t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:         А: 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26301:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
Я
а
,__inference_sequential_1_layer_call_fn_25002
random_flip_input
unknown:	
	unknown_0:	
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_24979t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name24998:%!

_user_specified_name24996:_ [
,
_output_shapes
:         А
+
_user_specified_namerandom_flip_input
╟
F
*__inference_sequential_layer_call_fn_25777

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25489j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
э
З
,__inference_sequential_5_layer_call_fn_25585
sequential_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	А@

unknown_14:@

unknown_15:@

unknown_16:
identityИвStatefulPartitionedCall╗
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_25477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         АА: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name25581:%!

_user_specified_name25579:%!

_user_specified_name25577:%!

_user_specified_name25575:%!

_user_specified_name25573:%!

_user_specified_name25571:%!

_user_specified_name25569:%!

_user_specified_name25567:%
!

_user_specified_name25565:%	!

_user_specified_name25563:%!

_user_specified_name25561:%!

_user_specified_name25559:%!

_user_specified_name25557:%!

_user_specified_name25555:%!

_user_specified_name25553:%!

_user_specified_name25551:%!

_user_specified_name25549:%!

_user_specified_name25547:c _
1
_output_shapes
:         АА
*
_user_specified_namesequential_input
╞
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_25442

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
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╟
F
*__inference_sequential_layer_call_fn_25772

inputs
identity║
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_25103j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Е
b
F__inference_random_flip_layer_call_and_return_conditional_losses_24985

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
ы
Х
'__inference_dense_6_layer_call_fn_26240

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCall╫
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
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_25454o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26236:%!

_user_specified_name26234:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Й
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_24990

inputs
identityS
IdentityIdentityinputs*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:T P
,
_output_shapes
:         А
 
_user_specified_nameinputs
о
┤
)stateless_random_flip_up_down_false_26455[
Wstateless_random_flip_up_down_identity_stateless_random_flip_up_down_control_dependency*
&stateless_random_flip_up_down_identity┬
&stateless_random_flip_up_down/IdentityIdentityWstateless_random_flip_up_down_identity_stateless_random_flip_up_down_control_dependency*
T0*,
_output_shapes
:         А"Y
&stateless_random_flip_up_down_identity/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:~ z
,
_output_shapes
:         А
J
_user_specified_name20stateless_random_flip_up_down/control_dependency
═

Ї
B__inference_dense_6_layer_call_and_return_conditional_losses_25454

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
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
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╡
`
D__inference_rescaling_layer_call_and_return_conditional_losses_24662

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    R
mulMulinputsCast/x:output:0*
T0*$
_output_shapes
:ААW
addAddV2mul:z:0Cast_1/x:output:0*
T0*$
_output_shapes
:ААL
IdentityIdentityadd:z:0*
T0*$
_output_shapes
:АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:L H
$
_output_shapes
:АА
 
_user_specified_nameinputs
═
└
,stateless_random_flip_left_right_false_24762a
]stateless_random_flip_left_right_identity_stateless_random_flip_left_right_control_dependency-
)stateless_random_flip_left_right_identity╦
)stateless_random_flip_left_right/IdentityIdentity]stateless_random_flip_left_right_identity_stateless_random_flip_left_right_control_dependency*
T0*,
_output_shapes
:         А"_
)stateless_random_flip_left_right_identity2stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:Б }
,
_output_shapes
:         А
M
_user_specified_name53stateless_random_flip_left_right/control_dependency
╕
L
0__inference_max_pooling2d_21_layer_call_fn_26155

inputs
identity┘
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
GPU 2J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_25066Г
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
∙
n
G__inference_sequential_1_layer_call_and_return_conditional_losses_24993
random_flip_input
identity═
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_24985ш
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_24990u
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*,
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А:_ [
,
_output_shapes
:         А
+
_user_specified_namerandom_flip_input
У
g
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_26100

inputs
identityв
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
Э
╩
#__inference_signature_wrapper_25767
sequential_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_24642o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name25763:%!

_user_specified_name25761:%!

_user_specified_name25759:%!

_user_specified_name25757:%!

_user_specified_name25755:%!

_user_specified_name25753:%
!

_user_specified_name25751:%	!

_user_specified_name25749:%!

_user_specified_name25747:%!

_user_specified_name25745:%!

_user_specified_name25743:%!

_user_specified_name25741:%!

_user_specified_name25739:%!

_user_specified_name25737:%!

_user_specified_name25735:%!

_user_specified_name25733:c _
1
_output_shapes
:         АА
*
_user_specified_namesequential_input
┤
¤
D__inference_conv2d_23_layer_call_and_return_conditional_losses_25430

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_25076

inputs
identityв
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
╕
L
0__inference_max_pooling2d_20_layer_call_fn_26125

inputs
identity┘
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
GPU 2J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_25056Г
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
ш
Ф
'__inference_dense_7_layer_call_fn_26260

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_25470o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26256:%!

_user_specified_name26254:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╕
L
0__inference_max_pooling2d_23_layer_call_fn_26215

inputs
identity┘
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
GPU 2J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_25086Г
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
Ф
Ю
)__inference_conv2d_23_layer_call_fn_26199

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_23_layer_call_and_return_conditional_losses_25430w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name26195:%!

_user_specified_name26193:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╞
serving_default▓
W
sequential_inputC
"serving_default_sequential_input:0         АА;
dense_70
StatefulPartitionedCall:0         tensorflow/serving/predict:╔ш
Ъ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
─
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
─
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_sequential
▌
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
е
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op"
_tf_keras_layer
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op"
_tf_keras_layer
е
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op"
_tf_keras_layer
е
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op"
_tf_keras_layer
е
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
к
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias"
_tf_keras_layer
├
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias"
_tf_keras_layer
Ъ
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
С12
Т13
Щ14
Ъ15"
trackable_list_wrapper
Ъ
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
С12
Т13
Щ14
Ъ15"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╧
аtrace_0
бtrace_12Ф
,__inference_sequential_5_layer_call_fn_25585
,__inference_sequential_5_layer_call_fn_25622╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0zбtrace_1
Е
вtrace_0
гtrace_12╩
G__inference_sequential_5_layer_call_and_return_conditional_losses_25477
G__inference_sequential_5_layer_call_and_return_conditional_losses_25544╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0zгtrace_1
╘B╤
 __inference__wrapped_model_24642sequential_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
а
	дiter
еbeta_1
жbeta_2

зdecay
иlearning_rate1mЎ2mў@m°Am∙Om·Pm√^m№_m¤mm■nm |mА}mБ	СmВ	ТmГ	ЩmД	ЪmЕ1vЖ2vЗ@vИAvЙOvКPvЛ^vМ_vНmvОnvП|vР}vС	СvТ	ТvУ	ЩvФ	ЪvХ"
	optimizer
-
йserving_default"
signature_map
л
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses"
_tf_keras_layer
л
░	variables
▒trainable_variables
▓regularization_losses
│	keras_api
┤__call__
+╡&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
█
╗trace_0
╝trace_1
╜trace_2
╛trace_32ш
*__inference_sequential_layer_call_fn_24676
*__inference_sequential_layer_call_fn_24681
*__inference_sequential_layer_call_fn_25772
*__inference_sequential_layer_call_fn_25777╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0z╝trace_1z╜trace_2z╛trace_3
╟
┐trace_0
└trace_1
┴trace_2
┬trace_32╘
E__inference_sequential_layer_call_and_return_conditional_losses_24665
E__inference_sequential_layer_call_and_return_conditional_losses_24671
E__inference_sequential_layer_call_and_return_conditional_losses_25787
E__inference_sequential_layer_call_and_return_conditional_losses_25797╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0z└trace_1z┴trace_2z┬trace_3
├
├	variables
─trainable_variables
┼regularization_losses
╞	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses
╔_random_generator"
_tf_keras_layer
├
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses
╨_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
у
╓trace_0
╫trace_1
╪trace_2
┘trace_32Ё
,__inference_sequential_1_layer_call_fn_25002
,__inference_sequential_1_layer_call_fn_25007
,__inference_sequential_1_layer_call_fn_25806
,__inference_sequential_1_layer_call_fn_25811╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0z╫trace_1z╪trace_2z┘trace_3
╧
┌trace_0
█trace_1
▄trace_2
▌trace_32▄
G__inference_sequential_1_layer_call_and_return_conditional_losses_24979
G__inference_sequential_1_layer_call_and_return_conditional_losses_24993
G__inference_sequential_1_layer_call_and_return_conditional_losses_26036
G__inference_sequential_1_layer_call_and_return_conditional_losses_26040╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0z█trace_1z▄trace_2z▌trace_3
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
х
уtrace_02╞
)__inference_conv2d_18_layer_call_fn_26049Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zуtrace_0
А
фtrace_02с
D__inference_conv2d_18_layer_call_and_return_conditional_losses_26060Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0
*:( 2conv2d_18/kernel
: 2conv2d_18/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ь
ъtrace_02═
0__inference_max_pooling2d_18_layer_call_fn_26065Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zъtrace_0
З
ыtrace_02ш
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_26070Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zыtrace_0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
х
ёtrace_02╞
)__inference_conv2d_19_layer_call_fn_26079Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
А
Єtrace_02с
D__inference_conv2d_19_layer_call_and_return_conditional_losses_26090Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0
*:( @2conv2d_19/kernel
:@2conv2d_19/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ь
°trace_02═
0__inference_max_pooling2d_19_layer_call_fn_26095Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
З
∙trace_02ш
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_26100Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
х
 trace_02╞
)__inference_conv2d_20_layer_call_fn_26109Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
А
Аtrace_02с
D__inference_conv2d_20_layer_call_and_return_conditional_losses_26120Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
*:(@@2conv2d_20/kernel
:@2conv2d_20/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ь
Жtrace_02═
0__inference_max_pooling2d_20_layer_call_fn_26125Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
З
Зtrace_02ш
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_26130Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
х
Нtrace_02╞
)__inference_conv2d_21_layer_call_fn_26139Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
А
Оtrace_02с
D__inference_conv2d_21_layer_call_and_return_conditional_losses_26150Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
*:(@@2conv2d_21/kernel
:@2conv2d_21/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
ь
Фtrace_02═
0__inference_max_pooling2d_21_layer_call_fn_26155Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
З
Хtrace_02ш
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_26160Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
х
Ыtrace_02╞
)__inference_conv2d_22_layer_call_fn_26169Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
А
Ьtrace_02с
D__inference_conv2d_22_layer_call_and_return_conditional_losses_26180Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
*:(@@2conv2d_22/kernel
:@2conv2d_22/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Эnon_trainable_variables
Юlayers
Яmetrics
 аlayer_regularization_losses
бlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ь
вtrace_02═
0__inference_max_pooling2d_22_layer_call_fn_26185Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
З
гtrace_02ш
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_26190Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
х
йtrace_02╞
)__inference_conv2d_23_layer_call_fn_26199Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zйtrace_0
А
кtrace_02с
D__inference_conv2d_23_layer_call_and_return_conditional_losses_26210Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
*:(@@2conv2d_23/kernel
:@2conv2d_23/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╖
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
ь
░trace_02═
0__inference_max_pooling2d_23_layer_call_fn_26215Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z░trace_0
З
▒trace_02ш
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_26220Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▓non_trainable_variables
│layers
┤metrics
 ╡layer_regularization_losses
╢layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
х
╖trace_02╞
)__inference_flatten_3_layer_call_fn_26225Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
А
╕trace_02с
D__inference_flatten_3_layer_call_and_return_conditional_losses_26231Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
0
С0
Т1"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
у
╛trace_02─
'__inference_dense_6_layer_call_fn_26240Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
■
┐trace_02▀
B__inference_dense_6_layer_call_and_return_conditional_losses_26251Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
!:	А@2dense_6/kernel
:@2dense_6/bias
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
у
┼trace_02─
'__inference_dense_7_layer_call_fn_26260Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┼trace_0
■
╞trace_02▀
B__inference_dense_7_layer_call_and_return_conditional_losses_26271Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
 :@2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
Ю
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
16"
trackable_list_wrapper
0
╟0
╚1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B·
,__inference_sequential_5_layer_call_fn_25585sequential_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
,__inference_sequential_5_layer_call_fn_25622sequential_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
G__inference_sequential_5_layer_call_and_return_conditional_losses_25477sequential_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
G__inference_sequential_5_layer_call_and_return_conditional_losses_25544sequential_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╙B╨
#__inference_signature_wrapper_25767sequential_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
ф
╬trace_02┼
(__inference_resizing_layer_call_fn_26276Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╬trace_0
 
╧trace_02р
C__inference_resizing_layer_call_and_return_conditional_losses_26285Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
░	variables
▒trainable_variables
▓regularization_losses
┤__call__
+╡&call_and_return_all_conditional_losses
'╡"call_and_return_conditional_losses"
_generic_user_object
х
╒trace_02╞
)__inference_rescaling_layer_call_fn_26290Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0
А
╓trace_02с
D__inference_rescaling_layer_call_and_return_conditional_losses_26298Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∙BЎ
*__inference_sequential_layer_call_fn_24676resizing_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
*__inference_sequential_layer_call_fn_24681resizing_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
*__inference_sequential_layer_call_fn_25772inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
*__inference_sequential_layer_call_fn_25777inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
E__inference_sequential_layer_call_and_return_conditional_losses_24665resizing_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
E__inference_sequential_layer_call_and_return_conditional_losses_24671resizing_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
МBЙ
E__inference_sequential_layer_call_and_return_conditional_losses_25787inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
МBЙ
E__inference_sequential_layer_call_and_return_conditional_losses_25797inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╫non_trainable_variables
╪layers
┘metrics
 ┌layer_regularization_losses
█layer_metrics
├	variables
─trainable_variables
┼regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
┴
▄trace_0
▌trace_12Ж
+__inference_random_flip_layer_call_fn_26305
+__inference_random_flip_layer_call_fn_26310й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▄trace_0z▌trace_1
ў
▐trace_0
▀trace_12╝
F__inference_random_flip_layer_call_and_return_conditional_losses_26467
F__inference_random_flip_layer_call_and_return_conditional_losses_26471й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0z▀trace_1
/
р
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses"
_generic_user_object
╔
цtrace_0
чtrace_12О
/__inference_random_rotation_layer_call_fn_26478
/__inference_random_rotation_layer_call_fn_26483й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0zчtrace_1
 
шtrace_0
щtrace_12─
J__inference_random_rotation_layer_call_and_return_conditional_losses_26604
J__inference_random_rotation_layer_call_and_return_conditional_losses_26608й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0zщtrace_1
/
ъ
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
■B√
,__inference_sequential_1_layer_call_fn_25002random_flip_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
,__inference_sequential_1_layer_call_fn_25007random_flip_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
,__inference_sequential_1_layer_call_fn_25806inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
,__inference_sequential_1_layer_call_fn_25811inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
G__inference_sequential_1_layer_call_and_return_conditional_losses_24979random_flip_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
G__inference_sequential_1_layer_call_and_return_conditional_losses_24993random_flip_input"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
G__inference_sequential_1_layer_call_and_return_conditional_losses_26036inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
G__inference_sequential_1_layer_call_and_return_conditional_losses_26040inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_conv2d_18_layer_call_fn_26049inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_18_layer_call_and_return_conditional_losses_26060inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_18_layer_call_fn_26065inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_26070inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_conv2d_19_layer_call_fn_26079inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_19_layer_call_and_return_conditional_losses_26090inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_19_layer_call_fn_26095inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_26100inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_conv2d_20_layer_call_fn_26109inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_20_layer_call_and_return_conditional_losses_26120inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_20_layer_call_fn_26125inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_26130inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_conv2d_21_layer_call_fn_26139inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_21_layer_call_and_return_conditional_losses_26150inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_21_layer_call_fn_26155inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_26160inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_conv2d_22_layer_call_fn_26169inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_22_layer_call_and_return_conditional_losses_26180inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_22_layer_call_fn_26185inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_26190inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_conv2d_23_layer_call_fn_26199inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_23_layer_call_and_return_conditional_losses_26210inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_23_layer_call_fn_26215inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_26220inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_flatten_3_layer_call_fn_26225inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_flatten_3_layer_call_and_return_conditional_losses_26231inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╤B╬
'__inference_dense_6_layer_call_fn_26240inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_6_layer_call_and_return_conditional_losses_26251inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╤B╬
'__inference_dense_7_layer_call_fn_26260inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_7_layer_call_and_return_conditional_losses_26271inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
ы	variables
ь	keras_api

эtotal

юcount"
_tf_keras_metric
c
я	variables
Ё	keras_api

ёtotal

Єcount
є
_fn_kwargs"
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
╥B╧
(__inference_resizing_layer_call_fn_26276inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_resizing_layer_call_and_return_conditional_losses_26285inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_rescaling_layer_call_fn_26290inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_rescaling_layer_call_and_return_conditional_losses_26298inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
цBу
+__inference_random_flip_layer_call_fn_26305inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
цBу
+__inference_random_flip_layer_call_fn_26310inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
F__inference_random_flip_layer_call_and_return_conditional_losses_26467inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
F__inference_random_flip_layer_call_and_return_conditional_losses_26471inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
/
Ї
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
ъBч
/__inference_random_rotation_layer_call_fn_26478inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
/__inference_random_rotation_layer_call_fn_26483inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
J__inference_random_rotation_layer_call_and_return_conditional_losses_26604inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЕBВ
J__inference_random_rotation_layer_call_and_return_conditional_losses_26608inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
/
ї
_state_var"
_generic_user_object
0
э0
ю1"
trackable_list_wrapper
.
ы	variables"
_generic_user_object
:  (2total
:  (2count
0
ё0
Є1"
trackable_list_wrapper
.
я	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 :	2random_flip/StateVar
$:"	2random_rotation/StateVar
/:- 2Adam/conv2d_18/kernel/m
!: 2Adam/conv2d_18/bias/m
/:- @2Adam/conv2d_19/kernel/m
!:@2Adam/conv2d_19/bias/m
/:-@@2Adam/conv2d_20/kernel/m
!:@2Adam/conv2d_20/bias/m
/:-@@2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
/:-@@2Adam/conv2d_22/kernel/m
!:@2Adam/conv2d_22/bias/m
/:-@@2Adam/conv2d_23/kernel/m
!:@2Adam/conv2d_23/bias/m
&:$	А@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
/:- 2Adam/conv2d_18/kernel/v
!: 2Adam/conv2d_18/bias/v
/:- @2Adam/conv2d_19/kernel/v
!:@2Adam/conv2d_19/bias/v
/:-@@2Adam/conv2d_20/kernel/v
!:@2Adam/conv2d_20/bias/v
/:-@@2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
/:-@@2Adam/conv2d_22/kernel/v
!:@2Adam/conv2d_22/bias/v
/:-@@2Adam/conv2d_23/kernel/v
!:@2Adam/conv2d_23/bias/v
&:$	А@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v│
 __inference__wrapped_model_24642О12@AOP^_mn|}СТЩЪCв@
9в6
4К1
sequential_input         АА
к "1к.
,
dense_7!К
dense_7         ┐
D__inference_conv2d_18_layer_call_and_return_conditional_losses_26060w129в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         ■■ 
Ъ Щ
)__inference_conv2d_18_layer_call_fn_26049l129в6
/в,
*К'
inputs         АА
к "+К(
unknown         ■■ ╗
D__inference_conv2d_19_layer_call_and_return_conditional_losses_26090s@A7в4
-в*
(К%
inputs          
к "4в1
*К'
tensor_0         }}@
Ъ Х
)__inference_conv2d_19_layer_call_fn_26079h@A7в4
-в*
(К%
inputs          
к ")К&
unknown         }}@╗
D__inference_conv2d_20_layer_call_and_return_conditional_losses_26120sOP7в4
-в*
(К%
inputs         >>@
к "4в1
*К'
tensor_0         <<@
Ъ Х
)__inference_conv2d_20_layer_call_fn_26109hOP7в4
-в*
(К%
inputs         >>@
к ")К&
unknown         <<@╗
D__inference_conv2d_21_layer_call_and_return_conditional_losses_26150s^_7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_conv2d_21_layer_call_fn_26139h^_7в4
-в*
(К%
inputs         @
к ")К&
unknown         @╗
D__inference_conv2d_22_layer_call_and_return_conditional_losses_26180smn7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_conv2d_22_layer_call_fn_26169hmn7в4
-в*
(К%
inputs         @
к ")К&
unknown         @╗
D__inference_conv2d_23_layer_call_and_return_conditional_losses_26210s|}7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_conv2d_23_layer_call_fn_26199h|}7в4
-в*
(К%
inputs         @
к ")К&
unknown         @м
B__inference_dense_6_layer_call_and_return_conditional_losses_26251fСТ0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         @
Ъ Ж
'__inference_dense_6_layer_call_fn_26240[СТ0в-
&в#
!К
inputs         А
к "!К
unknown         @л
B__inference_dense_7_layer_call_and_return_conditional_losses_26271eЩЪ/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         
Ъ Е
'__inference_dense_7_layer_call_fn_26260ZЩЪ/в,
%в"
 К
inputs         @
к "!К
unknown         ░
D__inference_flatten_3_layer_call_and_return_conditional_losses_26231h7в4
-в*
(К%
inputs         @
к "-в*
#К 
tensor_0         А
Ъ К
)__inference_flatten_3_layer_call_fn_26225]7в4
-в*
(К%
inputs         @
к ""К
unknown         Аї
K__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_26070еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_18_layer_call_fn_26065ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_26100еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_19_layer_call_fn_26095ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_26130еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_20_layer_call_fn_26125ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_26160еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_21_layer_call_fn_26155ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_26190еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_22_layer_call_fn_26185ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_26220еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_23_layer_call_fn_26215ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╗
F__inference_random_flip_layer_call_and_return_conditional_losses_26467qЇ8в5
.в+
%К"
inputs         А
p
к "1в.
'К$
tensor_0         А
Ъ ╖
F__inference_random_flip_layer_call_and_return_conditional_losses_26471m8в5
.в+
%К"
inputs         А
p 
к "1в.
'К$
tensor_0         А
Ъ Х
+__inference_random_flip_layer_call_fn_26305fЇ8в5
.в+
%К"
inputs         А
p
к "&К#
unknown         АС
+__inference_random_flip_layer_call_fn_26310b8в5
.в+
%К"
inputs         А
p 
к "&К#
unknown         А┐
J__inference_random_rotation_layer_call_and_return_conditional_losses_26604qї8в5
.в+
%К"
inputs         А
p
к "1в.
'К$
tensor_0         А
Ъ ╗
J__inference_random_rotation_layer_call_and_return_conditional_losses_26608m8в5
.в+
%К"
inputs         А
p 
к "1в.
'К$
tensor_0         А
Ъ Щ
/__inference_random_rotation_layer_call_fn_26478fї8в5
.в+
%К"
inputs         А
p
к "&К#
unknown         АХ
/__inference_random_rotation_layer_call_fn_26483b8в5
.в+
%К"
inputs         А
p 
к "&К#
unknown         Аб
D__inference_rescaling_layer_call_and_return_conditional_losses_26298Y,в)
"в
К
inputsАА
к ")в&
К
tensor_0АА
Ъ {
)__inference_rescaling_layer_call_fn_26290N,в)
"в
К
inputsАА
к "К
unknownААи
C__inference_resizing_layer_call_and_return_conditional_losses_26285a4в1
*в'
%К"
inputs         А
к ")в&
К
tensor_0АА
Ъ В
(__inference_resizing_layer_call_fn_26276V4в1
*в'
%К"
inputs         А
к "К
unknownАА╬
G__inference_sequential_1_layer_call_and_return_conditional_losses_24979ВЇїGвD
=в:
0К-
random_flip_input         А
p

 
к "1в.
'К$
tensor_0         А
Ъ ╟
G__inference_sequential_1_layer_call_and_return_conditional_losses_24993|GвD
=в:
0К-
random_flip_input         А
p 

 
к "1в.
'К$
tensor_0         А
Ъ ═
G__inference_sequential_1_layer_call_and_return_conditional_losses_26036БЇїAв>
7в4
*К'
inputs         АА
p

 
к "6в3
,К)
tensor_0         АА
Ъ ╞
G__inference_sequential_1_layer_call_and_return_conditional_losses_26040{Aв>
7в4
*К'
inputs         АА
p 

 
к "6в3
,К)
tensor_0         АА
Ъ з
,__inference_sequential_1_layer_call_fn_25002wЇїGвD
=в:
0К-
random_flip_input         А
p

 
к "&К#
unknown         Аб
,__inference_sequential_1_layer_call_fn_25007qGвD
=в:
0К-
random_flip_input         А
p 

 
к "&К#
unknown         Аж
,__inference_sequential_1_layer_call_fn_25806vЇїAв>
7в4
*К'
inputs         АА
p

 
к "+К(
unknown         ААа
,__inference_sequential_1_layer_call_fn_25811pAв>
7в4
*К'
inputs         АА
p 

 
к "+К(
unknown         ААс
G__inference_sequential_5_layer_call_and_return_conditional_losses_25477ХЇї12@AOP^_mn|}СТЩЪKвH
Aв>
4К1
sequential_input         АА
p

 
к ",в)
"К
tensor_0         
Ъ ▌
G__inference_sequential_5_layer_call_and_return_conditional_losses_25544С12@AOP^_mn|}СТЩЪKвH
Aв>
4К1
sequential_input         АА
p 

 
к ",в)
"К
tensor_0         
Ъ ╗
,__inference_sequential_5_layer_call_fn_25585КЇї12@AOP^_mn|}СТЩЪKвH
Aв>
4К1
sequential_input         АА
p

 
к "!К
unknown         ╖
,__inference_sequential_5_layer_call_fn_25622Ж12@AOP^_mn|}СТЩЪKвH
Aв>
4К1
sequential_input         АА
p 

 
к "!К
unknown         ║
E__inference_sequential_layer_call_and_return_conditional_losses_24665qDвA
:в7
-К*
resizing_input         А
p

 
к ")в&
К
tensor_0АА
Ъ ║
E__inference_sequential_layer_call_and_return_conditional_losses_24671qDвA
:в7
-К*
resizing_input         А
p 

 
к ")в&
К
tensor_0АА
Ъ ─
E__inference_sequential_layer_call_and_return_conditional_losses_25787{Aв>
7в4
*К'
inputs         АА
p

 
к "6в3
,К)
tensor_0         АА
Ъ ─
E__inference_sequential_layer_call_and_return_conditional_losses_25797{Aв>
7в4
*К'
inputs         АА
p 

 
к "6в3
,К)
tensor_0         АА
Ъ Ф
*__inference_sequential_layer_call_fn_24676fDвA
:в7
-К*
resizing_input         А
p

 
к "К
unknownААФ
*__inference_sequential_layer_call_fn_24681fDвA
:в7
-К*
resizing_input         А
p 

 
к "К
unknownААЮ
*__inference_sequential_layer_call_fn_25772pAв>
7в4
*К'
inputs         АА
p

 
к "+К(
unknown         ААЮ
*__inference_sequential_layer_call_fn_25777pAв>
7в4
*К'
inputs         АА
p 

 
к "+К(
unknown         АА╩
#__inference_signature_wrapper_25767в12@AOP^_mn|}СТЩЪWвT
в 
MкJ
H
sequential_input4К1
sequential_input         АА"1к.
,
dense_7!К
dense_7         