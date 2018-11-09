Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hP-Bs
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:26 +0100
Message-Id: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 00/20] Fix another ton of missing prototype warnings
To: Barebox List <barebox@lists.infradead.org>

With this series imx_v7_defconfig compiles without warnings when
-Wmissing-prototypes is enabled.

The last patch in this series adds -Wmissing-prototypes to all
architectures. I'm not sure yet if I merge this into master given
the amount of warnings this generates for other defconfigs, but
I think I'll merge it to -next to increase the visibility of the
warnings in the hope that I get more fixes for them.

Sascha

Sascha Hauer (20):
  ARM: interrupts: Avoid missing prototypes warning
  ARM: psci: Avoid missing prototypes warning
  gui: lodepng: Avoid missing prototypes warning
  ARM: sm: Make locally used function static
  fs: ubifs: Avoid missing prototype warning
  ARM: start: Add missing include
  ARM: start: Add missing prototype
  ARM: Add missing prototype for arm_mem_ramoops_get()
  ARM: i.MX50: Make locally used function static
  ARM: i.MX27: Add missing prototype for imx27_get_boot_source()
  ARM: i.MX: add missing include
  ARM: i.MX6 usb: Add missing include
  imx-bbu-nand: Make locally used functions static
  clk: imx: Avoid missing prototype warnings
  dma: apbh: make locally used function static
  pinctrl: at91: Add missing include
  video: vpl: make locally used function static
  fs: devfs: Make locally used function static
  nvmem: Add prototype for exported functions
  Make: Add -Wmissing-prototypes

 Makefile                                 |  2 +-
 arch/arm/cpu/interrupts.c                |  8 +++++
 arch/arm/cpu/psci.c                      |  7 ++++
 arch/arm/cpu/sm.c                        |  2 +-
 arch/arm/cpu/start.c                     |  4 +++
 arch/arm/cpu/uncompress.c                |  2 ++
 arch/arm/include/asm/barebox-arm.h       |  2 ++
 arch/arm/mach-imx/imx50.c                |  2 +-
 arch/arm/mach-imx/include/mach/generic.h |  1 +
 arch/arm/mach-imx/nand.c                 |  1 +
 arch/arm/mach-imx/usb-imx6.c             |  2 +-
 arch/mips/Makefile                       |  2 +-
 common/imx-bbu-nand-fcb.c                |  4 +--
 drivers/clk/imx/clk-gate2.c              |  9 +----
 drivers/dma/apbh_dma.c                   |  2 +-
 drivers/pinctrl/pinctrl-at91.c           |  9 +----
 drivers/video/vpl.c                      |  2 +-
 fs/devfs.c                               |  2 +-
 fs/ubifs/super.c                         | 10 +-----
 fs/ubifs/ubifs.c                         |  2 +-
 include/linux/nvmem-consumer.h           |  4 +++
 lib/gui/lodepng.c                        | 42 +-----------------------
 lib/gui/lodepng.h                        | 28 ++++++++++++++++
 23 files changed, 72 insertions(+), 77 deletions(-)

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
