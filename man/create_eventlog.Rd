% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_eventlog.R
\name{create_eventlog}
\alias{create_eventlog}
\title{Create an eventlog object}
\usage{
create_eventlog(df, case_id = NULL, activity_id = NULL,
  activity_instance_id = NULL, lifecycle_id = NULL, timestamp = NULL,
  resource_id = NULL)
}
\arguments{
\item{df}{a \code{data.frame}. This contains the event data which is imported as a \code{data.frame}}

\item{case_id}{character vector of length 1. It contains column/attribute name which has unique cases in event data. (Mandatory)}

\item{activity_id}{character vector of length 1. It contains column/attribute name which has unique activities in event data. (Mandatory)}

\item{activity_instance_id}{character vector of length 1. It contains column/attribute name which has enumeration of activity occurances. An specific activity performed by a specific case at specific point in time is called an activity instance. For all lifecycle instances of a single activity has same activity instance Id. (Optional)}

\item{lifecycle_id}{character vector of length 1.It contains column/attribute name which specifies lifecycle of an activity in event data. (Optional)}

\item{timestamp}{character vector of length 1.It contains column/attribute name which specifies the timestamp when the activity was performed in event data. (Mandatory)}

\item{resource_id}{character vector of length 1. It conatins column/attribute name which specifies the handler/resource of an activity in event data. (Optional)}
}
\value{
An \code{\link[bupaR]{eventlog}} created from the CSV file on the disk.
}
\description{
Create an event log object from a CSV file on the disk.
}
\details{
This function takes a CSV file as input and gives an eventlog object.
The function is only applicable for eventlog data. Eventlog data must contain
Case, Activity and Timestamp attributes. For further process mining we must
convert this event data which is in CSV format to a more suitable XES format
which is an extension of XML format.
}
\examples{
\dontrun{
library(fuzzymineR)
data("artificial_loan_process")
log <- create_eventlog(artificial_loan_process,
                       case_id = "case",
                       activity_id = "event",
                       timestamp = "completeTime")

}
}
\seealso{
\link[bupaR]{eventlog}, \link[fuzzymineR]{mine_fuzzy_model}, \link[fuzzymineR]{viz_fuzzy_model}
}

