Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaJG-0000OJ-1k
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:18:26 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EAE03FFB676
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:18:30 +0100 (CET)
Date: Mon, 5 Dec 2011 16:14:39 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111205151439.GC9192@game.jcrosoft.org>
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
Subject: [PATCH] mx53 update
To: barebox@lists.infradead.org

HI,

	this patch update the mx53 support
	by fixing mmc devid
	add card detect support and add smd board support

The following changes since commit 088afefa32a43bd7da80ed3c0a8cebb2c0f72ba7:

  mci: add the probe parameter if any error happened during the probe (2011-12-04 00:12:22 +0800)

are available in the git repository at:
  git ..BRANCH.NOT.VERIFIED..

Jean-Christophe PLAGNIOL-VILLARD (4):
      mx53: fix devid for imx53_add_mmc1/2
      imx-esdhc: add support of card detect
      mx53 loco: update sd support
      imx: add mx53 SMD board support

 arch/arm/Makefile                                 |    1 +
 arch/arm/boards/freescale-mx53-loco/board.c       |   36 +++++-
 arch/arm/boards/freescale-mx53-smd/Makefile       |    2 +
 arch/arm/boards/freescale-mx53-smd/board.c        |  170 +++++++++++++++++++++
 arch/arm/boards/freescale-mx53-smd/config.h       |   24 +++
 arch/arm/boards/freescale-mx53-smd/env/config     |   51 ++++++
 arch/arm/boards/freescale-mx53-smd/flash_header.c |  101 ++++++++++++
 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox   |    4 +
 arch/arm/configs/freescale_mx53_smd_defconfig     |   51 ++++++
 arch/arm/mach-imx/Kconfig                         |    5 +
 arch/arm/mach-imx/devices.c                       |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h    |    2 +-
 arch/arm/mach-imx/include/mach/devices-imx35.h    |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h    |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h    |   15 ++-
 arch/arm/mach-imx/include/mach/devices.h          |    3 +-
 arch/arm/mach-imx/include/mach/esdhc.h            |   43 +++++
 drivers/mci/imx-esdhc.c                           |   37 +++++
 18 files changed, 543 insertions(+), 14 deletions(-)
 create mode 100644 arch/arm/boards/freescale-mx53-smd/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-smd/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/config.h
 create mode 100644 arch/arm/boards/freescale-mx53-smd/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-smd/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/mx53-smd.dox
 create mode 100644 arch/arm/configs/freescale_mx53_smd_defconfig
 create mode 100644 arch/arm/mach-imx/include/mach/esdhc.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
