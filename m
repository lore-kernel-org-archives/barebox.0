Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYyP3-000454-3r
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 14:27:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XYyJf-0002Zl-Ss
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 16:22:11 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XYyJb-0002H3-7w
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 16:22:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 16:22:02 +0200
Message-Id: <1412086926-27167-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: dmesg Support
To: barebox@lists.infradead.org

Printing informations during startup is very useful, but due to slow serial
printouts it adds to the startup time of barebox. This series adds logbuffer
support and a 'dmesg' command, so it becomes possible to reduce the loglevel
while the messages are still available later. As a bonus the timestamp for
each message is recorded so that together with CONFIG_DEBUG_INITCALLS detailed
timing information of the startup process can be collected.
The dmesg support nearly compiles away when it's disabled.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      clock: Add a variable with the first timestamp after startup
      clock: make get_time_ns() safe to be called without clocksource
      startup: Don't print multiple lines with pr_info
      Introduce message logging support

 commands/Kconfig        |   7 +++
 commands/Makefile       |   1 +
 commands/dmesg.c        | 100 +++++++++++++++++++++++++++++++++++++
 common/Kconfig          |   3 ++
 common/clock.c          |  11 +++++
 common/console_common.c | 129 ++++++++++++++++++++++++++++++++++++++++++++++--
 common/version.c        |   4 +-
 drivers/base/driver.c   |  22 ---------
 include/clock.h         |   2 +
 include/printk.h        |  17 +++++++
 10 files changed, 270 insertions(+), 26 deletions(-)
 create mode 100644 commands/dmesg.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
