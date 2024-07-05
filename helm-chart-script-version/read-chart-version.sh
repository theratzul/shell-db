dos2unix Chart.yaml
version=$(grep version Chart.yaml|awk -F ':' '{print $2}'|tr -d '"'|tr -d ' ')
chartname=$(grep ^name Chart.yaml|awk -F ':' '{print $2}'|tr -d '"'| tr -d ' ')
echo $version
echo $chartname
