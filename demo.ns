process jobDispatcher {
  output:
  stdout

  """
  echo " JobDispatcher function started"
  """
}

process scanProcessor {
  output:
  stdout

  """
  echo " ScanProcessor function started"
  """
}
process createThumbnails {
  output:
  stdout

  """
  echo " CreateThumbnails function started"
  """
}
process createThumbnail {
  output:
  stdout

  """
  echo " createThumbnail function started"
  """
}
process scanalyzerJob {
  output:
  stdout

  """
  echo " scanalyzerJob function started"
  """
}
process stitchProcessor {
  output:
  stdout

  """
  echo " stitchProcessor function started"
  """
}

process jobStateProcessor {
  output:
  stdout

  """
  echo " jobStateProcessor function started"
  """
}


workflow {
  
  jobDispatcher|  view { it.trim() }
 
}

