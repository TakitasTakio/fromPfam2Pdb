library(devtools)
library(roxygen2)
library(rvest)
library(stringr)

obtainPdbfrmPfam = function() {
  pp.lib=read.delim(file = "ftp://ftp.ebi.ac.uk/pub/databases/Pfam/mappings/pdb_pfam_mapping.txt")
  if (is.null(pp.lib)) {
    pp.lib=read.delim(file="pdb_pfam_mapping.txt")

  }

  pp.lib$PFAM_ACC_ABS=str_sub(pp.lib$PFAM_ACC,1,7)
  pp.lib$full_pdb=paste(pp.lib$PDB_ID, pp.lib$CHAIN_ID)
  return(pp.lib)


}

obtainfullPdbID=function(searchItem="PF04420"){
  if(!str_detect(searchItem, "PF")){
    warning("Please enter your search item like the format 'PF01565'")

  }
  pp.lib=read.delim(file = "ftp://ftp.ebi.ac.uk/pub/databases/Pfam/mappings/pdb_pfam_mapping.txt")
  if (is.null(pp.lib)) {
    pp.lib=read.delim(file="pdb_pfam_mapping.txt")

  }

  pp.lib$PFAM_ACC_ABS=str_sub(pp.lib$PFAM_ACC,1,7)
  pp.lib$full_pdb=paste(pp.lib$PDB_ID, pp.lib$CHAIN_ID)
  pdb.fullid=pp.lib$full_pdb[pp.lib$PFAM_ACC_ABS==searchItem]
  return(pdb.fullid)
}

obtainPdbID=function(searchItem="PF04420"){
  if(!str_detect(searchItem, "PF")){
    warning("Please enter your search item like the format 'PF01565'")

  }
  pp.lib=read.delim(file = "ftp://ftp.ebi.ac.uk/pub/databases/Pfam/mappings/pdb_pfam_mapping.txt")
  if (is.null(pp.lib)) {
    pp.lib=read.delim(file="pdb_pfam_mapping.txt")

  }

  pp.lib$PFAM_ACC_ABS=str_sub(pp.lib$PFAM_ACC,1,7)

  pdb.id=pp.lib$PDB_ID[pp.lib$PFAM_ACC_ABS==searchItem]
  return(pdb.id)
}

obtainChainID=function(searchItem="PF04420"){
  if(!str_detect(searchItem, "PF")){
    warning("Please enter your search item like the format 'PF01565'")

  }
  pp.lib=read.delim(file = "ftp://ftp.ebi.ac.uk/pub/databases/Pfam/mappings/pdb_pfam_mapping.txt")
  if (is.null(pp.lib)) {
    pp.lib=read.delim(file="pdb_pfam_mapping.txt")

  }

  pp.lib$PFAM_ACC_ABS=str_sub(pp.lib$PFAM_ACC,1,7)

  pdb.chain.id=pp.lib$CHAIN_ID[pp.lib$PFAM_ACC_ABS==searchItem]
  return(pdb.chain.id)
}

