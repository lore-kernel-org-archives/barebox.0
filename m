Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVjCO-0003oF-DA
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 10:46:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 12:46:44 +0200
Message-Id: <1278326807-31431-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: omap3 patches
To: barebox@lists.infradead.org
Cc: Nishanth Menon <x0nishan@ti.com>


The following changes since commit a398a920b6847775c255e2a783c9562bd7227e43:

  trivial: fix typos concerning "instead" (2010-07-05 08:27:28 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox omap

Sascha Hauer (3):
      omap: remove unused defines and corresponding kconfig options
      omap nand: cleanup
      beagle: Whitespace cleanup

 arch/arm/mach-omap/Kconfig                  |   14 --
 arch/arm/mach-omap/include/mach/gpmc_nand.h |   45 +-----
 board/omap/Kconfig                          |   69 --------
 board/omap/Makefile                         |    2 +-
 board/omap/board-beagle.c                   |  242 ++++++++++++++-------------
 board/omap/config.h                         |    5 -
 board/omap/devices-gpmc-nand.c              |   63 ++------
 drivers/nand/Kconfig                        |    8 -
 drivers/nand/nand_omap_gpmc.c               |  103 ++++++++++--
 9 files changed, 225 insertions(+), 326 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
