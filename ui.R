pageWithSidebar(
  
  headerPanel('CKDu k-means clustering'),
  
  sidebarPanel(
  #  fileInput('kk', 'Choose CSV file',
  #            accept=c('text/csv', 'text/comma-separated-values,text/plain')),
    kk <- read.csv("kmeandata.csv"),
    selectInput('xcol', 'X Variable', names(kk)),
    selectInput('ycol', 'Y Variable', names(kk),
                selected=names(kk)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)