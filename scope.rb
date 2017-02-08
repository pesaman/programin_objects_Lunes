 $local_var = "this is my local var"#variable global
 $global_var = "This is a global variable"#variable global
 CONSTANT = 3.1416 

  def global_var 
      $global_var
  end
  def global_var=(value)
      $global_var = value
  end

  def constant_var
     CONSTANT 
  end
  # def constant_var=(value)
  #         CONSTANT = value
  # end

class DummyClass
   @@class_variable = "This is a class variable"
  def initialize()
      @instance_var = $local_var
      "#{@instance_var}"
  end
  def return_my_local_var 
      $local_var = "test new"
  end
  # Este es un getter
  def instance_var
      @instance_var
  end
# Este es un setter
  def instance_var=(value)
      @instance_var = value
  end

  def class_variable
      @@class_variable
  end
# Este es un setter
  def class_variable=(value)
      @@class_variable = value
  end
  
  def global_var 
      $global_var
  end
  
  def global_var=(value)
      $global_var = value
  end

  def constant_var
     CONSTANT 
  end
  # def constant_var=(value)
  #    CONSTANT = value
  # end

end
 dummy_class = DummyClass.new
 dummy_1 = DummyClass.new
 dummy_2 = DummyClass.new
 dummy_class.return_my_local_var
 p dummy_class.instance_var=("Bar")
 p dummy_class.instance_var   =    "Baz"
 p dummy_1.class_variable=("New value for the class variable")  
 p dummy_2.class_variable=("Bar")
 p global_var=("hello")
 p constant_var 
 p dummy_1.global_var=("soy la global_var que está entro de la clase")
 p global_var


