\name{obtainChainID}
\alias{obtainChainID}

\title{
obtainChainID(searchItem = "xxx")
}
\description{
search chain ID from pfam
}
\usage{
obtainChainID(searchItem = "PF04420")
}

\arguments{
  \item{searchItem}{
%%     ~~Describe \code{searchItem} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
data source: "ftp://ftp.ebi.ac.uk/pub/databases/Pfam/mappings/pdb_pfam_mapping.txt"
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (searchItem = "PF04420")
{
    if (!str_detect(searchItem, "PF")) {
        warning("Please enter your search item like the format 'PF01565'")
    }
    pp.lib = read.delim(file = "ftp://ftp.ebi.ac.uk/pub/databases/Pfam/mappings/pdb_pfam_mapping.txt")
    if (is.null(pp.lib)) {
        pp.lib = read.delim(file = "pdb_pfam_mapping.txt")
    }
    pp.lib$PFAM_ACC_ABS = str_sub(pp.lib$PFAM_ACC, 1, 7)
    pdb.chain.id = pp.lib$CHAIN_ID[pp.lib$PFAM_ACC_ABS == searchItem]
    print(pdb.chain.id)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{searchItem }% use one of  RShowDoc("KEYWORDS")

