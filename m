Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020H-Uh
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:52 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62G-0008Qz-25
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:40 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Is-To
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:35 +0100
Message-Id: <1292237617-7064-13-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
References: <1292237617-7064-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 12/14] MX28: add FEC support
To: barebox@lists.infradead.org

The i.MX28 comes with an extended ethernet controller (ENET/FEC) which
is backwards compatible to the FEC known from other i.MX CPUs. Add a few
adaptions to the existing driver to make it work with the MX28 FEC.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-stm/Kconfig |    1 +
 drivers/net/fec_imx.c     |   92 +++++++++++++++++++++++++++++++++++++-------
 drivers/net/fec_imx.h     |   17 +++++++-
 3 files changed, 93 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
index 15765fd..9a46138 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -21,6 +21,7 @@ config ARCH_IMX23
 config ARCH_IMX28
 	bool "i.MX28"
 	select CPU_ARM926T
+	select ARCH_HAS_FEC_IMX
 
 endchoice
 
diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 91ef929..e63e42e 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -29,10 +29,13 @@
 
 #include <asm/mmu.h>
 #include <asm/io.h>
+#include <mach/generic.h>
 #include <mach/imx-regs.h>
 #include <clock.h>
 #include <mach/clock.h>
-#include <mach/iim.h>
+#ifndef CONFIG_ARCH_STM
+# include <mach/iim.h>
+#endif
 #include <xfuncs.h>
 
 #include "fec_imx.h"
@@ -151,6 +154,39 @@ static int fec_tx_task_disable(struct fec_priv *fec)
 }
 
 /**
+ * Swap endianess to send data on an i.MX28 based platform
+ * @param buf Pointer to little endian data
+ * @param len Size in words (max. 1500 bytes)
+ * @return Pointer to the big endian data
+ */
+static void *imx28_fix_endianess_wr(uint32_t *buf, unsigned wlen)
+{
+	unsigned u;
+	static uint32_t data[376];	/* = 1500 bytes + 4 bytes */
+
+	for (u = 0; u < wlen; u++, buf++)
+		data[u] = __swab32(*buf);
+
+	return data;
+}
+
+/**
+ * Swap endianess to read data on an i.MX28 based platform
+ * @param buf Pointer to little endian data
+ * @param len Size in words (max. 1500 bytes)
+ *
+ * TODO: Check for the risk of destroying some other data behind the buffer
+ * if its size is not a multiple of 4.
+ */
+static void imx28_fix_endianess_rd(uint32_t *buf, unsigned wlen)
+{
+	unsigned u;
+
+	for (u = 0; u < wlen; u++, buf++)
+		*buf = __swab32(*buf);
+}
+
+/**
  * Initialize receive task's buffer descriptors
  * @param[in] fec all we know about the device yet
  * @param[in] count receive buffer count to be allocated
@@ -233,7 +269,11 @@ static void fec_rbd_clean(int last, struct buffer_descriptor __iomem *pRbd)
 
 static int fec_get_hwaddr(struct eth_device *dev, unsigned char *mac)
 {
+#ifdef CONFIG_ARCH_STM
+	return -1;
+#else
 	return imx_iim_get_mac(mac);
+#endif
 }
 
 static int fec_set_hwaddr(struct eth_device *dev, unsigned char *mac)
@@ -270,12 +310,13 @@ static int fec_init(struct eth_device *dev)
 		/*
 		 * Frame length=1518; 7-wire mode
 		 */
-		writel((1518 << 16), fec->regs + FEC_R_CNTRL);
+		writel(FEC_R_CNTRL_MAX_FL(1518), fec->regs + FEC_R_CNTRL);
 	} else {
 		/*
 		 * Frame length=1518; MII mode;
 		 */
-		writel((1518 << 16) | (1 << 2), fec->regs + FEC_R_CNTRL);
+		writel(FEC_R_CNTRL_MAX_FL(1518) | FEC_R_CNTRL_MII_MODE,
+			fec->regs + FEC_R_CNTRL);
 		/*
 		 * Set MII_SPEED = (1/(mii_speed * 2)) * System Clock
 		 * and do not drop the Preamble.
@@ -285,16 +326,26 @@ static int fec_init(struct eth_device *dev)
 	}
 
 	if (fec->xcv_type == RMII) {
-		/* disable the gasket and wait */
-		writel(0, fec->regs + FEC_MIIGSK_ENR);
-		while (readl(fec->regs + FEC_MIIGSK_ENR) & FEC_MIIGSK_ENR_READY)
-			udelay(1);
+		if (cpu_is_mx28()) {
+			/* just another way to enable RMII */
+			uint32_t reg = readl(fec->regs + FEC_R_CNTRL);
+			writel(reg | FEC_R_CNTRL_RMII_MODE
+				/* the linux driver add these bits, why not we? */
+				/* | FEC_R_CNTRL_FCE | */
+				/* FEC_R_CNTRL_NO_LGTH_CHECK */,
+				fec->regs + FEC_R_CNTRL);
+		} else {
+			/* disable the gasket and wait */
+			writel(0, fec->regs + FEC_MIIGSK_ENR);
+			while (readl(fec->regs + FEC_MIIGSK_ENR) & FEC_MIIGSK_ENR_READY)
+				udelay(1);
 
-		/* configure the gasket for RMII, 50 MHz, no loopback, no echo */
-		writel(FEC_MIIGSK_CFGR_IF_MODE_RMII, fec->regs + FEC_MIIGSK_CFGR);
+			/* configure the gasket for RMII, 50 MHz, no loopback, no echo */
+			writel(FEC_MIIGSK_CFGR_IF_MODE_RMII, fec->regs + FEC_MIIGSK_CFGR);
 
-		/* re-enable the gasket */
-		writel(FEC_MIIGSK_ENR_EN, fec->regs + FEC_MIIGSK_ENR);
+			/* re-enable the gasket */
+			writel(FEC_MIIGSK_ENR_EN, fec->regs + FEC_MIIGSK_ENR);
+		}
 	}
 
 	/*
@@ -419,6 +470,9 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	 * Note: We are always using the first buffer for transmission,
 	 * the second will be empty and only used to stop the DMA engine
 	 */
+	if (cpu_is_mx28())
+		eth_data = imx28_fix_endianess_wr(eth_data, (data_length + 3) >> 2);
+
 	writew(data_length, &fec->tbd_base[fec->tbd_index].data_length);
 
 	writel((uint32_t)(eth_data), &fec->tbd_base[fec->tbd_index].data_pointer);
@@ -483,10 +537,12 @@ static int fec_recv(struct eth_device *dev)
 		printf("some error: 0x%08x\n", ievent);
 		return 0;
 	}
-	if (ievent & FEC_IEVENT_HBERR) {
-		/* Heartbeat error */
-		writel(readl(fec->regs + FEC_X_CNTRL) | 0x1,
-				fec->regs + FEC_X_CNTRL);
+	if (!cpu_is_mx28()) {
+		if (ievent & FEC_IEVENT_HBERR) {
+			/* Heartbeat error */
+			writel(readl(fec->regs + FEC_X_CNTRL) | 0x1,
+					fec->regs + FEC_X_CNTRL);
+		}
 	}
 	if (ievent & FEC_IEVENT_GRA) {
 		/* Graceful stop complete */
@@ -506,6 +562,12 @@ static int fec_recv(struct eth_device *dev)
 	if (!(bd_status & FEC_RBD_EMPTY)) {
 		if ((bd_status & FEC_RBD_LAST) && !(bd_status & FEC_RBD_ERR) &&
 			((readw(&rbd->data_length) - 4) > 14)) {
+
+			if (cpu_is_mx28())
+				imx28_fix_endianess_rd(
+					(void *)readl(&rbd->data_pointer),
+					(readw(&rbd->data_length) + 3) >> 2);
+
 			/*
 			 * Get buffer address and size
 			 */
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index f7fbdc9..e07071a 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -63,8 +63,19 @@
 #define FEC_MIIGSK_ENR_READY		(1 << 2)
 #define FEC_MIIGSK_ENR_EN		(1 << 1)
 
-
-#define FEC_IEVENT_HBERR                0x80000000
+#define FEC_R_CNTRL_GRS			(1 << 31)
+#define FEC_R_CNTRL_NO_LGTH_CHECK	(1 << 30)
+#ifdef CONFIG_ARCH_IMX28
+# define FEC_R_CNTRL_MAX_FL(x)		(((x) & 0x3fff) << 16)
+#else
+# define FEC_R_CNTRL_MAX_FL(x)		(((x) & 0x7ff) << 16)
+#endif
+#define FEC_R_CNTRL_RMII_10T		(1 << 9) /* i.MX28 specific */
+#define FEC_R_CNTRL_RMII_MODE		(1 << 8) /* i.MX28 specific */
+#define FEC_R_CNTRL_FCE			(1 << 5)
+#define FEC_R_CNTRL_MII_MODE		(1 << 2)
+
+#define FEC_IEVENT_HBERR                0x80000000 /* Note: Not on i.MX28 */
 #define FEC_IEVENT_BABR                 0x40000000
 #define FEC_IEVENT_BABT                 0x20000000
 #define FEC_IEVENT_GRA                  0x10000000
@@ -74,7 +85,7 @@
 #define FEC_IEVENT_COL_RETRY_LIM        0x00100000
 #define FEC_IEVENT_XFIFO_UN             0x00080000
 
-#define FEC_IMASK_HBERR                 0x80000000
+#define FEC_IMASK_HBERR                 0x80000000 /* Note: Not on i.MX28 */
 #define FEC_IMASK_BABR                  0x40000000
 #define FEC_IMASK_BABT                  0x20000000
 #define FEC_IMASK_GRA                   0x10000000
@@ -120,6 +131,8 @@
  * @brief Receive & Transmit Buffer Descriptor definitions
  *
  * Note: The first BD must be aligned (see DB_ALIGNMENT)
+ *
+ * BTW: Don't trust the i.MX27 and i.MX28 data sheet
  */
 struct buffer_descriptor {
 	uint16_t data_length;		/**< payload's length in bytes */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
