Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD6F-0003rz-Jp
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:24:52 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 87A31FFA4FF
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:25:15 +0200 (CEST)
Date: Tue, 19 Jul 2011 18:07:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH v2] resources work
To: barebox@lists.infradead.org

Hi all,

Some resources related work in this series:

- add missing IORESOURCE_MEM flag to resources created by the
  wrapper in register_device
- add helper to register memory devices
- drop struct memory_platform_data
- switch all of the memory to new helper
- get rid of some map_base in the core
- convert the majority of i.MX devices to struct resource

The following changes since commit 7530c82c3d295c2e93f440dc2ee6440a72e41c3a:

  startup.c: make DEBUG_LL output more useful (2011-07-18 23:04:18 +0200)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git resource

Jean-Christophe PLAGNIOL-VILLARD (1):
      mem: replace DEVFS_RDWR by IORESOURCE_MEM_WRITEABLE

Sascha Hauer (15):
      register_device: Add IORESOURCE_MEM flag
      device: Add a dev_request_mem_region function
      add a add_mem_device function
      mem_read/write: use resources
      nand i.MX: convert to struct resource
      video i.MX: convert to struct resource
      serial i.MX: convert to struct resource
      i2c i.MX: convert to struct resource
      mci i.MX: convert to struct resource
      net i.MX fec: convert to struct resource
      mci i.MX esdhc: convert to struct resource
      spi i.MX: convert to struct resource
      video i.MX ipu: convert to struct resource
      i.MX devices: convert to struct resource
      cfi: convert to struct resource

 arch/arm/boards/a9m2410/a9m2410.c                 |   35 +++-----
 arch/arm/boards/a9m2440/a9m2440.c                 |   22 +----
 arch/arm/boards/chumby_falconwing/falconwing.c    |   21 +----
 arch/arm/boards/edb93xx/edb93xx.c                 |   91 ++++-----------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   20 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   19 +----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   20 +----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   20 +----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   20 +----
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   48 +++--------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |   19 +----
 arch/arm/boards/freescale-mx51-pdk/board.c        |   19 +----
 arch/arm/boards/guf-cupid/board.c                 |   19 +----
 arch/arm/boards/guf-neso/board.c                  |   19 +----
 arch/arm/boards/imx21ads/imx21ads.c               |   19 +----
 arch/arm/boards/imx27ads/imx27ads.c               |   21 +----
 arch/arm/boards/karo-tx25/board.c                 |   54 +++----------
 arch/arm/boards/karo-tx28/tx28.c                  |   22 +----
 arch/arm/boards/mini2440/mini2440.c               |   24 ++----
 arch/arm/boards/netx/netx.c                       |   21 ++----
 arch/arm/boards/omap/board-beagle.c               |   28 ++-----
 arch/arm/boards/omap/board-omap3evm.c             |   30 ++-----
 arch/arm/boards/omap/board-sdp343x.c              |   30 ++-----
 arch/arm/boards/panda/board.c                     |   20 +----
 arch/arm/boards/pcm037/pcm037.c                   |   67 +++------------
 arch/arm/boards/pcm038/pcm038.c                   |   35 ++-------
 arch/arm/boards/pcm043/pcm043.c                   |   20 +----
 arch/arm/boards/pcm049/board.c                    |   36 ++-------
 arch/arm/boards/phycard-i.MX27/pca100.c           |   19 +----
 arch/arm/boards/scb9328/scb9328.c                 |   19 +----
 arch/arm/mach-at91/at91rm9200_devices.c           |   27 +-----
 arch/arm/mach-at91/at91sam9260_devices.c          |   27 +-----
 arch/arm/mach-at91/at91sam9261_devices.c          |   27 +-----
 arch/arm/mach-at91/at91sam9263_devices.c          |   27 +-----
 arch/arm/mach-at91/at91sam9g45_devices.c          |   27 +-----
 arch/arm/mach-imx/devices.c                       |    7 +-
 arch/arm/mach-nomadik/8815.c                      |   27 +-----
 arch/arm/mach-versatile/core.c                    |   20 +----
 arch/blackfin/boards/ipe337/ipe337.c              |   16 +---
 arch/nios2/boards/generic/generic.c               |   16 +---
 arch/ppc/boards/pcm030/pcm030.c                   |   16 +---
 arch/x86/boards/x86_generic/generic_pc.c          |   16 +---
 commands/mem.c                                    |   32 ++------
 common/Makefile                                   |    1 +
 common/startup.c                                  |   16 +---
 drivers/i2c/busses/i2c-imx.c                      |   28 ++++---
 drivers/mci/imx-esdhc.c                           |    2 +-
 drivers/mci/imx.c                                 |    2 +-
 drivers/mtd/nand/nand_imx.c                       |    2 +-
 drivers/net/fec_imx.c                             |    2 +-
 drivers/nor/cfi_flash.c                           |   36 ++++-----
 drivers/serial/serial_imx.c                       |    2 +-
 drivers/spi/imx_spi.c                             |    2 +-
 drivers/video/imx-ipu-fb.c                        |    2 +-
 drivers/video/imx.c                               |    2 +-
 fs/fs.c                                           |    5 +-
 include/driver.h                                  |   26 +++++--
 lib/driver.c                                      |   18 ++++
 58 files changed, 342 insertions(+), 946 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
