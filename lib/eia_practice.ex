defmodule EiaPractice do

  #Length of list recursive
  def list_len([]), do: 0
  def list_len([_|tail]), do: 1+list_len(tail)

  #Length of list tail function calls
  def tail_rec_len(list), do: tail_rec_len(0,list)
  def tail_rec_len(acu,[]), do: acu
  def tail_rec_len(acu,list), do: tail_rec_len((acu+1),tl(list))


  #Return a list of integers  recursive tail function calls
  def range(a,b) when a < b do
    range([a],a+1,b)
  end
  def range([head|tail],a,b) when a < b do
    range([head]++tail++[a],a+1,b)
  end
  def range([head|tail],_,_) do
    [head|tail] 
  end

  #Return a new list only with positive number
  def positives(list), do: positives(list,[])

  def positives(list,acumula) do
    case list do
      [] -> acumula 
      [h|t] ->
        if h >= 0 do
          positives(t, acumula++[h])
        else
          positives(t,acumula)
        end
    end
  end

end
