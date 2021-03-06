#' @title Methods for sending messages.
#' 
#' @param client one of the clients created by the sendeR package.
#' @param message a text body of the message to send. Should be a character
#'  vector of length one.
#' @param destination a destination of the message. Should be a character
#'  vector of length one. For more details see \strong{Methods (by class)}
#'  section below.
#' @param verbose if is set to \code{TRUE} then the function returns whole
#'  response instead of only a status_code.
#' @param ... \code{send_message} passes additional (non-standard) arguments to
#'  respective method. Client specific methods have this argument only for
#'  method overloading purposes.
#'
#' @importFrom curl has_internet
#' 
#' @export
send_message <- function(client, message, destination, verbose = FALSE, ...) {
    assert(is.client_sendeR(client), not_a_client("client", "sendeR"))
    if (!has_fields(client)) {
        assert(is_character_len1(message), msg_character_len1("message"))
        assert(is_logical_not_NA(verbose), msg_logical_not_NA("verbose"))
    }
        
    if (has_internet()) {
        UseMethod("send_message")
    } else {
        warning("Could not send the message: no internet connection detected.")
    }
}
