make_metadata_template = function(type="Dataset", name="", description="", url="", same_as="", identifier="", license="", citation="", temporal_coverage = "", creator = "", variable_info, distribution) {
  
  result = parse_json(paste0('{
"@context": {
    "@vocab": "https://schema.org/",
    "qudt": "http://qudt.org/schema/qudt/",
    "xsd": "http://www.w3.org/2001/XMLSchema#"
  },
  "@type": "', type, '",
  "name": "', name, '",
  "description": "', description, '",
  "url": "', url, '",
  "sameAs": "', same_as, '",
  "identifier": "', identifier, '",
  "license": "', license, '",
  "citation": [
    "', citation, '"
  ],
  "creator": [],
"variableMeasured": [],
"measurementTechnique": [
    "Mobile application for citizen science"
  ],
  "temporalCoverage": "', temporal_coverage, '",
  "distribution": []
}'))

  result$creator = creator
  result$variableMeasured = variable_info
  result$distribution = distribution
  
  return(result)
}
