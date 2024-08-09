# Razvan Rotundu 2024
# First rspec file

# require 'spec_helper'
require_relative '../project/ceasar'

describe "Caesar function testing" do

  it "Shifts a letter by correct amount" do
    expect(ceasar("a", 1)).to eq("b")

  end

  it "Maintains capitalization of letter" do
    expect(ceasar("A", 1)).to eq("B")
  end

  it "Rolls around from z to A" do
    expect(ceasar("Zz", 1)).to eq("Aa")
  end

  it "ignores non-alphabetical characters" do
    expect(ceasar("! !")).to eq("! !")
  end
end
