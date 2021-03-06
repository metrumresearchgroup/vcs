make_marker <- function(pattern,x){

  rstudioapi::callFun("sourceMarkers",
                    name = pattern,
                    markers = unlist(lapply(names(x),function(nx){
                      
                      if(!is.null(httr::parse_url(nx)$scheme)){
                        
                        new_nx <- file.path(tempdir(),basename(gsub('\\?(.*?)$','',nx)))

                      }else{
                        
                        new_nx <- nx
                        
                      }
                        
                      lapply(x[[nx]],function(xx){
                        r <- as.numeric(gsub('\\D','',gsub(':(.*?)$','',xx)))
                        type <- ifelse(grepl('\\[',gsub(':(.*?)$','',xx)),'info','usage')
                        l <- gsub('^(.*?):','',xx)
                        list(type=type,file=new_nx,line=r,column=1,message=l) 
                      })
                    }),recursive = FALSE),
                    basePath = getwd(),
                    autoSelect = "none")
}