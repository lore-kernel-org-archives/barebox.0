Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoT2-0007pQ-6k
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 08:17:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Aug 2019 10:16:55 +0200
Message-Id: <20190814081659.22670-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] i.MX1/scb9328 patches
To: Barebox List <barebox@lists.infradead.org>

We are currently celebrating 15 years of i.MX support in mainline Linux:

https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=9c496bde802b19db40325bbde356be62e66dc125

For this I took some time to update the i.MX1 based Synertronix scb9328
board support. With the switch to device tree support the board is able
to boot up a recent barebox and a current mainline Linux, see here:

https://asciinema.org/a/VPg3yPZBZfhhqMVN61fAX38Cm

The board only has 16MiB of SDRAM which is very tight nowadays.
For successful boot I have some additional hack in my tree which
arranges the Kernel and device tree in memory in a way that the
device tree won't get overwritten during decompression of the Kernel.
Also I wasn't able to start my systemd based rootfs, probably due
to memory constraints. With init=/bin/sh it works though, but hey,
it's a more than 15 years old hardware ;)

Have Fun!
  Sascha

Sascha Hauer (4):
  pinctrl: i.MX iomux-v1: Make base address initialization unnecessary
  pinctrl: i.MX iomux-v1: Add i.MX1 support
  serial: i.MX: Add i.MX1 lowlevel init function
  ARM: i.MX: scb9328: refurbish board suport

 .../boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   2 +-
 arch/arm/boards/freescale-mx21-ads/imx21ads.c |   2 +-
 arch/arm/boards/freescale-mx27-ads/imx27ads.c |   2 +-
 arch/arm/boards/guf-neso/board.c              |   2 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c |   6 +-
 arch/arm/boards/phytec-phycore-imx27/pcm038.c |   4 +-
 arch/arm/boards/phytec-phycore-imx27/pcm970.c |   2 +-
 arch/arm/boards/scb9328/Makefile              |   4 +-
 .../boards/scb9328/defaultenv-scb9328/config  |  50 --------
 arch/arm/boards/scb9328/lowlevel.c            |  23 ++++
 arch/arm/boards/scb9328/lowlevel_init.S       |   8 +-
 arch/arm/boards/scb9328/scb9328.c             |  64 +---------
 arch/arm/configs/imx_defconfig                |   1 +
 arch/arm/configs/scb9328_defconfig            |  60 ---------
 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/imx1-scb9328.dts                 | 117 ++++++++++++++++++
 arch/arm/mach-imx/Kconfig                     |  17 ++-
 arch/arm/mach-imx/imx1.c                      |   2 -
 arch/arm/mach-imx/imx21.c                     |   2 -
 arch/arm/mach-imx/imx27.c                     |   2 -
 arch/arm/mach-imx/include/mach/iomux-v1.h     |  21 +++-
 drivers/i2c/busses/Kconfig                    |   2 +-
 drivers/pinctrl/Makefile                      |   2 +-
 drivers/pinctrl/imx-iomux-v1.c                |  30 ++---
 images/Makefile.imx                           |   5 +
 include/serial/imx-uart.h                     |  21 ++++
 26 files changed, 227 insertions(+), 225 deletions(-)
 delete mode 100644 arch/arm/boards/scb9328/defaultenv-scb9328/config
 create mode 100644 arch/arm/boards/scb9328/lowlevel.c
 delete mode 100644 arch/arm/configs/scb9328_defconfig
 create mode 100644 arch/arm/dts/imx1-scb9328.dts

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
