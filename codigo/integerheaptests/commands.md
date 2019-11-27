
rm -rf build/manual && mkdir build/manual
cd build/manual/
cmake ../..
make && make install
cd ../..
bin/integerheap_tests 

