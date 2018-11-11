@test "encode positive integers" {
    run ./munemo 0
    [[ "$output" == "ba" ]]
    run ./munemo 1
    [[ "$output" == "bi" ]]
    run ./munemo 99
    [[ "$output" == "zo" ]]
    run ./munemo 100
    [[ "$output" == "biba" ]]
    run ./munemo 101
    [[ "$output" == "bibi" ]]
    run ./munemo 392406
    [[ "$output" == "kogochi" ]]
    run ./munemo 25437225
    [[ "$output" == "haleshuha" ]]
}

@test "encode negative integers" {
    run ./munemo -1
    [[ "$output" == "xabi" ]]
    run ./munemo -99
    [[ "$output" == "xazo" ]]
    run ./munemo -100
    [[ "$output" == "xabiba" ]]
}
