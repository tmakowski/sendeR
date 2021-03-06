% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/client_gmail.R
\name{client_gmail}
\alias{client_gmail}
\title{Gmail client}
\usage{
client_gmail(email, key, secret, ...)
}
\arguments{
\item{email}{an email of a sender of the message.}

\item{key}{a key created in a Google API application.}

\item{secret}{a secret key created in a Google API application.}

\item{...}{named arguments with additional fields which will be passed to
\code{\link{set_fields}} during client creation.}
}
\description{
Client extending the \code{\link{client_sendeR}} for the Gmail
service. In addition to any fields in the \code{\link{client_sendeR}} this one
contains an \code{email}, a \code{key} and a \code{secret} fields which are
needed to send a message via the Gmail Send API. For additional information
on how to get required credentials see details.
}
\details{
To get Google credentials just follow the tutorial \url{https://developers.google.com/adwords/api/docs/guides/authentication}
}
\examples{
\dontrun{
client <- client_gmail("my_email", "my_key", "my_secret")

# Variant with default parameters set
client2 <- client_gmail("my_email", "my_key", "my_secret",
                        message = "Default email template",
                        destination = "my_email")
}

}
\seealso{
\code{\link{is.client_gmail}}, \code{\link{send_message}}
}
