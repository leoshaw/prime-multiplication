class PrimeFinder
  def first(count)
    sieve.take(count)
  end

  private

  def sieve
    composites = Hash.new{|h, k| h[k] = []}
    i = 2

    Enumerator.new do |yielder|
      loop do
        if composites.has_key? i
          composites[i].each do |prime|
            composites[i + prime].push(prime)
          end
          composites.delete(i)
        else
          yielder << i
          composites[i * i] = [i]
        end
        i += 1
      end
    end
  end
end
