?	[??N?q@[??N?q@![??N?q@	??]&e3@??]&e3@!??]&e3@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:[??N?q@?	MK??A	8?*5dl@Yq:?VYK@rEagerKernelExecute 0*	???K7??@2?
OIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2??;?2:H@!??????U@)?;?2:H@1??????U@:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::BatchV2=?U?QK@!?g?X@)?_???@1?j???!@:Preprocessing2u
=Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip?2???4?H@!?׷?tV@)x?q?Z|??1?.????:Preprocessing2?
\Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2::TensorSlice?N??1???!Xڒ???)N??1???1Xڒ???:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[1]::TensorSlice?X???T???!>Z"(t??)X???T???1>Z"(t??:Preprocessing2p
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle?1%???H@!??1?ɐV@)v?1<????1_ˣZ????:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism겘?|RK@!%?p?0?X@)?@??_?{?17?2j"??:Preprocessing2F
Iterator::Model??-?SK@!OK????X@)?H??r?s?1?`?4???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 19.4% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*no9??]&e3@I?јh?&T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?	MK???	MK??!?	MK??      ??!       "      ??!       *      ??!       2		8?*5dl@	8?*5dl@!	8?*5dl@:      ??!       B      ??!       J	q:?VYK@q:?VYK@!q:?VYK@R      ??!       Z	q:?VYK@q:?VYK@!q:?VYK@b      ??!       JCPU_ONLYY??]&e3@b q?јh?&T@Y      Y@q?c???"?
both?Your program is MODERATELY input-bound because 19.4% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 