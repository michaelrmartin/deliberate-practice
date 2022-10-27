# @param {String} s
# @return {Boolean}

def is_valid(s)
    
    stack = []
    
    s.each_char do |c|
        if c == ")"
            x = stack.pop
            return false unless x == "("
        elsif c == "]"
            x = stack.pop
            return false unless x == "["
        elsif c == "}"
            x = stack.pop
            return false unless x == "{"
        else
            stack.push(c)
        end
    
    end
    stack.empty?
end
    
