
def echo(a)
    a
end

def shout(a)
    a.upcase
end

def repeat(a,b = 2)
    ((a + " ")*b).rstrip
end

def start_of_word(a, b)
    a[0..b-1]
end

def first_word(a)
    a.split.first
end

=begin
def titleize(a)
    a.split.map{|x| x.capitalize}.join(" ")
end
=end

def titleize(a)
    little_words = %w(end and the)
    a.capitalize.gsub(/(\w+)/) do |word|
      little_words.include?(word) ? word : word.capitalize
    end
  end