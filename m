Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2OsP-0006WL-5A
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 16:26:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1U2OsL-0001Ni-C8
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 17:26:33 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mgr@pengutronix.de>) id 1U2OsL-00088s-Ab
 for barebox@lists.infradead.org; Mon, 04 Feb 2013 17:26:33 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 Feb 2013 17:26:16 +0100
Message-Id: <1359995179-2519-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/3] Add mxs spi driver and mx28evk as its first user
To: barebox@lists.infradead.org

this series adds support for the mxs spi driver
and adds the mx28evk as the first user to use it
with an m25p80 flash memory.

The driver was tested to work with the pio mode,
as its implementation has currently no dma support.

The SSP clock needed to be lower than the max possible
frequency for the flash. Otherwise it sometimes, after
a lot of spi transactions, the SSP stopped working.

Michael Grzeschik (3):
  mxs: ssp move to common register layout
  mxs_spi: initial commit
  mx28evk: add spi

 arch/arm/boards/freescale-mx28-evk/mx28-evk.c |   28 +++
 arch/arm/mach-mxs/include/mach/imx23-regs.h   |   16 ++
 arch/arm/mach-mxs/include/mach/imx28-regs.h   |   21 ++
 arch/arm/mach-mxs/include/mach/ssp.h          |   79 +++++++
 drivers/mci/mxs.c                             |  118 +---------
 drivers/spi/Kconfig                           |    5 +
 drivers/spi/Makefile                          |    1 +
 drivers/spi/mxs_spi.c                         |  306 +++++++++++++++++++++++++
 8 files changed, 457 insertions(+), 117 deletions(-)
 create mode 100644 arch/arm/mach-mxs/include/mach/ssp.h
 create mode 100644 drivers/spi/mxs_spi.c

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
