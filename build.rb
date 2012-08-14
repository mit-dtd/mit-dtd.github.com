watch( 'less/*' )  {|md| system("lessc less/main.less > main.css") }
watch( 'coffee/main.coffee' )  {|md| system("coffee -c -b -o . coffee/main.coffee") }