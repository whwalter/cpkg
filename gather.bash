#!/bin/bash
#
#
sed -i -e "s@PACKAGE_NAME@$TAG@" crossplane.yaml
for f in $(find . -name '*.yaml'); do
	echo "Processing $f"
	cat $f >> package.yaml
done
