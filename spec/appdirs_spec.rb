RSpec.describe Appdirs do
  describe '.new' do
    context 'when not on macOS' do
      before do
        allow(RbConfig::CONFIG).to receive(:[]).with('host_os').and_return('linux')
      end

      it 'does not raise an error and informs about macOS support' do
        expect { Appdirs.new(app_name: 'TestApp') }.not_to raise_error
        expect(Appdirs.new(app_name: 'TestApp').unsupported_platform_message).to eq('Appdirs gem is currently only supported on macOS.')
      end
    end
  end
end