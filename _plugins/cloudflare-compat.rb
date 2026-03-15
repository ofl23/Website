# frozen_string_literal: true

# Cloudflare Pages runs in a minimal environment where locale variables may
# default to US-ASCII and ImageMagick's `convert` may be unavailable.
#
# This plugin keeps builds portable by:
# 1) forcing UTF-8 defaults for Ruby string/file handling, and
# 2) disabling jekyll-imagemagick when `convert` is not on PATH.
module CloudflareCompat
  module_function

  def force_utf8_defaults
    ENV['LANG'] = 'C.UTF-8' if ENV['LANG'].to_s.empty?
    ENV['LC_ALL'] = 'C.UTF-8' if ENV['LC_ALL'].to_s.empty?

    Encoding.default_external = Encoding::UTF_8
    Encoding.default_internal = Encoding::UTF_8
  rescue StandardError => e
    Jekyll.logger.warn('CloudflareCompat:', "unable to set UTF-8 defaults (#{e.class}: #{e.message})")
  end

  def convert_available?
    system('command -v convert >/dev/null 2>&1')
  end

  def cloudflare_pages?
    ENV['CF_PAGES'].to_s == '1'
  end

  def disable_imagemagick_if_missing(site)
    image_cfg = site.config['imagemagick']
    return unless image_cfg.is_a?(Hash)
    return unless image_cfg['enabled']

    if cloudflare_pages?
      image_cfg['enabled'] = false
      Jekyll.logger.warn('CloudflareCompat:', 'disabling imagemagick on Cloudflare Pages')
      return
    end

    return if convert_available?

    image_cfg['enabled'] = false
    Jekyll.logger.warn('CloudflareCompat:', 'disabling imagemagick: convert binary not found')
  end
end

Jekyll::Hooks.register :site, :after_init do |site|
  CloudflareCompat.force_utf8_defaults
  CloudflareCompat.disable_imagemagick_if_missing(site)
end
