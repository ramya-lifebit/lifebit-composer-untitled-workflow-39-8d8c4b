nextflow.enable.dsl=2

include { downsample_1 } from './modules/downsample_1/module.nf'
include { fastqc_1 } from './modules/fastqc_1/module.nf'

workflow {
input1 = Channel.fromPath(params.downsample_1.fastq)
downsample_1(input1)
fastqc_1(downsample_1.out.output1)
}
