Pod::Spec.new do |spec|

  spec.name         = "MSMFoundation"
  spec.version      = "1.0.1"
    spec.summary      = "Common framework for iOS Apps"
  spec.description = "Common framework fot iOS Apps to handle
                      Alert and Alert Action
                      "
  spec.swift_version = "5.0"

  spec.homepage     = "https://github.com/man162/MSMFoundation"

  spec.author       = { "Manpreet Singh" => "contact@manpreetsingh.ca" }

  spec.source       = { :git => "https://github.com/man162/MSMFoundation.git", :tag => "#{spec.version}" }

  spec.ios.deployment_target = "10.0"

  spec.source_files  = "MSMFoundation", "MSMFoundation/**/*.{h,m,swift}"

  spec.requires_arc = true
  spec.static_framework = true

  spec.dependency "DeviceKit", "~> 2.2"

  spec.license      = { :type => "MIT", :text => "
    Copyright (c) 2020 Manpreet Singh (https://manpreetsingh.ca/)

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files, to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE." }


end
