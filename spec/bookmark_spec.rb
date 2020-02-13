require 'bookmark'

describe Bookmark do

  subject { Bookmark.new('test_title', 'test url') }

  it 'subject should respond to .url and .title' do
    expect(subject).to respond_to(:url)
    expect(subject).to respond_to(:title)
  end

end
