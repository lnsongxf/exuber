

# get crit data --------------------------------------------------------

get_crit <- function(x) {
    nr <- NROW(index(x))
    if (nr > 5 && nr <= 2000) {
      return(get("crit")[[nr]])
    } else {
      stop("cannot provide MC critical values see ?crit", call. = FALSE)
    }
}

# assert arguments ------------------------------------------------------


warning_redudant <- function(arg, cond = TRUE) {
  level <- deparse(substitute(arg))
  if (cond) {
    warning(sprintf("Argument '%s' is redundant", level), call. = FALSE)
  }
}

assert_positive_int <- function(arg, strictly = TRUE, greater_than = NULL) {
  level <- deparse(substitute(arg))
  if (strictly) {
    if (arg != trunc(arg) || arg <= 0) {
      stop(sprintf("Argument '%s' should be a positive integer", level),
           call. = FALSE)
    }
  }else{
    if (arg != trunc(arg) | arg < 0L) {
      stop(sprintf("Argument '%s' should be a non-negative integer",level
      ), call. = FALSE)
    }
  }
  if (!is.null(greater_than)) {
    if (arg <= greater_than) {
      stop(sprintf("Argument '%s' should be greater than '%d'",
                   level, greater_than), call. = FALSE)
    }
  }
}

assert_between <- function(x, arg1, arg2) {
  level <- deparse(substitute(x))
  if (!dplyr::between(x, arg1, arg2)) {
    stop(sprintf("Argument '%s' should be a be between '%d' and '%d'",
                 level, arg1, arg2), call. = FALSE)
  }
}

assert_class <- function(x, klass) {
  xstring <- deparse(substitute(x))
  # klass <- deparse(substitute(klass))
  if (!inherits(x, klass)) {
    stop(sprintf("Argument '%s' should be of class '%s'", xstring, klass),
         call. = FALSE)
  }
}


assert_na <- function(x) {
  if (any(is.na(x))) {
    stop("RLS estimation cannot handle NA", call. = FALSE)
  }
}

'%ni%' <- Negate('%in%')


assert_equal_arg <- function(x, y, panel = FALSE) {
  if (minw(x) != minw(y)) stop("Different minimum window", call. = FALSE)

  if (method(y) == "Sieve Bootstrap") {
    if (lagr(x) != lagr(y)) stop("Different lag values", call. = FALSE)

  }
}

# Access attributes easily ------------------------------------------------


minw <- function(x) {
  attr(x, "minw")
}

lagr <- function(x, ...) {
  attr(x, "lag")
}

method <- function(y) {
  attr(y, "method")
}

iter <- function(y) {
  attr(y, "iter")
}