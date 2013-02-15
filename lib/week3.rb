A_CONSTANT =  "I'm a CONSTANT"

class Week3

    $global_var = "I'm a Global!"

    A_CONSTANT = "I'm a class CONSTANT"


  def initialize
    @name = 'Brandon'
  end

  def name
    @name
  end

  def name= name = 'Jason'
    @name = name
  end

  def halve array
    array[0...(array.length/2)]
  end

  def halve! array
   array.pop(array.length/2)
   array
  end

  def even? val
    val.to_i % 2 == 0
  end
  
  def configure hash = { }
    hash = {:path => './' ,:version => '0.1.0', :mode => 'production'}.merge(hash)
  end
  
  def run_me
    yield
  end


  def each_odd set = []
    subset = []
    set.each do |val|
      if val.even? == false
      val 
      yield val if block_given?
      subset << val
      end
    end
    subset
  end




end
