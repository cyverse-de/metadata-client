# metadata-client

A client library for the CyVerse Discovery Environment metadata service.

## Usage

```clojure
(require '[metadata-client.core :as mcc])

(def client (mcc/new-metadata-client base-uri))

;; Metadata AVU operations.
(mcc/list-avus client username target-type target-id)
(mcc/update-avus client username target-type target-id request-body)
(mcc/set-avus client username target-type target-id request-body)
(mcc/copy-metadata-avus client username target-type target-id dest-targets)
(mcc/filter-by-avus client username target-types target-ids avus)

;; Ontology operations.
(mcc/list-ontologies client username)
(mcc/list-hierarchies client username ontology-version)
(mcc/filter-hierarchies client username ontology-version attrs target-type target-id)
(mcc/filter-targets-by-ontology-search client username ontology-version attrs search-term target-types target-ids)
(mcc/filter-hierarchy client username ontology-version root-iri attr target-types target-ids)
(mcc/filter-hierarchy-targets client username ontology-version root-iri attr target-types target-ids)
(mcc/filter-unclassified client username ontology-version root-iri attr target-types target-ids)
(mcc/delete-ontology client username ontology-version)
```

## License

http://www.cyverse.org/sites/default/files/iPLANT-LICENSE.txt
