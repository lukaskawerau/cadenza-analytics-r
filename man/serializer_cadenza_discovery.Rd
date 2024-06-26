% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom-serializer-discovery.R
\name{serializer_cadenza_discovery}
\alias{serializer_cadenza_discovery}
\title{Build the Discovery GET-response.}
\usage{
serializer_cadenza_discovery(...)
}
\arguments{
\item{...}{a \code{\link[=discovery]{discovery()}} structure.}
}
\value{
a discovery response.
}
\description{
Build the Discovery GET-response.
}
\examples{
\dontshow{if (interactive()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
function() {
  discovery(
    extensions = list(
      extension_reference(
        extensionPrintName = "The Name",
        extensionType = "calculation",
        relativePath = "/path-of-extension"
      )
    )
  )
}
\dontshow{\}) # examplesIf}
}
