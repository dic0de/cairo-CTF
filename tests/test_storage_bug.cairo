%lang starknet
from src.storage_bug import increase_balance_a, increase_balance_b, get_balance_a, get_balance_b
from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.alloc import alloc

@external
func test_integrated_test{syscall_ptr : felt*, range_check_ptr, pedersen_ptr : HashBuiltin*}():
    let (resultA_before) = get_balance_a()
    let (resultB_before) = get_balance_b()
    assert resultA_before = 0
    assert resultB_before = 0

    increase_balance_a(100)
    increase_balance_b(97)

    let (resultA_after) = get_balance_a()
    let (resultB_after) = get_balance_b()
    assert resultA_after = 100
    assert resultB_after = 97
    # print(get_balance_b)
    return ()
end
