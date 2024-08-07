% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{slt_plot}
\alias{slt_plot}
\alias{slt_time_boxplot}
\alias{slt_time_concurrency}
\alias{slt_waterfall}
\alias{slt_hist_loadtimes}
\alias{slt_user}
\alias{slt_session}
\alias{slt_session_duration}
\alias{slt_session_latency}
\alias{slt_http_latency}
\alias{slt_websocket_latency}
\title{Plotting outputs for shinyloadtest}
\usage{
slt_time_boxplot(df, labels = NULL)

slt_time_concurrency(df, labels = NULL)

slt_waterfall(df, limits = NULL)

slt_hist_loadtimes(df, max_load_time = 5)

slt_user(df)

slt_session(df)

slt_session_duration(df, cutoff = NULL)

slt_session_latency(df)

slt_http_latency(df, cutoff = 5)

slt_websocket_latency(df, cutoff = 5)
}
\arguments{
\item{df}{data frame returned from \code{\link{load_runs}}}

\item{labels}{A vector of labels to include.  If none are supplied, all labels will be used.}

\item{limits}{passed into \code{\link[ggplot2]{scale_colour_gradientn}}}

\item{max_load_time}{The amount of time users will wait for the page to load
when first requesting the app.}

\item{cutoff}{Where to draw a horizontal or vertical line to display a reasonable cutoff line for requests.}
}
\value{
A \code{\link[ggplot2]{ggplot}} plot object
}
\description{
Many different plotting routines to display different loadtest information.
}
\section{Functions}{
\itemize{
\item \code{slt_time_boxplot()}: Box plot of load times for each event in each run

\item \code{slt_time_concurrency()}: Time on concurrency for each event for each run

\item \code{slt_waterfall()}: Event waterfall for each session within each run

\item \code{slt_hist_loadtimes()}: Histogram of page load times

\item \code{slt_user()}: Gantt chart of event duration for each user within each run

\item \code{slt_session()}: Event gantt chart of each user session within each run

\item \code{slt_session_duration()}: Event gantt chart of fastest to slowest session times within each run

\item \code{slt_session_latency()}: Stacked bar chart of event duration for each session within each run

\item \code{slt_http_latency()}: Bar chart of total HTTP latency for each session within each run

\item \code{slt_websocket_latency()}: Bar chart of maximum calculation (websocket) latency for each session within each run

}}
\examples{
\donttest{
slt_user(slt_demo_data_4)
slt_session(slt_demo_data_4)
slt_session_duration(slt_demo_data_4)

slt_waterfall(slt_demo_data_4)
slt_time_boxplot(slt_demo_data_4)
slt_time_concurrency(slt_demo_data_4)

slt_session_latency(slt_demo_data_4)
slt_http_latency(slt_demo_data_4)
slt_websocket_latency(slt_demo_data_4)
slt_hist_loadtimes(slt_demo_data_4)
}
}
