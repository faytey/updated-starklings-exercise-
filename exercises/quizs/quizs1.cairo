// Mary is buying apples. The price of an apple is calculated as follows:
// - An apple costs 3 cairobucks.
// - If Mary buys more than 40 apples, each apple only costs 2 cairobuck!
// Write a function that calculates the price of an order of apples given
// the quantity bought. No hints this time!


// Put your function here!
fn calculate_price_of_apples(quantity: u32) -> u32 {
    let mut cost: u32 = 0;
    let mut amount: u32 = 0;

    if quantity <= 40 {
        cost = 3;
        amount = quantity * cost;
        return amount;
    } else {
        cost = 2;
        amount = quantity * cost;
        return amount;
    }
}

// Do not change the tests!
#[test]
fn verify_test() {
    let price1 = calculate_price_of_apples(35);
    let price2 = calculate_price_of_apples(40);
    let price3 = calculate_price_of_apples(41);
    let price4 = calculate_price_of_apples(65);

    assert(105 == price1, 'Incorrect price');
    assert(120 == price2, 'Incorrect price');
    assert(82 == price3, 'Incorrect price');
    assert(130 == price4, 'Incorrect price');
}
