@test "encode positive integers" {
    run ./munemo -i 0
    [[ "$output" == "ba" ]]
    run ./munemo -i 1
    [[ "$output" == "bi" ]]
    run ./munemo -i 99
    [[ "$output" == "zo" ]]
    run ./munemo -i 100
    [[ "$output" == "biba" ]]
    run ./munemo -i 101
    [[ "$output" == "bibi" ]]
    run ./munemo -i 392406
    [[ "$output" == "kogochi" ]]
    run ./munemo -i 25437225
    [[ "$output" == "haleshuha" ]]
}

@test "encode negative integers" {
    run ./munemo -i -1
    [[ "$output" == "xabi" ]]
    run ./munemo -i -99
    [[ "$output" == "xazo" ]]
    run ./munemo -i -100
    [[ "$output" == "xabiba" ]]
}
