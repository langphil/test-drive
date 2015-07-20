[![Build Status](http://img.shields.io/travis/theodi/test-drive.svg?style=flat-square)](https://travis-ci.org/theodi/test-drive)
[![Code Climate](http://img.shields.io/codeclimate/github/theodi/test-drive.svg?style=flat-square)](https://codeclimate.com/github/theodi/test-drive)
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://theodi.mit-license.org)

# How to TDD

We're going to build a massively-contrived, useless application just to demonstrate some principles of test-driven development

## Play along at home

    git clone https://github.com/theodi/test-drive
    cd test-drive
    bundle

The specs are in _spec/lib/tdd/demo/test_drive_spec.rb_ and the code is in _lib/tdd/demo/test_drive.rb_; the specs can be run at any time with `bundle exec rake` (or use `bundle exec guard` which watches for changes and runs the specs automatically)

There are a series of tags, one for each step:

### `git checkout 00`

Here, we've set up all of the tedious boilerplate to make things work properly, and then we have a single spec:

    it 'knows that 3 plus 5 is 8' do
      expect(TestDrive.add 3, 5).to eq 8
    end

When we run this (with `bundle exec rake`), of course it fails because we haven't written any code yet

### `git checkout 01`

We've now filled in the body of the `add` method like this:

    def TestDrive.add first, second
      return 8
    end

Now this is fairly ridiculous, but **the spec passes**, which is all we should care about

### `git checkout 02`

Now we have another spec:

    it 'knows that 12 plus 19 is 31' do
      expect(TestDrive.add 12, 19).to eq 31
    end

This one will fail because the code is hard-wired to say '8'. So let's fix that

### `git checkout 03`

The `add` method now looks like this:

    def TestDrive.add first, second
      if first.is 12
        return 31
      else
        return 8
      end
    end

So now we look for the special case where the first argument is 12, or otherwise return 8 like before. It still feels very contrived, but **the specs pass** so we can move on

(Note that there's a little bit of [sleight-of-hand](https://github.com/theodi/test-drive/blob/master/lib/tdd/demo.rb#L4-L8)) to make the `is` method work)

### `git checkout 04`

One more spec:

    it 'knows that 12 plus 70 is 82' do
      expect(TestDrive.add 12, 70).to eq 82
    end

And one more failure. Let's fix it

### `git checkout 05`

The `add` method now looks like this:

    def TestDrive.add first, second
      if first.is 12
        if second.is 70
          return 82
        else
          return 31
        end
      else
        return 8
      end
    end

It's a horrendous mess of special cases and it clearly won't scale, but once again the important thing is that **the specs all pass**. So we are now safe to do a little **refactoring**

### `git checkout 06`

As may have been obvious from fairly early on, all of the above guff can be reduced to this:  

    class TestDrive
      def TestDrive.add first, second
        return first + second
      end
    end

And, importantly, **the specs still pass**

### `git checkout 07`

We create one more spec just to satisfy ourselves that this is really working as expected

    it 'knows that 13 plus 105 is 118' do
      expect(TestDrive.add 13, 105).to eq 118
    end

Of course, this passes

## What have we learned from this?

* Writing specs before we write code allows us to proceed in tiny, easily-comprehended steps
* Having a suite of specs gives us the confidence to explore different solutions - we get instant feedback if we break something
* We have some phenomenal tools to help us do this
