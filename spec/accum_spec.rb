describe Bistro do
  ACCUM_STRUCT_DEF = [
     'C', 'first',
    'C2', 'second',
     'H', 'third',
    'H2', 'fourth',
     'b', 'fifth',
    'b2', 'sixth',
     'i', 'seventh',
    'i2', 'eighth',
  ]

  ACCUM_STRUCT_ENCODED_STR = "\0\1\2\3\4\5\6\7\8\9\0\1\2\3\4\5\6\7\8\9\0\1\2\3\4\5\6\7\8\9\0"

  ACCUM_STRUCT_DECODED_HASH = {
    "first"=>0,
    "second"=>[1, 2],
    "third"=>"0",
    "fourth"=>"04",
    "fifth"=>"1",
    "sixth"=>"01",
    "seventh"=>3749895,
    "eighth"=>[67305985, 939984389]
  }

  it "accumulates numerical values" do
    expect(Bistro.new(ACCUM_STRUCT_DEF).decode(ACCUM_STRUCT_ENCODED_STR)).to eq(ACCUM_STRUCT_DECODED_HASH)
  end
end
