Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmpez-0005nf-SI
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 16:11:39 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id E4D54FFA5F9
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 18:12:25 +0200 (CEST)
Date: Fri, 29 Jul 2011 17:53:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PULL] final switch to resoruce
To: barebox@lists.infradead.org

Hi,

	the follwing patch series finish to switch all boards and drivers to
	resource

The following changes since commit 5ba0502901dacc9a1971378d6af8318a1d28051c:

  arm: add support for the i.MX53 loco board (2011-07-29 12:10:38 +0200)

are available in the git repository at:
  git://uboot.jcrosoft.org/barebox.git resource

Jean-Christophe PLAGNIOL-VILLARD (23):
      eukrea_cpuimx35: fix warning: 'usbotg_dev' defined but not used
      generic_memmap_ro/rw: switch to resource
      devinfo: switch to resource
      dm9000: replace DM9000_WIDTH_8/16/32 by IORESOURCE_MEM_8/16/32BIT
      dm9000: introduce add_dm9000_device to register dm9000 device
      resource: introduce add_usb_ehci_device to register echi device
      omap: switch to add_generic_device
      fb: switch to "struct resource"
      cfi_flash: convert missing map_base
      fsl_udc: switch to resource
      pcm030: switch to resources
      ipe337: switch to resources
      s3c/boards: switch to resources
      ns16550: if not specific f_caps defined use default stdin, stdout, stderr
      edb93xx: switch to resource
      netx: switch to resource
      fs: switch to resource
      ata: switch to resource
      sandbox: switch to resource
      imx: switch remaing board to resource
      mci-core: switch to resource
      nios2: remove dead code in generic board
      driver: remove map_base

 arch/arm/boards/a9m2410/a9m2410.c                 |   40 +++--------
 arch/arm/boards/a9m2440/a9m2440.c                 |   40 +++--------
 arch/arm/boards/at91sam9261ek/init.c              |   25 +------
 arch/arm/boards/chumby_falconwing/falconwing.c    |   47 +++----------
 arch/arm/boards/edb93xx/edb93xx.c                 |   25 ++-----
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   18 +----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   22 +-----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   21 ++----
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c     |   11 +--
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    9 +--
 arch/arm/boards/guf-neso/board.c                  |   10 +---
 arch/arm/boards/karo-tx28/tx28-stk5.c             |   39 +++--------
 arch/arm/boards/mini2440/mini2440.c               |   60 +++-------------
 arch/arm/boards/netx/netx.c                       |   26 +------
 arch/arm/boards/omap/board-beagle.c               |   33 ++-------
 arch/arm/boards/omap/board-omap3evm.c             |    1 -
 arch/arm/boards/omap/board-sdp343x.c              |    2 -
 arch/arm/boards/panda/board.c                     |   29 +++-----
 arch/arm/boards/pcm037/pcm037.c                   |   18 +----
 arch/arm/boards/pcm038/pcm038.c                   |    9 +--
 arch/arm/boards/pcm049/board.c                    |   21 +-----
 arch/arm/boards/phycard-i.MX27/pca100.c           |   18 +----
 arch/arm/boards/pm9261/init.c                     |   26 +------
 arch/arm/boards/scb9328/scb9328.c                 |   25 +------
 arch/arm/mach-omap/devices-gpmc-nand.c            |   13 +---
 arch/blackfin/boards/ipe337/ipe337.c              |   20 +----
 arch/nios2/boards/generic/generic.c               |    8 --
 arch/ppc/boards/pcm030/pcm030.c                   |   30 ++------
 arch/sandbox/board/hostfile.c                     |   14 +---
 arch/sandbox/mach-sandbox/include/mach/hostfile.h |    2 +-
 arch/sandbox/os/common.c                          |    4 +-
 arch/x86/boards/x86_generic/generic_pc.c          |    1 -
 drivers/ata/disk_drive.c                          |    2 +-
 drivers/base/driver.c                             |   40 ++++-------
 drivers/base/resource.c                           |   78 +++++++++++++++++++-
 drivers/mci/mci-core.c                            |    2 +-
 drivers/net/dm9000.c                              |   15 ++--
 drivers/nor/cfi_flash.c                           |    2 +-
 drivers/serial/serial_ns16550.c                   |    5 +-
 drivers/usb/gadget/fsl_udc.c                      |    2 +-
 drivers/usb/host/ehci-hcd.c                       |   22 +++---
 drivers/video/fb.c                                |   16 +++--
 drivers/video/s3c.c                               |   16 +++--
 drivers/video/stm.c                               |    2 +-
 fs/devfs.c                                        |    4 +-
 fs/fs.c                                           |    8 +-
 include/dm9000.h                                  |    5 --
 include/driver.h                                  |   34 ++++++++--
 48 files changed, 300 insertions(+), 620 deletions(-)
 create mode 100644 arch/sandbox/include/asm/io.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
