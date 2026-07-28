/* ===========================================
   ASD Knowledge Graph - Exploration Queries
   =========================================== */

/* -------------------------------------------
   1. Graph Overview
   ------------------------------------------- */

MATCH (n) 
RETURN count(n) AS TotalNodes;

MATCH ()-[r]->() 
RETURN count(r) AS TotalRelationships;


/* -------------------------------------------
   2. Node & Relationship Types
   ------------------------------------------- */

CALL db.labels();

CALL db.relationshipTypes();


/* -------------------------------------------
   3. Domain Queries
   ------------------------------------------- */

MATCH (g:Gene) 
RETURN g.name 
ORDER BY g.name;

MATCH (d:Drug) 
RETURN d.name 
ORDER BY d.name;


/* -------------------------------------------
   4. Drug → Protein → Gene
   (Drug targets → Protein → Gene encoding)
   ------------------------------------------- */

MATCH (d:Drug)-[:TARGETS]->(p:Protein)<-[:ENCODES]-(g:Gene)
RETURN d.name AS Drug, collect(DISTINCT g.name) AS TargetGenes
ORDER BY Drug;


/* -------------------------------------------
   5. Phenotypes (Gene → Phenotype)
   ------------------------------------------- */

MATCH (g:Gene)-[:ASSOCIATED_WITH]->(p:Phenotype)
RETURN g.name AS Gene, collect(DISTINCT p.name) AS Phenotypes
ORDER BY Gene;


/* -------------------------------------------
   6. Pathways (Gene → Pathway)
   ------------------------------------------- */

MATCH (g:Gene)-[:INVOLVED_IN]->(pw:Pathway)
RETURN g.name AS Gene, collect(DISTINCT pw.name) AS Pathways
ORDER BY Gene;


/* -------------------------------------------
   7. Analytics – Top Connected Genes
   (Neo4j 5+ correct syntax)
   ------------------------------------------- */

MATCH (g:Gene)
RETURN g.name AS Gene, 
       COUNT { (g)--() } AS Connections
ORDER BY Connections DESC
LIMIT 20;
