require('rspec')
require('r_p_s')


describe("String#beats?") do
  it("returns true if Rock is the object and Scissors is the argument") do
  expect("Rock".beats?("Scissors")).to(eq(true))
  end
  it("returns false if Rock is the object and Paper is the argument") do
  expect("Rock".beats?("Paper")).to(eq(false))
  end
  it("returns true if Scissors is the object and Paper is the argument") do
  expect("Scissors".beats?("Paper")).to(eq(true))
  end
  it("returns true if Paper is the object and Rock is the argument") do
  expect("Paper".beats?("Rock")).to(eq(true))
  end
  it("returns false if Scissors is the object and Rock is the argument") do
  expect("Scissors".beats?("Rock")).to(eq(false))
  end
  it("returns false if Paper is the object and Scissors is the argument") do
  expect("Paper".beats?("Scissors")).to(eq(false))
  end
  it("returns false if player one equals player two") do
  expect("Paper".beats?("Paper")).to(eq(false))
  end
end
