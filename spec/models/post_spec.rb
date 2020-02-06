require 'rails_helper'

describe Post do
  describe '#create' do


    it "school_idが空では登録不可" do
      post = build(:post, school_id: nil)
      post.valid?
      expect(post.errors[:school_id]).to include("can't be blank")
    end
      
    end
  end
