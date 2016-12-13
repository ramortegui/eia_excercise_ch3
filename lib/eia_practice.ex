defmodule EiaPractice do

  #Length of list recursive
  def list_len([]), do: 0
  def list_len([head|tail]), do: 1+list_len(tail)

  #Length of list tail function calls
  def tail_rec_len(list), do: tail_rec_len(0,list)
  def tail_rec_len(acu,[]), do: acu
  def tail_rec_len(acu,list), do: tail_rec_len((acu+1),tl(list))

end
