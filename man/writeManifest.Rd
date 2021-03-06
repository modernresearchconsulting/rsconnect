% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bundle.R
\name{writeManifest}
\alias{writeManifest}
\title{Create a manifest.json describing deployment requirements.}
\usage{
writeManifest(appDir = getwd(), appFiles = NULL,
  appPrimaryDoc = NULL, contentCategory = NULL, python = NULL)
}
\arguments{
\item{appDir}{Directory containing the content (Shiny application, R
Markdown document, etc).}

\item{appFiles}{Optional. The full set of files and directories to be
included in future deployments of this content. Used when computing
dependency requirements. When \code{NULL}, all files in \code{appDir} are
considered.}

\item{appPrimaryDoc}{Optional. Specifies the primary document in a content
directory containing more than one. If \code{NULL}, the primary document is
inferred from the file list.}

\item{contentCategory}{Optional. Specifies the kind of content being
deployed (e.g. \code{"plot"} or \code{"site"}).}

\item{python}{Full path to a python binary for use by \code{reticulate}.
The specified python binary will be invoked to determine its version
and to list the python packages installed in the environment.
If python = NULL, and RETICULATE_PYTHON is set in the environment,
its value will be used.}
}
\description{
Given a directory content targeted for deployment, write a manifest.json
into that directory describing the deployment requirements for that
content.
}
