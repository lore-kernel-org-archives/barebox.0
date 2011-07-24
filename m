Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0Bq-0002tL-Kr
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:02:00 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id C5F5EFF82A4
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:02:42 +0200 (CEST)
Date: Sun, 24 Jul 2011 16:44:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 0/12] more device rework
To: barebox@lists.infradead.org

Hi,

	the folling patch series continue to switch the device/driver

	this reduce the code of 744 lignes and 188 bytes since v2011.07.0

	this superseed the previous patch has some errors was found

The following changes since commit 522af7074a333508d8b73c25abd1d051d8672e5c:

  armlinux: mem tag switch to "struct resource" (2011-07-20 08:25:45 +0200)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git resource

Jean-Christophe PLAGNIOL-VILLARD (12):
      drivers/bus: move to drivers/base
      drivers: move resource generic management to driver/base/resource.c
      resource: introduce add_generic_device to register simple device
      at91: switch to add_generic_device
      imx/devices: switch to add_generic_device
      resource: introduce add_cfi_device to register simple cfi device
      versatile: switch to add_generic_device
      nomadik: switch to add_generic_device
      mci: switch to "struct resource"
      ata/bios: convert to struct resource
      i2c: convert to struct resource
      nand: convert to struct resource

 arch/arm/boards/at91rm9200ek/init.c               |   17 +--
 arch/arm/boards/at91sam9263ek/init.c              |   17 +--
 arch/arm/boards/edb93xx/edb93xx.c                 |    9 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   19 +--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    9 +-
 arch/arm/boards/imx21ads/imx21ads.c               |    9 +-
 arch/arm/boards/imx27ads/imx27ads.c               |    9 +-
 arch/arm/boards/mmccpu/init.c                     |   16 +--
 arch/arm/boards/netx/netx.c                       |    9 +-
 arch/arm/boards/nhk8815/setup.c                   |   18 +--
 arch/arm/boards/pcm037/pcm037.c                   |   17 +--
 arch/arm/boards/pcm038/pcm038.c                   |    9 +-
 arch/arm/boards/pcm043/pcm043.c                   |   17 +--
 arch/arm/boards/pm9261/init.c                     |   10 +-
 arch/arm/boards/pm9263/init.c                     |   17 +--
 arch/arm/boards/scb9328/scb9328.c                 |   10 +-
 arch/arm/boards/versatile/versatilepb.c           |   19 +--
 arch/arm/mach-at91/at91rm9200_devices.c           |  144 +++------------
 arch/arm/mach-at91/at91sam9260_devices.c          |  209 ++++-----------------
 arch/arm/mach-at91/at91sam9261_devices.c          |  130 +++----------
 arch/arm/mach-at91/at91sam9263_devices.c          |  177 ++++--------------
 arch/arm/mach-at91/at91sam9g45_devices.c          |  197 ++++----------------
 arch/arm/mach-imx/devices.c                       |   19 +--
 arch/arm/mach-nomadik/8815.c                      |   42 +----
 arch/arm/mach-versatile/core.c                    |   48 ++----
 arch/blackfin/boards/ipe337/ipe337.c              |    9 +-
 arch/nios2/boards/generic/generic.c               |    9 +-
 arch/ppc/boards/pcm030/pcm030.c                   |    9 +-
 common/Makefile                                   |    1 -
 drivers/Makefile                                  |    1 +
 drivers/ata/bios.c                                |    2 +-
 drivers/base/Makefile                             |    3 +
 {lib => drivers/base}/driver.c                    |    0
 lib/bus.c => drivers/base/platform.c              |    0
 common/mem.c => drivers/base/resource.c           |   16 +-
 drivers/i2c/busses/i2c-imx.c                      |    6 +-
 drivers/i2c/busses/i2c-omap.c                     |    3 +-
 drivers/mci/mci-core.c                            |    4 +-
 drivers/mci/mxs.c                                 |    4 +-
 drivers/mci/omap_hsmmc.c                          |    2 +-
 drivers/mci/s3c.c                                 |  105 ++++++-----
 drivers/mtd/nand/nand_omap_gpmc.c                 |   10 +-
 drivers/mtd/nand/nand_s3c2410.c                   |    4 +-
 include/driver.h                                  |   23 ++-
 lib/Makefile                                      |    2 -
 45 files changed, 333 insertions(+), 1077 deletions(-)
 create mode 100644 drivers/base/Makefile
 rename {lib => drivers/base}/driver.c (100%)
 rename lib/bus.c => drivers/base/platform.c (100%)
 rename common/mem.c => drivers/base/resource.c (76%)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
