#' @inheritParams vegawidget::as_vegaspec
#' @rdname as_vegaspec
#' @export
#'
as_vegaspec.altair.vegalite.v4.api.TopLevelMixin <- function(spec, ...) {

  spec <- spec$to_json()

  vegawidget::as_vegaspec(spec, ...)
}

#' @export
#'
print.altair.vegalite.v4.api.TopLevelMixin <- function(x, ...) {

  x <- as_vegaspec(x)

  print(x, ...)
}

#' @export
#'
format.altair.vegalite.v4.api.TopLevelMixin <- function(x, ...) {

  x <- as_vegaspec(x)

  format(x, ...)
}

#' @inheritParams vegawidget::knit_print.vegaspec
#' @rdname knit_print.vegaspec
#' @export
#'
knit_print.altair.vegalite.v4.api.TopLevelMixin <- function(spec, ..., options = NULL) {

  spec <- as_vegaspec(spec)

  knitr::knit_print(spec, ..., options = options)
}
