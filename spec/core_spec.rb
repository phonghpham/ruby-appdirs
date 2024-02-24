RSpec.describe Appdirs::Core do
  let(:app_name) { 'TestApp' }
  describe '#user_data_dir' do
    let(:expected_path) { "#{Dir.home}/Library/Application Support/#{app_name}" }

    it 'returns the correct user data directory for macOS' do
      appdirs = Appdirs::Core.new(app_name: app_name)
      expect(appdirs.user_data_dir).to eq(expected_path)
    end
  end

  describe '#user_config_dir' do
    let(:expected_path) { "#{Dir.home}/Library/Preferences/#{app_name}" }

    it 'returns the correct user config directory for macOS' do
      appdirs = Appdirs::Core.new(app_name: app_name)
      expect(appdirs.user_config_dir).to eq(expected_path)
    end
  end
end
