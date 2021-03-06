% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sendeR_txtProgressBar.R
\name{sendeR_txtProgressBar}
\alias{sendeR_txtProgressBar}
\title{sendeR txtProgressBar}
\usage{
sendeR_txtProgressBar(
  client,
  min = 0,
  max = 1,
  initial = 0,
  char = "=",
  width = NA,
  title,
  label,
  style = 1,
  file = "",
  ...
)
}
\arguments{
\item{client}{the client which will send the message.}

\item{min, max}{(finite) numeric values for the extremes of the progress bar.
Must have \code{min} < \code{max}.}

\item{initial}{initial or new value for the progress bar. See ‘Details’
in \code{\link{txtProgressBar}} for what happens with invalid values.}

\item{char}{the character (or character string) to form the progress bar.}

\item{width}{the width of the progress bar, as a multiple of the width of
char. If NA, the default, the number of characters is that which fits into
\code{getOption("width")}.}

\item{title, label}{ignored, for compatibility with other progress bars.}

\item{style}{the ‘style’ of the bar – see ‘Details’ in
\code{\link{txtProgressBar}}.}

\item{file}{an open connection object or "" which indicates the console:
stderr() might be useful here.}

\item{...}{additional parameters to be passed to the \code{\link{send_message}}
method (including \code{message} and \code{destination}).}
}
\value{
A progress bar object on which every method normally used on
 \code{txtProgressBar} can be used.
}
\description{
This function is a wrapper for \code{\link{txtProgressBar}}.
 In addition to standard \code{txtProgressBar} functionality this function
 will send message using \code{\link{send_message}} method of the
 \code{client} argument. Parameters other than \code{client} and \code{...}
 have the same use-case as in the \code{txtProgressBar} (description of these
 parameters was taken from \code{txtProgressBar} documentation).
}
\details{
\strong{Note:} If the \code{client} has no fields set then the
 \code{message} and \code{destination} have to be passed through the ellipsis
 (\code{...}).
}
\examples{
client <- client_slack("my_webhook")
pb <- sendeR_txtProgressBar(client, message = "Progress bar has finished!")
\dontrun{
     for (i in 1:10) {
         Sys.sleep(0.5)
         setTxtProgressBar(pb, i / 10)
     }
}

}
\seealso{
\code{\link{getTxtProgressBar}}, \code{\link{setTxtProgressBar}}
}
