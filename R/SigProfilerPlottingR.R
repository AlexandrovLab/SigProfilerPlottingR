#' @title
#'
#' @description
#'
#' @param
#'
#' @return
#'
#' @examples
#'
#' @export plotSBS

plotSBS <- function(matrix_path, output_path, project, plot_type, percentage=FALSE) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotSBS(matrix_path, output_path, project, plot_type, percentage)
  sys$stdout$flush()
}

#' @export plotDBS
plotDBS <- function(matrix_path, output_path, project, plot_type, percentage=FALSE) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotDBS(matrix_path, output_path, project, plot_type, percentage)
  sys$stdout$flush()
}

#' @export plotID
plotID <- function(matrix_path, output_path, project, plot_type, percentage=FALSE) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotID(matrix_path, output_path, project, plot_type, percentage)
  sys$stdout$flush()
}

#' @export plotCNV
plotCNV <- function(matrix_path, output_path, project, percentage=FALSE, savefig_format="pdf", dpi=100) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotCNV(matrix_path, output_path, project, percentage)
  sys$stdout$flush()
}

#' @export plotSV
plotSV <- function(matrix_path, output_path, project, percentage=FALSE, savefig_format="pdf", dpi=10) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotSV(matrix_path, output_path, project, percentage)
  sys$stdout$flush()
}

#' @export samplePortrait
samplePortrait <- function(sample_matrices_path, output_path, project, percentage=FALSE){
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sp <- reticulate::import("sigProfilerPlotting.sample_portrait")
  sp$samplePortrait(sample_matrices_path, output_path, project, percentage)
  sys$stdout$flush()
}
