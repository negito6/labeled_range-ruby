require 'helper'

describe LabeledRange::BaseDefault.name do
  before do
    @var = LabeledRange::BaseDefault.new(0.8)
  end

  it 'working' do
    assert @disk_usage.value.must_equal 0.8
    assert @disk_usage.warning?.must_equal true
    assert @disk_usage.danger?.must_equal false
    assert @disk_usage.level.must_equal :warning
  end
end
