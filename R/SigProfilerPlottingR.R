#' @title Plot SBS profiles
#'
#' @description Generates plots for Single Base Substitutions (SBS).
#'
#' @export
plotSBS <- function(matrix_path, output_path, project, plot_type, percentage = FALSE, custom_text_upper = NULL, custom_text_middle = NULL, custom_text_bottom = NULL, savefig_format = "pdf", volume = NULL, dpi = 100) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotSBS(matrix_path, output_path, project, plot_type, percentage, custom_text_upper, custom_text_middle, custom_text_bottom, savefig_format, volume, dpi)
  sys$stdout$flush()
}

#' @title Plot DBS profiles
#'
#' @description Generates plots for Doublet Base Substitutions (DBS).
#'
#' @export
plotDBS <- function(matrix_path, output_path, project, plot_type, percentage = FALSE, custom_text_upper = NULL, custom_text_middle = NULL, custom_text_bottom = NULL, savefig_format = "pdf", volume = NULL, dpi = 100) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotDBS(matrix_path, output_path, project, plot_type, percentage, custom_text_upper, custom_text_middle, custom_text_bottom, savefig_format, volume, dpi)
  sys$stdout$flush()
}

#' @title Plot ID profiles
#'
#' @description Generates plots for IDs (Insertion and Deletion).
#'
#' @export
plotID <- function(matrix_path, output_path, project, plot_type, percentage = FALSE, custom_text_upper = NULL, custom_text_middle = NULL, custom_text_bottom = NULL, savefig_format = "pdf", volume = NULL, dpi = 100) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotID(matrix_path, output_path, project, plot_type, percentage, custom_text_upper, custom_text_middle, custom_text_bottom, savefig_format, volume, dpi)
  sys$stdout$flush()
}

#' @title Plot CNV profiles
#'
#' @description Generates plots for Copy Number Variation (CNV).
#'
#' @export
plotCNV <- function(matrix_path, output_path, project, percentage = FALSE, aggregate = FALSE, read_from_file = TRUE, savefig_format = "pdf", dpi = 100) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotCNV(matrix_path, output_path, project, percentage, aggregate, read_from_file, savefig_format, dpi)
  sys$stdout$flush()
}

#' @title Plot SV profiles
#'
#' @description Generates plots for Structural Variants (SV).
#'
#' @export
plotSV <- function(matrix_path, output_path, project, percentage = FALSE, aggregate = FALSE, savefig_format = "pdf", dpi = 100) {
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sigPlt <- reticulate::import("sigProfilerPlotting")
  sigPlt$plotSV(matrix_path, output_path, project, percentage, aggregate, savefig_format, dpi)
  sys$stdout$flush()
}

#' @title Plot a sample portrait
#'
#' @description Generates a sample portrait.
#'
#' @export
samplePortrait <- function(sample_matrices_path, output_path, project, percentage=FALSE){
  os <- reticulate::import("os")
  sys <- reticulate::import("sys")
  sp <- reticulate::import("sigProfilerPlotting.sample_portrait")
  sp$samplePortrait(sample_matrices_path, output_path, project, percentage)
  sys$stdout$flush()
}
