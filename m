Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06sO-0006cb-TQ
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:49:09 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1U06sN-0007sH-7k
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:49:07 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1U06sN-0003pd-6g
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:49:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:48:59 +0100
Message-Id: <1359449345-14612-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM OMAP: move lowlevel board code to lowlevel.c
To: barebox@lists.infradead.org

This moves the board specific lowlevel code to a separate file for
the omap (and am33xx) boards. This is just a preparation for the
barebox-arm-entry series which needs the SDRAM setup in lowlevel
code rather than initcalls.
No functional change in this series.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      ARM omap3 beagle: move lowlevel code to lowlevel.c
      ARM omap3 phycard-a-l1: move lowlevel code to lowlevel.c
      ARM omap3 omap343xdsp: move lowlevel code to lowlevel.c
      ARM omap3 omap3evm: move lowlevel code to lowlevel.c
      ARM am33xx beaglebone: move lowlevel code to lowlevel.c
      ARM omap3 beagle: Compile xload defconfig in Thumb2 mode

 arch/arm/boards/beagle/Makefile                  |    2 +
 arch/arm/boards/beagle/board.c                   |  169 -------
 arch/arm/boards/beagle/lowlevel.c                |  167 +++++++
 arch/arm/boards/beaglebone/Makefile              |    2 +
 arch/arm/boards/beaglebone/board.c               |  240 ----------
 arch/arm/boards/beaglebone/lowlevel.c            |  248 ++++++++++
 arch/arm/boards/omap343xdsp/Makefile             |    2 +
 arch/arm/boards/omap343xdsp/board.c              |  547 ----------------------
 arch/arm/boards/omap343xdsp/lowlevel.c           |  546 +++++++++++++++++++++
 arch/arm/boards/omap3evm/Makefile                |    2 +
 arch/arm/boards/omap3evm/board.c                 |  158 -------
 arch/arm/boards/omap3evm/lowlevel.c              |  160 +++++++
 arch/arm/boards/phycard-a-l1/Makefile            |    2 +
 arch/arm/boards/phycard-a-l1/lowlevel.c          |  251 ++++++++++
 arch/arm/boards/phycard-a-l1/pca-a-l1.c          |  247 ----------
 arch/arm/configs/omap3530_beagle_xload_defconfig |    2 +-
 16 files changed, 1383 insertions(+), 1362 deletions(-)
 create mode 100644 arch/arm/boards/beagle/lowlevel.c
 create mode 100644 arch/arm/boards/beaglebone/lowlevel.c
 create mode 100644 arch/arm/boards/omap343xdsp/lowlevel.c
 create mode 100644 arch/arm/boards/omap3evm/lowlevel.c
 create mode 100644 arch/arm/boards/phycard-a-l1/lowlevel.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
