class Fibonacci

  LIMIT = 32

  def self.call(n)
    return n if n <= 1
    sequence = [n, LIMIT].min
    @cache ||= {}
    @cache[n] ||= self.(sequence-1) + self.(sequence-2)
  end

end
