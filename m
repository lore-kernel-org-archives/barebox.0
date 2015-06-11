Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2wNr-0001gh-Gz
 for barebox@lists.infradead.org; Thu, 11 Jun 2015 06:54:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z2wNU-0007hE-Qx
 for barebox@lists.infradead.org; Thu, 11 Jun 2015 08:54:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Z2wNU-0001mP-J0
 for barebox@lists.infradead.org; Thu, 11 Jun 2015 08:54:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jun 2015 08:54:06 +0200
Message-Id: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add barebox remote control
To: Barebox List <barebox@lists.infradead.org>

There's often the desire to control barebox from scripts on a remote
host. Currently this means matching the console output for something
that looks like a prompt, then sending commands to the shell and parsing
the output again. This is quite error prone and fragile, so here is
another approach:

Back in the eighties RFC916 was posted which describes a reliable packet
based communication over serial lines: The reliable asynchronous transfer
protocol (RATP). This series implements this protocol and uses it to transfer
command messages to barebox and the result back to the host. A sample
invocation of the host tool looks like:

# ./scripts/bbremote --port rfc2217://rl3:4006 run ls
console: '.      '
console: '..     '
console: 'dev    '
console: 'env    '
console: 'mnt    '
console: '\n'
Result: BBPacketCommandReturn(exit_code=0)

This is all in an early stadium, we'll probably do some iterations before
we merge this, but to some extend it's already useful and maybe someone
else is also interested, so we decided to post it now.

Sascha

----------------------------------------------------------------
Jan Luebbe (2):
      include pyserial trunk
      host side for barebox remote control

Sascha Hauer (2):
      Add Reliable Asynchronous Transfer Protocol
      barebox remote control

 .gitignore                                    |    1 +
 common/Kconfig                                |   10 +
 common/Makefile                               |    2 +
 common/console.c                              |   54 +-
 common/hush.c                                 |    5 +
 common/ratp.c                                 |  257 ++++
 common/startup.c                              |    6 +
 crypto/Kconfig                                |    1 +
 include/console.h                             |    3 +
 include/ratp.h                                |   80 ++
 lib/Kconfig                                   |    8 +
 lib/Makefile                                  |    1 +
 lib/ratp.c                                    | 1612 +++++++++++++++++++++++++
 lib/readline.c                                |    3 +
 scripts/bbremote                              |    3 +
 scripts/remote/__init__.py                    |    0
 scripts/remote/main.py                        |   57 +
 scripts/remote/messages.py                    |  182 +++
 scripts/remote/missing.py                     |   28 +
 scripts/remote/ratp.py                        |  747 ++++++++++++
 scripts/serial/__init__.py                    |   79 ++
 scripts/serial/rfc2217.py                     | 1327 ++++++++++++++++++++
 scripts/serial/serialcli.py                   |  284 +++++
 scripts/serial/serialposix.py                 |  730 +++++++++++
 scripts/serial/serialutil.py                  |  572 +++++++++
 scripts/serial/tools/__init__.py              |    0
 scripts/serial/tools/list_ports.py            |  103 ++
 scripts/serial/tools/list_ports_linux.py      |  152 +++
 scripts/serial/urlhandler/__init__.py         |    0
 scripts/serial/urlhandler/protocol_hwgrep.py  |   45 +
 scripts/serial/urlhandler/protocol_loop.py    |  279 +++++
 scripts/serial/urlhandler/protocol_rfc2217.py |   11 +
 scripts/serial/urlhandler/protocol_socket.py  |  291 +++++
 33 files changed, 6931 insertions(+), 2 deletions(-)
 create mode 100644 common/ratp.c
 create mode 100644 include/ratp.h
 create mode 100644 lib/ratp.c
 create mode 100755 scripts/bbremote
 create mode 100644 scripts/remote/__init__.py
 create mode 100644 scripts/remote/main.py
 create mode 100644 scripts/remote/messages.py
 create mode 100644 scripts/remote/missing.py
 create mode 100644 scripts/remote/ratp.py
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
