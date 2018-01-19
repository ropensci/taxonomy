This article is about taxonomy in R.

If you have any comments or suggestions for additions or improvements for this article [submit an issue](https://github.com/ropensci/taxonomy/issues), or make some changes and [submit a pull request](https://github.com/ropensci/taxonomy/pulls). If you have an issue with one of the packages discussed below, please contact the maintainer of that package.

Taxonomic Data
--------------

The following packages mostly deal with getting taxonomic data from the web onto your machine.

- <pkg>taxize</pkg> access to 20ish sources of taxonomic data sources. This is the place to go for most taxononomic data. <pkg>taxize</pkg> connects to a lot of data sources, and has consistent data outputs across the data sources. In addition, there's operations that a user wants to do that are consistent across data sources, hiding the gory details of each data source. The only caveat is that if you have a really slow internet connection or you are dealing with A LOT of names, then you may want to use <pkg>taxizedb</pkg>. 
- <pkg>taxizedb</pkg> came out of the <pkg>taxize</pkg> package, with sights set on helping people work with larger taxonomic data sets, or that perhaps have infrequent access to the internet. <pkg>taxizedb</pkg> downloads taxonomic database dumps from many different providers - and makes it easy to either query them with SQL or plug into `dplyr` package to use that interface. <pkg>taxizedb</pkg> is starting to gain some of the functionality of <pkg>taxize</pkg> (e.g., get a taxonomic classification) but without having to do web requests, and doing large set of them much faster. 
- <pkg>ritis</pkg> is a client for the Integrated Taxonomic Information System (ITIS) database of taxonomic data. ITIS is run by USGS in the US. It provides access to ITIS's Solr web service (think for search), as well as their REST API more for fetching data for specific things by name or taxonomic ID.
- <pkg>wikitaxa</pkg> is a client for Wikipedia, Wikicommons, Wikspecies, and Wikidata taxonomic data. It is sometimes a bit odd since there is no interface specifically for taxonomic data besides Wikispecies, so you can end up with results that are not really taxonomic as well - but we do our best.
- <pkg>worrms</pkg> client for the [WoRMS (World Register of Marine Species)](http://www.marinespecies.org/) API. Contains mostly taxonomic data, but also trait data.
- <pkg>Taxonstand</pkg> data from The Plant List. This package takes in plant taxon names, and downloads CSV files from The Plant List website, then presents those as a data.frame within R.
- <pkg>Reol</pkg> a client for all data from Encyclopedia of Life - which includes taxonomic data. Note that <pkg>taxize</pkg> also interfaces with EOL data, only the taxonomic data though.


Taxonomic Classes
-----------------

The <pkg>taxa</pkg> package defines a set of taxonomic objects (using S3 and R6) for both use cases where only taxonomic data is of interest, as well as when one has taxonomic data combined with other data on the taxa. <pkg>taxa</pkg> aims to form the basis upon which other taxonomic packages can be built, using common classes. <pkg>binomen</pkg> - will be deprecated soon, being wrapped in to <pkg>taxa</pkg>.


Manipulating/Parsing Taxonomic Names
------------------------------------

The following packages don't fetch taxonomic dat as those in the above section, but are focused around providing tooling around taxonomic names and data.

- [pegax](https://github.com/ropenscilabs/pegax) is a C++ in R port of [gnparser](https://github.com/GlobalNamesArchitecture/gnparser/) from the GlobalNamesArchitecture project. It is still in development.
- <pkg>metacoder</pkg> specializes in metabarcoding. It can parse, manipulate, and visualize metabarcoding/taxonomic data. It leverages the <pkg>taxa</pkg> package ([GitHub](https://github.com/grunwaldlab/metacoder)) 
- [taxview](https://github.com/ropensci/taxview) is a in development package to help users summarize taxonomic data. Summarizing so far is taking form of getting taxonomic hierarchy data (via the <pkg>taxize</pkg> package) to facilitate taxonomic summaries. Visualization isn't done yet.


Handling Taxonomic Name Lists
-----------------------------

There are a few packages that deal specifically with handling species lists:

- <pkg>defrostR</pkg> - amphibian taxonomy
- [splister](https://github.com/ropenscilabs/splister) - match species list against a reference list. Still in development


NCBI data
---------

- NCBI taxonomic data is available from a number of R packages. <pkg>taxizedb</pkg> provides access to local version of NCBI's taxonomy - in addition to taxonomies for other data sources (see above). <pkg>ncbit</pkg> makes NCBI taxonomic data locally available and searchable as an R object (a `data.frame`). The package comes with a version from 2013, but you can choose to update it; although updating it still seemed to use the old version from 2013. <pkg>taxonomizr</pkg> contains functions for assigning taxonomy to NCBI accession numbers and taxon IDs based on NCBI's `accession2taxid` and `taxdump` files. 
- <pkg>microclass</pkg> has functions for assigning 16S sequence data to a taxonomic level in the tree-of-life for prokaryotes.


Specialized packages
--------------------

- <pkg>monographaR</pkg> functions to facilitate the production of plant taxonomic monographs
- <pkg>MonoPhy</pkg> Explore Monophyly (or Lack of it) of Taxonomic Groups in a Phylogeny
- <pkg>taxlist</pkg> has functions to import species lists from [Turboveg](<https://www.synbiosys.alterra.nl/turboveg/>), a database management system for vegetation data
- <pkg>vegdata</pkg> has functions to get taxonomic data from [Turboveg](<https://www.synbiosys.alterra.nl/turboveg/>), and [VegetWeb](https://www.vegetweb.de/) (German plant data)

