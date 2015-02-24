# controllable_delay
## Synopsis
Controllable delay written in FAUST. The goal of this project was to familiarize
myself with the FAUST programming language. This delay can have up to 10 echoes
which can take up to 2 seconds between each repetition. The volume drop of each
echo can be anywhere between logarithmic(stays loud) and 
exponential(drops fast). An interpolation parameter allows to reduce the noise 
created by changing the delay time during performance.

## Installation 

Go to the [Grame website](http://faust.grame.fr/index.php/online-examples) and
copy-paste the source code in the text box. Click on the "Exec File" tab and
select the desired output.


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

TODO: Write history

## Credits

TODO: Write credits

## License
APACHE-2.0