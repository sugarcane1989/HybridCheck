% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HC.R
\docType{class}
\name{HC}
\alias{HC}
\title{A Reference Class for managing a HybridCheck analysis.}
\description{
A Reference Class for managing a HybridCheck analysis.
}
\section{Fields}{

\describe{
\item{\code{DNA}}{A HCdna reference object.}

\item{\code{FTTmodule}}{A FTTester object, controls and stores results of the Four Taxon Tests.}

\item{\code{comparrisonSettings}}{A ComparrisonSettings object.}

\item{\code{ssAnalysisSettings}}{A SSAnalysisSettings object.}

\item{\code{blockDetectionSettings}}{A BlockDetectionSettings object.}

\item{\code{blockDatingSettings}}{A BlockDatingSettings object.}

\item{\code{plottingSettings}}{A PlottingSettings object.}

\item{\code{triplets}}{A Triplets object.}

\item{\code{userBlocks}}{A UserBlocks object.}

\item{\code{filesDirectory}}{Character - the root directory where all temporary files
used by this object are found.}
}}

\section{Methods}{

\describe{
\item{\code{analyzeSS(tripletSelections = "NOT.SCANNED", replaceSettings = FALSE, ...)}}{Analyzing the sequence similarity of triplets of sequences.
tripletSelections can be 'NOT.SCANNED', 'ALL', 'SCANNED',
or a list of character vectors of length 3, each specifying a sequence triplet
by the names of the sequences involved. If replaceSettings is TRUE, then
optional settings passed for this analysis will apply to subsequent calls
of this function.}

\item{\code{initialize(dnafile = NULL)}}{Create HC object with default values for fields.
The path to the FASTA file can be provided.}

\item{\code{inputDNA(input)}}{Loads FASTA file or Biostrings object into the session.}

\item{\code{prepareFourTaxonTests(taxa = NULL)}}{Prepares space for four taxon tests.}

\item{\code{runFourTaxonTests(selections = "NOT.TESTED", numberOfBlocks = NULL,
  blockLength = NULL)}}{Runs the four taxon tests that have been prepared.
You must provide either a number of blocks to use for the jackknife,
or the size of the blocks to use for the jackknife,
the exact size and number of blocks to use is then automatically worked out.
selections can be 'NOT.TESTED', 'ALL', 'TESTED', or a list of character vectors of length 4, each
denoting a four taxon test by the names of the populations involved.}

\item{\code{sequenceNames()}}{Returns a character vector of all the sequence names loaded.}

\item{\code{sequencesLoaded()}}{Returns TRUE if dna sequences have been loaded.}

\item{\code{setParameters(Step = NULL, ...)}}{Set parameters for a single stage of the analysis.
Specify a single stage for Step.
The steps are: 'FTT', 'TripletGeneration',
'SSAnalysis', 'BlockDetection', 'BlockDating',
'Plotting'.}

\item{\code{setPopulations(pops = NULL)}}{Sets up population definitions. If pops is NULL,
each sequence loaded is assumed to be from one population.}

\item{\code{showParameters(Step = NULL)}}{Displays to the R console, the settings of each HC analysis stage.}

\item{\code{tabulateFourTaxonTests(selections = "ALL", neat = TRUE, global = TRUE)}}{Fetches the results of the four taxon tests, returns a dataframe.
selections can be 'ALL', 'TESTED', or a list of character vectors of length 4, each
denoting a four taxon test by the names of the populations involved.}
}}

