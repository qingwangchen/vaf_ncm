task vaf_ncm {
  
  Array[File] vaf
  String docker
  String cluster_config
  String disk_size

  command <<<
    set -o pipefail
    set -e
    nt=$(nproc)
    export NCM_HOME=/opt/NGSCheckMate

    mkdir -p /ncm/fastq_vaf/
    cp ${sep=" " vaf} /ncm/fastq_vaf/

    python /opt/NGSCheckMate/vaf_ncm.py -I /ncm/fastq_vaf/ -O '.' -f
  >>>

  runtime {
    docker:docker
      cluster:cluster_config
      systemDisk:"cloud_ssd 40"
      dataDisk:"cloud_ssd " + disk_size + " /cromwell_root/"
  }
  output {
    File all_txt="output_all.txt"
    File cor_txt="output_corr_matrix.txt"
    File r_script="r_script.r"
    File Rout_script="r_script.r.Rout"
  }
}
