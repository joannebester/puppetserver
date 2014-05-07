#!/bin/sh

export RUBYLIB="$PWD/ruby/puppet/lib:$PWD/ruby/facter/lib"
export PATH=$PATH:$PWD/ruby/puppet/bin:$PWD/ruby/facter/bin

puppet agent --no-daemonize --debug --trace --verbose \
            --confdir=./scratch/agent/conf \
            --vardir=./scratch/agent/var \
            --server localhost \
            --certname myagent \
            --onetime \
            --masterport 8140