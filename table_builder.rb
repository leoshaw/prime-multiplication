require "terminal-table"

class TableBuilder
  def build(primes)
    Terminal::Table.new do |t|
      t.rows = build_rows(primes)
      t.headings = [""].concat primes
      t.style = { border_top: false, border_bottom: false, alignment: :right }
    end.render
  end

  private
  
  def build_rows(primes)
    result = []
    primes.each do |x|
      row = [x]
      primes.each do |y|
        row.push(x * y)
      end
      result.push row
    end
    result
  end
end
