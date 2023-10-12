#ifndef __ZKLLVM__
#include "../../read_boost_json.hpp"
#include <cstdint>
#include <fstream>
#endif

#include <nil/crypto3/algebra/curves/pallas.hpp>

[[circuit]] bool assert_equaluty(uint32_t a, uint32_t b) {

    bool c = a == b;


#ifdef __ZKLLVM__
    __builtin_assigner_exit_check(c);
#else
    assert(c);
#endif

    #ifndef __ZKLLVM__
    std::cout << c <<std::endl;
    #endif

    return c;
}

#ifndef __ZKLLVM__

int main (int argc, char *argv[]){
    if (argc != 2) {
        std::cerr << "one command line argument must be provided\n";
        std::abort();
    }

    boost::json::value input_json = read_boost_json(std::string(argv[1]));
    read_fixedpoint(input_json, 0);
    std::cout << "1" << std::endl;
    /*
     * 
    using OperatingFieldType = typename ed25519::base_field_type;
    typename OperatingFieldType::value_type a = read_field <OperatingFieldType>(input_json, 0);
    typename OperatingFieldType::value_type b = read_field <OperatingFieldType>(input_json, 1);

    field_addition(a, b);
     *
     * */

    //assert_equaluty(a, b);
    return 0;
}
#endif
