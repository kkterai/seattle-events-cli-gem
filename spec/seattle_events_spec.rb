require 'spec_helper'

describe SeattleEvents do
  it 'has a version number' do
    expect(SeattleEvents::VERSION).not_to be nil
  end

  describe SeattleEvents::Events do
  it 'is a class' do
    expect(SeattleEvents::Events).not_to be nil
  end
end

describe SeattleEvents::CLI do
  it 'is a class' do
    expect(SeattleEvents::CLI).not_to be nil
  end
end

end
