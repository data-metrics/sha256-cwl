#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool
id: sha256
label: sha256
doc: A simple sha256 tool.

requirements:
- class: DockerRequirement
  dockerPull: quay.io/dailydreaming/sha256:stable-slim

baseCommand: sha256sum
inputs:
  input_file:
    type: string?
    default: /data/sha256.default.test.txt
    inputBinding:
      position: 1
    doc: This file will have its sha256 hash computed.  The default in the container will be used if not provided by user.

outputs:
  output_file:
    type: stdout
    doc: A file containing the sha256 of the input file.

stdout: sha256.output

$namespaces:
 s: https://schema.org/
 edam: http://edamontology.org/

s:codeRepository: https://github.com/data-metrics/sha256
s:license: https://spdx.org/licenses/Apache-2.0

s:author:
  - class: s:Person
    s:identifier: https://orcid.org/0000-0001-8352-873X
    s:email: mailto:lblauvel@ucsc.edu
    s:name: Lon Blauvelt
