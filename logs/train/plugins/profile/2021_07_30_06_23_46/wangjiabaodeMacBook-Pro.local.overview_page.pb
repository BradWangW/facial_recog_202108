?	???V%WV@???V%WV@!???V%WV@	???.@???.@!???.@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:???V%WV@???7??A????'?R@YZ??m|+@rEagerKernelExecute 0*	`??"???@2?
OIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2 ??r۾?&@!?z??T@)??r۾?&@1?z??T@:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::BatchV2w,?IEk+@!??}j?X@)?m3???1gB?d?'@:Preprocessing2t
=Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip ?i?(@!tzӳ?U@)???
??1֣k?)@:Preprocessing2?
\Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2::TensorSlice ??
???!]#??i???)??
???1]#??i???:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[1]::TensorSlice O?S?{??!??)?????)O?S?{??1??)?????:Preprocessing2o
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle ??	)(@!D:???U@)t???)??1#Ͽ??S??:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelismG?tFn+@!$BO?!?X@)???x?1v???A???:Preprocessing2F
Iterator::ModelO??ep+@!??,?X@)r1?q?p?1?Q?u???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 15.4% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*no9???.@I*B??'U@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???7?????7??!???7??      ??!       "      ??!       *      ??!       2	????'?R@????'?R@!????'?R@:      ??!       B      ??!       J	Z??m|+@Z??m|+@!Z??m|+@R      ??!       Z	Z??m|+@Z??m|+@!Z??m|+@b      ??!       JCPU_ONLYY???.@b q*B??'U@Y      Y@q[?7???"?
both?Your program is MODERATELY input-bound because 15.4% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
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