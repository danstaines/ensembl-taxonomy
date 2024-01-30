-- Copyright [1999-2015] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute
-- Copyright [2016-2024] EMBL-European Bioinformatics Institute
-- 
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
-- 
--      http://www.apache.org/licenses/LICENSE-2.0
-- 
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- change this internal node name as requested by Dr. Brandon Menzies:
UPDATE ncbi_taxa_name SET name = 'Marsupialia' WHERE taxon_id = 9263 AND name_class = 'scientific name' AND name = 'Metatheria';
UPDATE ncbi_taxa_name SET name = 'Metatheria' WHERE taxon_id = 9263 AND name_class = 'synonym' AND name = 'Marsupialia';
