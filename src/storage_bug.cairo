# contracts/contract_c

%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from store.library_A import LIBRARY_A
from store.library_B import LIBRARY_B

@external
func increase_balance_a{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(
        amount : felt):
    LIBRARY_A.increase_balance(amount)
    return ()
end

@external
func increase_balance_b{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(
        amount : felt):
    LIBRARY_B.increase_balance(amount)
    return ()
end

@view
func get_balance_a{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (
        res : felt):
    let (res) = LIBRARY_A.get_balance()
    return (res)
end

@view
func get_balance_b{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (
        res : felt):
    let (res) = LIBRARY_B.get_balance()
    return (res)
end
