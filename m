Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyti-0005bn-Em
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:54:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WuytM-00075s-B1
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 08:53:44 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1WuytM-00017R-9i
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 08:53:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:53:38 +0200
Message-Id: <1402556023-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: phyCORE-imx27 updates
To: barebox@lists.infradead.org

Based on Alexanders switch to devicetree this series:

- Switches to multi image support and the generic imx_defconfig
- Adds barebox_update handlers for NOR/NAND Flash

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      ARM: uncompress.c: copy executable to SDRAM if necessary
      ARM: Phytec-phyCORE-imx27: Register board env during runtime
      ARM: i.MX bbu: Add update handler for external NOR boot
      ARM: Phytec-phyCORE-imx27: Register NOR/NAND update handlers
      ARM: Phytec-phyCORE-imx27: Switch to multiimage support

 arch/arm/boards/phytec-phycore-imx27/Makefile      |  1 +
 .../{env => defaultenv-pcm038}/boot/nand-ubi       |  0
 .../{env => defaultenv-pcm038}/boot/nor            |  0
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c    | 24 +++++--
 arch/arm/boards/phytec-phycore-imx27/pcm038.c      | 13 +++-
 arch/arm/configs/imx_defconfig                     | 72 ++++++++++---------
 arch/arm/configs/phytec-phycore-imx27_defconfig    | 83 ----------------------
 arch/arm/cpu/uncompress.c                          | 27 +++++--
 arch/arm/dts/Makefile                              |  1 +
 arch/arm/mach-imx/Kconfig                          | 17 ++---
 arch/arm/mach-imx/imx-bbu-internal.c               | 46 +++++++++++-
 arch/arm/mach-imx/include/mach/bbu.h               |  9 +++
 images/Makefile.imx                                |  4 ++
 13 files changed, 156 insertions(+), 141 deletions(-)
 rename arch/arm/boards/phytec-phycore-imx27/{env => defaultenv-pcm038}/boot/nand-ubi (100%)
 rename arch/arm/boards/phytec-phycore-imx27/{env => defaultenv-pcm038}/boot/nor (100%)
 delete mode 100644 arch/arm/configs/phytec-phycore-imx27_defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
