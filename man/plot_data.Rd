% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_data.R
\name{plot_data}
\alias{plot_data}
\title{Plot biotracer data}
\usage{
plot_data(filename, plot_save_pdf, plot_save_png, mix, source, discr)
}
\arguments{
\item{filename}{name of the plot file(s) to save (e.g. "isospace_plot")}

\item{plot_save_pdf}{T/F, save the plot(s) as a pdf?}

\item{plot_save_png}{T/F, save the plot(s) as a png?}

\item{mix}{output from \code{\link{load_mix_data}}}

\item{source}{output from \code{\link{load_source_data}}}

\item{discr}{output from \code{\link{load_discr_data}}}
}
\description{
\code{plot_data} creates plot(s) of the biotracer data and saves the plot(s)
to file(s) in the working directory. All 3 required data files must have been
loaded by \code{\link{load_mix_data}}, \code{\link{load_source_data}},
and \code{\link{load_discr_data}}. Behavior depends on the number of tracers:
\itemize{
 \item 1 tracer: calls \code{\link{plot_data_one_iso}} to create a 1-D plot.
 \item 2 tracers: calls \code{\link{plot_data_two_iso}} to create a biplot.
 \item >2 tracers: calls \code{\link{plot_data_two_iso}} in a loop to create
 biplots for each pairwise combination of biotracers.
}
}
\details{
An important detail is that \code{plot_data_two_iso} and \code{plot_data_one_iso}
plot the raw mix data and \emph{add the TDF to the source data}, since this is
the polygon that the mixing model uses to determine proportions. The plotted
source means are:
\deqn{\mu_source + \mu_discr}
The source error bars are +/- 1 standard deviation, \emph{calculated as a
combination of source and TDF variances:}
\deqn{\sqrt{\sigma^2_source + \sigma^2_discr}}

\code{plot_data} looks for 'C', 'N', 'S', and 'O' in the biotracer column
headers and assumes they are stable isotopes, labeling the axes with, e.g.,
expression(paste(delta^13, "C (u2030)",sep="")).
}
\seealso{
\code{\link{plot_data_two_iso}}, \code{\link{plot_data_one_iso}}
}

