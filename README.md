# elasticsearch-curl-boilerplate

Curl을 이용한 Elasticsearch를 실습할 수 있는 Boilerplate 입니다.

## 환경
Elasticsearch가 설치되어있고 동작하고 있어야 합니다.

## 실행
```
./curl_exec.sh
```

## curl_exec.sh의 동작 과정
```
# cherrypick이라는 index 삭제
curl -XDELETE 'localhost:9200/cherrypick?pretty'

# setting 디렉토리의 cherrypick_analyzer.json을 통한 cherrypick index 생성 및 analyzer 지정
curl -XPUT -H 'content-type: application/json' 'http://localhost:9200/cherrypick?pretty' -d '@setting/cherrypick_analyzer.json'

# mappings 디렉토리의 sentence_mapping.json을 통한 sentence type 생성 및 field 별 analyzer 설정
curl -XPUT -H 'content-type: application/json' 'http://localhost:9200/cherrypick/_mapping/sentence?pretty' -d '@mappings/sentence_mapping.json'

# documents 디렉토리의 sentence_documents.json을 통한 더미 document 삽입
curl -XPOST -H 'content-type: application/json' 'http://localhost:9200/_bulk?pretty' --data-binary '@documents/sentence_documents.js'
```
