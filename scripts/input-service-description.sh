#!/bin/bash
echo "Please input service description:"
read description && sed -i -E "s|(Description=).*|\1$description|g" service
cat service
