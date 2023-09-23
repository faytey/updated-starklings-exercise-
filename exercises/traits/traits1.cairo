// traits1.cairo
// Time to implement some traits!

// Your task is to implement the trait
// `AnimalTrait` for the type `Animal`
//
// Execute `starklings hint traits1` or use the `hint` watch subcommand for a hint.

// Fill in the impl block to make the code work.


#[derive(Copy, Drop)]
struct Animal {
    noise: felt252
}

trait AnimalTrait {
    fn new(noise: felt252) -> Animal;
    fn make_noise(self: Animal) -> felt252;
}

impl AnimalImpl of AnimalTrait { // TODO: implement the trait AnimalTrait for Animal
    fn new(noise: felt252) -> Animal {
        Animal {noise,}
    }

    fn make_noise(self: Animal) -> felt252 {
        self.noise
    }
       
}

#[test]
fn test_traits1() {
    // TODO make the test pass by creating two instances of Animal
    // and calling make_noise on them
    let cat_sound = 'meow';
    let cow_sound = 'moo';
    let mut cat = AnimalTrait::new(cat_sound);
    cat.make_noise();
    let mut cow = AnimalTrait::new(cow_sound);
    cow.make_noise();

    assert(cat.make_noise() == 'meow', 'Wrong noise');
    assert(cow.make_noise() == 'moo', 'Wrong noise');
}
