class ApiVersion

  def initialize(version)
    @version = version
  end

  def matches?(request)
    versioned_accept_header?(request)
  end

  private

  def versioned_accept_header?(request)
    accept = request.headers['Accept']
    accept && accept[/application\/sample.api.v#{@version}\+json/]
  end

end