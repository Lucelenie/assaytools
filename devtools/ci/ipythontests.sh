# Run ipython notebook tests

cd examples/fluorescence-binding-assay
testfail=0
for fn in `ls -1 *.ipynb`; do
    echo "Testing IPython notebook $fn"
    ipnbdoctest $fn || testfail=1
done
cd ../..
if [ testfail -eq 1 ]
then
    exit 1
fi
