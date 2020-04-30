require 'fiddle'
require 'fiddle/import'


module LibSum
        extend Fiddle::Importer
        dlload 'C:/Users/zhaoyang/Desktop/rub/libsum.dll'
        extern 'double sum(double*, int)'
        extern 'double split(double)'
end
# libm = Fiddle.dlopen('C:/Users/zhaoyang/Desktop/rub/libsum.dll')
# split = Fiddle::Function.new(
    # libm['split'],
    # [Fiddle::TYPE_DOUBLE],
    # Fiddle::TYPE_DOUBLE,
    # )

a = [2.0, 3.0, 4.0]
sum = LibSum.sum(a.pack("d*"), a.count)
p LibSum.split(sum)
