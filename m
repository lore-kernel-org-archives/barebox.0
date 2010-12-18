Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PTyVF-0000MG-62
	for barebox@lists.infradead.org; Sat, 18 Dec 2010 15:15:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 18 Dec 2010 16:15:02 +0100
Message-Id: <1292685309-32326-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: LED framework
To: barebox@lists.infradead.org

Hi All,

The following series adds generic LED support for barebox.
Included is an infrastructure to register gpios as LEDs and
generic triggers for LEDs (Heartbeat, network activity). LEDs and
triggers can be controlled in C code and also on the command line.

The last patch only contains a small usage example, I'm not going
to commit it.

I have implemented this patchset completely remote with printfs in
the gpio functions, so I haven't seen any LED blinking. I hope that
the triggers are not too short for a LED to actually blink.

Sascha

The following changes since commit fad11e85641d27f683e2866ec5700cafd5868179:

  eth: fix 'warning: No MAC address set' when using EEPROM MAC (2010-12-16 08:30:14 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git led

Marc Kleine-Budde (1):
      Add generic poll infrastructure

Sascha Hauer (6):
      basic LED support
      LED: Add gpio LED support
      LED: Add LED trigger support
      LED: Add led command
      LED: Add trigger command
      pcm038: led testing. Not to be committed

 arch/arm/boards/pcm038/pcm038.c |   24 ++++++++-
 commands/Kconfig                |   15 +++++
 commands/Makefile               |    2 +
 commands/led.c                  |   60 ++++++++++++++++++++
 commands/trigger.c              |  106 ++++++++++++++++++++++++++++++++++
 common/Kconfig                  |    3 +
 common/Makefile                 |    1 +
 common/console.c                |    5 ++
 common/poller.c                 |   45 +++++++++++++++
 drivers/Kconfig                 |    1 +
 drivers/Makefile                |    1 +
 drivers/led/Kconfig             |   13 ++++
 drivers/led/Makefile            |    3 +
 drivers/led/core.c              |  119 +++++++++++++++++++++++++++++++++++++++
 drivers/led/led-gpio.c          |   92 ++++++++++++++++++++++++++++++
 include/led.h                   |   69 ++++++++++++++++++++++
 include/net.h                   |    3 +
 include/poller.h                |   31 ++++++++++
 lib/vsprintf.c                  |    4 +
 net/eth.c                       |   20 ++++++-
 net/net.c                       |   21 +++++--
 21 files changed, 631 insertions(+), 7 deletions(-)
 create mode 100644 commands/led.c
 create mode 100644 commands/trigger.c
 create mode 100644 common/poller.c
 create mode 100644 drivers/led/Kconfig
 create mode 100644 drivers/led/Makefile
 create mode 100644 drivers/led/core.c
 create mode 100644 drivers/led/led-gpio.c
 create mode 100644 include/led.h
 create mode 100644 include/poller.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
