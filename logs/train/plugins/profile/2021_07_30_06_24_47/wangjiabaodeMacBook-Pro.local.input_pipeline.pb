	@1?d??X@@1?d??X@!@1?d??X@	?qts[1@?qts[1@!?qts[1@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:@1?d??X@??????AsePmpkT@Y????21@rEagerKernelExecute 0*	/?$???@2?
OIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2 ?W?\?.@!k?TYV@)?W?\?.@1k?TYV@:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::BatchV2t??Y)1@!rt?%?X@)??}?ub??1k?r5?- @:Preprocessing2t
=Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip ?FY??h/@!\?o?P?V@)_?vj.7??1!B??c??:Preprocessing2?
\Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2::TensorSlice ??q??r??!ޮ?@????)??q??r??1ޮ?@????:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[1]::TensorSlice X;?s?ѱ?!??C???)X;?s?ѱ?1??C???:Preprocessing2o
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle ?u?Ӆ/@!%]Tp?V@)?//?>:??1??!????:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism??\m?*1@![|{??X@)H?3?9A{?1SJ??ò??:Preprocessing2F
Iterator::Model?Cn?,1@!?l~???X@)?ُ?au?19m/ ???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 17.4% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*no9?qts[1@I:??"#?T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????!??????      ??!       "      ??!       *      ??!       2	sePmpkT@sePmpkT@!sePmpkT@:      ??!       B      ??!       J	????21@????21@!????21@R      ??!       Z	????21@????21@!????21@b      ??!       JCPU_ONLYY?qts[1@b q:??"#?T@