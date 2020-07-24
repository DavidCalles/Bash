## Description

Basic bash codes of general-purpose use.
Including: 
1. One-wire temperature sensor (ref: DS18820) reading to be used in raspberry pi. 

## Usage

Change 28-00001045078e for the value of your device founded under de /dev folder.
Run where you want the files to be saved.
```
$ bash OneWire3.sh t 
$ bash OneWire3.sh t & (Background run)
```										    
Where 't' is the desired time in seconds between samples. 

## Contributing
Pull requests are welcome. Different sensor management code through bash command line is also welcomed.

## License
MIT License

Copyright (c) 2020 David F. Calles M.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
