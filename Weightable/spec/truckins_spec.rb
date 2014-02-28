describe '.create' do
  it "it should create a truckin " do
    user= User.find(1)
    weigh_in= Weigh_in.find(1)
    test_truckin= Truckin.new
    test_truckin.user_id = user.id
    test_truckin.weigh_in= weigh_in.id

    expect(test_truckin.user_id).to eq(user.id);
    expect(test_truckin.weigh_in).to eq(weigh_in.id);
  end
end