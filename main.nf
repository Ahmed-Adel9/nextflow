process jobDispatcher {
  output:
  stdout

  shell:
  '''
  echo " JobDispatcher function started"
  '''
}

process scanProcessor {
  input:
  val x
  output:
  stdout

  shell:
  '''
  echo " ScanProcessor function started"
  '''
}
process createThumbnails {
  input:
  val x
  output:
  stdout

  shell:
  '''
  echo " CreateThumbnails function started of !{x}"
  '''
}
process createThumbnail {
  input:
  val x
  output:
  stdout

  shell:
  '''
  echo " createThumbnail function started"
  '''
}

process scanalyzerJob {
  input:
  val x
  output:
  stdout

  shell:
  '''
  echo " scanalyzerJob function started"
  '''
}
process stitchProcessor {
  input:
  val x
  output:
  stdout

  shell:
  '''
  echo " stitchProcessor function started"
  '''
}

process jobStateProcessor {
  input:
  val x
  output:
  stdout

  shell:
  '''
  echo " jobStateProcessor function started"
  '''
}

workflow thumbnails {
  take:
    function
  main:
    createThumbnails (function) |  view { it.trim() }
    createThumbnails.out.flatten() | createThumbnail|  view { it.trim() }

}

workflow {
  
  jobDispatcher()|  view { it.trim() }
  jobDispatcher.out.flatten() | scanProcessor|  view { it.trim() }
  // scanProcessor.out.flatten() | createThumbnails|  view { it.trim() }
  // createThumbnails.out.flatten() | createThumbnail|  view { it.trim() }
  scanProcessor.out.flatten() | thumbnails
  jobDispatcher.out.flatten() | scanalyzerJob|  view { it.trim() }
  scanalyzerJob.out.flatten() | stitchProcessor|  view { it.trim() }
  // stitchProcessor.out.flatten() | createThumbnails|  view { it.trim() }
  // stitchProcessor.out.flatten() | createThumbnail|  view { it.trim() }
   //stitchProcessor.out.flatten() | thumbnails
  scanalyzerJob.out.flatten() | jobStateProcessor|  view { it.trim() }
 
}
