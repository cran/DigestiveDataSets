# DigestiveDataSets - A Curated Collection of Digestive System and Gastrointestinal Disease Datasets
# Version 0.1.0
# Copyright (C) 2025 Renzo Caceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


#' Obese Patient Weight Loss Data
#'
#' This dataset, weight_loss_df, is a data frame containing the weight, in kilograms,
#' of an obese patient measured at 52 time points over an 8-month period as part of a
#' weight rehabilitation programme.
#'
#' The dataset name has been kept as 'weight_loss_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name weight_loss_df
#' @format A data frame with 52 observations and 2 variables:
#' \describe{
#'   \item{Days}{Integer vector indicating the number of days since the beginning of the programme}
#'   \item{Weight}{Numeric vector indicating the weight (in kilograms) of the patient at each time point}
#' }
#' @source Data taken from the MASS package version 7.3-65.
#' @usage data(weight_loss_df)
#' @export
load("data/weight_loss_df.rda")
NULL


#' Anorexia Weight Change
#'
#' This dataset, anorexia_weight_change_df, is a data frame containing weight change data
#' for young female anorexia patients. It includes pre- and post-treatment weights,
#' along with the type of treatment administered.
#'
#' The dataset name has been kept as 'anorexia_weight_change_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name anorexia_weight_change_df
#' @format A data frame with 72 observations and 3 variables:
#' \describe{
#'   \item{Treat}{Factor indicating the treatment type (3 levels)}
#'   \item{Prewt}{Numeric vector indicating the patient's weight before treatment (in kilograms)}
#'   \item{Postwt}{Numeric vector indicating the patient's weight after treatment (in kilograms)}
#' }
#' @source Data taken from the MASS package version 7.3-65.
#' @usage data(anorexia_weight_change_df)
#' @export
load("data/anorexia_weight_change_df.rda")
NULL


#' Gastrointestinal Damage Prevention
#'
#' This dataset, gi_damage_prevention_df, is a data frame containing results from four
#' randomised clinical trials on the prevention of gastrointestinal damages by Misoprostol,
#' reported by Lanza et al. (1987–1989).
#'
#' The dataset name has been kept as 'gi_damage_prevention_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name gi_damage_prevention_df
#' @format A data frame with 198 observations and 3 variables:
#' \describe{
#'   \item{study}{Factor indicating the clinical trial (4 levels)}
#'   \item{treatment}{Factor indicating the treatment group (2 levels: control or Misoprostol)}
#'   \item{classification}{Ordered factor indicating the degree of gastrointestinal damage (5 levels)}
#' }
#' @source Data taken from the HSAUR3 package version 1.0-15.
#' @usage data(gi_damage_prevention_df)
#' @export
load("data/gi_damage_prevention_df.rda")
NULL


#' Features from Colonoscopic Video
#'
#' This dataset, colonoscopy_features_tbl_df, is a tibble containing features extracted from 76 colonoscopic videos.
#' Each video was recorded using both White Light (WL) and Narrow Band Imaging (NBI). The dataset includes
#' histology results (classification ground truth), the opinion of endoscopists (4 experts and 3 beginners),
#' and 698 features derived from patients with gastrointestinal lesions.
#'
#' The dataset name has been kept as 'colonoscopy_features_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name colonoscopy_features_tbl_df
#' @format A tibble with 76 observations and 7 variables:
#' \describe{
#'   \item{feature 294}{Numeric feature extracted from colonoscopic videos}
#'   \item{feature 441}{Numeric feature extracted from colonoscopic videos}
#'   \item{feature 472}{Numeric feature extracted from colonoscopic videos}
#'   \item{feature 486}{Numeric feature extracted from colonoscopic videos}
#'   \item{class_agreement}{Numeric score representing agreement among endoscopists}
#'   \item{missinglabel_indicator}{Numeric indicator for missing labels}
#'   \item{ground truth}{Character string representing the histology-based classification}
#' }
#' @source Data taken from the gmmsslm package version 1.1.6.
#' @usage data(colonoscopy_features_tbl_df)
#' @export
load("data/colonoscopy_features_tbl_df.rda")
NULL


#' Pancreatic Cancer Clinical Trial
#'
#' This dataset, pancreatic_cancer_df, is a data frame containing data from a Phase II
#' clinical trial of patients with locally advanced or metastatic pancreatic cancer.
#' It includes time-to-event data for disease progression and death, as well as staging information.
#'
#' The dataset name has been kept as 'pancreatic_cancer_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name pancreatic_cancer_df
#' @format A data frame with 41 observations and 4 variables:
#' \describe{
#'   \item{stage}{Factor indicating disease stage (locally advanced or metastatic)}
#'   \item{onstudy}{Factor indicating time (in days) from enrollment}
#'   \item{progression}{Factor indicating time (in days) to disease progression}
#'   \item{death}{Factor indicating time (in days) to death}
#' }
#' @source Data taken from the asaur package version 0.50.
#' @usage data(pancreatic_cancer_df)
#' @export
load("data/pancreatic_cancer_df.rda")
NULL


#' Digestive Cancer Survival Times
#'
#' This dataset, digestive_cancer_survival_df, is a data frame containing survival times
#' (in days) of cancer patients with advanced cancer of the stomach, bronchus, colon,
#' ovary, or breast. All patients included in this dataset received treatment that
#' involved supplemental ascorbate.
#'
#' The dataset name has been kept as 'digestive_cancer_survival_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name digestive_cancer_survival_df
#' @format A data frame with 17 observations and 5 variables:
#' \describe{
#'   \item{stomach}{Integer values indicating survival times (in days) for patients with stomach cancer}
#'   \item{bronchus}{Integer values indicating survival times (in days) for patients with bronchial cancer}
#'   \item{colon}{Integer values indicating survival times (in days) for patients with colon cancer}
#'   \item{ovary}{Integer values indicating survival times (in days) for patients with ovarian cancer}
#'   \item{breast}{Integer values indicating survival times (in days) for patients with breast cancer}
#' }
#' @source Data taken from the RbyExample package version 0.0.100.
#' @usage data(digestive_cancer_survival_df)
#' @export
load("data/digestive_cancer_survival_df.rda")
NULL



#' Helicobacter pylori Infection in Preschoolers
#'
#' This dataset, helicobacter_children_tbl_df, is a tibble containing the prevalence of
#' Helicobacter pylori infection in preschool children according to parental history
#' of duodenal or gastric ulcer.
#'
#' The dataset name has been kept as 'helicobacter_children_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name helicobacter_children_tbl_df
#' @format A tibble with 863 observations and 2 variables:
#' \describe{
#'   \item{ulcer}{Factor with 2 levels indicating parental history of duodenal or gastric ulcer}
#'   \item{infected}{Factor with 2 levels indicating Helicobacter pylori infection status}
#' }
#' @source Data taken from the package pubh version 2.0.0.
#' @usage data(helicobacter_children_tbl_df)
#' @export
load("data/helicobacter_children_tbl_df.rda")
NULL



#' Gastric Cancer Clinical Trial
#'
#' This dataset, gastric_cancer_trial_df, is a data frame containing data from a randomized clinical trial
#' conducted by the Gastrointestinal Tumor Study Group on patients with gastric cancer.
#' It includes survival time, event occurrence, and group assignment.
#'
#' The dataset name has been kept as 'gastric_cancer_trial_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name gastric_cancer_trial_df
#' @format A data frame with 90 observations and 3 variables:
#' \describe{
#'   \item{time}{Numeric vector representing survival time}
#'   \item{event}{Numeric vector indicating event occurrence (e.g., death or relapse)}
#'   \item{group}{Factor with 2 levels representing treatment groups}
#' }
#' @source Data taken from the package coin version 1.4-3.
#' @usage data(gastric_cancer_trial_df)
#' @export
load("data/gastric_cancer_trial_df.rda")
NULL


#' Recurrent Bleeding from Ulcers
#'
#' This dataset, bleeding_ulcers_df, is a data frame containing data from 40 experiments
#' designed to compare a new surgery for stomach ulcer with an older surgery.
#'
#' The dataset name has been kept as 'bleeding_ulcers_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name bleeding_ulcers_df
#' @format A data frame with 80 observations and 9 variables:
#' \describe{
#'   \item{author}{Factor indicating the author of the study (20 levels)}
#'   \item{year}{Integer indicating the year of the study}
#'   \item{quality}{Integer representing the quality score of the experiment}
#'   \item{age}{Integer indicating the age of the patients}
#'   \item{r}{Integer indicating the number of recurrent bleeds}
#'   \item{m}{Integer indicating the total number of patients}
#'   \item{bleed}{Integer indicating bleeding events}
#'   \item{treat}{Factor indicating treatment type (6 levels)}
#'   \item{table}{Factor representing the experiment table (40 levels)}
#' }
#' @source Data taken from the SMPracticals package version 1.4-3.1.
#' @usage data(bleeding_ulcers_df)
#' @export
load("data/bleeding_ulcers_df.rda")
NULL


#' Indomethacin for Post-ERCP Pancreatitis
#'
#' This dataset, post_ercp_pancreatitis_tbl_df, is a tibble containing results from a randomized,
#' placebo-controlled, prospective 2-arm trial of rectal indomethacin (100 mg) versus placebo
#' to prevent post-ERCP pancreatitis in 602 participants, as reported by Elmunzer, Higgins, et al. (2012)
#' in the New England Journal of Medicine.
#'
#' The dataset name has been kept as 'post_ercp_pancreatitis_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name post_ercp_pancreatitis_tbl_df
#' @format A tibble with 602 observations and 33 variables:
#' \describe{
#'   \item{id}{Numeric subject identifier}
#'   \item{site}{Factor indicating study site (4 levels)}
#'   \item{age}{Numeric age of the participant}
#'   \item{risk}{Numeric risk score}
#'   \item{gender}{Factor indicating gender (2 levels)}
#'   \item{outcome}{Factor indicating study outcome (2 levels)}
#'   \item{sod}{Factor indicating presence of sphincter of Oddi dysfunction (2 levels)}
#'   \item{pep}{Factor indicating presence of post-ERCP pancreatitis (2 levels)}
#'   \item{recpanc}{Factor indicating recurrent pancreatitis (2 levels)}
#'   \item{psphinc}{Factor indicating pancreatic sphincterotomy (2 levels)}
#'   \item{precut}{Factor indicating precut sphincterotomy (2 levels)}
#'   \item{difcan}{Factor indicating difficult cannulation (2 levels)}
#'   \item{pneudil}{Factor indicating pneumatic dilation (2 levels)}
#'   \item{amp}{Factor indicating ampullary interventions (2 levels)}
#'   \item{paninj}{Factor indicating pancreatic injury (2 levels)}
#'   \item{acinar}{Factor indicating acinarization (2 levels)}
#'   \item{brush}{Factor indicating brushing procedures (2 levels)}
#'   \item{asa81}{Factor indicating ASA 81 mg use (3 levels)}
#'   \item{asa325}{Factor indicating ASA 325 mg use (3 levels)}
#'   \item{asa}{Factor indicating ASA status (3 levels)}
#'   \item{prophystent}{Factor indicating prophylactic stent placement (2 levels)}
#'   \item{therastent}{Factor indicating therapeutic stent use (2 levels)}
#'   \item{pdstent}{Factor indicating pancreatic duct stent (2 levels)}
#'   \item{sodsom}{Factor indicating somatostatin use for SOD (2 levels)}
#'   \item{bsphinc}{Factor indicating biliary sphincterotomy (2 levels)}
#'   \item{bstent}{Factor indicating biliary stent (2 levels)}
#'   \item{chole}{Factor indicating cholecystectomy (2 levels)}
#'   \item{pbmal}{Factor indicating presence of pancreaticobiliary malignancy (2 levels)}
#'   \item{train}{Factor indicating if performed by trainee (2 levels)}
#'   \item{status}{Factor indicating trial status (2 levels)}
#'   \item{type}{Factor indicating procedure type (4 levels)}
#'   \item{rx}{Factor indicating treatment group: placebo or indomethacin (2 levels)}
#'   \item{bleed}{Numeric bleeding indicator}
#' }
#' @source Data taken from the medicaldata package version 0.2.0.
#' @usage data(post_ercp_pancreatitis_tbl_df)
#' @export
load("data/post_ercp_pancreatitis_tbl_df.rda")
NULL


#' SmartPill Intestinal Transit
#'
#' This dataset, intestinal_smartpill_df, is a data frame from a prospective cohort study
#' evaluating gastric emptying, small bowel transit time, and total intestinal transit time using
#' a SmartPill motility capsule. The study involved 8 critically ill trauma patients and 87 healthy
#' volunteers. The capsule wirelessly transmitted pH, pressure, and temperature to a recorder
#' attached to each subject's abdomen.
#'
#' The dataset name has been kept as 'intestinal_smartpill_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name intestinal_smartpill_df
#' @format A data frame with 95 observations and 22 variables:
#' \describe{
#'   \item{Group}{Numeric indicator of group membership}
#'   \item{Gender}{Numeric indicator of gender}
#'   \item{Race}{Numeric code indicating racial background}
#'   \item{Height}{Height in centimeters}
#'   \item{Weight}{Weight in kilograms}
#'   \item{Age}{Age in years}
#'   \item{GE.Time}{Gastric emptying time (minutes)}
#'   \item{SB.Time}{Small bowel transit time (minutes)}
#'   \item{C.Time}{Colon transit time (minutes)}
#'   \item{WG.Time}{Whole gut transit time (minutes)}
#'   \item{S.Contractions}{Number of contractions in the stomach}
#'   \item{S.Sum.of.Amplitudes}{Sum of contraction amplitudes in the stomach}
#'   \item{S.Mean.Peak.Amplitude}{Mean peak amplitude in the stomach}
#'   \item{S.Mean.pH}{Mean pH level in the stomach}
#'   \item{SB.Contractions}{Number of contractions in the small bowel}
#'   \item{SB.Sum.of.Amplitudes}{Sum of contraction amplitudes in the small bowel}
#'   \item{SB.Mean.Peak.Amplitude}{Mean peak amplitude in the small bowel}
#'   \item{SB.Mean.pH}{Mean pH level in the small bowel}
#'   \item{Colon.Contractions}{Number of contractions in the colon}
#'   \item{Colon.Sum.of.Amplitudes}{Sum of contraction amplitudes in the colon}
#'   \item{C.Mean.Peak.Amplitude}{Mean peak amplitude in the colon}
#'   \item{C.Mean.pH}{Mean pH level in the colon}
#' }
#' @source Data taken from the \pkg{medicaldata} package version 0.2.0. Original source: Rauch et al.,
#' "Use of Wireless Utility Capsule to Determine Gastric Emptying and Small Intestinal Transit Times in Critically Ill Trauma Patients".
#' \emph{Journal of Critical Care}, 2012; 27(5): 534.e7--534.e12.
#' @usage data(intestinal_smartpill_df)
#' @export
load("data/intestinal_smartpill_df.rda")
NULL



#' Campylobacter Infections Time Series
#'
#' This dataset, campylobacter_infections_ts, is a time series object containing the number of cases
#' of campylobacter infections in northern Quebec (Canada), recorded in four-week intervals
#' from January 1990 to October 2000. Campylobacterosis is an acute bacterial infectious disease
#' attacking the digestive system.
#'
#' The dataset name has been kept as 'campylobacter_infections_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series object. The original content has not been modified
#' in any way.
#'
#' @name campylobacter_infections_ts
#' @format A time series object (`ts`) with 140 observations:
#' \describe{
#'   \item{Start}{c(1990, 1)}
#'   \item{End}{c(2000, 10)}
#'   \item{Frequency}{13 (observations per year)}
#' }
#' @source Data taken from the \pkg{tscount} package version 1.4.3. Original source: Ferland, R., Latour, A. and Oraichi, D.,
#' "Integer-valued GARCH process". \emph{Journal of Time Series Analysis}, 2006; 27(6): 923--942.
#' @usage data(campylobacter_infections_ts)
#' @export
load("data/campylobacter_infections_ts.rda")
NULL


#' E. coli Infections Time Series
#'
#' This dataset, ecoli_infections_df, is a data frame containing the weekly number of reported disease cases
#' caused by Escherichia coli in the state of North Rhine-Westphalia (Germany) from January 2001 to May 2013,
#' excluding cases of EHEC and HUS.
#'
#' The dataset name has been kept as 'ecoli_infections_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name ecoli_infections_df
#' @format A data frame with 646 observations and 3 variables:
#' \describe{
#'   \item{year}{Numeric value indicating the year of observation}
#'   \item{week}{Numeric value indicating the week of observation}
#'   \item{cases}{Numeric value indicating the number of reported E. coli cases}
#' }
#' @source Data taken from the \pkg{tscount} package version 1.4.3.
#' @usage data(ecoli_infections_df)
#' @export
load("data/ecoli_infections_df.rda")
NULL


#' Cholera Daily Deaths in England, 1849
#'
#' This dataset, cholera_deaths_1849_tbl_df, is a tibble containing daily deaths
#' from Cholera and Diarrhaea in England for each day of the 12 months of 1849.
#' It includes the month, cause of death, day of month, number of deaths, date,
#' and day of week for each observation.
#'
#' The dataset name has been kept as 'cholera_deaths_1849_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name cholera_deaths_1849_tbl_df
#' @format A tibble with 730 observations and 6 variables:
#' \describe{
#'   \item{month}{Character indicating the month of observation}
#'   \item{cause_of_death}{Factor with 2 levels indicating cause of death (Cholera or Diarrhaea)}
#'   \item{day_of_month}{Character indicating the day of the month}
#'   \item{deaths}{Numeric value indicating the number of deaths}
#'   \item{date}{Date object indicating the exact date}
#'   \item{day_of_week}{Ordered factor with 7 levels indicating the day of week}
#' }
#' @source Data taken from the \pkg{HistData} package version 0.9-3. Original source: Bingham P., Verlander, N. Q., Cheal M. J. (2004).
#' "John Snow, William Farr and the 1849 outbreak of cholera that affected London: a reworking of the data highlights the importance of the water supply".
#' \emph{Public Health}, 118(6), 387--394, Table 2.
#' @usage data(cholera_deaths_1849_tbl_df)
#' @export
load("data/cholera_deaths_1849_tbl_df.rda")
NULL

#' Chemotherapy for Stage B/C Colon Cancer
#'
#' This dataset, colon_stageBC_chemo_df, is a data frame containing data from one of the first successful
#' trials of adjuvant chemotherapy for stage B/C colon cancer. The dataset includes 1858 observations
#' (with two records per patient: one for recurrence and one for death) and 16 clinical variables.
#'
#' The dataset name has been kept as 'colon_stageBC_chemo_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name colon_stageBC_chemo_df
#' @format A data frame with 1858 observations and 16 variables:
#' \describe{
#'   \item{id}{Numeric patient identifier}
#'   \item{study}{Numeric study code}
#'   \item{rx}{Factor with 3 levels indicating treatment group}
#'   \item{sex}{Numeric gender code}
#'   \item{age}{Numeric age in years}
#'   \item{obstruct}{Numeric obstruction status}
#'   \item{perfor}{Numeric perforation status}
#'   \item{adhere}{Numeric adhesion status}
#'   \item{nodes}{Numeric count of lymph nodes}
#'   \item{status}{Numeric event status}
#'   \item{differ}{Numeric differentiation grade}
#'   \item{extent}{Numeric tumor extent}
#'   \item{surg}{Numeric surgery code}
#'   \item{node4}{Numeric node4 status}
#'   \item{time}{Numeric follow-up time}
#'   \item{etype}{Numeric event type}
#' }
#' @source Data taken from the \pkg{OncoDataSets} package version 0.1.0.
#' @usage data(colon_stageBC_chemo_df)
#' @export
load("data/colon_stageBC_chemo_df.rda")
NULL


#' PubMed Data of miRNAs in Colorectal Cancer
#'
#' This dataset, crc_mirnas_pubmed_tbl_df, is a tibble containing information from PubMed abstracts
#' related to microRNAs (miRNAs) in colorectal cancer. The data provides publication metadata,
#' article abstracts, and associated miRNAs across 508 observations with 8 variables.
#'
#' The dataset name has been kept as 'crc_mirnas_pubmed_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name crc_mirnas_pubmed_tbl_df
#' @format A tibble with 508 observations and 8 variables:
#' \describe{
#'   \item{PMID}{Numeric PubMed identifier}
#'   \item{Year}{Numeric publication year}
#'   \item{Title}{Character article title}
#'   \item{Abstract}{Character full abstract text}
#'   \item{Language}{Character publication language}
#'   \item{Type}{Character article type}
#'   \item{Topic}{Character research topic}
#'   \item{miRNA}{Character microRNA identifiers}
#' }
#' @source Data taken from the \pkg{OncoDataSets} package version 0.1.0.
#' @usage data(crc_mirnas_pubmed_tbl_df)
#' @export
load("data/crc_mirnas_pubmed_tbl_df.rda")
NULL


#' Ontario Lynch Syndrome families
#'
#' This dataset, lynch_ontario_families_df, is a data frame containing data from 32 Lynch Syndrome families
#' segregating mismatch repair mutations selected from the Ontario Familial Colorectal Cancer Registry.
#' The dataset includes 765 individuals (both probands and relatives) with 11 variables per observation.
#'
#' The dataset name has been kept as 'lynch_ontario_families_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name lynch_ontario_families_df
#' @format A data frame with 765 observations and 11 variables:
#' \describe{
#'   \item{famID}{Integer family identifier}
#'   \item{indID}{Integer individual identifier}
#'   \item{fatherID}{Integer father's identifier}
#'   \item{motherID}{Integer mother's identifier}
#'   \item{gender}{Integer gender code}
#'   \item{status}{Integer disease status}
#'   \item{time}{Integer time variable}
#'   \item{currentage}{Integer current age}
#'   \item{mgene}{Integer mutation gene status}
#'   \item{proband}{Integer proband indicator}
#'   \item{relation}{Integer relationship code}
#' }
#' @source Data taken from the \pkg{FamEvent} package version 3.2.
#' @usage data(lynch_ontario_families_df)
#' @export
load("data/lynch_ontario_families_df.rda")
NULL


#' Colic Horse Surgery
#'
#' This dataset, horse_colic_surgery_df, is a data frame containing clinical observations
#' of horses with colic, where the primary task is to determine if the lesion requires surgery.
#' The data consists of 300 cases with 31 clinical variables, modified from the original UCI
#' repository version with adjusted factor levels.
#'
#' The dataset name has been kept as 'horse_colic_surgery_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way beyond factor level adjustments.
#'
#' @name horse_colic_surgery_df
#' @format A data frame with 300 observations and 31 variables:
#' \describe{
#'   \item{surgery}{Factor with 2 levels indicating surgical requirement}
#'   \item{age}{Factor with 1 level (age group)}
#'   \item{hospitalID}{Integer hospital identifier}
#'   \item{temp_rectal}{Numeric rectal temperature}
#'   \item{pulse}{Numeric pulse rate}
#'   \item{respiratory_rate}{Numeric respiratory rate}
#'   \item{temp_extreme}{Factor with 4 levels (temperature extremes)}
#'   \item{pulse_peripheral}{Factor with 4 levels (peripheral pulse)}
#'   \item{capillayr_refill_time}{Factor with 3 levels (capillary refill time)}
#'   \item{pain}{Numeric pain score}
#'   \item{peristalsis}{Numeric peristalsis measure}
#'   \item{abdominal_distension}{Numeric distension score}
#'   \item{nasogastric_tube}{Numeric tube measure}
#'   \item{nasogastric_reflux}{Numeric reflux quantity}
#'   \item{nasogastric_reflux_PH}{Numeric reflux pH}
#'   \item{rectal_examination}{Numeric exam result}
#'   \item{abdomen}{Numeric abdomen assessment}
#'   \item{cell_volume}{Numeric cell volume}
#'   \item{protein}{Numeric protein level}
#'   \item{abdominocentesis_appearance}{Numeric appearance score}
#'   \item{abdomcentesis_protein}{Numeric protein measure}
#'   \item{outcome}{Factor with 3 levels (outcome status)}
#'   \item{surgical_lesion}{Factor with 2 levels (lesion type)}
#'   \item{lesion_type1}{Factor with 60 levels (primary lesion type)}
#'   \item{lesion_type2}{Integer secondary lesion code}
#'   \item{lesion_type3}{Integer tertiary lesion code}
#'   \item{cp_data}{Factor with 2 levels (CP data)}
#'   \item{temp_extreme_ordered}{Ordered factor with 4 levels (temperature)}
#'   \item{temp_extreme_num}{Numeric temperature measure}
#'   \item{mucous_membranes_col}{Factor with 6 levels (membrane color)}
#'   \item{mucous_membranes_group}{Factor with 5 levels (membrane group)}
#' }
#' @source Data taken from the \pkg{VIM} package version 6.2.2 (originally from UCI repository).
#' @usage data(horse_colic_surgery_df)
#' @export
load("data/horse_colic_surgery_df.rda")
NULL


#' Norovirus Outbreak in Derbyshire
#'
#' This dataset, norovirus_derbyshire_df, is a data frame describing an outbreak
#' of norovirus in the summer of 2001 in a primary school and nursery in Derbyshire, England.
#' It contains 492 observations across 5 variables tracking illness patterns among students.
#'
#' The dataset name has been kept as 'norovirus_derbyshire_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name norovirus_derbyshire_df
#' @format A data frame with 492 observations and 5 variables:
#' \describe{
#'   \item{class}{Factor with 15 levels representing school classes}
#'   \item{day_absent}{Integer day of absence}
#'   \item{start_illness}{Integer day when illness started}
#'   \item{end_illness}{Integer day when illness ended}
#'   \item{day_vomiting}{Integer day when vomiting occurred}
#' }
#' @source Data taken from the \pkg{outbreaks} package version 1.9.0. Original source:
#' O'Neill and Marks (2005).
#' @usage data(norovirus_derbyshire_df)
#' @export
load("data/norovirus_derbyshire_df.rda")
NULL


#' Satellite Tumors in GI Surgery
#'
#' This dataset, intestinal_surgery_df, is a data frame containing
#' intestinal surgery data from 844 cancer patients. The data consists of pairs
#' (n_i, s_i) where n_i is the number of satellites removed and s_i is the number
#' of satellites found to be malignant.
#'
#' The dataset name has been kept as 'intestinal_surgery_df' to avoid
#' confusion with other datasets in the R ecosystem. This naming convention helps
#' distinguish this dataset as part of the DigestiveDataSets package and assists
#' users in identifying its specific characteristics. The suffix 'df' indicates
#' that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name intestinal_surgery_df
#' @format A data frame with 844 observations and 2 variables:
#' \describe{
#'   \item{n}{Numeric value representing the number of satellites removed}
#'   \item{s}{Numeric value representing the number of malignant satellites found}
#' }
#' @source Data taken from the \pkg{deconvolveR} package version 1.2-1. Original source:
#' Efron, B. (2016). "Empirical Bayes deconvolution estimates". \emph{Biometrika}, 103(1), 1--20.
#' @usage data(intestinal_surgery_df)
#' @export
load("data/intestinal_surgery_df.rda")
NULL



#' Prednisone vs Placebo in Liver Cirrhosis
#'
#' This dataset, liver_cirrhosis_prednisone_df, is a data frame containing data from a randomized
#' control trial comparing prednisone (n=251) versus placebo (n=237) in 488 liver cirrhosis patients.
#' The dataset includes both survival and longitudinal measurements of prothrombin index development
#' over time, with 2968 total observations across 9 variables.
#'
#' The dataset name has been kept as 'liver_cirrhosis_prednisone_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name liver_cirrhosis_prednisone_df
#' @format A data frame with 2968 observations and 9 variables:
#' \describe{
#'   \item{ID}{Integer patient identifier}
#'   \item{Time}{Numeric time measurement}
#'   \item{death}{Integer death indicator}
#'   \item{obstime}{Numeric observation time}
#'   \item{proth}{Integer prothrombin index value}
#'   \item{Trt}{Factor with 2 levels indicating treatment group (prednisone/placebo)}
#'   \item{start}{Numeric start time}
#'   \item{stop}{Numeric stop time}
#'   \item{event}{Numeric event indicator}
#' }
#' @source Data taken from the \pkg{JSM} package version 1.0.1.
#' @usage data(liver_cirrhosis_prednisone_df)
#' @export
load("data/liver_cirrhosis_prednisone_df.rda")
NULL


#' Mayo Clinic Primary Biliary Cirrhosis
#'
#' This dataset, pbc_mayo_survival_df, is a data frame containing data from a randomized
#' control trial conducted at Mayo Clinic from 1974 to 1984, studying the progression of
#' primary biliary cirrhosis. The dataset includes both survival and longitudinal measurements
#' with 1945 observations across 16 clinical variables.
#'
#' The dataset name has been kept as 'pbc_mayo_survival_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name pbc_mayo_survival_df
#' @format A data frame with 1945 observations and 16 variables:
#' \describe{
#'   \item{ID}{Integer patient identifier}
#'   \item{Time}{Numeric time measurement}
#'   \item{death}{Numeric death indicator}
#'   \item{obstime}{Numeric observation time}
#'   \item{serBilir}{Numeric serum bilirubin measurement}
#'   \item{albumin}{Numeric serum albumin measurement}
#'   \item{alkaline}{Integer alkaline phosphatase level}
#'   \item{platelets}{Integer platelet count}
#'   \item{drug}{Factor with 2 levels indicating treatment group}
#'   \item{age}{Numeric age in years}
#'   \item{gender}{Factor with 2 levels indicating patient sex}
#'   \item{ascites}{Factor with 2 levels indicating presence of ascites}
#'   \item{hepatom}{Factor with 2 levels indicating presence of hepatomegaly}
#'   \item{start}{Numeric start time for interval}
#'   \item{stop}{Numeric stop time for interval}
#'   \item{event}{Numeric event indicator}
#' }
#' @source Data taken from the \pkg{JSM} package version 1.0.1.
#' @usage data(pbc_mayo_survival_df)
#' @export
load("data/pbc_mayo_survival_df.rda")
NULL


#' H2 Antagonists in UGIB
#'
#' This dataset, ugi_bleeding_df, is a data frame containing results from
#' 27 studies examining the effectiveness of histamine H2 antagonists (cimetidine or ranitidine)
#' in treating acute upper gastrointestinal hemorrhage, with 14 variables per study.
#'
#' The dataset name has been kept as 'ugi_bleeding_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name ugi_bleeding_df
#' @format A data frame with 27 observations and 14 variables:
#' \describe{
#'   \item{id}{Integer study identifier}
#'   \item{trial}{Character trial name/location}
#'   \item{year}{Integer publication year}
#'   \item{ref}{Integer reference number}
#'   \item{trt}{Character treatment description}
#'   \item{ctrl}{Character control description}
#'   \item{nti}{Integer treatment group sample size}
#'   \item{b.xti}{Integer treatment group bleeding events}
#'   \item{o.xti}{Integer treatment group other events}
#'   \item{d.xti}{Integer treatment group deaths}
#'   \item{nci}{Integer control group sample size}
#'   \item{b.xci}{Integer control group bleeding events}
#'   \item{o.xci}{Integer control group other events}
#'   \item{d.xci}{Integer control group deaths}
#' }
#' @source Data taken from the \pkg{metadat} package version 1.4-0.
#' @usage data(ugi_bleeding_df)
#' @export
load("data/ugi_bleeding_df.rda")
NULL


#' Studies on CAM for Irritable Bowel Syndrome
#'
#' This dataset, ibs_cam_trials_df, is a data frame containing results from 19 clinical trials
#' examining complementary and alternative medicine (CAM) interventions for irritable bowel syndrome (IBS).
#' The dataset includes 12 variables characterizing each trial and its outcomes.
#'
#' The dataset name has been kept as 'ibs_cam_trials_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name ibs_cam_trials_df
#' @format A data frame with 19 observations and 12 variables:
#' \describe{
#'   \item{id}{Integer trial identifier}
#'   \item{study}{Character study name/location}
#'   \item{year}{Integer publication year}
#'   \item{country}{Character country where study was conducted}
#'   \item{ibs.crit}{Character IBS diagnostic criteria used}
#'   \item{days}{Integer study duration in days}
#'   \item{visits}{Integer number of study visits}
#'   \item{jadad}{Integer Jadad score for study quality}
#'   \item{x.a}{Integer active treatment events}
#'   \item{n.a}{Integer active treatment sample size}
#'   \item{x.p}{Integer placebo group events}
#'   \item{n.p}{Integer placebo group sample size}
#' }
#' @source Data taken from the \pkg{metadat} package version 1.4-0.
#' @usage data(ibs_cam_trials_df)
#' @export
load("data/ibs_cam_trials_df.rda")
NULL


#' Cystic Fibrosis SNP
#'
#' This dataset, cystic_fibrosis_snps_df, is a data frame containing genetic association data
#' for cystic fibrosis, including a case-control indicator and 23 single nucleotide polymorphisms (SNPs)
#' with specified inter-marker distances. The dataset contains 186 observations across 24 variables.
#'
#' The dataset name has been kept as 'cystic_fibrosis_snps_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' DigestiveDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name cystic_fibrosis_snps_df
#' @format A data frame with 186 observations and 24 variables:
#' \describe{
#'   \item{y}{Integer case-control indicator}
#'   \item{loc1}{Integer SNP genotype at location 1}
#'   \item{loc2}{Integer SNP genotype at location 2}
#'   \item{loc3}{Integer SNP genotype at location 3}
#'   \item{loc4}{Integer SNP genotype at location 4}
#'   \item{loc5}{Integer SNP genotype at location 5}
#'   \item{loc6}{Integer SNP genotype at location 6}
#'   \item{loc7}{Integer SNP genotype at location 7}
#'   \item{loc8}{Integer SNP genotype at location 8}
#'   \item{loc9}{Integer SNP genotype at location 9}
#'   \item{loc10}{Integer SNP genotype at location 10}
#'   \item{loc11}{Integer SNP genotype at location 11}
#'   \item{loc12}{Integer SNP genotype at location 12}
#'   \item{loc13}{Integer SNP genotype at location 13}
#'   \item{loc14}{Integer SNP genotype at location 14}
#'   \item{loc15}{Integer SNP genotype at location 15}
#'   \item{loc16}{Integer SNP genotype at location 16}
#'   \item{loc17}{Integer SNP genotype at location 17}
#'   \item{loc18}{Integer SNP genotype at location 18}
#'   \item{loc19}{Integer SNP genotype at location 19}
#'   \item{loc20}{Integer SNP genotype at location 20}
#'   \item{loc21}{Integer SNP genotype at location 21}
#'   \item{loc22}{Integer SNP genotype at location 22}
#'   \item{loc23}{Integer SNP genotype at location 23}
#' }
#' @source Data taken from the \pkg{gap.datasets} package version 0.0.6. Original source:
#' Liu JS, Sabatti C, Teng J, Keats BJB, Risch N (2001). "Bayesian Analysis of Haplotypes for Linkage
#' Disequilibrium Mapping". \emph{Genome Research}, 11:1716--1724.
#' @usage data(cystic_fibrosis_snps_df)
#' @export
load("data/cystic_fibrosis_snps_df.rda")
NULL







