require "webpacker_test"

class ConfigurationTest < Minitest::Test
  def test_entry_path
    entry_path = File.join(File.dirname(__FILE__), "test_app/app/javascript", "packs").to_s
    assert_equal entry_path, Webpacker::Configuration.entry_path.to_s
  end

  def test_file_path
    file_path = File.join(File.dirname(__FILE__), "test_app/config", "webpacker.yml").to_s
    assert_equal file_path, Webpacker::Configuration.file_path.to_s
  end

  def test_manifest_path
    manifest_path = File.join(File.dirname(__FILE__), "test_app/public/packs", "manifest.json").to_s
    assert_equal manifest_path, Webpacker::Configuration.manifest_path.to_s
  end

  def test_output_path
    output_path = File.join(File.dirname(__FILE__), "test_app/public/packs").to_s
    assert_equal output_path, Webpacker::Configuration.output_path.to_s
  end

  def test_source
    assert_equal "app/javascript", Webpacker::Configuration.source.to_s
  end

  def test_source_path
    source_path = File.join(File.dirname(__FILE__), "test_app/app/javascript").to_s
    assert_equal source_path, Webpacker::Configuration.source_path.to_s
  end

  def test_cache_path
    cache_path = File.join(File.dirname(__FILE__), "test_app/tmp/cache/webpacker").to_s
    assert_equal Webpacker::Configuration.cache_path.to_s, cache_path
  end

  def test_compile?
    refute Webpacker::Configuration.compile?
  end
end
