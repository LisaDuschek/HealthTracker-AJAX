require 'rails_helper'

describe Calory do
  it { should validate_presence_of :amount }
  it { should belong_to :food }
  it { should belong_to :exercise }
end
