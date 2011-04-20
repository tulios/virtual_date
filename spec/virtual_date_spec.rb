require 'spec_helper'

describe VirtualDate do
  class MyClass
    include VirtualDate
    
    attr_accessor :some_date
    act_as_virtual_date :some_date
  end
  
  let(:obj) { MyClass.new }
  
  before { obj.some_date = Date.today }
  
  it 'should convert date to string' do
    obj.some_date_str.should eql(Date.today.strftime("%Y-%m-%d"))
  end
  
  it 'should convert date to string defing the format' do
    obj.some_date_str("%d-%m-%Y").should eql(Date.today.strftime("%d-%m-%Y"))
  end
  
  it 'should use the class definition' do
    VirtualDate.format = "%d/%m/%Y"
    obj.some_date_str.should eql(Date.today.strftime("%d/%m/%Y"))
  end
      
  it 'should use the argument instead of class definition' do
    VirtualDate.format = "%d/%m/%Y"
    obj.some_date_str.should eql(Date.today.strftime("%d/%m/%Y"))
    obj.some_date_str("%Y-%d-%m").should eql(Date.today.strftime("%Y-%d-%m"))
  end
  
  it 'should convert string to date' do
    obj.some_date_str = "2011-04-18"
    time = Time.local(2011, 04, 18)
    obj.some_date.day.should eql(time.day)
    obj.some_date.month.should eql(time.month)
    obj.some_date.year.should eql(time.year)
  end
  
  it 'should convert string to date with diferent format' do
    obj.some_date_str = "18/04/2011"
    time = Time.local(2011, 04, 18)
    obj.some_date.day.should eql(time.day)
    obj.some_date.month.should eql(time.month)
    obj.some_date.year.should eql(time.year)
  end
  
  context "when have the format defined" do
    class MyClass2
      include VirtualDate
      
      attr_accessor :some_date
      act_as_virtual_date :some_date, :format => "%Y/%m/%d"
    end
    
    let(:obj2) { MyClass2.new }
    before { obj2.some_date = Date.today }
    
    it 'should convert date to string using the previos format' do
      obj2.some_date_str.should eql(Date.today.strftime("%Y/%m/%d"))
    end
    
    it 'should use the informed format instead of the defined one' do
      obj2.some_date_str("%d-%m-%Y").should eql(Date.today.strftime("%d-%m-%Y"))
    end
    
  end
  
end