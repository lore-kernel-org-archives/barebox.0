Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS3lD-00077b-IH
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 13:18:22 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id CF6C426C2001
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 14:17:25 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 14:16:58 +0100
Message-Id: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 00/24] Phasing out direct usage of asm/mmu.h on ARM
To: barebox@lists.infradead.org

This series introduces to Barebox the streaming DMA ops and implements
them for the ARM architecture. This will make it a lot easier to
get common cache maintenance operations for all architectures and in
turn allows for wider reuse of driver across architectures.

I've tested this on a Tegra124 which is known to fall over in all sorts
of funny ways if cache maintenance is broken. No odd behavior spotted.

The series is bisect-clean and I've compile tested it on some defconfigs,
but please go wild and TEST. I'll take any complaints.

Changes since RFT:
- rebased to current master
- now compile tested on all ARM defconfigs
- fixed a few compile errors by reordering stuff in patches
- A few more words in commit logs

Regards,
Lucas


Lucas Stach (24):
  usb: gadget: include common.h in header
  ARM: move virt<->phys translation to io.h
  dma: add streaming DMA ops
  ARM: move DMA alloc functions to dma.h
  ARM: implement streaming DMA ops
  AHCI: convert to streaming DMA ops
  MCI: dw-mmc: convert to streaming DMA ops
  MCI: imx: convert to streaming DMA ops
  MCI: tegra-sdmmc: convert to streaming DMA ops
  net: arc-emac: convert to streaming DMA ops
  net: cpsw: convert to streaming DMA ops
  net: at91_ether: convert to streaming DMA ops
  net: davinci_emac: convert to streaming DMA ops
  net: designware: convert to streaming DMA ops
  net: fec: convert to streaming DMA ops
  net: macb: convert to streaming DMA ops
  net: orion-gbe: convert to streaming DMA ops
  net: rtl8169: convert to streaming DMA ops
  net: xgmac: convert to streaming DMA ops
  usb: gadget: fsl_udc: convert to streaming DMA ops
  usb: host: ehci: convert to streaming DMA ops
  usb: host: ohci: convert to streaming DMA ops
  ARM: bcm2835: mbox: convert to streaming DMA ops
  ARM: MMU: unexport cache maintenance functions

 arch/arm/cpu/mmu.c                    | 49 +++++++++++++++++++++++------------
 arch/arm/include/asm/dma.h            | 30 ++++++++++++++++++++-
 arch/arm/include/asm/io.h             | 15 +++++++++++
 arch/arm/include/asm/mmu.h            | 45 --------------------------------
 arch/arm/mach-bcm2835/mbox.c          |  8 +++---
 drivers/ata/ahci.c                    | 14 +++++++---
 drivers/dma/apbh_dma.c                |  2 +-
 drivers/mci/Kconfig                   |  2 +-
 drivers/mci/dw_mmc.c                  | 25 +++++++++---------
 drivers/mci/imx-esdhc.c               | 28 ++++++++++++--------
 drivers/mci/tegra-sdmmc.c             | 26 ++++++++++---------
 drivers/mtd/nand/nand_mxs.c           |  2 +-
 drivers/net/Kconfig                   |  1 +
 drivers/net/altera_tse.c              |  1 +
 drivers/net/arc_emac.c                | 17 +++++++-----
 drivers/net/at91_ether.c              | 11 ++++++--
 drivers/net/cpsw.c                    | 11 +++++---
 drivers/net/davinci_emac.c            |  9 ++++---
 drivers/net/designware.c              | 20 ++++++++------
 drivers/net/fec_imx.c                 | 14 +++++++---
 drivers/net/macb.c                    |  9 +++++--
 drivers/net/mvneta.c                  |  1 +
 drivers/net/orion-gbe.c               | 14 ++++++----
 drivers/net/rtl8139.c                 |  1 +
 drivers/net/rtl8169.c                 | 31 ++++++++++------------
 drivers/net/xgmac.c                   | 12 ++++++---
 drivers/spi/mxs_spi.c                 |  1 -
 drivers/usb/gadget/fsl_udc.c          | 11 +++++---
 drivers/usb/host/ehci-hcd.c           |  9 ++++---
 drivers/usb/host/ohci-hcd.c           | 11 +++++---
 drivers/usb/host/xhci-hcd.c           |  2 +-
 drivers/usb/host/xhci-hub.c           |  1 -
 drivers/video/atmel_hlcdfb.c          |  1 -
 drivers/video/atmel_lcdfb.c           |  1 -
 drivers/video/atmel_lcdfb_core.c      |  2 +-
 drivers/video/imx-ipu-fb.c            |  1 +
 drivers/video/imx-ipu-v3/ipu-common.c |  1 -
 drivers/video/imx-ipu-v3/ipufb.c      |  2 +-
 drivers/video/omap.c                  |  1 +
 drivers/video/pxa.c                   |  2 +-
 include/dma-dir.h                     |  6 +++++
 include/dma.h                         | 11 ++++++++
 include/usb/gadget.h                  |  1 +
 43 files changed, 281 insertions(+), 181 deletions(-)
 create mode 100644 include/dma-dir.h

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
