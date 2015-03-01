Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YS3m3-0007kh-Js
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 13:19:19 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 144C326C2005
 for <barebox@lists.infradead.org>; Sun,  1 Mar 2015 14:17:27 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  1 Mar 2015 14:17:02 +0100
Message-Id: <1425215842-6982-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
References: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 04/24] ARM: move DMA alloc functions to dma.h
To: barebox@lists.infradead.org

This better separates the DMA from the MMU functionality.

Also move all drivers that only depends on asm/mmu.h for the alloc
functions over to the common header.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/include/asm/dma.h            | 20 +++++++++++++++++++-
 arch/arm/include/asm/mmu.h            | 19 -------------------
 drivers/ata/ahci.c                    |  1 +
 drivers/dma/apbh_dma.c                |  2 +-
 drivers/mci/dw_mmc.c                  |  1 +
 drivers/mtd/nand/nand_mxs.c           |  2 +-
 drivers/net/altera_tse.c              |  1 +
 drivers/net/arc_emac.c                |  1 +
 drivers/net/at91_ether.c              |  1 +
 drivers/net/designware.c              |  1 +
 drivers/net/fec_imx.c                 |  1 +
 drivers/net/macb.c                    |  1 +
 drivers/net/mvneta.c                  |  1 +
 drivers/net/orion-gbe.c               |  1 +
 drivers/net/rtl8139.c                 |  1 +
 drivers/net/rtl8169.c                 |  1 +
 drivers/net/xgmac.c                   |  1 +
 drivers/spi/mxs_spi.c                 |  1 -
 drivers/usb/gadget/fsl_udc.c          |  3 +++
 drivers/usb/host/ehci-hcd.c           |  1 +
 drivers/usb/host/ohci-hcd.c           |  1 +
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
 31 files changed, 45 insertions(+), 31 deletions(-)

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index cb9cd1b..47e6a91 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -5,4 +5,22 @@
  *
  */
 
-#include <asm/mmu.h>
+#include <common.h>
+
+#define dma_alloc dma_alloc
+static inline void *dma_alloc(size_t size)
+{
+	return xmemalign(64, ALIGN(size, 64));
+}
+
+#ifndef CONFIG_MMU
+static inline void *dma_alloc_coherent(size_t size)
+{
+	return xmemalign(4096, size);
+}
+
+static inline void dma_free_coherent(void *mem, size_t size)
+{
+	free(mem);
+}
+#endif
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 3d87588..01c20bd 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -26,16 +26,7 @@ static inline void setup_dma_coherent(unsigned long offset)
 {
 }
 
-#define dma_alloc dma_alloc
-static inline void *dma_alloc(size_t size)
-{
-	return xmemalign(64, ALIGN(size, 64));
-}
-
 #ifdef CONFIG_MMU
-void *dma_alloc_coherent(size_t size);
-void dma_free_coherent(void *mem, size_t size);
-
 void dma_clean_range(unsigned long, unsigned long);
 void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
@@ -45,16 +36,6 @@ uint32_t mmu_get_pte_cached_flags(void);
 uint32_t mmu_get_pte_uncached_flags(void);
 
 #else
-static inline void *dma_alloc_coherent(size_t size)
-{
-	return xmemalign(4096, size);
-}
-
-static inline void dma_free_coherent(void *mem, size_t size)
-{
-	free(mem);
-}
-
 static inline void dma_clean_range(unsigned long s, unsigned long e)
 {
 }
diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 346ab98..1894e47 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -21,6 +21,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <errno.h>
 #include <io.h>
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index cd218f4..9069ada 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -20,13 +20,13 @@
 #include <linux/list.h>
 #include <linux/err.h>
 #include <common.h>
+#include <dma.h>
 #include <driver.h>
 #include <malloc.h>
 #include <errno.h>
 #include <init.h>
 #include <io.h>
 
-#include <asm/mmu.h>
 
 #define HW_APBHX_CTRL0				0x000
 #define BM_APBH_CTRL0_APB_BURST8_EN		(1 << 29)
diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index 365b60d..3992815 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -18,6 +18,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <driver.h>
 #include <malloc.h>
 #include <clock.h>
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 4e38e09..d9a50a5 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -26,6 +26,7 @@
 #include <linux/err.h>
 #include <of_mtd.h>
 #include <common.h>
+#include <dma.h>
 #include <malloc.h>
 #include <errno.h>
 #include <driver.h>
@@ -33,7 +34,6 @@
 #include <io.h>
 #include <dma/apbh-dma.h>
 #include <stmp-device.h>
-#include <asm/mmu.h>
 #include <mach/generic.h>
 
 #define	MX28_BLOCK_SFTRST				(1 << 31)
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index ecbb9f8..3beeb26 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -21,6 +21,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <net.h>
 #include <init.h>
 #include <clock.h>
diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 1770506..e050199 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -19,6 +19,7 @@
 #include <asm/mmu.h>
 #include <clock.h>
 #include <common.h>
+#include <dma.h>
 #include <net.h>
 #include <io.h>
 #include <init.h>
diff --git a/drivers/net/at91_ether.c b/drivers/net/at91_ether.c
index e09ea83..2ef24cc 100644
--- a/drivers/net/at91_ether.c
+++ b/drivers/net/at91_ether.c
@@ -20,6 +20,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <net.h>
 #include <clock.h>
 #include <malloc.h>
diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 49ed0b1..2bc4471 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -22,6 +22,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <io.h>
 #include <net.h>
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c1fa151..5761256 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <malloc.h>
 #include <net.h>
 #include <init.h>
diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 8e67aec..b941c27 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -38,6 +38,7 @@
 
 #include <net.h>
 #include <clock.h>
+#include <dma.h>
 #include <malloc.h>
 #include <xfuncs.h>
 #include <init.h>
diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
index 8042e90..0d6a80f 100644
--- a/drivers/net/mvneta.c
+++ b/drivers/net/mvneta.c
@@ -24,6 +24,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <io.h>
 #include <net.h>
diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
index 3fbc1df..ad1fc66 100644
--- a/drivers/net/orion-gbe.c
+++ b/drivers/net/orion-gbe.c
@@ -27,6 +27,7 @@
  * MA 02110-1301 USA
  */
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <io.h>
 #include <net.h>
diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index b24a083..d57c706 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <dma.h>
 #include <net.h>
 #include <malloc.h>
 #include <init.h>
diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index f8a6500..638e049 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -16,6 +16,7 @@
 
 #include <asm/mmu.h>
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <net.h>
 #include <malloc.h>
diff --git a/drivers/net/xgmac.c b/drivers/net/xgmac.c
index cc22d0e..c1e4da8 100644
--- a/drivers/net/xgmac.c
+++ b/drivers/net/xgmac.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <net.h>
 #include <clock.h>
 #include <malloc.h>
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index 8932103..9fe2fd4 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -23,7 +23,6 @@
 #include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
-#include <asm/mmu.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
 #include <mach/ssp.h>
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index d067f03..f9e58bb 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <dma.h>
 #include <errno.h>
 #include <dma.h>
 #include <init.h>
@@ -10,6 +11,8 @@
 #include <asm/byteorder.h>
 #include <linux/err.h>
 
+#include <asm/mmu.h>
+
 /* ### define USB registers here
  */
 #define USB_MAX_CTRL_PAYLOAD		64
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7b91327..7f59774 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -18,6 +18,7 @@
  */
 /*#define DEBUG */
 #include <common.h>
+#include <dma.h>
 #include <asm/byteorder.h>
 #include <usb/usb.h>
 #include <io.h>
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 622f5c3..0cdcbb5 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -41,6 +41,7 @@
  *     to activate workaround for bug #41 or this driver will NOT work!
  */
 #include <common.h>
+#include <dma.h>
 #include <clock.h>
 #include <malloc.h>
 #include <usb/usb.h>
diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index 9253419..2d2f59e 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -12,9 +12,9 @@
  * warranty of any kind, whether express or implied.
  */
 //#define DEBUG
-#include <asm/mmu.h>
 #include <clock.h>
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <io.h>
 #include <linux/err.h>
diff --git a/drivers/usb/host/xhci-hub.c b/drivers/usb/host/xhci-hub.c
index bf95257..5ae16f5 100644
--- a/drivers/usb/host/xhci-hub.c
+++ b/drivers/usb/host/xhci-hub.c
@@ -14,7 +14,6 @@
  * warranty of any kind, whether express or implied.
  */
 //#define DEBUG
-#include <asm/mmu.h>
 #include <clock.h>
 #include <common.h>
 #include <io.h>
diff --git a/drivers/video/atmel_hlcdfb.c b/drivers/video/atmel_hlcdfb.c
index 26db758..f7aab7f 100644
--- a/drivers/video/atmel_hlcdfb.c
+++ b/drivers/video/atmel_hlcdfb.c
@@ -27,7 +27,6 @@
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <errno.h>
-#include <asm/mmu.h>
 
 #include "atmel_lcdfb.h"
 
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index bb302bd..20204c1 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -25,7 +25,6 @@
 #include <mach/io.h>
 #include <mach/cpu.h>
 #include <errno.h>
-#include <asm/mmu.h>
 #include <linux/clk.h>
 
 #include "atmel_lcdfb.h"
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 420ccbe..ef2e271 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -19,11 +19,11 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <io.h>
 #include <linux/err.h>
 #include <linux/clk.h>
 #include <malloc.h>
-#include <asm/mmu.h>
 
 #include "atmel_lcdfb.h"
 
diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index a69df50..610ac87 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -18,6 +18,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <init.h>
 #include <io.h>
 #include <mach/imx35-regs.h>
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index f13cf01..5c85f86 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -19,7 +19,6 @@
 #include <clock.h>
 #include <driver.h>
 #include <init.h>
-#include <asm/mmu.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
 #include <mach/imx53-regs.h>
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 14a099e..8ec55e4 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -12,6 +12,7 @@
 #define pr_fmt(fmt) "IPU: " fmt
 
 #include <common.h>
+#include <dma.h>
 #include <fb.h>
 #include <io.h>
 #include <driver.h>
@@ -21,7 +22,6 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm-generic/div64.h>
-#include <asm/mmu.h>
 
 #include "imx-ipu-v3.h"
 #include "ipuv3-plane.h"
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index bd66c92..2148bf9 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -19,6 +19,7 @@
  */
 
 #include <driver.h>
+#include <dma.h>
 #include <fb.h>
 #include <errno.h>
 #include <xfuncs.h>
diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index d6d11ae..a92a5ee 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -24,6 +24,7 @@
  */
 
 #include <common.h>
+#include <dma.h>
 #include <driver.h>
 #include <errno.h>
 #include <fb.h>
@@ -37,7 +38,6 @@
 #include <mach/pxafb.h>
 
 #include <asm/io.h>
-#include <asm/mmu.h>
 #include <asm-generic/div64.h>
 
 /* PXA LCD DMA descriptor */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
