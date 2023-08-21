

process jobDispatcher {
  output:
  stdout

  """
  #!/bin/bash
  echo " JobDispatcher function started"
  """
}

process scanProcessor {
  output:
  stdout

  """
  #!/bin/bash
  echo " ScanProcessor function started"
  """
}
process createThumbnails {
  output:
  stdout

  """
  #!/bin/bash
  echo " CreateThumbnails function started"
  """
}
process createThumbnail {
  output:
  stdout

  """
  #!/bin/bash
  echo " createThumbnail function started"
  """
}
process scanalyzerJob {
  output:
  stdout

  """
  #!/bin/bash
  echo " scanalyzerJob function started"
  """
}
process stitchProcessor {
  output:
  stdout

  """
  #!/bin/bash
  echo " stitchProcessor function started"
  """
}

process jobStateProcessor {
  output:
  stdout

  """
  #!/bin/bash
  echo " jobStateProcessor function started"
  """
}


workflow {
  
  jobDispatcher |  view { "I say... $it" }
  scanProcessor |  view { "I say... $it" }
  createThumbnails |  view { "I say... $it" }
  scanalyzerJob |  view { "I say... $it" }
  stitchProcessor |  view { "I say... $it" }
  jobStateProcessor |  view { "I say... $it" }

}

