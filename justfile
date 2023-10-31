build-assigner:
	make -C ${ZKLLVM_BUILD:-build} assigner -j 12

build-clang:
	make -C ${ZKLLVM_BUILD:-build} clang -j 12

test-zkllvm-unittests:
	make -C ${ZKLLVM_BUILD:-build} all_for_test_run -j 8
	bash tests/run_tests.sh

test-onnx-models:
  python tests/run_onnx_tests.py

test-all: test-onnx-models && test-zkllvm-unittests
