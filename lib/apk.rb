require "abra/version"
require 'aapt'
require 'resource'


module Abra
  class APK

    attr_reader :package, :version_name, :version_code, :label, :icon, :api_level

    def initialize(apk_path)
      @apk = apk_path
      attrs = Abra::AAPT.dump_badging(@apk)
      @package = attrs[:package]
      @version_name = attrs[:version_name]
      @version_code = attrs[:version_code].to_i
      @label = attrs[:label]
      @icon = attrs[:icon]
      @api_level = attrs[:api_level].to_i
      @resource = Resource.new(@apk)
    end

    def icon_file
      if self.icon
        dst = "/tmp/abra-#{Time.now.to_i.to_s}-#{Process.pid.to_s}-#{("%04d" % rand(9999))}"
        @resource.extract(self.icon, dst)
        data = File.read(dst)
        File.delete(dst)
        data
      else
        nil
      end
    end

    def sdk_version
      case self.api_level
      when 8
        '2.2'
      when 9..10
        '2.3'
      when 11..13
        '3.0'
      when 14..15
        '4.0'
      when 16
        '4.1'
      when 17
        '4.2'
      end
    end

  end
end
