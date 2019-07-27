require 'helper'

describe LabeledRange::BaseDefault.name do
  before do
    @var = LabeledRange::BaseDefault.new(0.8)
  end

  it 'working' do
    assert @var.value.must_equal 0.8
    assert @var.warning?.must_equal true
    assert @var.danger?.must_equal false
    assert @var.level.must_equal :warning
  end
end
