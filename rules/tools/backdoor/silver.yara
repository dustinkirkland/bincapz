rule c2_implant_sliver_proto : critical {
  meta:
	description = "Sliver C2 implant"
  strings:
    $sliverpb = "sliverpb"
    $bishopfox = "bishopfox"
    $sliver_proto = "sliver.proto"
    $server_store_proto = "ServerStoreLprotobuf"
    $proc_name_proto = "ProcessNameKprotobuf"
  condition:
    filesize < 20971520 and 2 of them
}

rule c2_implant_sliver_functions : critical {
  meta:
	description = "Sliver C2 implant"
  strings:
    $sliverpb = "GetImplantBuilds"
    $bishopfox = "GetBeaconJitter"
    $sliver_proto = "GetObfuscateSymbols"
    $server_store_proto = "GetBeaconID"
  condition:
    filesize < 20971520 and 2 of them
}
