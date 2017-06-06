require 'optparse'

def main(argv)
  # このコードは引数と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use arguments and outputs.
  # Edit and remove this code as you like.
  
    opt = OptionParser.new    
    input_file = String.new
    output_file = String.new
    #オプションごとのパラメータを取得
    opt.on('-i', '--input_file ITEM','input_file path') { |v| 
        input_file =  v
    }

    opt.on('-o', '--output_file ITEM','output_file path') { |v| 
        output_file = v
    }
    opt.parse(argv)
    
    File.open(input_file, "r") do |f|
        puts f.read
    end
end
