% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diff_head.R
\name{diff_head}
\alias{diff_head}
\title{Query the difference in files between current fetch and the head of a repository}
\usage{
diff_head(path = ".", vcs = "git", pattern = NULL, ..., show = TRUE)
}
\arguments{
\item{path}{character, Path to root directory of git/svn repository, Default: '.'}

\item{vcs}{character, choose which version control system to search (git, svn), Default: 'git'}

\item{pattern}{character, string containing a regular expression, Default: NULL}

\item{...}{arguments passed to grep}

\item{show}{boolean, if false returns only boolean output of HEAD\%in\%local, Default: TRUE}
}
\value{
character
}
\description{
Query the difference in files between current fetch and the head of a repository, assuming that there is either a .git or .svn folder in the path.
}
