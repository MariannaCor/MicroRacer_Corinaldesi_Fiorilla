Ĺ	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ?
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
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8ޠ
x
layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namelayer_1/kernel
q
"layer_1/kernel/Read/ReadVariableOpReadVariableOplayer_1/kernel*
_output_shapes

: *
dtype0
p
layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelayer_1/bias
i
 layer_1/bias/Read/ReadVariableOpReadVariableOplayer_1/bias*
_output_shapes
: *
dtype0
x
layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namelayer_2/kernel
q
"layer_2/kernel/Read/ReadVariableOpReadVariableOplayer_2/kernel*
_output_shapes

:  *
dtype0
p
layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelayer_2/bias
i
 layer_2/bias/Read/ReadVariableOpReadVariableOplayer_2/bias*
_output_shapes
: *
dtype0
x
layer_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namelayer_3/kernel
q
"layer_3/kernel/Read/ReadVariableOpReadVariableOplayer_3/kernel*
_output_shapes

:  *
dtype0
p
layer_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelayer_3/bias
i
 layer_3/bias/Read/ReadVariableOpReadVariableOplayer_3/bias*
_output_shapes
: *
dtype0
x
layer_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namelayer_4/kernel
q
"layer_4/kernel/Read/ReadVariableOpReadVariableOplayer_4/kernel*
_output_shapes

:  *
dtype0
p
layer_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelayer_4/bias
i
 layer_4/bias/Read/ReadVariableOpReadVariableOplayer_4/bias*
_output_shapes
: *
dtype0
~
acc_out_mu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_nameacc_out_mu/kernel
w
%acc_out_mu/kernel/Read/ReadVariableOpReadVariableOpacc_out_mu/kernel*
_output_shapes

: *
dtype0
v
acc_out_mu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameacc_out_mu/bias
o
#acc_out_mu/bias/Read/ReadVariableOpReadVariableOpacc_out_mu/bias*
_output_shapes
:*
dtype0
~
dir_out_mu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedir_out_mu/kernel
w
%dir_out_mu/kernel/Read/ReadVariableOpReadVariableOpdir_out_mu/kernel*
_output_shapes

: *
dtype0
v
dir_out_mu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedir_out_mu/bias
o
#dir_out_mu/bias/Read/ReadVariableOpReadVariableOpdir_out_mu/bias*
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
?
Adam/layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/layer_1/kernel/m

)Adam/layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer_1/kernel/m*
_output_shapes

: *
dtype0
~
Adam/layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_1/bias/m
w
'Adam/layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/layer_2/kernel/m

)Adam/layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer_2/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_2/bias/m
w
'Adam/layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/layer_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/layer_3/kernel/m

)Adam/layer_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer_3/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/layer_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_3/bias/m
w
'Adam/layer_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer_3/bias/m*
_output_shapes
: *
dtype0
?
Adam/layer_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/layer_4/kernel/m

)Adam/layer_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer_4/kernel/m*
_output_shapes

:  *
dtype0
~
Adam/layer_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_4/bias/m
w
'Adam/layer_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer_4/bias/m*
_output_shapes
: *
dtype0
?
Adam/acc_out_mu/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/acc_out_mu/kernel/m
?
,Adam/acc_out_mu/kernel/m/Read/ReadVariableOpReadVariableOpAdam/acc_out_mu/kernel/m*
_output_shapes

: *
dtype0
?
Adam/acc_out_mu/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/acc_out_mu/bias/m
}
*Adam/acc_out_mu/bias/m/Read/ReadVariableOpReadVariableOpAdam/acc_out_mu/bias/m*
_output_shapes
:*
dtype0
?
Adam/dir_out_mu/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dir_out_mu/kernel/m
?
,Adam/dir_out_mu/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dir_out_mu/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dir_out_mu/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dir_out_mu/bias/m
}
*Adam/dir_out_mu/bias/m/Read/ReadVariableOpReadVariableOpAdam/dir_out_mu/bias/m*
_output_shapes
:*
dtype0
?
Adam/layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/layer_1/kernel/v

)Adam/layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer_1/kernel/v*
_output_shapes

: *
dtype0
~
Adam/layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_1/bias/v
w
'Adam/layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/layer_2/kernel/v

)Adam/layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer_2/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_2/bias/v
w
'Adam/layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/layer_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/layer_3/kernel/v

)Adam/layer_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer_3/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/layer_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_3/bias/v
w
'Adam/layer_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer_3/bias/v*
_output_shapes
: *
dtype0
?
Adam/layer_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *&
shared_nameAdam/layer_4/kernel/v

)Adam/layer_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer_4/kernel/v*
_output_shapes

:  *
dtype0
~
Adam/layer_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/layer_4/bias/v
w
'Adam/layer_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer_4/bias/v*
_output_shapes
: *
dtype0
?
Adam/acc_out_mu/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/acc_out_mu/kernel/v
?
,Adam/acc_out_mu/kernel/v/Read/ReadVariableOpReadVariableOpAdam/acc_out_mu/kernel/v*
_output_shapes

: *
dtype0
?
Adam/acc_out_mu/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/acc_out_mu/bias/v
}
*Adam/acc_out_mu/bias/v/Read/ReadVariableOpReadVariableOpAdam/acc_out_mu/bias/v*
_output_shapes
:*
dtype0
?
Adam/dir_out_mu/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *)
shared_nameAdam/dir_out_mu/kernel/v
?
,Adam/dir_out_mu/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dir_out_mu/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dir_out_mu/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dir_out_mu/bias/v
}
*Adam/dir_out_mu/bias/v/Read/ReadVariableOpReadVariableOpAdam/dir_out_mu/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
		optimizer

loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures

_init_input_shape
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
h

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
h

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
R
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?
9iter

:beta_1

;beta_2
	<decay
=learning_ratemkmlmmmnmomp#mq$mr)ms*mt/mu0mvvwvxvyvzv{v|#v}$v~)v*v?/v?0v?
 
V
0
1
2
3
4
5
#6
$7
)8
*9
/10
011
V
0
1
2
3
4
5
#6
$7
)8
*9
/10
011
 
?

>layers
?metrics
@non_trainable_variables
	variables
Alayer_regularization_losses
trainable_variables
regularization_losses
Blayer_metrics
 
 
ZX
VARIABLE_VALUElayer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

Clayers
Dmetrics
Enon_trainable_variables
	variables
Flayer_regularization_losses
trainable_variables
regularization_losses
Glayer_metrics
ZX
VARIABLE_VALUElayer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

Hlayers
Imetrics
Jnon_trainable_variables
	variables
Klayer_regularization_losses
trainable_variables
regularization_losses
Llayer_metrics
ZX
VARIABLE_VALUElayer_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?

Mlayers
Nmetrics
Onon_trainable_variables
	variables
Player_regularization_losses
 trainable_variables
!regularization_losses
Qlayer_metrics
ZX
VARIABLE_VALUElayer_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElayer_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?

Rlayers
Smetrics
Tnon_trainable_variables
%	variables
Ulayer_regularization_losses
&trainable_variables
'regularization_losses
Vlayer_metrics
][
VARIABLE_VALUEacc_out_mu/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEacc_out_mu/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
?

Wlayers
Xmetrics
Ynon_trainable_variables
+	variables
Zlayer_regularization_losses
,trainable_variables
-regularization_losses
[layer_metrics
][
VARIABLE_VALUEdir_out_mu/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdir_out_mu/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01

/0
01
 
?

\layers
]metrics
^non_trainable_variables
1	variables
_layer_regularization_losses
2trainable_variables
3regularization_losses
`layer_metrics
 
 
 
?

alayers
bmetrics
cnon_trainable_variables
5	variables
dlayer_regularization_losses
6trainable_variables
7regularization_losses
elayer_metrics
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
8
0
1
2
3
4
5
6
7

f0
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
 
 
 
 
 
 
 
 
 
4
	gtotal
	hcount
i	variables
j	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

g0
h1

i	variables
}{
VARIABLE_VALUEAdam/layer_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/acc_out_mu/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/acc_out_mu/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dir_out_mu/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dir_out_mu/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/layer_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/layer_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/acc_out_mu/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/acc_out_mu/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/dir_out_mu/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dir_out_mu/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1layer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biasacc_out_mu/kernelacc_out_mu/biasdir_out_mu/kerneldir_out_mu/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU 
(
2J 8? */
f*R(
&__inference_signature_wrapper_56323532
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"layer_1/kernel/Read/ReadVariableOp layer_1/bias/Read/ReadVariableOp"layer_2/kernel/Read/ReadVariableOp layer_2/bias/Read/ReadVariableOp"layer_3/kernel/Read/ReadVariableOp layer_3/bias/Read/ReadVariableOp"layer_4/kernel/Read/ReadVariableOp layer_4/bias/Read/ReadVariableOp%acc_out_mu/kernel/Read/ReadVariableOp#acc_out_mu/bias/Read/ReadVariableOp%dir_out_mu/kernel/Read/ReadVariableOp#dir_out_mu/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/layer_1/kernel/m/Read/ReadVariableOp'Adam/layer_1/bias/m/Read/ReadVariableOp)Adam/layer_2/kernel/m/Read/ReadVariableOp'Adam/layer_2/bias/m/Read/ReadVariableOp)Adam/layer_3/kernel/m/Read/ReadVariableOp'Adam/layer_3/bias/m/Read/ReadVariableOp)Adam/layer_4/kernel/m/Read/ReadVariableOp'Adam/layer_4/bias/m/Read/ReadVariableOp,Adam/acc_out_mu/kernel/m/Read/ReadVariableOp*Adam/acc_out_mu/bias/m/Read/ReadVariableOp,Adam/dir_out_mu/kernel/m/Read/ReadVariableOp*Adam/dir_out_mu/bias/m/Read/ReadVariableOp)Adam/layer_1/kernel/v/Read/ReadVariableOp'Adam/layer_1/bias/v/Read/ReadVariableOp)Adam/layer_2/kernel/v/Read/ReadVariableOp'Adam/layer_2/bias/v/Read/ReadVariableOp)Adam/layer_3/kernel/v/Read/ReadVariableOp'Adam/layer_3/bias/v/Read/ReadVariableOp)Adam/layer_4/kernel/v/Read/ReadVariableOp'Adam/layer_4/bias/v/Read/ReadVariableOp,Adam/acc_out_mu/kernel/v/Read/ReadVariableOp*Adam/acc_out_mu/bias/v/Read/ReadVariableOp,Adam/dir_out_mu/kernel/v/Read/ReadVariableOp*Adam/dir_out_mu/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? **
f%R#
!__inference__traced_save_56323971
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_1/kernellayer_1/biaslayer_2/kernellayer_2/biaslayer_3/kernellayer_3/biaslayer_4/kernellayer_4/biasacc_out_mu/kernelacc_out_mu/biasdir_out_mu/kerneldir_out_mu/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/layer_1/kernel/mAdam/layer_1/bias/mAdam/layer_2/kernel/mAdam/layer_2/bias/mAdam/layer_3/kernel/mAdam/layer_3/bias/mAdam/layer_4/kernel/mAdam/layer_4/bias/mAdam/acc_out_mu/kernel/mAdam/acc_out_mu/bias/mAdam/dir_out_mu/kernel/mAdam/dir_out_mu/bias/mAdam/layer_1/kernel/vAdam/layer_1/bias/vAdam/layer_2/kernel/vAdam/layer_2/bias/vAdam/layer_3/kernel/vAdam/layer_3/bias/vAdam/layer_4/kernel/vAdam/layer_4/bias/vAdam/acc_out_mu/kernel/vAdam/acc_out_mu/bias/vAdam/dir_out_mu/kernel/vAdam/dir_out_mu/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? *-
f(R&
$__inference__traced_restore_56324110??
?
?
-__inference_acc_out_mu_layer_call_fn_56323786

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_563231762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?=
?	
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323580

inputs8
&layer_1_matmul_readvariableop_resource: 5
'layer_1_biasadd_readvariableop_resource: 8
&layer_2_matmul_readvariableop_resource:  5
'layer_2_biasadd_readvariableop_resource: 8
&layer_3_matmul_readvariableop_resource:  5
'layer_3_biasadd_readvariableop_resource: 8
&layer_4_matmul_readvariableop_resource:  5
'layer_4_biasadd_readvariableop_resource: ;
)acc_out_mu_matmul_readvariableop_resource: 8
*acc_out_mu_biasadd_readvariableop_resource:;
)dir_out_mu_matmul_readvariableop_resource: 8
*dir_out_mu_biasadd_readvariableop_resource:
identity??!acc_out_mu/BiasAdd/ReadVariableOp? acc_out_mu/MatMul/ReadVariableOp?!dir_out_mu/BiasAdd/ReadVariableOp? dir_out_mu/MatMul/ReadVariableOp?layer_1/BiasAdd/ReadVariableOp?layer_1/MatMul/ReadVariableOp?layer_2/BiasAdd/ReadVariableOp?layer_2/MatMul/ReadVariableOp?layer_3/BiasAdd/ReadVariableOp?layer_3/MatMul/ReadVariableOp?layer_4/BiasAdd/ReadVariableOp?layer_4/MatMul/ReadVariableOp?
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
layer_1/MatMul/ReadVariableOp?
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_1/MatMul?
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_1/BiasAdd/ReadVariableOp?
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_1/BiasAddp
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_1/Relu?
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
layer_2/MatMul/ReadVariableOp?
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_2/MatMul?
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_2/BiasAdd/ReadVariableOp?
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_2/BiasAddp
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_2/Relu?
layer_3/MatMul/ReadVariableOpReadVariableOp&layer_3_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
layer_3/MatMul/ReadVariableOp?
layer_3/MatMulMatMullayer_2/Relu:activations:0%layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_3/MatMul?
layer_3/BiasAdd/ReadVariableOpReadVariableOp'layer_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_3/BiasAdd/ReadVariableOp?
layer_3/BiasAddBiasAddlayer_3/MatMul:product:0&layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_3/BiasAddp
layer_3/ReluRelulayer_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_3/Relu?
layer_4/MatMul/ReadVariableOpReadVariableOp&layer_4_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
layer_4/MatMul/ReadVariableOp?
layer_4/MatMulMatMullayer_3/Relu:activations:0%layer_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_4/MatMul?
layer_4/BiasAdd/ReadVariableOpReadVariableOp'layer_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_4/BiasAdd/ReadVariableOp?
layer_4/BiasAddBiasAddlayer_4/MatMul:product:0&layer_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_4/BiasAddp
layer_4/ReluRelulayer_4/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_4/Relu?
 acc_out_mu/MatMul/ReadVariableOpReadVariableOp)acc_out_mu_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 acc_out_mu/MatMul/ReadVariableOp?
acc_out_mu/MatMulMatMullayer_4/Relu:activations:0(acc_out_mu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
acc_out_mu/MatMul?
!acc_out_mu/BiasAdd/ReadVariableOpReadVariableOp*acc_out_mu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!acc_out_mu/BiasAdd/ReadVariableOp?
acc_out_mu/BiasAddBiasAddacc_out_mu/MatMul:product:0)acc_out_mu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
acc_out_mu/BiasAddy
acc_out_mu/TanhTanhacc_out_mu/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
acc_out_mu/Tanh?
 dir_out_mu/MatMul/ReadVariableOpReadVariableOp)dir_out_mu_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 dir_out_mu/MatMul/ReadVariableOp?
dir_out_mu/MatMulMatMullayer_4/Relu:activations:0(dir_out_mu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dir_out_mu/MatMul?
!dir_out_mu/BiasAdd/ReadVariableOpReadVariableOp*dir_out_mu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dir_out_mu/BiasAdd/ReadVariableOp?
dir_out_mu/BiasAddBiasAdddir_out_mu/MatMul:product:0)dir_out_mu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dir_out_mu/BiasAddy
dir_out_mu/TanhTanhdir_out_mu/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dir_out_mu/Tanht
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2acc_out_mu/Tanh:y:0dir_out_mu/Tanh:y:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatenate/concatv
IdentityIdentityconcatenate/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^acc_out_mu/BiasAdd/ReadVariableOp!^acc_out_mu/MatMul/ReadVariableOp"^dir_out_mu/BiasAdd/ReadVariableOp!^dir_out_mu/MatMul/ReadVariableOp^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp^layer_3/BiasAdd/ReadVariableOp^layer_3/MatMul/ReadVariableOp^layer_4/BiasAdd/ReadVariableOp^layer_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2F
!acc_out_mu/BiasAdd/ReadVariableOp!acc_out_mu/BiasAdd/ReadVariableOp2D
 acc_out_mu/MatMul/ReadVariableOp acc_out_mu/MatMul/ReadVariableOp2F
!dir_out_mu/BiasAdd/ReadVariableOp!dir_out_mu/BiasAdd/ReadVariableOp2D
 dir_out_mu/MatMul/ReadVariableOp dir_out_mu/MatMul/ReadVariableOp2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2@
layer_3/BiasAdd/ReadVariableOplayer_3/BiasAdd/ReadVariableOp2>
layer_3/MatMul/ReadVariableOplayer_3/MatMul/ReadVariableOp2@
layer_4/BiasAdd/ReadVariableOplayer_4/BiasAdd/ReadVariableOp2>
layer_4/MatMul/ReadVariableOplayer_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_layer_4_layer_call_and_return_conditional_losses_56323159

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_ActorNet_layer_call_fn_56323425
input_1
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU 
(
2J 8? *O
fJRH
F__inference_ActorNet_layer_call_and_return_conditional_losses_563233692
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_56323797

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?&
?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323460
input_1"
layer_1_56323428: 
layer_1_56323430: "
layer_2_56323433:  
layer_2_56323435: "
layer_3_56323438:  
layer_3_56323440: "
layer_4_56323443:  
layer_4_56323445: %
acc_out_mu_56323448: !
acc_out_mu_56323450:%
dir_out_mu_56323453: !
dir_out_mu_56323455:
identity??"acc_out_mu/StatefulPartitionedCall?"dir_out_mu/StatefulPartitionedCall?layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall?layer_3/StatefulPartitionedCall?layer_4/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_1_56323428layer_1_56323430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_563231082!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_56323433layer_2_56323435*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_563231252!
layer_2/StatefulPartitionedCall?
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_56323438layer_3_56323440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_563231422!
layer_3/StatefulPartitionedCall?
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_56323443layer_4_56323445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_563231592!
layer_4/StatefulPartitionedCall?
"acc_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0acc_out_mu_56323448acc_out_mu_56323450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_563231762$
"acc_out_mu/StatefulPartitionedCall?
"dir_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0dir_out_mu_56323453dir_out_mu_56323455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_563231932$
"dir_out_mu/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall+acc_out_mu/StatefulPartitionedCall:output:0+dir_out_mu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_563232062
concatenate/PartitionedCall
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^acc_out_mu/StatefulPartitionedCall#^dir_out_mu/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2H
"acc_out_mu/StatefulPartitionedCall"acc_out_mu/StatefulPartitionedCall2H
"dir_out_mu/StatefulPartitionedCall"dir_out_mu/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
Z
.__inference_concatenate_layer_call_fn_56323819
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_563232062
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
E__inference_layer_1_layer_call_and_return_conditional_losses_56323108

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_layer_3_layer_call_fn_56323746

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_563231422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_layer_1_layer_call_and_return_conditional_losses_56323697

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_56323193

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?I
?

#__inference__wrapped_model_56323090
input_1A
/actornet_layer_1_matmul_readvariableop_resource: >
0actornet_layer_1_biasadd_readvariableop_resource: A
/actornet_layer_2_matmul_readvariableop_resource:  >
0actornet_layer_2_biasadd_readvariableop_resource: A
/actornet_layer_3_matmul_readvariableop_resource:  >
0actornet_layer_3_biasadd_readvariableop_resource: A
/actornet_layer_4_matmul_readvariableop_resource:  >
0actornet_layer_4_biasadd_readvariableop_resource: D
2actornet_acc_out_mu_matmul_readvariableop_resource: A
3actornet_acc_out_mu_biasadd_readvariableop_resource:D
2actornet_dir_out_mu_matmul_readvariableop_resource: A
3actornet_dir_out_mu_biasadd_readvariableop_resource:
identity??*ActorNet/acc_out_mu/BiasAdd/ReadVariableOp?)ActorNet/acc_out_mu/MatMul/ReadVariableOp?*ActorNet/dir_out_mu/BiasAdd/ReadVariableOp?)ActorNet/dir_out_mu/MatMul/ReadVariableOp?'ActorNet/layer_1/BiasAdd/ReadVariableOp?&ActorNet/layer_1/MatMul/ReadVariableOp?'ActorNet/layer_2/BiasAdd/ReadVariableOp?&ActorNet/layer_2/MatMul/ReadVariableOp?'ActorNet/layer_3/BiasAdd/ReadVariableOp?&ActorNet/layer_3/MatMul/ReadVariableOp?'ActorNet/layer_4/BiasAdd/ReadVariableOp?&ActorNet/layer_4/MatMul/ReadVariableOp?
&ActorNet/layer_1/MatMul/ReadVariableOpReadVariableOp/actornet_layer_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&ActorNet/layer_1/MatMul/ReadVariableOp?
ActorNet/layer_1/MatMulMatMulinput_1.ActorNet/layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_1/MatMul?
'ActorNet/layer_1/BiasAdd/ReadVariableOpReadVariableOp0actornet_layer_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ActorNet/layer_1/BiasAdd/ReadVariableOp?
ActorNet/layer_1/BiasAddBiasAdd!ActorNet/layer_1/MatMul:product:0/ActorNet/layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_1/BiasAdd?
ActorNet/layer_1/ReluRelu!ActorNet/layer_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_1/Relu?
&ActorNet/layer_2/MatMul/ReadVariableOpReadVariableOp/actornet_layer_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ActorNet/layer_2/MatMul/ReadVariableOp?
ActorNet/layer_2/MatMulMatMul#ActorNet/layer_1/Relu:activations:0.ActorNet/layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_2/MatMul?
'ActorNet/layer_2/BiasAdd/ReadVariableOpReadVariableOp0actornet_layer_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ActorNet/layer_2/BiasAdd/ReadVariableOp?
ActorNet/layer_2/BiasAddBiasAdd!ActorNet/layer_2/MatMul:product:0/ActorNet/layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_2/BiasAdd?
ActorNet/layer_2/ReluRelu!ActorNet/layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_2/Relu?
&ActorNet/layer_3/MatMul/ReadVariableOpReadVariableOp/actornet_layer_3_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ActorNet/layer_3/MatMul/ReadVariableOp?
ActorNet/layer_3/MatMulMatMul#ActorNet/layer_2/Relu:activations:0.ActorNet/layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_3/MatMul?
'ActorNet/layer_3/BiasAdd/ReadVariableOpReadVariableOp0actornet_layer_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ActorNet/layer_3/BiasAdd/ReadVariableOp?
ActorNet/layer_3/BiasAddBiasAdd!ActorNet/layer_3/MatMul:product:0/ActorNet/layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_3/BiasAdd?
ActorNet/layer_3/ReluRelu!ActorNet/layer_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_3/Relu?
&ActorNet/layer_4/MatMul/ReadVariableOpReadVariableOp/actornet_layer_4_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&ActorNet/layer_4/MatMul/ReadVariableOp?
ActorNet/layer_4/MatMulMatMul#ActorNet/layer_3/Relu:activations:0.ActorNet/layer_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_4/MatMul?
'ActorNet/layer_4/BiasAdd/ReadVariableOpReadVariableOp0actornet_layer_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'ActorNet/layer_4/BiasAdd/ReadVariableOp?
ActorNet/layer_4/BiasAddBiasAdd!ActorNet/layer_4/MatMul:product:0/ActorNet/layer_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_4/BiasAdd?
ActorNet/layer_4/ReluRelu!ActorNet/layer_4/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
ActorNet/layer_4/Relu?
)ActorNet/acc_out_mu/MatMul/ReadVariableOpReadVariableOp2actornet_acc_out_mu_matmul_readvariableop_resource*
_output_shapes

: *
dtype02+
)ActorNet/acc_out_mu/MatMul/ReadVariableOp?
ActorNet/acc_out_mu/MatMulMatMul#ActorNet/layer_4/Relu:activations:01ActorNet/acc_out_mu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ActorNet/acc_out_mu/MatMul?
*ActorNet/acc_out_mu/BiasAdd/ReadVariableOpReadVariableOp3actornet_acc_out_mu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*ActorNet/acc_out_mu/BiasAdd/ReadVariableOp?
ActorNet/acc_out_mu/BiasAddBiasAdd$ActorNet/acc_out_mu/MatMul:product:02ActorNet/acc_out_mu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ActorNet/acc_out_mu/BiasAdd?
ActorNet/acc_out_mu/TanhTanh$ActorNet/acc_out_mu/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ActorNet/acc_out_mu/Tanh?
)ActorNet/dir_out_mu/MatMul/ReadVariableOpReadVariableOp2actornet_dir_out_mu_matmul_readvariableop_resource*
_output_shapes

: *
dtype02+
)ActorNet/dir_out_mu/MatMul/ReadVariableOp?
ActorNet/dir_out_mu/MatMulMatMul#ActorNet/layer_4/Relu:activations:01ActorNet/dir_out_mu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ActorNet/dir_out_mu/MatMul?
*ActorNet/dir_out_mu/BiasAdd/ReadVariableOpReadVariableOp3actornet_dir_out_mu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*ActorNet/dir_out_mu/BiasAdd/ReadVariableOp?
ActorNet/dir_out_mu/BiasAddBiasAdd$ActorNet/dir_out_mu/MatMul:product:02ActorNet/dir_out_mu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
ActorNet/dir_out_mu/BiasAdd?
ActorNet/dir_out_mu/TanhTanh$ActorNet/dir_out_mu/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
ActorNet/dir_out_mu/Tanh?
 ActorNet/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2"
 ActorNet/concatenate/concat/axis?
ActorNet/concatenate/concatConcatV2ActorNet/acc_out_mu/Tanh:y:0ActorNet/dir_out_mu/Tanh:y:0)ActorNet/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
ActorNet/concatenate/concat
IdentityIdentity$ActorNet/concatenate/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp+^ActorNet/acc_out_mu/BiasAdd/ReadVariableOp*^ActorNet/acc_out_mu/MatMul/ReadVariableOp+^ActorNet/dir_out_mu/BiasAdd/ReadVariableOp*^ActorNet/dir_out_mu/MatMul/ReadVariableOp(^ActorNet/layer_1/BiasAdd/ReadVariableOp'^ActorNet/layer_1/MatMul/ReadVariableOp(^ActorNet/layer_2/BiasAdd/ReadVariableOp'^ActorNet/layer_2/MatMul/ReadVariableOp(^ActorNet/layer_3/BiasAdd/ReadVariableOp'^ActorNet/layer_3/MatMul/ReadVariableOp(^ActorNet/layer_4/BiasAdd/ReadVariableOp'^ActorNet/layer_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2X
*ActorNet/acc_out_mu/BiasAdd/ReadVariableOp*ActorNet/acc_out_mu/BiasAdd/ReadVariableOp2V
)ActorNet/acc_out_mu/MatMul/ReadVariableOp)ActorNet/acc_out_mu/MatMul/ReadVariableOp2X
*ActorNet/dir_out_mu/BiasAdd/ReadVariableOp*ActorNet/dir_out_mu/BiasAdd/ReadVariableOp2V
)ActorNet/dir_out_mu/MatMul/ReadVariableOp)ActorNet/dir_out_mu/MatMul/ReadVariableOp2R
'ActorNet/layer_1/BiasAdd/ReadVariableOp'ActorNet/layer_1/BiasAdd/ReadVariableOp2P
&ActorNet/layer_1/MatMul/ReadVariableOp&ActorNet/layer_1/MatMul/ReadVariableOp2R
'ActorNet/layer_2/BiasAdd/ReadVariableOp'ActorNet/layer_2/BiasAdd/ReadVariableOp2P
&ActorNet/layer_2/MatMul/ReadVariableOp&ActorNet/layer_2/MatMul/ReadVariableOp2R
'ActorNet/layer_3/BiasAdd/ReadVariableOp'ActorNet/layer_3/BiasAdd/ReadVariableOp2P
&ActorNet/layer_3/MatMul/ReadVariableOp&ActorNet/layer_3/MatMul/ReadVariableOp2R
'ActorNet/layer_4/BiasAdd/ReadVariableOp'ActorNet/layer_4/BiasAdd/ReadVariableOp2P
&ActorNet/layer_4/MatMul/ReadVariableOp&ActorNet/layer_4/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
&__inference_signature_wrapper_56323532
input_1
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU 
(
2J 8? *,
f'R%
#__inference__wrapped_model_563230902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
+__inference_ActorNet_layer_call_fn_56323657

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU 
(
2J 8? *O
fJRH
F__inference_ActorNet_layer_call_and_return_conditional_losses_563232092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323369

inputs"
layer_1_56323337: 
layer_1_56323339: "
layer_2_56323342:  
layer_2_56323344: "
layer_3_56323347:  
layer_3_56323349: "
layer_4_56323352:  
layer_4_56323354: %
acc_out_mu_56323357: !
acc_out_mu_56323359:%
dir_out_mu_56323362: !
dir_out_mu_56323364:
identity??"acc_out_mu/StatefulPartitionedCall?"dir_out_mu/StatefulPartitionedCall?layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall?layer_3/StatefulPartitionedCall?layer_4/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_56323337layer_1_56323339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_563231082!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_56323342layer_2_56323344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_563231252!
layer_2/StatefulPartitionedCall?
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_56323347layer_3_56323349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_563231422!
layer_3/StatefulPartitionedCall?
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_56323352layer_4_56323354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_563231592!
layer_4/StatefulPartitionedCall?
"acc_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0acc_out_mu_56323357acc_out_mu_56323359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_563231762$
"acc_out_mu/StatefulPartitionedCall?
"dir_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0dir_out_mu_56323362dir_out_mu_56323364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_563231932$
"dir_out_mu/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall+acc_out_mu/StatefulPartitionedCall:output:0+dir_out_mu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_563232062
concatenate/PartitionedCall
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^acc_out_mu/StatefulPartitionedCall#^dir_out_mu/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2H
"acc_out_mu/StatefulPartitionedCall"acc_out_mu/StatefulPartitionedCall2H
"dir_out_mu/StatefulPartitionedCall"dir_out_mu/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_layer_call_and_return_conditional_losses_56323206

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323495
input_1"
layer_1_56323463: 
layer_1_56323465: "
layer_2_56323468:  
layer_2_56323470: "
layer_3_56323473:  
layer_3_56323475: "
layer_4_56323478:  
layer_4_56323480: %
acc_out_mu_56323483: !
acc_out_mu_56323485:%
dir_out_mu_56323488: !
dir_out_mu_56323490:
identity??"acc_out_mu/StatefulPartitionedCall?"dir_out_mu/StatefulPartitionedCall?layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall?layer_3/StatefulPartitionedCall?layer_4/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinput_1layer_1_56323463layer_1_56323465*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_563231082!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_56323468layer_2_56323470*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_563231252!
layer_2/StatefulPartitionedCall?
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_56323473layer_3_56323475*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_563231422!
layer_3/StatefulPartitionedCall?
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_56323478layer_4_56323480*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_563231592!
layer_4/StatefulPartitionedCall?
"acc_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0acc_out_mu_56323483acc_out_mu_56323485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_563231762$
"acc_out_mu/StatefulPartitionedCall?
"dir_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0dir_out_mu_56323488dir_out_mu_56323490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_563231932$
"dir_out_mu/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall+acc_out_mu/StatefulPartitionedCall:output:0+dir_out_mu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_563232062
concatenate/PartitionedCall
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^acc_out_mu/StatefulPartitionedCall#^dir_out_mu/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2H
"acc_out_mu/StatefulPartitionedCall"acc_out_mu/StatefulPartitionedCall2H
"dir_out_mu/StatefulPartitionedCall"dir_out_mu/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
E__inference_layer_2_layer_call_and_return_conditional_losses_56323125

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_layer_4_layer_call_and_return_conditional_losses_56323757

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_layer_2_layer_call_fn_56323726

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_563231252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
u
I__inference_concatenate_layer_call_and_return_conditional_losses_56323813
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_layer_4_layer_call_fn_56323766

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_563231592
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
-__inference_dir_out_mu_layer_call_fn_56323806

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_563231932
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
$__inference__traced_restore_56324110
file_prefix1
assignvariableop_layer_1_kernel: -
assignvariableop_1_layer_1_bias: 3
!assignvariableop_2_layer_2_kernel:  -
assignvariableop_3_layer_2_bias: 3
!assignvariableop_4_layer_3_kernel:  -
assignvariableop_5_layer_3_bias: 3
!assignvariableop_6_layer_4_kernel:  -
assignvariableop_7_layer_4_bias: 6
$assignvariableop_8_acc_out_mu_kernel: 0
"assignvariableop_9_acc_out_mu_bias:7
%assignvariableop_10_dir_out_mu_kernel: 1
#assignvariableop_11_dir_out_mu_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: ;
)assignvariableop_19_adam_layer_1_kernel_m: 5
'assignvariableop_20_adam_layer_1_bias_m: ;
)assignvariableop_21_adam_layer_2_kernel_m:  5
'assignvariableop_22_adam_layer_2_bias_m: ;
)assignvariableop_23_adam_layer_3_kernel_m:  5
'assignvariableop_24_adam_layer_3_bias_m: ;
)assignvariableop_25_adam_layer_4_kernel_m:  5
'assignvariableop_26_adam_layer_4_bias_m: >
,assignvariableop_27_adam_acc_out_mu_kernel_m: 8
*assignvariableop_28_adam_acc_out_mu_bias_m:>
,assignvariableop_29_adam_dir_out_mu_kernel_m: 8
*assignvariableop_30_adam_dir_out_mu_bias_m:;
)assignvariableop_31_adam_layer_1_kernel_v: 5
'assignvariableop_32_adam_layer_1_bias_v: ;
)assignvariableop_33_adam_layer_2_kernel_v:  5
'assignvariableop_34_adam_layer_2_bias_v: ;
)assignvariableop_35_adam_layer_3_kernel_v:  5
'assignvariableop_36_adam_layer_3_bias_v: ;
)assignvariableop_37_adam_layer_4_kernel_v:  5
'assignvariableop_38_adam_layer_4_bias_v: >
,assignvariableop_39_adam_acc_out_mu_kernel_v: 8
*assignvariableop_40_adam_acc_out_mu_bias_v:>
,assignvariableop_41_adam_dir_out_mu_kernel_v: 8
*assignvariableop_42_adam_dir_out_mu_bias_v:
identity_44??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_layer_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_layer_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_layer_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_layer_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_acc_out_mu_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_acc_out_mu_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_dir_out_mu_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_dir_out_mu_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_layer_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_layer_1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_layer_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_layer_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_layer_3_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_layer_3_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_layer_4_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_layer_4_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_acc_out_mu_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_acc_out_mu_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dir_out_mu_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dir_out_mu_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_layer_1_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_layer_1_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_layer_2_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_layer_2_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_layer_3_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_layer_3_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_layer_4_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_layer_4_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_acc_out_mu_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_acc_out_mu_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_dir_out_mu_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dir_out_mu_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43f
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_44?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
*__inference_layer_1_layer_call_fn_56323706

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_563231082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?=
?	
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323628

inputs8
&layer_1_matmul_readvariableop_resource: 5
'layer_1_biasadd_readvariableop_resource: 8
&layer_2_matmul_readvariableop_resource:  5
'layer_2_biasadd_readvariableop_resource: 8
&layer_3_matmul_readvariableop_resource:  5
'layer_3_biasadd_readvariableop_resource: 8
&layer_4_matmul_readvariableop_resource:  5
'layer_4_biasadd_readvariableop_resource: ;
)acc_out_mu_matmul_readvariableop_resource: 8
*acc_out_mu_biasadd_readvariableop_resource:;
)dir_out_mu_matmul_readvariableop_resource: 8
*dir_out_mu_biasadd_readvariableop_resource:
identity??!acc_out_mu/BiasAdd/ReadVariableOp? acc_out_mu/MatMul/ReadVariableOp?!dir_out_mu/BiasAdd/ReadVariableOp? dir_out_mu/MatMul/ReadVariableOp?layer_1/BiasAdd/ReadVariableOp?layer_1/MatMul/ReadVariableOp?layer_2/BiasAdd/ReadVariableOp?layer_2/MatMul/ReadVariableOp?layer_3/BiasAdd/ReadVariableOp?layer_3/MatMul/ReadVariableOp?layer_4/BiasAdd/ReadVariableOp?layer_4/MatMul/ReadVariableOp?
layer_1/MatMul/ReadVariableOpReadVariableOp&layer_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
layer_1/MatMul/ReadVariableOp?
layer_1/MatMulMatMulinputs%layer_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_1/MatMul?
layer_1/BiasAdd/ReadVariableOpReadVariableOp'layer_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_1/BiasAdd/ReadVariableOp?
layer_1/BiasAddBiasAddlayer_1/MatMul:product:0&layer_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_1/BiasAddp
layer_1/ReluRelulayer_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_1/Relu?
layer_2/MatMul/ReadVariableOpReadVariableOp&layer_2_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
layer_2/MatMul/ReadVariableOp?
layer_2/MatMulMatMullayer_1/Relu:activations:0%layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_2/MatMul?
layer_2/BiasAdd/ReadVariableOpReadVariableOp'layer_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_2/BiasAdd/ReadVariableOp?
layer_2/BiasAddBiasAddlayer_2/MatMul:product:0&layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_2/BiasAddp
layer_2/ReluRelulayer_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_2/Relu?
layer_3/MatMul/ReadVariableOpReadVariableOp&layer_3_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
layer_3/MatMul/ReadVariableOp?
layer_3/MatMulMatMullayer_2/Relu:activations:0%layer_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_3/MatMul?
layer_3/BiasAdd/ReadVariableOpReadVariableOp'layer_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_3/BiasAdd/ReadVariableOp?
layer_3/BiasAddBiasAddlayer_3/MatMul:product:0&layer_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_3/BiasAddp
layer_3/ReluRelulayer_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_3/Relu?
layer_4/MatMul/ReadVariableOpReadVariableOp&layer_4_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
layer_4/MatMul/ReadVariableOp?
layer_4/MatMulMatMullayer_3/Relu:activations:0%layer_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_4/MatMul?
layer_4/BiasAdd/ReadVariableOpReadVariableOp'layer_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
layer_4/BiasAdd/ReadVariableOp?
layer_4/BiasAddBiasAddlayer_4/MatMul:product:0&layer_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
layer_4/BiasAddp
layer_4/ReluRelulayer_4/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
layer_4/Relu?
 acc_out_mu/MatMul/ReadVariableOpReadVariableOp)acc_out_mu_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 acc_out_mu/MatMul/ReadVariableOp?
acc_out_mu/MatMulMatMullayer_4/Relu:activations:0(acc_out_mu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
acc_out_mu/MatMul?
!acc_out_mu/BiasAdd/ReadVariableOpReadVariableOp*acc_out_mu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!acc_out_mu/BiasAdd/ReadVariableOp?
acc_out_mu/BiasAddBiasAddacc_out_mu/MatMul:product:0)acc_out_mu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
acc_out_mu/BiasAddy
acc_out_mu/TanhTanhacc_out_mu/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
acc_out_mu/Tanh?
 dir_out_mu/MatMul/ReadVariableOpReadVariableOp)dir_out_mu_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 dir_out_mu/MatMul/ReadVariableOp?
dir_out_mu/MatMulMatMullayer_4/Relu:activations:0(dir_out_mu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dir_out_mu/MatMul?
!dir_out_mu/BiasAdd/ReadVariableOpReadVariableOp*dir_out_mu_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dir_out_mu/BiasAdd/ReadVariableOp?
dir_out_mu/BiasAddBiasAdddir_out_mu/MatMul:product:0)dir_out_mu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dir_out_mu/BiasAddy
dir_out_mu/TanhTanhdir_out_mu/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dir_out_mu/Tanht
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2acc_out_mu/Tanh:y:0dir_out_mu/Tanh:y:0 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
concatenate/concatv
IdentityIdentityconcatenate/concat:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^acc_out_mu/BiasAdd/ReadVariableOp!^acc_out_mu/MatMul/ReadVariableOp"^dir_out_mu/BiasAdd/ReadVariableOp!^dir_out_mu/MatMul/ReadVariableOp^layer_1/BiasAdd/ReadVariableOp^layer_1/MatMul/ReadVariableOp^layer_2/BiasAdd/ReadVariableOp^layer_2/MatMul/ReadVariableOp^layer_3/BiasAdd/ReadVariableOp^layer_3/MatMul/ReadVariableOp^layer_4/BiasAdd/ReadVariableOp^layer_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2F
!acc_out_mu/BiasAdd/ReadVariableOp!acc_out_mu/BiasAdd/ReadVariableOp2D
 acc_out_mu/MatMul/ReadVariableOp acc_out_mu/MatMul/ReadVariableOp2F
!dir_out_mu/BiasAdd/ReadVariableOp!dir_out_mu/BiasAdd/ReadVariableOp2D
 dir_out_mu/MatMul/ReadVariableOp dir_out_mu/MatMul/ReadVariableOp2@
layer_1/BiasAdd/ReadVariableOplayer_1/BiasAdd/ReadVariableOp2>
layer_1/MatMul/ReadVariableOplayer_1/MatMul/ReadVariableOp2@
layer_2/BiasAdd/ReadVariableOplayer_2/BiasAdd/ReadVariableOp2>
layer_2/MatMul/ReadVariableOplayer_2/MatMul/ReadVariableOp2@
layer_3/BiasAdd/ReadVariableOplayer_3/BiasAdd/ReadVariableOp2>
layer_3/MatMul/ReadVariableOplayer_3/MatMul/ReadVariableOp2@
layer_4/BiasAdd/ReadVariableOplayer_4/BiasAdd/ReadVariableOp2>
layer_4/MatMul/ReadVariableOplayer_4/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_layer_2_layer_call_and_return_conditional_losses_56323717

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_ActorNet_layer_call_fn_56323686

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU 
(
2J 8? *O
fJRH
F__inference_ActorNet_layer_call_and_return_conditional_losses_563233692
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_layer_3_layer_call_and_return_conditional_losses_56323737

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_56323777

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_56323176

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
+__inference_ActorNet_layer_call_fn_56323236
input_1
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3:  
	unknown_4: 
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8:
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*.
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU 
(
2J 8? *O
fJRH
F__inference_ActorNet_layer_call_and_return_conditional_losses_563232092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
E__inference_layer_3_layer_call_and_return_conditional_losses_56323142

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?Z
?
!__inference__traced_save_56323971
file_prefix-
)savev2_layer_1_kernel_read_readvariableop+
'savev2_layer_1_bias_read_readvariableop-
)savev2_layer_2_kernel_read_readvariableop+
'savev2_layer_2_bias_read_readvariableop-
)savev2_layer_3_kernel_read_readvariableop+
'savev2_layer_3_bias_read_readvariableop-
)savev2_layer_4_kernel_read_readvariableop+
'savev2_layer_4_bias_read_readvariableop0
,savev2_acc_out_mu_kernel_read_readvariableop.
*savev2_acc_out_mu_bias_read_readvariableop0
,savev2_dir_out_mu_kernel_read_readvariableop.
*savev2_dir_out_mu_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_layer_1_kernel_m_read_readvariableop2
.savev2_adam_layer_1_bias_m_read_readvariableop4
0savev2_adam_layer_2_kernel_m_read_readvariableop2
.savev2_adam_layer_2_bias_m_read_readvariableop4
0savev2_adam_layer_3_kernel_m_read_readvariableop2
.savev2_adam_layer_3_bias_m_read_readvariableop4
0savev2_adam_layer_4_kernel_m_read_readvariableop2
.savev2_adam_layer_4_bias_m_read_readvariableop7
3savev2_adam_acc_out_mu_kernel_m_read_readvariableop5
1savev2_adam_acc_out_mu_bias_m_read_readvariableop7
3savev2_adam_dir_out_mu_kernel_m_read_readvariableop5
1savev2_adam_dir_out_mu_bias_m_read_readvariableop4
0savev2_adam_layer_1_kernel_v_read_readvariableop2
.savev2_adam_layer_1_bias_v_read_readvariableop4
0savev2_adam_layer_2_kernel_v_read_readvariableop2
.savev2_adam_layer_2_bias_v_read_readvariableop4
0savev2_adam_layer_3_kernel_v_read_readvariableop2
.savev2_adam_layer_3_bias_v_read_readvariableop4
0savev2_adam_layer_4_kernel_v_read_readvariableop2
.savev2_adam_layer_4_bias_v_read_readvariableop7
3savev2_adam_acc_out_mu_kernel_v_read_readvariableop5
1savev2_adam_acc_out_mu_bias_v_read_readvariableop7
3savev2_adam_dir_out_mu_kernel_v_read_readvariableop5
1savev2_adam_dir_out_mu_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_layer_1_kernel_read_readvariableop'savev2_layer_1_bias_read_readvariableop)savev2_layer_2_kernel_read_readvariableop'savev2_layer_2_bias_read_readvariableop)savev2_layer_3_kernel_read_readvariableop'savev2_layer_3_bias_read_readvariableop)savev2_layer_4_kernel_read_readvariableop'savev2_layer_4_bias_read_readvariableop,savev2_acc_out_mu_kernel_read_readvariableop*savev2_acc_out_mu_bias_read_readvariableop,savev2_dir_out_mu_kernel_read_readvariableop*savev2_dir_out_mu_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_layer_1_kernel_m_read_readvariableop.savev2_adam_layer_1_bias_m_read_readvariableop0savev2_adam_layer_2_kernel_m_read_readvariableop.savev2_adam_layer_2_bias_m_read_readvariableop0savev2_adam_layer_3_kernel_m_read_readvariableop.savev2_adam_layer_3_bias_m_read_readvariableop0savev2_adam_layer_4_kernel_m_read_readvariableop.savev2_adam_layer_4_bias_m_read_readvariableop3savev2_adam_acc_out_mu_kernel_m_read_readvariableop1savev2_adam_acc_out_mu_bias_m_read_readvariableop3savev2_adam_dir_out_mu_kernel_m_read_readvariableop1savev2_adam_dir_out_mu_bias_m_read_readvariableop0savev2_adam_layer_1_kernel_v_read_readvariableop.savev2_adam_layer_1_bias_v_read_readvariableop0savev2_adam_layer_2_kernel_v_read_readvariableop.savev2_adam_layer_2_bias_v_read_readvariableop0savev2_adam_layer_3_kernel_v_read_readvariableop.savev2_adam_layer_3_bias_v_read_readvariableop0savev2_adam_layer_4_kernel_v_read_readvariableop.savev2_adam_layer_4_bias_v_read_readvariableop3savev2_adam_acc_out_mu_kernel_v_read_readvariableop1savev2_adam_acc_out_mu_bias_v_read_readvariableop3savev2_adam_dir_out_mu_kernel_v_read_readvariableop1savev2_adam_dir_out_mu_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : :  : :  : : :: :: : : : : : : : : :  : :  : :  : : :: :: : :  : :  : :  : : :: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::$  

_output_shapes

: : !

_output_shapes
: :$" 

_output_shapes

:  : #

_output_shapes
: :$$ 

_output_shapes

:  : %

_output_shapes
: :$& 

_output_shapes

:  : '

_output_shapes
: :$( 

_output_shapes

: : )

_output_shapes
::$* 

_output_shapes

: : +

_output_shapes
::,

_output_shapes
: 
?&
?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323209

inputs"
layer_1_56323109: 
layer_1_56323111: "
layer_2_56323126:  
layer_2_56323128: "
layer_3_56323143:  
layer_3_56323145: "
layer_4_56323160:  
layer_4_56323162: %
acc_out_mu_56323177: !
acc_out_mu_56323179:%
dir_out_mu_56323194: !
dir_out_mu_56323196:
identity??"acc_out_mu/StatefulPartitionedCall?"dir_out_mu/StatefulPartitionedCall?layer_1/StatefulPartitionedCall?layer_2/StatefulPartitionedCall?layer_3/StatefulPartitionedCall?layer_4/StatefulPartitionedCall?
layer_1/StatefulPartitionedCallStatefulPartitionedCallinputslayer_1_56323109layer_1_56323111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_1_layer_call_and_return_conditional_losses_563231082!
layer_1/StatefulPartitionedCall?
layer_2/StatefulPartitionedCallStatefulPartitionedCall(layer_1/StatefulPartitionedCall:output:0layer_2_56323126layer_2_56323128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_2_layer_call_and_return_conditional_losses_563231252!
layer_2/StatefulPartitionedCall?
layer_3/StatefulPartitionedCallStatefulPartitionedCall(layer_2/StatefulPartitionedCall:output:0layer_3_56323143layer_3_56323145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_3_layer_call_and_return_conditional_losses_563231422!
layer_3/StatefulPartitionedCall?
layer_4/StatefulPartitionedCallStatefulPartitionedCall(layer_3/StatefulPartitionedCall:output:0layer_4_56323160layer_4_56323162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *N
fIRG
E__inference_layer_4_layer_call_and_return_conditional_losses_563231592!
layer_4/StatefulPartitionedCall?
"acc_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0acc_out_mu_56323177acc_out_mu_56323179*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_563231762$
"acc_out_mu/StatefulPartitionedCall?
"dir_out_mu/StatefulPartitionedCallStatefulPartitionedCall(layer_4/StatefulPartitionedCall:output:0dir_out_mu_56323194dir_out_mu_56323196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU 
(
2J 8? *Q
fLRJ
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_563231932$
"dir_out_mu/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall+acc_out_mu/StatefulPartitionedCall:output:0+dir_out_mu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU 
(
2J 8? *R
fMRK
I__inference_concatenate_layer_call_and_return_conditional_losses_563232062
concatenate/PartitionedCall
IdentityIdentity$concatenate/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^acc_out_mu/StatefulPartitionedCall#^dir_out_mu/StatefulPartitionedCall ^layer_1/StatefulPartitionedCall ^layer_2/StatefulPartitionedCall ^layer_3/StatefulPartitionedCall ^layer_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2H
"acc_out_mu/StatefulPartitionedCall"acc_out_mu/StatefulPartitionedCall2H
"dir_out_mu/StatefulPartitionedCall"dir_out_mu/StatefulPartitionedCall2B
layer_1/StatefulPartitionedCalllayer_1/StatefulPartitionedCall2B
layer_2/StatefulPartitionedCalllayer_2/StatefulPartitionedCall2B
layer_3/StatefulPartitionedCalllayer_3/StatefulPartitionedCall2B
layer_4/StatefulPartitionedCalllayer_4/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0??????????
concatenate0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer-7
		optimizer

loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

/kernel
0bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
9iter

:beta_1

;beta_2
	<decay
=learning_ratemkmlmmmnmomp#mq$mr)ms*mt/mu0mvvwvxvyvzv{v|#v}$v~)v*v?/v?0v?"
	optimizer
 "
trackable_dict_wrapper
v
0
1
2
3
4
5
#6
$7
)8
*9
/10
011"
trackable_list_wrapper
v
0
1
2
3
4
5
#6
$7
)8
*9
/10
011"
trackable_list_wrapper
 "
trackable_list_wrapper
?

>layers
?metrics
@non_trainable_variables
	variables
Alayer_regularization_losses
trainable_variables
regularization_losses
Blayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 : 2layer_1/kernel
: 2layer_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Clayers
Dmetrics
Enon_trainable_variables
	variables
Flayer_regularization_losses
trainable_variables
regularization_losses
Glayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :  2layer_2/kernel
: 2layer_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Hlayers
Imetrics
Jnon_trainable_variables
	variables
Klayer_regularization_losses
trainable_variables
regularization_losses
Llayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :  2layer_3/kernel
: 2layer_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Mlayers
Nmetrics
Onon_trainable_variables
	variables
Player_regularization_losses
 trainable_variables
!regularization_losses
Qlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :  2layer_4/kernel
: 2layer_4/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Rlayers
Smetrics
Tnon_trainable_variables
%	variables
Ulayer_regularization_losses
&trainable_variables
'regularization_losses
Vlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:! 2acc_out_mu/kernel
:2acc_out_mu/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

Wlayers
Xmetrics
Ynon_trainable_variables
+	variables
Zlayer_regularization_losses
,trainable_variables
-regularization_losses
[layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:! 2dir_out_mu/kernel
:2dir_out_mu/bias
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
?

\layers
]metrics
^non_trainable_variables
1	variables
_layer_regularization_losses
2trainable_variables
3regularization_losses
`layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

alayers
bmetrics
cnon_trainable_variables
5	variables
dlayer_regularization_losses
6trainable_variables
7regularization_losses
elayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
'
f0"
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
N
	gtotal
	hcount
i	variables
j	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
g0
h1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
%:# 2Adam/layer_1/kernel/m
: 2Adam/layer_1/bias/m
%:#  2Adam/layer_2/kernel/m
: 2Adam/layer_2/bias/m
%:#  2Adam/layer_3/kernel/m
: 2Adam/layer_3/bias/m
%:#  2Adam/layer_4/kernel/m
: 2Adam/layer_4/bias/m
(:& 2Adam/acc_out_mu/kernel/m
": 2Adam/acc_out_mu/bias/m
(:& 2Adam/dir_out_mu/kernel/m
": 2Adam/dir_out_mu/bias/m
%:# 2Adam/layer_1/kernel/v
: 2Adam/layer_1/bias/v
%:#  2Adam/layer_2/kernel/v
: 2Adam/layer_2/bias/v
%:#  2Adam/layer_3/kernel/v
: 2Adam/layer_3/bias/v
%:#  2Adam/layer_4/kernel/v
: 2Adam/layer_4/bias/v
(:& 2Adam/acc_out_mu/kernel/v
": 2Adam/acc_out_mu/bias/v
(:& 2Adam/dir_out_mu/kernel/v
": 2Adam/dir_out_mu/bias/v
?2?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323580
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323628
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323460
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323495?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_ActorNet_layer_call_fn_56323236
+__inference_ActorNet_layer_call_fn_56323657
+__inference_ActorNet_layer_call_fn_56323686
+__inference_ActorNet_layer_call_fn_56323425?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_56323090input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_layer_1_layer_call_and_return_conditional_losses_56323697?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_layer_1_layer_call_fn_56323706?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_layer_2_layer_call_and_return_conditional_losses_56323717?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_layer_2_layer_call_fn_56323726?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_layer_3_layer_call_and_return_conditional_losses_56323737?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_layer_3_layer_call_fn_56323746?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_layer_4_layer_call_and_return_conditional_losses_56323757?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_layer_4_layer_call_fn_56323766?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_56323777?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_acc_out_mu_layer_call_fn_56323786?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_56323797?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_dir_out_mu_layer_call_fn_56323806?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_layer_call_and_return_conditional_losses_56323813?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_concatenate_layer_call_fn_56323819?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_56323532input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323460o#$)*/08?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323495o#$)*/08?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323580n#$)*/07?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
F__inference_ActorNet_layer_call_and_return_conditional_losses_56323628n#$)*/07?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
+__inference_ActorNet_layer_call_fn_56323236b#$)*/08?5
.?+
!?
input_1?????????
p 

 
? "???????????
+__inference_ActorNet_layer_call_fn_56323425b#$)*/08?5
.?+
!?
input_1?????????
p

 
? "???????????
+__inference_ActorNet_layer_call_fn_56323657a#$)*/07?4
-?*
 ?
inputs?????????
p 

 
? "???????????
+__inference_ActorNet_layer_call_fn_56323686a#$)*/07?4
-?*
 ?
inputs?????????
p

 
? "???????????
#__inference__wrapped_model_56323090{#$)*/00?-
&?#
!?
input_1?????????
? "9?6
4
concatenate%?"
concatenate??????????
H__inference_acc_out_mu_layer_call_and_return_conditional_losses_56323777\)*/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ?
-__inference_acc_out_mu_layer_call_fn_56323786O)*/?,
%?"
 ?
inputs????????? 
? "???????????
I__inference_concatenate_layer_call_and_return_conditional_losses_56323813?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????
? ?
.__inference_concatenate_layer_call_fn_56323819vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "???????????
H__inference_dir_out_mu_layer_call_and_return_conditional_losses_56323797\/0/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ?
-__inference_dir_out_mu_layer_call_fn_56323806O/0/?,
%?"
 ?
inputs????????? 
? "???????????
E__inference_layer_1_layer_call_and_return_conditional_losses_56323697\/?,
%?"
 ?
inputs?????????
? "%?"
?
0????????? 
? }
*__inference_layer_1_layer_call_fn_56323706O/?,
%?"
 ?
inputs?????????
? "?????????? ?
E__inference_layer_2_layer_call_and_return_conditional_losses_56323717\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
*__inference_layer_2_layer_call_fn_56323726O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_layer_3_layer_call_and_return_conditional_losses_56323737\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
*__inference_layer_3_layer_call_fn_56323746O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
E__inference_layer_4_layer_call_and_return_conditional_losses_56323757\#$/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? }
*__inference_layer_4_layer_call_fn_56323766O#$/?,
%?"
 ?
inputs????????? 
? "?????????? ?
&__inference_signature_wrapper_56323532?#$)*/0;?8
? 
1?.
,
input_1!?
input_1?????????"9?6
4
concatenate%?"
concatenate?????????