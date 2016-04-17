INAME="torchbox/php"
TAGS="5.4-fpm 5.5-fpm 5.5-fpm 7-fpm"

for T in $TAGS; do
  echo "Building ${INAME}:${T}..."
  CONTAINER=$(docker build -q -t ${INAME}:$T -f Dockerfile.$T .)
  echo "Built ${INAME}:$T using ${CONTAINER}" 
done


