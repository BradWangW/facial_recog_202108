	?W˝?q@?W˝?q@!?W˝?q@	#?>?X3@#?>?X3@!#?>?X3@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:?W˝?q@m?s?p???A?S?*%?l@Y???҈eK@rEagerKernelExecute 0*	X9? ?@2?
OIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2??????BH@!???q?U@)?????BH@1???q?U@:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::BatchV246<?`K@!?5u?X@)Y?yV??@1
??B??!@:Preprocessing2u
=Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip?!?A	3?H@!?? H?gV@)͕A?????1?o?+?y??:Preprocessing2?
\Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2::TensorSlice?
+TT???!?????)
+TT???1?????:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[1]::TensorSlice?T??7???!???????)T??7???1???????:Preprocessing2p
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle?	?f?b?H@!????ÄV@)??????1??3Ĵ??:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelismAJ?iaK@!O?,??X@)Ϡ???u?1????>{??:Preprocessing2F
Iterator::Modelђ???aK@!??????X@)???o'q?1.?h???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 19.3% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*no9"?>?X3@I?L??)T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	m?s?p???m?s?p???!m?s?p???      ??!       "      ??!       *      ??!       2	?S?*%?l@?S?*%?l@!?S?*%?l@:      ??!       B      ??!       J	???҈eK@???҈eK@!???҈eK@R      ??!       Z	???҈eK@???҈eK@!???҈eK@b      ??!       JCPU_ONLYY"?>?X3@b q?L??)T@