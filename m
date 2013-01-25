Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl0i-0007Te-Pi
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:16:10 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 226BEDC1BB2
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:25:56 +0100 (CET)
Date: Fri, 25 Jan 2013 16:14:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130125151448.GD26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [for master PATCH 00/14] atmel_mci: fixes and cleanup
To: barebox@lists.infradead.org

HI,

	the following patche series clean and fixes the atmel mci driver

	 - highspeed support
	 - use fixup for each IP version
	 - fix new IP clk div
	 - sync with linux
	 - request and configure cd gpio

	 the atmel mci still does not work on rm9200

The following changes since commit 50d1b2de8ea0f3b8d89fe3a97ce64315996ed4cb:

  ARM v7: Fix register corruption in v7_mmu_cache_off (2013-01-23 20:37:56 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/atmel_mci

for you to fetch changes up to 282d19eb0d93141fcc50e5c68039a4d1452771d4:

  atmel_mci: gpio: request and configure card detect (2013-01-21 16:36:13 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (14):
      atmel_mci: rename atmel_mci_host tp atmel_mci
      atmel_mci: rename atmel_mci_readl/writel to atmci_readl/writel
      atmel_mci: rename all function to start with atmci
      atmel_mci: use linux regs define
      atmel_mci: detect IP version
      atmel_mci: version 0x5xx of the IP have a different clk div
      atmel_mci: fix host init
      atmel_mci: rwproof is only needed since IP version 0x200
      atmel_mci: on version 0x0 we need to reset the IP at each request
      atmel_mci: after a software timeout the IP need to be reset
      atmel_mci: support the SD highspeed since IP version 0x300
      atmel_mci: update the SD/SDIO Card Register at request time
      atmel_mci: drop board host caps
      atmel_mci: gpio: request and configure card detect

 arch/arm/boards/at91sam9m10g45ek/init.c |    1 -
 arch/arm/boards/dss11/init.c            |    1 -
 arch/arm/mach-at91/include/mach/board.h |    1 -
 drivers/mci/at91_mci.h                  |  121 ----------------------------------
 drivers/mci/atmel-mci-regs.h            |  166 ++++++++++++++++++++++++++++++++++++++++++++++
 drivers/mci/atmel_mci.c                 |  391 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------------
 6 files changed, 421 insertions(+), 260 deletions(-)
 delete mode 100644 drivers/mci/at91_mci.h
 create mode 100644 drivers/mci/atmel-mci-regs.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
