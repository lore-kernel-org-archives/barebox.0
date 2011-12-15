Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sn-0001vF-DH
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Rb8sh-000199-3v
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 11:49:43 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1Rb8sh-0002bD-30
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 11:49:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:32 +0100
Message-Id: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: misc patches
To: barebox@lists.infradead.org

Some cleanup patches and also one patch which should
really be in the bootm series. The new uimage code uses
lseek. So to make it work on nand devices lseek is implemented
on bb devices. This currently is limited to readonly mode
which is enough for booting images.

Sascha Hauer (7):
      remove unused watchdog header
      remove unused keyboard.h file
      ARM cpuinfo: decode more bits, use ARRAY_SIZE
      ARM: remove unused icache command
      common.h: remove unused function declarations
      cdev: pass flags to open function
      nand-bb: implement lseek in readonly mode

 arch/arm/cpu/cpu.c         |   34 ----------------
 arch/arm/cpu/cpuinfo.c     |    6 +-
 arch/ppc/lib/board.c       |    1 -
 arch/ppc/lib/ppclinux.c    |    1 -
 arch/ppc/lib/ticks.S       |    1 -
 commands/bootm.c           |    1 -
 drivers/mtd/nand/nand-bb.c |   34 ++++++++++++++++-
 drivers/mtd/ubi/cdev.c     |    2 +-
 fs/devfs-core.c            |    2 +-
 fs/devfs.c                 |    2 +-
 include/common.h           |    5 --
 include/driver.h           |    2 +-
 include/keyboard.h         |   22 ----------
 include/watchdog.h         |   92 --------------------------------------------
 lib/readline_simple.c      |    1 -
 net/net.c                  |    1 -
 16 files changed, 40 insertions(+), 167 deletions(-)
 delete mode 100644 include/keyboard.h
 delete mode 100644 include/watchdog.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
