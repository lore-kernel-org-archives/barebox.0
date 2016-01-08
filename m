Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHUzw-0003KD-5d
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 11:14:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aHUza-000393-5j
 for barebox@lists.infradead.org; Fri, 08 Jan 2016 12:14:02 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aHUzZ-0004ik-Rm
 for barebox@lists.infradead.org; Fri, 08 Jan 2016 12:14:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Jan 2016 12:13:47 +0100
Message-Id: <1452251635-14689-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] remote control support
To: Barebox List <barebox@lists.infradead.org>

The following series adds support for controlling barebox from a remote
host over serial lines. Basically it becomes possible to run barebox
commands from a remote host. This makes crutches like send/expect
unnecessary. See the text below for a deeper explanation.

Sascha

------------------------8<--------------------------------

barebox remote control
======================

barebox remote control is for controlling barebox from a remote host via
scripts. The barebox console is designed for human interaction,
controlling it from a script is very error prone since UARTs do not
offer reliable communication. Usually a tool like 'expect' is used for
this purpose which uses its own language to communicate with the remote
partner. The barebox remote control offers an alternative. barebox
commands can be integrated into regular shell scripts running on the
host:

.. code-block:: sh

  bbremote --port /dev/ttyUSB0 run "ls"

Additionally files can be transferred from/to barebox and a regular
console offers interactive access to barebox on flawy serial
connections.

Enabling remote control support
-------------------------------

To get remote control support barebox has to be compiled with
CONFIG_RATP and CONFIG_CONSOLE_RATP enabled. Optionally CONFIG_FS_RATP
can also be enabled.

Running the bbremote tool
-------------------------

The bbremote host tool is written in python. To run it python2 has to be
installed with the following additional packages:

+----------------+---------------------+
| python package | Debian package name |
+================+=====================+
| crcmod         | python-crcmod       |
+----------------+---------------------+
| enum           | python-enum         |
+----------------+---------------------+
| enum34         | python-enum34       |
+----------------+---------------------+

configuring bbremote
^^^^^^^^^^^^^^^^^^^^

bbremote needs the port and possibly the baudrate to access the remote
barebox. The port can be configured with the ``--baudrate`` option or
with the ``BBREMOTE_PORT`` environment variable. The port can either be
the device special file if it's a local port or if it's a remote port a
string of the form: ``rfc2217://host:port``. The baudrate can be given
with the ``--baudrate`` option or the ``BBREMOTE_BAUDRATE`` environment
variable. For the rest of this document it is assumed that ``bbremote``
has been configured using environment variables.

running commands on the target
------------------------------

``bbremote`` can be used to run arbitrary commands on the remote
barebox:

.. code-block:: sh

  bbremote run "echo huhu"
  huhu

The bbremote exit status will be 0 if the remote command exited
successfully, 1 if the remote command failed and 127 if there was a
communication error.

**NOTE** It is possible to put the output into a shell variable for
further processing, like ``RESULT=$(bbremote run "echo huhu")``.
However, this string may contain unexpected messages from drivers and
the like because currently we cannot filter out driver messages and
messages to stderr.

ping
----

This is a simple ping test.

.. code-block:: sh

  bbremote ping
  pong

getenv
------

.. code-block:: sh

  bbremote getenv global.version
  2015.12.0-00150-g81cd49f

interactive console
-------------------

The bbremote tool also offers a regular interactive console to barebox.
This is especially useful for flawy serial connections.

.. code-block:: sh

  bbremote console
  barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ ls
  .      ..     dev    env    mnt

transferring files
------------------

With the bbremote tool it's possible to transfer files both from the
host to barebox and from barebox to the host. Using the ``--export``
option to bbremote a directory can be specified to export to barebox.
This can be mounted on barebox using the regular mount command using
``-t ratpfs`` as filesystem type.

.. code-block:: sh

  bbremote --export=somedir console
  mkdir -p /ratpfs; mount -t ratpfs none /ratpfs
  ls /ratpfs

----------------------------------------------------------------
Jan Luebbe (3):
      fs: Add RATP fs support
      include pyserial trunk
      host side for barebox remote control

Sascha Hauer (5):
      Add Reliable Asynchronous Transfer Protocol
      barebox remote control
      pyserial: decrease timeouts
      defaultenv2: Add automount for RATPFS
      barebox remote control: Documentation

 .gitignore                                       |    1 +
 Documentation/user/remote-control.rst            |  121 ++
 common/Kconfig                                   |   10 +
 common/Makefile                                  |    2 +
 common/console.c                                 |   26 +-
 common/ratp.c                                    |  511 ++++++
 crypto/Kconfig                                   |    1 +
 defaultenv/defaultenv-2-base/init/automount-ratp |    6 +
 fs/Kconfig                                       |    8 +
 fs/Makefile                                      |    1 +
 fs/ratpfs.c                                      |  476 ++++++
 include/ratp.h                                   |   22 +
 lib/Kconfig                                      |    8 +
 lib/Makefile                                     |    1 +
 lib/ratp.c                                       | 1834 ++++++++++++++++++++++
 lib/readline.c                                   |    7 +
 scripts/bbremote                                 |    3 +
 scripts/remote/controller.py                     |  173 ++
 scripts/remote/main.py                           |  169 ++
 scripts/remote/messages.py                       |  154 ++
 scripts/remote/missing.py                        |   28 +
 scripts/remote/ratp.py                           |  773 +++++++++
 scripts/remote/ratpfs.py                         |  189 +++
 scripts/remote/threadstdio.py                    |   47 +
 scripts/serial/__init__.py                       |   79 +
 scripts/serial/rfc2217.py                        | 1327 ++++++++++++++++
 scripts/serial/serialcli.py                      |  284 ++++
 scripts/serial/serialposix.py                    |  730 +++++++++
 scripts/serial/serialutil.py                     |  572 +++++++
 scripts/serial/tools/__init__.py                 |    0
 scripts/serial/tools/list_ports.py               |  103 ++
 scripts/serial/tools/list_ports_linux.py         |  152 ++
 scripts/serial/urlhandler/__init__.py            |    0
 scripts/serial/urlhandler/protocol_hwgrep.py     |   45 +
 scripts/serial/urlhandler/protocol_loop.py       |  279 ++++
 scripts/serial/urlhandler/protocol_rfc2217.py    |   11 +
 scripts/serial/urlhandler/protocol_socket.py     |  291 ++++
 37 files changed, 8441 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/user/remote-control.rst
 create mode 100644 common/ratp.c
 create mode 100644 defaultenv/defaultenv-2-base/init/automount-ratp
 create mode 100644 fs/ratpfs.c
 create mode 100644 include/ratp.h
 create mode 100644 lib/ratp.c
 create mode 100755 scripts/bbremote
 create mode 100644 scripts/remote/controller.py
 create mode 100644 scripts/remote/main.py
 create mode 100644 scripts/remote/messages.py
 create mode 100644 scripts/remote/missing.py
 create mode 100644 scripts/remote/ratp.py
 create mode 100644 scripts/remote/ratpfs.py
 create mode 100644 scripts/remote/threadstdio.py
 create mode 100644 scripts/serial/__init__.py
 create mode 100644 scripts/serial/rfc2217.py
 create mode 100644 scripts/serial/serialcli.py
 create mode 100644 scripts/serial/serialposix.py
 create mode 100644 scripts/serial/serialutil.py
 create mode 100644 scripts/serial/tools/__init__.py
 create mode 100644 scripts/serial/tools/list_ports.py
 create mode 100644 scripts/serial/tools/list_ports_linux.py
 create mode 100644 scripts/serial/urlhandler/__init__.py
 create mode 100644 scripts/serial/urlhandler/protocol_hwgrep.py
 create mode 100644 scripts/serial/urlhandler/protocol_loop.py
 create mode 100644 scripts/serial/urlhandler/protocol_rfc2217.py
 create mode 100644 scripts/serial/urlhandler/protocol_socket.py

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
