require "rails_helper"

describe User do
  describe "seen!" do
    it "sets last_seen" do
      Timecop.freeze(Time.now) do
        user = User.create name: "Bob"

        user.seen!

        expect(User.find(user.id).last_seen).to eq Time.now
      end
    end
  end
end
