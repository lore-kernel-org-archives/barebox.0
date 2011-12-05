Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXULJ-0003jo-MH
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:56:10 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RXULC-0004OH-34
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 09:56:02 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RXULC-0007IC-1n
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 09:56:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:55:56 +0100
Message-Id: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] resources
To: barebox@lists.infradead.org

We do not track sdram usage at all which means that currently we
can't see whether regions for the binary, stack, malloc space overlap
ot where we can safely load images to. The following implements iomem
resources support and registers the known regions accordingly. bootm
currently does not use this, it will be done in a later patch.

Sascha

Sascha Hauer (5):
      fix malloc space sizes
      add resource management functions
      add iomem command to show iomem usage
      register sdram as resources
      implement resource management for platform devices

 arch/arm/lib/arm.c        |    2 +-
 arch/blackfin/lib/board.c |    2 +-
 arch/mips/lib/memory.c    |    2 +-
 arch/nios2/lib/board.c    |    2 +-
 arch/ppc/lib/board.c      |    2 +-
 arch/sandbox/os/common.c  |    2 +-
 arch/x86/lib/memory.c     |    4 +-
 commands/Kconfig          |    7 +++
 commands/Makefile         |    1 +
 commands/iomem.c          |   56 +++++++++++++++++++++
 common/Makefile           |    1 +
 common/memory.c           |   58 +++++++++++++++++++++
 common/resource.c         |  121 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/base/driver.c     |   29 ++++++++++-
 include/driver.h          |    6 +--
 include/linux/ioport.h    |   14 +++++
 include/memory.h          |    5 ++
 17 files changed, 299 insertions(+), 15 deletions(-)
 create mode 100644 commands/iomem.c
 create mode 100644 common/resource.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
