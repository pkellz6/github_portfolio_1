# Add 2 to the number.
def max(first,*rest)
i=0
max=first
  while i<rest.length
    a= max<=>rest[i]
    # if a===1
    #   max
    # els
    if a===-1
      max=rest[i]
    # else
    #   x
    end
    i+=1
  end
  max
end

def test_max_refactor
    p max(1,2,3,4,3,2,1)
    p max(1.0,2.0,3.0,2.0,1.0)
    p max(2,1)
    p max(2.0,1.0)
    p max(1,1,2,3,2,3,2,2)
    p max(1.0,1.0,2.0,3.0,2.0,3.0,2.0,2.0)
end

test_max_refactor
