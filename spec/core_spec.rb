RSpec.describe Appdirs::Core do
  describe '#user_data_dir' do
    let(:app_name) { 'TestApp' }
    let(:expected_path) { "#{Dir.home}/Library/Application Support/#{app_name}" }

    it 'returns the correct user data directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.user_data_dir).to eq(expected_path)
    end
  end
end
