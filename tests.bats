@test "encode positive integers" {
    run ./banemo -i 0
    [[ "$output" == "ba" ]]
    run ./banemo -i 1
    [[ "$output" == "bi" ]]
    run ./banemo -i 99
    [[ "$output" == "zo" ]]
    run ./banemo -i 100
    [[ "$output" == "biba" ]]
    run ./banemo -i 101
    [[ "$output" == "bibi" ]]
    run ./banemo -i 392406
    [[ "$output" == "kogochi" ]]
    run ./banemo -i 25437225
    [[ "$output" == "haleshuha" ]]
}

@test "encode negative integers" {
    run ./banemo -i -1
    [[ "$output" == "xabi" ]]
    run ./banemo -i -99
    [[ "$output" == "xazo" ]]
    run ./banemo -i -100
    [[ "$output" == "xabiba" ]]
}

@test "decode strings to positive integers" {
    run ./banemo -s "yoshida"
    [[ "$output" == "947110" ]]
    run ./banemo -s "bajo"
    [[ "$output" == "34" ]]
    run ./banemo -s "tonukatsu"
    [[ "$output" == "79523582" ]]
}

@test "decode strings to negative integers" {
    run ./banemo -s "xabaji"
    [[ "$output" == "-31" ]]
}