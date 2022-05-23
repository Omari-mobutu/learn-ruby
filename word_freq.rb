def words_from_strings (string)
  string.downcase.scan (/[\w']+/)
end
p words_from_strings("but i didn't inhale, he said (emphatically)")

def count_frequency (word_list)
  counts = Hash.new(0)
  word_list.each {|word| counts[word] += 1}
  counts
end

p count_frequency(["sparky", "the", "cat", "sat", "on", "the", "mat"])

raw_text = %{The problem breaks down into two parts. First, given some text
  as a string, return a list of words. That sounds like an array. Then, build
  a count for each distinct word. That sounds like a use for a hash---we can
  index it with the word and use the corresponding entry to keep a count.}

word_list = words_from_strings(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

for i in 0...5 # (this is ugly code--read on
  word = top_five[i][0] # for a better version)
  count = top_five[i][1]
  puts "#{word}: #{count}"
end