	??K7??[@??K7??[@!??K7??[@	????3@????3@!????3@"{
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails:??K7??[@???S????AZd;?7V@Y???(\?5@rEagerKernelExecute 0*	    @[?@2?
OIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2 ?G?zT2@!??L>N?T@)?G?zT2@1??L>N?T@:Preprocessing2?
\Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[0]::ParallelMapV2::TensorSlice ?$??C??!?+Xd? @)?$??C??1?+Xd? @:Preprocessing2t
=Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip???Mb?3@!???.?V@)5^?I??1d09??@:Preprocessing2o
8Iterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle?(\??5/@!?Lk??Q@)#??~j???1????l???:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::BatchV2::Shuffle::Zip[1]::TensorSliceL7?A`???!??V??P??)L7?A`???1??V??P??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 19.8% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*no9????3@IC?{?T@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???S???????S????!???S????      ??!       "      ??!       *      ??!       2	Zd;?7V@Zd;?7V@!Zd;?7V@:      ??!       B      ??!       J	???(\?5@???(\?5@!???(\?5@R      ??!       Z	???(\?5@???(\?5@!???(\?5@b      ??!       JCPU_ONLYY????3@b qC?{?T@