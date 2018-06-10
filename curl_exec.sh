###index cherrypick########## 

curl -XDELETE 'localhost:9200/cherrypick?pretty'
curl -XPUT -H 'content-type: application/json' 'http://localhost:9200/cherrypick?pretty' -d '@setting/cherrypick_analyzer.json'
curl -XPUT -H 'content-type: application/json' 'http://localhost:9200/cherrypick/_mapping/sentence?pretty' -d '@mappings/sentence_mapping.json'
curl -XPOST -H 'content-type: application/json' 'http://localhost:9200/_bulk?pretty' --data-binary '@documents/sentence_documents.js'
