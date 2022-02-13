require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Dancer
    include Dance #allow class to use all of the methods of the included module as instance methods
    extend MetaDancing
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods

    attr_accessor :name

    def initialize(name)
        self.name = name
    end
end