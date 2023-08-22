

process jobDispatcher {
  debug true
  output:
  stdout

  script:
  """
  echo " JobDispatcher function started"
  """
}

process scanProcessor {
  debug true
  output:
  stdout

  script:
  """
  echo " ScanProcessor function started"
  """
}

process createThumbnails {
  debug true
  output:
  stdout

  script:
  """
  echo " CreateThumbnails function started"
  """
}

process createThumbnail {
  debug true
  output:
  stdout

  script:
  """
  echo " createThumbnail function started"
  """
}

process scanalyzerJob {
  debug true
  output:
  stdout

  script:
  """
  echo " scanalyzerJob function started"
  """
}

process stitchProcessor {
  debug true
  output:
  stdout

  script:
  """
  echo " stitchProcessor function started"
  """
}

process jobStateProcessor {
  debug true
  output:
  stdout

  script:
  """
  echo " jobStateProcessor function started"
  """
}


workflow {
  
  jobDispatcher |  view { "$it" }
  scanProcessor |  view { "$it" }
  createThumbnails |  view { "$it" }
  scanalyzerJob |  view { "$it" }
  stitchProcessor |  view { "$it" }
  jobStateProcessor |  view { "$it" }

}

