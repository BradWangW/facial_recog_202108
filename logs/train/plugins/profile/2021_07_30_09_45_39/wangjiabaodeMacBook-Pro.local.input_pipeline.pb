	FB[?eCs@FB[?eCs@!FB[?eCs@	?c??ѳ3@?c??ѳ3@!?c??ѳ3@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:FB[?eCs@%W@????Ah?XRn?n@Y?q7??\N@rEagerKernelExecute 0*	?x?&%??@2?
OIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2?&?`6qJ@!?;???U@)&?`6qJ@1?;???U@:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::BatchV2????WN@!Я??`?X@)h?.??@1uE{??%@:Preprocessing2u
=Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip??ƈD?J@!c?&??V@)SYvQ???1?W????:Preprocessing2?
\Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2::TensorSlice????5???!?F?|?1??)???5???1?F?|?1??:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[1]::TensorSlice?Oq??!X?Vf???)Oq??1X?Vf???:Preprocessing2p
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle???F;nK@!"G???+V@)?x@ٔ??1???????:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism(?.??XN@!h?a'?X@)????bc~?1jf7?׈?:Preprocessing2F
Iterator::Model?I?pYN@!s5???X@)ƊL??q?1??[?GU}?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 19.7% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*no9?c??ѳ3@I??T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	%W@????%W@????!%W@????      ??!       "      ??!       *      ??!       2	h?XRn?n@h?XRn?n@!h?XRn?n@:      ??!       B      ??!       J	?q7??\N@?q7??\N@!?q7??\N@R      ??!       Z	?q7??\N@?q7??\N@!?q7??\N@b      ??!       JCPU_ONLYY?c??ѳ3@b q??T@