class ApiVersion

  def initialize(version)
    @version = version
  end

  def matches?(request)
    versioned_accept_header?(request)
  end

  private

  def versioned_accept_header?(request)
    valid = false
    accept = request.headers['Accept']
    if accept
      current_version = (accept.match(/application\/sample.api.v(.+)\+json/)[1] rescue 0)
      valid = true if current_version.to_i >= @version
    end
    valid
  end

end