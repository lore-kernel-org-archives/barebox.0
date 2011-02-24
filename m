Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PsdX5-00044w-0v
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 15:55:11 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PsdX2-0000vU-Nh
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 16:55:08 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PsdX2-0002jC-MP
	for barebox@lists.infradead.org; Thu, 24 Feb 2011 16:55:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Feb 2011 16:55:05 +0100
Message-Id: <1298562907-9870-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: assorted patches
To: barebox@lists.infradead.org


Sascha Hauer (2):
      net: use dev_* for printing network related stuff
      ARM i.MX: cleanup boot modes

 arch/arm/mach-imx/Kconfig                 |   51 +++++
 arch/arm/mach-imx/Makefile                |    1 +
 arch/arm/mach-imx/include/mach/imx-nand.h |   56 +++++-
 arch/arm/mach-imx/internal-nand-boot.c    |  269 +++++++++++++++++++++++++
 drivers/mtd/nand/Kconfig                  |   21 --
 drivers/mtd/nand/nand_imx.c               |  307 -----------------------------
 net/eth.c                                 |    4 +-
 7 files changed, 378 insertions(+), 331 deletions(-)
 create mode 100644 arch/arm/mach-imx/internal-nand-boot.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
