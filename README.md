# Language: R
# Input: TXT (keyword-value pairs)
# Output: PREFIX
# Tested with: PluMA 1.0, R 4.0

Predict relationships among organisms based on metabolic networks using RevEcoR (Cao et al, 2016).

The plugin takes as input a TXT file of keyword-value pairs, tab-delimited:
network1: Metabolic network from organism 1 (GML format)
network2: Metabolic network from organism 2 (GML format)

It produces as output three CSV files, using the prefix specified in the configuration file:
prefix.cooperation.csv
prefix.competition.csv
prefix.complementarity.csv


