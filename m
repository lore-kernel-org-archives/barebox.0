Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PGy7W-0003pH-Fi
	for barebox@lists.infradead.org; Fri, 12 Nov 2010 18:13:19 +0000
Date: Fri, 12 Nov 2010 19:02:28 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101112180228.GC13661@game.jcrosoft.org>
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
Subject: [To test] [PATCH 0/5] device: introduce resource structure
To: barebox@lists.infradead.org

Hi,

	This patch series introduce the device resource structure
	to be allow to declare more than one resources per device

The following changes since commit b35fbfc237a1916bfddc1be8ea2dc4c0a7426147:

  at91: add Ronetix pm9g45 support (2010-11-11 20:43:21 +0800)

are available in the git repository at:
  git://git.jcrosoft.org/barebox.git mem

Jean-Christophe PLAGNIOL-VILLARD (5):
      device: introduce resource structure to simplify resource delaration
      mem: add multiple resource support
      arm/setup_memory_tags: add multiple resource support
      edb93xx: convert to multiple mem resources
      pcm037: convert to multiple mem resources

 Documentation/porting.txt                          |   11 ++-
 arch/arm/boards/a9m2410/a9m2410.c                  |   61 +++++++---
 arch/arm/boards/a9m2440/a9m2440.c                  |   48 ++++++--
 arch/arm/boards/at91sam9261ek/init.c               |   11 ++-
 arch/arm/boards/at91sam9263ek/init.c               |   11 ++-
 arch/arm/boards/chumby_falconwing/falconwing.c     |   37 +++++--
 arch/arm/boards/edb93xx/edb93xx.c                  |  120 ++++++++------------
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   37 +++++--
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   74 +++++++++---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |   37 +++++--
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c      |   28 +++--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |   53 ++++++----
 arch/arm/boards/freescale-mx35-3-stack/3stack.c    |   46 ++++++--
 arch/arm/boards/freescale-mx51-pdk/board.c         |   15 ++-
 arch/arm/boards/guf-cupid/board.c                  |   64 ++++++++--
 arch/arm/boards/guf-neso/board.c                   |   26 +++--
 arch/arm/boards/imx21ads/imx21ads.c                |   36 +++++--
 arch/arm/boards/imx27ads/imx27ads.c                |   26 +++--
 arch/arm/boards/mmccpu/init.c                      |   11 ++-
 arch/arm/boards/netx/netx.c                        |   37 +++++--
 arch/arm/boards/nhk8815/setup.c                    |   11 ++-
 arch/arm/boards/omap/board-beagle.c                |   46 ++++++--
 arch/arm/boards/omap/board-omap3evm.c              |   34 ++++--
 arch/arm/boards/omap/board-sdp343x.c               |   26 +++--
 arch/arm/boards/omap/devices-gpmc-nand.c           |   11 ++-
 arch/arm/boards/pcm037/pcm037.c                    |  110 +++++++++++--------
 arch/arm/boards/pcm038/pcm038.c                    |   52 ++++++---
 arch/arm/boards/pcm043/pcm043.c                    |   26 +++--
 arch/arm/boards/phycard-i.MX27/pca100.c            |   37 +++++--
 arch/arm/boards/pm9261/init.c                      |   22 +++-
 arch/arm/boards/pm9263/init.c                      |   11 ++-
 arch/arm/boards/scb9328/scb9328.c                  |   49 ++++++--
 arch/arm/lib/armlinux.c                            |   15 ++-
 arch/arm/mach-at91/at91sam9260_devices.c           |  114 +++++++++++++++----
 arch/arm/mach-at91/at91sam9261_devices.c           |   70 +++++++++---
 arch/arm/mach-at91/at91sam9263_devices.c           |   81 ++++++++++---
 arch/arm/mach-at91/at91sam9g45_devices.c           |   92 ++++++++++++----
 arch/arm/mach-imx/devices.c                        |    4 +-
 arch/arm/mach-imx/iim.c                            |   17 ++-
 arch/arm/mach-imx/imx25.c                          |   42 ++++++-
 arch/arm/mach-nomadik/8815.c                       |   37 +++++--
 arch/blackfin/boards/ipe337/ipe337.c               |   48 ++++++--
 arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c     |  102 ++++++++++++----
 arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c |   72 ++++++++----
 arch/ppc/boards/pcm030/pcm030.c                    |   61 ++++++++---
 arch/sandbox/board/hostfile.c                      |    4 +-
 arch/sandbox/mach-sandbox/include/mach/hostfile.h  |   10 ++-
 arch/sandbox/os/common.c                           |    4 +-
 arch/x86/boards/x86_generic/generic_pc.c           |   32 ++++--
 commands/mem.c                                     |   36 ++++---
 common/startup.c                                   |   13 ++-
 drivers/ata/bios.c                                 |    4 +-
 drivers/ata/disk_drive.c                           |   13 +-
 drivers/i2c/busses/i2c-imx.c                       |   22 ++--
 drivers/i2c/busses/i2c-omap.c                      |    4 +-
 drivers/mci/imx-esdhc.c                            |    2 +-
 drivers/mci/imx.c                                  |    3 +-
 drivers/mci/mci-core.c                             |    4 +-
 drivers/mci/s3c.c                                  |  106 ++++++++++--------
 drivers/mci/stm378x.c                              |   79 ++++++++-----
 drivers/mtd/nand/atmel_nand.c                      |    2 +-
 drivers/mtd/nand/nand_imx.c                        |    2 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |   13 ++-
 drivers/mtd/nand/nand_s3c2410.c                    |    4 +-
 drivers/net/cs8900.c                               |    2 +-
 drivers/net/fec_imx.c                              |    2 +-
 drivers/net/fec_mpc5200.c                          |    2 +-
 drivers/net/macb.c                                 |    2 +-
 drivers/net/smc91111.c                             |    2 +-
 drivers/net/smc911x.c                              |    9 +-
 drivers/nor/cfi_flash.c                            |   31 +++--
 drivers/serial/amba-pl011.c                        |   32 +++---
 drivers/serial/atmel.c                             |   29 +++---
 drivers/serial/serial_imx.c                        |    2 +-
 drivers/serial/serial_mpc5xxx.c                    |   20 ++--
 drivers/serial/serial_netx.c                       |   34 +++---
 drivers/serial/serial_ns16550.c                    |   12 +-
 drivers/serial/serial_pl010.c                      |   15 ++-
 drivers/serial/serial_s3c24x0.c                    |   36 +++---
 drivers/serial/stm-serial.c                        |   44 ++++----
 drivers/spi/imx_spi.c                              |    2 +-
 drivers/usb/gadget/fsl_udc.c                       |    2 +-
 drivers/usb/host/ehci-hcd.c                        |    9 +-
 drivers/video/fb.c                                 |    4 +-
 drivers/video/imx-ipu-fb.c                         |    2 +-
 drivers/video/imx.c                                |    2 +-
 fs/devfs.c                                         |    2 +-
 fs/fs.c                                            |   14 ++-
 include/driver.h                                   |   48 ++++++--
 include/linux/ioport.h                             |  115 +++++++++++++++++++
 lib/driver.c                                       |    7 +-
 91 files changed, 1946 insertions(+), 871 deletions(-)
 create mode 100644 include/linux/ioport.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
