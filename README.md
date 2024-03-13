# Bone Marrow Analysis in R 
This analysis was conducted as part of a collaborative final project in my Statistical Learning course
The link and information about the dataset we used can be found by clicking this link https://archive.ics.uci.edu/dataset/565/bone+marrow+transplant+children 
"The motivation of the study was to identify the most important factors influencing the success or failure of the transplantation procedure. In particular, the aim was to verify the hypothesis that increased dosage of CD34+ cells/kg extends overall survival time without simultaneous occurrence of undesirable events affecting patients' quality of life."
All the files I uploaded are from my part of the project.
## Dataset 
The dataset comprises **187 instances(patients)** and **36 features** which included adverse effects treatment *dosage* , *outcomes* and patient information including *body weight*, *gender* and *age*.
# Table of contents 
[Bone Marrow Analysis Powerpoint](https://github.com/blackulous/boneMarrow/blob/main/Bone%20Marrow%20Analysis.pptx) The powerpoint summarization of the methods we used, why we used them and the results.

[Bone Marrow EDA](https://github.com/blackulous/boneMarrow/blob/main/Bone_Marrow_EDA.pdf): A pdf document from R markdown doing the initial exploration of the given hypothesis plus other visulizations.

[Diagnosis Paged Report](https://github.com/blackulous/boneMarrow/blob/main/Diagnosis_Paged_Report.pdf): Utilized the dlookr package for more of an in-depth view of the variables and potential outliers. 

[Initial Analysis Imputation](https://github.com/blackulous/boneMarrow/blob/main/Initial_analysis_imputation.R): Utlizied the MICE package to impute missing values used random forest as the method.

[Logistic_Regression](https://github.com/blackulous/boneMarrow/blob/main/Logistic_Regression.R): First made a generalized linear model to investigate the relationship that CD34kg+ has on survival time then employed a logisitic regression model to predict survival status using 3 features. 

[Bone Marrow Analysis pdf](https://github.com/blackulous/boneMarrow/blob/main/boneMarrowAnalysis.pdf): PDF document created using SMART EDA for more general insights of the data and the distribution of variables.

[Bone marrow arff](https://github.com/blackulous/boneMarrow/blob/main/bone_marrow.arff): text file needed to run the imputation 

[bone_marrow_imputed.csv](https://github.com/blackulous/boneMarrow/blob/main/bone_marrow_imputed.csv): text file needed to run logistic regression 

## Results Summary
We discovered that increased dosage of **CD34+ cells/kg** didn't have an effect on extending overall survival time and survival time is more than likely influenced by multiple factors. We also found that Patients with a **lower dosage of CD34+ cells/kg tend to survive**. The most important factors in predicting the success or failure of the transplantation procedure were **relapse** if the patient had **lymphoma** and the **Development of Acute Graft versus host disease Stage 3 or 4**.
## Limitations 
The limitations of this dataset included the fact there were a lot of features compared to instances. There are only so many linear combinations you can do when that is the case. Potentially in the future if possible gathering more patients in the study would increase the predictive power of the models. 
## Acknowledgments and Contact Information
I would like to acknowledge my group members who participated in this project Sai Kuchibhatla, Jesse Xu, Om Shah
If you want to further discuss this project feel free to reach out to me via email patienceheathh@gmail.com 
