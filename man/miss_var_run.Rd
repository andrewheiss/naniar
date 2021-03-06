% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miss-x-run.R
\name{miss_var_run}
\alias{miss_var_run}
\title{Find the number of missing and complete values in a single run}
\usage{
miss_var_run(data, var)
}
\arguments{
\item{data}{data.frame}

\item{var}{a bare variable name}
}
\value{
dataframe with column names "run_length" and "is_na", which describe
the length of the run, and whether that run describes a missing value.
}
\description{
It us useful to find the number of missing values that occur in a single run.
The function, \code{miss_var_run()}, returns a dataframe with the column names
"run_length" and "is_na", which describe the length of the run, and
whether that run describes a missing value.
}
\examples{

miss_var_run(pedestrian, hourly_counts)

\dontrun{
# find the number of runs missing/complete for each month
library(dplyr)


pedestrian \%>\%
  group_by(month) \%>\%
  miss_var_run(hourly_counts)

library(ggplot2)

# explore the number of missings in a given run
miss_var_run(pedestrian, hourly_counts) \%>\%
  filter(is_na == "missing") \%>\%
  count(run_length) \%>\%
  ggplot(aes(x = run_length,
             y = n)) +
      geom_col()

# look at the number of missing values and the run length of these.
miss_var_run(pedestrian, hourly_counts) \%>\%
  ggplot(aes(x = is_na,
             y = run_length)) +
      geom_boxplot()

# using group_by
 pedestrian \%>\%
   group_by(month) \%>\%
   miss_var_run(hourly_counts)
}

}
\seealso{
\code{\link[=pct_miss_case]{pct_miss_case()}} \code{\link[=prop_miss_case]{prop_miss_case()}} \code{\link[=pct_miss_var]{pct_miss_var()}} \code{\link[=prop_miss_var]{prop_miss_var()}} \code{\link[=pct_complete_case]{pct_complete_case()}} \code{\link[=prop_complete_case]{prop_complete_case()}} \code{\link[=pct_complete_var]{pct_complete_var()}} \code{\link[=prop_complete_var]{prop_complete_var()}} \code{\link[=miss_prop_summary]{miss_prop_summary()}} \code{\link[=miss_case_summary]{miss_case_summary()}} \code{\link[=miss_case_table]{miss_case_table()}} \code{\link[=miss_summary]{miss_summary()}} \code{\link[=miss_var_prop]{miss_var_prop()}} \code{\link[=miss_var_run]{miss_var_run()}} \code{\link[=miss_var_span]{miss_var_span()}} \code{\link[=miss_var_summary]{miss_var_summary()}} \code{\link[=miss_var_table]{miss_var_table()}} \code{\link[=n_complete]{n_complete()}} \code{\link[=n_complete_row]{n_complete_row()}} \code{\link[=n_miss]{n_miss()}} \code{\link[=n_miss_row]{n_miss_row()}} \code{\link[=pct_complete]{pct_complete()}} \code{\link[=pct_miss]{pct_miss()}} \code{\link[=prop_complete]{prop_complete()}} \code{\link[=prop_complete_row]{prop_complete_row()}} \code{\link[=prop_miss]{prop_miss()}}
}
