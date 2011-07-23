#!/bin/sh

# Just Install Rails
#
# This shell script exists because it is SOOO hard to get Rails installed from scratch, using the Rails Best Practices of 2011.
# 
# The steps are:
#   1. Install RVM
#   2. Complile a Ruby using RVM
#   3. rvm use (compiled ruby)
#   4. rvm gemset create NAME
#   5. echo "rvm use (gemset name)@(compiled ruby) > .rvmrc
#   6. active said gemset
#   7. gem install bundler
#   8. bundle install
#
# This script should be nice to beginners, giving them sane defaults to work off of when they are sitting down
# trying to install a Rails project.
#
# Imagine giving your Rails project to your mother, and asking her to start the project up. (And you also
# want her to use RVM, because you might give her another project to try out in the future...)


function installRVM() {
	echo "TODO: write me!"
	echo "For now, visit http://beginrescueend.com/ and install RVM!"
}

function verifyRVM() {
	# Prefer 1.9.2. This might not actually make sense for new users. WD-rpw 07-23-2011
	echo "Checking for Ruby 1.9.2"
	
	if [[ -z `rvm list rubies | grep ruby-1.9.2` ]]
	then
		echo "  Ruby 1.9.2 not found. installing now (this might take a while)..."
		echo "=========================================" 
		rvm install 1.9.2
	else
		echo "  Ruby 1.92 found. You're a hero!"
	fi
	echo
	
	echo "Checking for Ruby 1.8.7 (Ruby Enterprise Edition)"
	if [[ -z `rvm list rubies | grep ree` ]]
	then
		echo "  could not find Ruby Enterprise Edition (REE) 1.8.7 , installing that for you now (this might take a while)..."
		echo "=========================================" 
		rvm install ree
	else
		echo "  Ruby 1.8.7 (REE) found. You're *my* hero"
	fi
}

function setupGemset() {


}

function preflight() {
	echo "Checking for Developer Tools"
	if [  ! -e /usr/bin/make ]
	then
		echo "You need to install some Developer Tools (Xcode, if you're on a Mac) before we can complete the install"
		exit
	else
		echo "  Developer Tools found. Great."
	fi
	echo
	
	echo "Checking for RVM (Ruby Version Manager)..."
	if [ ! -d ~/.rvm ]
	then
		echo "  RVM not found. Installing now."
		installRVM
	else
		echo "  RVM found. Good job!"
	fi
	echo
	
	verifyRVM
	setupGemset
}

preflight