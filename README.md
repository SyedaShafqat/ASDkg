📘 ASD Knowledge Graph
A Neo4j-based Autism Spectrum Disorder (ASD) Knowledge Graph integrating genes, proteins, drugs, phenotypes, pathways, and side effects.
This repository provides a complete, reproducible setup including a Neo4j dump, curated datasets, and exploration queries.

📂 Repository Contents
database.dump
Full Neo4j database snapshot of the ASD Knowledge Graph.

ASD-MyAutismFullDrug.csv
ASD‑associated drugs and their target proteins/genes collected from DrugBank and related biomedical sources.

ASD-MyAutismDrugSideEffects.csv
Side effects linked to ASD‑related drugs for safety and adverse effect analysis.

ASD-GENES_WITH_HPO_MERGED.csv
ASD‑associated genes merged with Human Phenotype Ontology (HPO) terms, connecting genes to autism‑related phenotypes.

ASD_KG_Exploration_Queries.cypher
Cypher queries for exploring the graph: node counts, drug–gene–protein links, phenotypes, pathways, and analytics.

🚀 How to Run the Knowledge Graph
Install Neo4j Desktop

Create a New Project

Click Add Graph → Import Database Dump

Select database.dump

Start the database

Open Neo4j Browser

Copy/paste queries from ASD_KG_Exploration_Queries.cypher

🔍 What You Can Explore
ASD genes

Drug targets

Drug side effects

Gene-protein connections

Gene–phenotype links

Gene–pathway participation

Top connected ASD genes

📜 License
For academic and research use.
