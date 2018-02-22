require "fancify/version"

module Fancify
  $groups = [
    ['a', 'A', '4', '@'],
    ['b', 'B'],
    ['c', 'C'],
    ['d', 'D'],
    ['e', 'E', '3'],
    ['f', 'F'],
    ['g', 'G'],
    ['h', 'H', "#", '|-|'],
    ['i', 'I', '!'],
    ['j', 'J', '?'],
    ['k', 'K'],
    ['l', 'L', '7'],
    ['m', 'M'],
    ['n', 'N'],
    ['o', 'O', '0', '*', '()'],
    ['p', 'P'],
    ['q', 'Q'],
    ['r', 'R'],
    ['s', 'S', '$', '&'],
    ['t', 'T'],
    ['u', 'U'],
    ['v', 'V'],
    ['w', 'W'],
    ['x', 'X'],
    ['y', 'Y'],
    ['z', 'Z', '2']
  ]

  def fancify(word_to_fancify)
    fancified_word = ''
    word_to_fancify.each_char { |char|
      char_group_id = get_group_id(char)
      fancified_word += get_random_character(char_group_id)
    }
    return fancified_word
  end

  def get_group_id(character)
    $groups.each_with_index {|group, key|
      if(group.include?(character))
        return key
      end
      }
    raise 'Character Not Found'
  end

  def get_random_character(group_id)
    characters_in_group = $groups[group_id]
    return characters_in_group[rand(characters_in_group.length)]
  end
end
