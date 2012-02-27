class ApiVersion

  def initialize(version)
    puts "ApiVersion::initialize version => #{version}"
    @version = version
  end

  def matches?(request)
    puts "ApiVersion.version(#{@version}) request :: #{request}"
    puts "request.headers['Accept'] :: #{request.headers['Accept']}"
    versioned_accept_header?(request) || version_one?(request)
  end

  private

  def versioned_accept_header?(request)
    accept = request.headers['Accept']
    accept && accept[/application\/sample.api.v#{@version}\+json/]
  end

  def unversioned_accept_header?(request)
    accept = request.headers['Accept']
    accept.blank? || accept[/application\/sample.api/].nil?
  end

  def version_one?(request)
    @version == 1 && unversioned_accept_header?(request)
  end
end