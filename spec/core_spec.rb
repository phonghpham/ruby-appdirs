RSpec.describe Appdirs::Core do
  let(:app_name) { 'TestApp' }
  describe '#user_data_dir' do
    let(:expected_path) { "#{Dir.home}/Library/Application Support/#{app_name}" }

    it 'returns the correct user data directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.user_data_dir).to eq(expected_path)
    end
  end

  describe '#user_config_dir' do
    let(:expected_path) { "#{Dir.home}/Library/Preferences/#{app_name}" }

    it 'returns the correct user config directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.user_config_dir).to eq(expected_path)
    end
  end

  describe '#user_cache_dir' do
    let(:expected_path) { "#{Dir.home}/Library/Caches/#{app_name}" }

    it 'returns the correct user cache directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.user_cache_dir).to eq(expected_path)
    end
  end

  describe '#user_log_dir' do
    let(:expected_path) { "#{Dir.home}/Library/Logs/#{app_name}" }

    it 'returns the correct user log directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.user_log_dir).to eq(expected_path)
    end
  end

  describe '#site_data_dir' do
    let(:expected_path) { "/Library/Application Support/#{app_name}" }

    it 'returns the correct site data directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.site_data_dir).to eq(expected_path)
    end
  end

  describe '#site_config_dir' do
    let(:expected_path) { "/Library/Preferences/#{app_name}" }

    it 'returns the correct site config directory for macOS' do
      app_dirs = Appdirs::Core.new(app_name: app_name)
      expect(app_dirs.site_config_dir).to eq(expected_path)
    end
  end
end
