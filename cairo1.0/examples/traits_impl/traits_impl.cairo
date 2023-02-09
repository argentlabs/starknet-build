#[contract]

mod Simple {
    struct Storage{
        number_pair: LegacyMap::<felt, felt>,
    }

    trait IContract{
        fn set_something(num: felt, pair: felt);

        fn get_something(num: felt) -> felt;
    }

    impl Contract of IContract {
        fn set_something(num: felt, pair: felt) {
            number_pair::write(num, pair)
        }

        fn get_something(num: felt) -> felt {
            number_pair::read(num)
        }
    }

    #[external]
    fn setter(num: felt, pair: felt) {
        IContract::set_something(num, pair)
    }
}