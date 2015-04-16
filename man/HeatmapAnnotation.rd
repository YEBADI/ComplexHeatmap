\name{HeatmapAnnotation}
\alias{HeatmapAnnotation}
\title{
Constructor method for HeatmapAnnotation class  


}
\description{
Constructor method for HeatmapAnnotation class  


}
\usage{
HeatmapAnnotation(df, name, col, show_legend, ...,
    which = c("column", "row"), annotation_height = 1, annotation_width = 1,
    height = unit(1, "cm"), width = unit(1, "cm"), gp = gpar(col = NA))
}
\arguments{

  \item{df}{a data frame. Each column will be treated as a simple annotation. The data frame must have column names.}
  \item{name}{name of the heatmap annotation}
  \item{col}{a list of colors which contains color mapping to columns in \code{df}. See \code{\link{SingleAnnotation}} for how to set colors.}
  \item{show_legend}{whether show legend for each column in \code{df}.}
  \item{...}{functions which define complex annotations. Values should be named arguments.}
  \item{which}{are the annotations row annotations or column annotations?}
  \item{annotation_height}{height of each annotation if annotations are column annotations.}
  \item{annotation_width}{width of each annotation if annotations are row annotations.}
  \item{height}{not using currently.}
  \item{width}{width of the whole heatmap annotations, only used for column annotation when appending to the list of heatmaps.}
  \item{gp}{graphic parameters for simple annotations.}

}
\details{
The simple annotations are defined by \code{df} and \code{col} arguments. Complex annotations are defined by the function list.   


}
\value{
A \code{\link{HeatmapAnnotation-class}} object.  


}
\author{
Zuguang Gu <z.gu@dkfz.de>  


}
\examples{
df = data.frame(type = c("a", "a", "a", "b", "b", "b"))
ha = HeatmapAnnotation(df = df)

ha = HeatmapAnnotation(df = df, col = list(type = c("a" =  "red", "b" = "blue")))

ha = HeatmapAnnotation(df = df, col = list(type = c("a" =  "red", "b" = "blue")), 
    which = "row")

ha = HeatmapAnnotation(points = anno_points(1:6))

ha = HeatmapAnnotation(histogram = anno_points(1:6))

mat = matrix(rnorm(36), 6)
ha = HeatmapAnnotation(boxplot = anno_boxplot(mat))
}
