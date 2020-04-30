# require 'dl'
# require 'dl/import'
require 'fiddle'

# module LibSum
        # extend DL::Importer
        # dlload 'C:/Users/zhaoyang/Desktop/rub/libsum.dll'
        # extern 'double sum(double*, int)'
        # extern 'double split(double)'
# end
libm = Fiddle.dlopen('C:/Users/zhaoyang/Desktop/rub/libsum.dll')
split = Fiddle::Function.new(
    libm['split'],
    [Fiddle::TYPE_DOUBLE],
    Fiddle::TYPE_DOUBLE,
    )

a = [2.0, 3.0, 4.0]
# ss = sum(a.pack("d*"), a.count)
puts split.call(8.8)
