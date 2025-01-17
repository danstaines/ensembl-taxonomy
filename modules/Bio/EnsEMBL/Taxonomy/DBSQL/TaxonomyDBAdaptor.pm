=encoding utf8

=head1 LICENSE

Copyright [2009-2025] EMBL-European Bioinformatics Institute

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=head1 CONTACT

  Please email comments or questions to the public Ensembl
  developers list at <dev@ensembl.org>.

  Questions may also be sent to the Ensembl help desk at
  <helpdesk@ensembl.org>.

=head1 NAME

Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyDBAdaptor

=head1 DESCRIPTION

Specialised DBAdaptor for connecting to the ncbi_taxonomy MySQL database

=head1 SYNOPSIS

  #create an adaptor (Registry cannot be used currently)
  my $tax_dba =  Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyDBAdaptor->new(
    -user   => $tax_user,
    -pass   => $tax_pass,
    -dbname => $tax_db,
    -host   => $tax_host,
    -port   => $tax_port);
  my $node_adaptor = $tax_dba->get_TaxonomyNodeAdaptor();
									  
=head1 DESCRIPTION

A specialised DBAdaptor allowing connection to an ncbi_taxonomy database. 
Can be used to retrieve an instance of C<Bio::EnsEMBL::DBSQL::TaxonomyAdaptor>.

=head1 AUTHOR

dstaines

=head1 MAINTANER

$Author$

=head1 VERSION

$Revision$
=cut		

package Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyDBAdaptor;

use strict;
use warnings;

use base qw ( Bio::EnsEMBL::DBSQL::DBAdaptor );
use Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyNodeAdaptor;

=head1 SUBROUTINES/METHODS

=head2 get_available_adaptors	

	Description	: Retrieve all adaptors supported by this database
	Returns		: Hash of adaptor modules by name

=cut

sub get_available_adaptors {
  return {'TaxonomyNode' => 'Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyNodeAdaptor'};
}

=head2 get_TaxonomyNodeAdaptor

	Description	: Retrieve a C<Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyNodeAdaptor>
	Returns		: A C<Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyNodeAdaptor> instance

=cut

sub get_TaxonomyNodeAdaptor {
	my ($self) = @_;
	return Bio::EnsEMBL::Taxonomy::DBSQL::TaxonomyNodeAdaptor->new($self); 
}

1;
