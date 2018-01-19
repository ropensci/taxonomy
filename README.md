## Taxonomy

<div>
| | |n|---|---|
This article is about taxonomy in R.

If you have any comments or suggestions for additions or improvements
for this article [submit an
issue](https://github.com/ropensci/taxonomy/issues), or make some
changes and [submit a pull
request](https://github.com/ropensci/taxonomy/pulls). If you have an
issue with one of the packages discussed below, please contact the
maintainer of that package.

## Taxonomic Data

The following packages mostly deal with getting taxonomic data from the
web onto your machine.

  - [taxize](https://cran.rstudio.com/web/packages/taxize/index.html) access to 20ish sources of
    taxonomic data sources. This is the place to go for most taxononomic
    data. [taxize](https://cran.rstudio.com/web/packages/taxize/index.html) connects to a lot of
    data sources, and has consistent data outputs across the data
    sources. In addition, there’s operations that a user wants to do
    that are consistent across data sources, hiding the gory details of
    each data source. The only caveat is that if you have a really slow
    internet connection or you are dealing with A LOT of names, then you
    may want to use [taxizedb](https://cran.rstudio.com/web/packages/taxizedb/index.html).
  - [taxizedb](https://cran.rstudio.com/web/packages/taxizedb/index.html) working with taxonomic
    database dumps, data at scale
  - [ritis](https://cran.rstudio.com/web/packages/ritis/index.html) is a client for the Integrated
    Taxonomic Information System (ITIS) database of taxonomic data. ITIS
    is run by USGS in the US. It provides access to ITIS’s Solr web
    service (think for search), as well as their REST API more for
    fetching data for specific things by name or taxonomic ID.
  - [wikitaxa](https://cran.rstudio.com/web/packages/wikitaxa/index.html) is a client for
    Wikipedia, Wikicommons, Wikspecies, and Wikidata taxonomic data. It
    is sometimes a bit odd since there is no interface specifically for
    taxonomic data besides Wikispecies, so you can end up with results
    that are not really taxonomic as well - but we do our best.
  - [worrms](https://cran.rstudio.com/web/packages/worrms/index.html) data from [WoRMS (World
    Register of Marine Species)]()
  - [Taxonstand](https://cran.rstudio.com/web/packages/Taxonstand/index.html) data from The Plant
    List
  - [Reol](https://cran.rstudio.com/web/packages/Reol/index.html) a client for all data from
    Encyclopedia of Life - which includes taxonomic data. Note that
    [taxize](https://cran.rstudio.com/web/packages/taxize/index.html) also interfaces with EOL
    data, only the taxonomic data though.

## Objects and Manipulating/Parsing Taxonomic Names

  - [pegax](https://github.com/ropenscilabs/pegax) is a C++ in R port of
    [gnparser](https://github.com/GlobalNamesArchitecture/gnparser/)
    from the GlobalNamesArchitecture project. It is still in development
  - [taxa](https://cran.rstudio.com/web/packages/taxa/index.html) defines a set of taxonomic
    objects (using S3 and R6) for both use cases where only taxonomic
    data is of interest, as well as when one has taxonomic data combined
    with other data on the taxa. [taxa](https://cran.rstudio.com/web/packages/taxa/index.html)
    aims to form the basis upon which other taxonomic packages can be
    built, using common classes.
    [binomen](https://cran.rstudio.com/web/packages/binomen/index.html) - will be deprecated soon,
    being wrapped in to [taxa](https://cran.rstudio.com/web/packages/taxa/index.html)

## Handling Taxonomic Name Lists

  - [defrostR](https://cran.rstudio.com/web/packages/defrostR/index.html) - amphibian taxonomy
  - [splister](https://github.com/ropenscilabs/splister) - match species
    list against a reference list. Still in development

## Working with NCBI and other sequence data

  - NCBI taxonomic data is available from a number of R packages.
    [taxizedb](https://cran.rstudio.com/web/packages/taxizedb/index.html) provides access to local
    version of NCBI’s taxonomy - in addition to taxonomies for other
    data sources (see above). [ncbit](https://cran.rstudio.com/web/packages/ncbit/index.html)
    makes NCBI taxonomic data locally available and searchable as an R
    object (a `data.frame`). The package comes with a version from 2013,
    but you can choose to update it; although updating it still seemed
    to use the old version from 2013.
    [taxonomizr](https://cran.rstudio.com/web/packages/taxonomizr/index.html) contains functions
    for assigning taxonomy to NCBI accession numbers and taxon IDs based
    on NCBI’s `accession2taxid` and `taxdump` files.

  - [microclass](https://cran.rstudio.com/web/packages/microclass/index.html) Functions for
    assigning 16S sequence data to a taxonomic level in the tree-of-life
    for prokaryotes.

## Specialized packages

  - [monographaR](https://cran.rstudio.com/web/packages/monographaR/index.html) functions to
    facilitate the production of plant taxonomic monographs
  - [MonoPhy](https://cran.rstudio.com/web/packages/MonoPhy/index.html) Explore Monophyly (or Lack
    of it) of Taxonomic Groups in a Phylogeny
  - [taxlist](https://cran.rstudio.com/web/packages/taxlist/index.html) functions to import
    species lists from
    [Turboveg](https://www.synbiosys.alterra.nl/turboveg/), a database
    management system for vegetation data

</div>

### CRAN packages:

  - [binomen](https://cran.rstudio.com/web/packages/binomen/index.html)
  - [defrostR](https://cran.rstudio.com/web/packages/defrostR/index.html)
  - [microclass](https://cran.rstudio.com/web/packages/microclass/index.html)
  - [monographaR](https://cran.rstudio.com/web/packages/monographaR/index.html)
  - [MonoPhy](https://cran.rstudio.com/web/packages/MonoPhy/index.html)
  - [ncbit](https://cran.rstudio.com/web/packages/ncbit/index.html)
  - [Reol](https://cran.rstudio.com/web/packages/Reol/index.html)
  - [ritis](https://cran.rstudio.com/web/packages/ritis/index.html)
  - [taxa](https://cran.rstudio.com/web/packages/taxa/index.html) (core)
  - [taxize](https://cran.rstudio.com/web/packages/taxize/index.html) (core)
  - [taxizedb](https://cran.rstudio.com/web/packages/taxizedb/index.html)
  - [taxlist](https://cran.rstudio.com/web/packages/taxlist/index.html)
  - [taxonomizr](https://cran.rstudio.com/web/packages/taxonomizr/index.html)
  - [Taxonstand](https://cran.rstudio.com/web/packages/Taxonstand/index.html)
  - [wikitaxa](https://cran.rstudio.com/web/packages/wikitaxa/index.html)
  - [worrms](https://cran.rstudio.com/web/packages/worrms/index.html)

### Related links:

  - [Phylogenetics Task
    View](https://cran.rstudio.com/web/views/Phylogenetics.html)
