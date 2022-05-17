import "./tasks/vaf_ncm.wdl" as vaf_ncm

workflow {{ project_name }} {
  
  Array[File] vaf
  String docker
  String cluster_config
  String disk_size

  call vaf_ncm.vaf_ncm as vaf_ncm {
    input:
    vaf=vaf,
    docker=docker,
    disk_size=disk_size,
    cluster_config=cluster_config
  }
}
