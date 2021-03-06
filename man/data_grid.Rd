% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-grid.R
\name{data_grid}
\alias{data_grid}
\title{Generate a data grid.}
\usage{
data_grid(data, ..., .model = NULL)
}
\arguments{
\item{data}{A data frame}

\item{...}{Variables passed on to \code{\link[tidyr]{expand}()}}

\item{.model}{A model.  If supplied, any predictors needed for the model
not present in \code{...} will be filled in with "\link{typical}" values.}
}
\description{
To visualise a model, it is very useful to be able to generate an
evenly spaced grid of points from the data. \code{data_grid} helps you
do this by wrapping around \code{\link[tidyr]{expand}()}.
}
\examples{
data_grid(mtcars, vs, am)

# For continuous variables, seq_range is useful
data_grid(mtcars, mpg = seq_range(mpg, 10))

# If you optionally supply a model, missing predictors will
# be filled in with typical values
mod <- lm(mpg ~ wt + cyl + vs, data = mtcars)
data_grid(mtcars, .model = mod)
data_grid(mtcars, cyl = seq_range(cyl, 9), .model = mod)
}
\seealso{
\code{\link{seq_range}()} for generating ranges from continuous
  variables.
}

