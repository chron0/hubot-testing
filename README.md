Hubot-Testing
================================================================================


Installation
--------------------------------------------------------------------------------

    $ npm install

or, in case of npm fails (/lib64/libc.so.6: version GLIBC_2.14 not found)

    $ npm install --build-from-source


Run
--------------------------------------------------------------------------------

Place a hubot.conf (see hubot.conf.example) into the bot's root directory
with all relevant env vars needed for bot operations, i.e. credentials,
ports, etc.

### Manual Run #################################################################

    $ ./run.sh

### Production #################################################################

Copy sysinit script from sys/init.d

    $ cp sys/init.d/hobot /etc/init.d/

### Monitoring #################################################################

Copy monit.d template

    $ cp sys/monit.d/hobot /etc/monit.d/


Testing
--------------------------------------------------------------------------------

### Unit-Testing ###############################################################

Tests and helpers are stored in ./tests

    $ npm test

### Coverage ###################################################################

    $ npm run test-coverage

Will print results on the console as well as in ./coverage

Notes
--------------------------------------------------------------------------------

  * External (our), non-hubot-ecosphere scripts live in scripts/ and
    system/shell scripts in sbin/
