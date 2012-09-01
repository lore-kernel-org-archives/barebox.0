Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7jRN-00069B-RQ
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 08:52:38 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9A59FDC6FBB
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 10:57:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 10:52:41 +0200
Message-Id: <1346489564-16176-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901084728.GH18708@game.jcrosoft.org>
 <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] smc911x: add support to pass the shift via platform data
To: barebox@lists.infradead.org

switch ipe337: to it at the same time to do not brake it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/blackfin/boards/ipe337/ipe337.c |    7 +++-
 drivers/net/Kconfig                  |    6 ----
 drivers/net/smc911x.c                |   60 +++++++++++++++++++++++++++++----
 drivers/net/smc911x.h                |   61 +++++++++++++++++-----------------
 include/smc911x.h                    |   18 ++++++++++
 5 files changed, 109 insertions(+), 43 deletions(-)
 create mode 100644 include/smc911x.h

diff --git a/arch/blackfin/boards/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
index b3f07bb..9c1de2c 100644
--- a/arch/blackfin/boards/ipe337/ipe337.c
+++ b/arch/blackfin/boards/ipe337/ipe337.c
@@ -4,6 +4,11 @@
 #include <asm/cpu/cdefBF561.h>
 #include <partition.h>
 #include <fs.h>
+#include <smc911x.h>
+
+struct smc911x_plat smcplat = {
+	.shift = 1,
+};
 
 static int ipe337_devices_init(void) {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x20000000, 32 * 1024 * 1024, 0);
@@ -17,7 +22,7 @@ static int ipe337_devices_init(void) {
 	*pFIO0_FLAG_S = (1<<12);
 
 	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x24000000, 4096,
-			   IORESOURCE_MEM, NULL);
+			   IORESOURCE_MEM, &smcplat);
 
 	devfs_add_partition("nor0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "self0");
 	devfs_add_partition("nor0", 0x20000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 749ea6a..340839d 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -36,12 +36,6 @@ config DRIVER_NET_SMC911X
 	  This option enables support for the SMSC LAN9[12]1[567]
 	  ethernet chip.
 
-config DRIVER_NET_SMC911X_ADDRESS_SHIFT
-	int
-	depends on DRIVER_NET_SMC911X
-	default 1 if MACH_IPE337
-	default 0
-
 config DRIVER_NET_SMC91111
 	bool "smc91111 ethernet driver"
 	select MIIDEV
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 917f994..75a332e 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -37,9 +37,8 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <smc911x.h>
 
-
-#define AS CONFIG_DRIVER_NET_SMC911X_ADDRESS_SHIFT
 #include "smc911x.h"
 
 struct smc911x_priv {
@@ -47,6 +46,8 @@ struct smc911x_priv {
 	struct mii_device miidev;
 	void __iomem *base;
 
+	int shift;
+
 	u32 (*reg_read)(struct smc911x_priv *priv, u32 reg);
 	void (*reg_write)(struct smc911x_priv *priv, u32 reg, u32 val);
 };
@@ -71,6 +72,8 @@ static const struct chip_id chip_ids[] =  {
 
 #define DRIVERNAME "smc911x"
 
+#define __smc_shift(priv, reg) ((reg) << ((priv)->shift))
+
 static inline u32 smc911x_reg_read(struct smc911x_priv *priv, u32 reg)
 {
 	return priv->reg_read(priv, reg);
@@ -87,6 +90,22 @@ static inline u32 __smc911x_reg_readl(struct smc911x_priv *priv, u32 reg)
 	return readl(priv->base + reg);
 }
 
+static inline u32
+__smc911x_reg_readw_shift(struct smc911x_priv *priv, u32 reg)
+{
+	return (readw(priv->base +
+			__smc_shift(priv, reg)) & 0xFFFF) |
+		((readw(priv->base +
+		__smc_shift(priv, reg + 2)) & 0xFFFF) << 16);
+
+}
+
+static inline u32
+__smc911x_reg_readl_shift(struct smc911x_priv *priv, u32 reg)
+{
+	return readl(priv->base + __smc_shift(priv, reg));
+}
+
 static inline void smc911x_reg_write(struct smc911x_priv *priv, u32 reg,
 					u32 val)
 {
@@ -106,6 +125,21 @@ static inline void __smc911x_reg_writel(struct smc911x_priv *priv, u32 reg,
 	writel(val, priv->base + reg);
 }
 
+static inline void
+__smc911x_reg_writew_shift(struct smc911x_priv *priv, u32 reg, u32 val)
+{
+	writew(val & 0xFFFF,
+		priv->base + __smc_shift(priv, reg));
+	writew((val >> 16) & 0xFFFF,
+		priv->base + __smc_shift(priv, reg + 2));
+}
+
+static inline void
+__smc911x_reg_writel_shift(struct smc911x_priv *priv, u32 reg, u32 val)
+{
+	writel(val, priv->base + __smc_shift(priv, reg));
+}
+
 static int smc911x_mac_wait_busy(struct smc911x_priv *priv)
 {
 	uint64_t start = get_time_ns();
@@ -404,6 +438,7 @@ static int smc911x_probe(struct device_d *dev)
 	struct smc911x_priv *priv;
 	uint32_t val;
 	int i, is_32bit;
+	struct smc911x_plat *pdata = dev->platform_data;
 
 	priv = xzalloc(sizeof(*priv));
 	is_32bit = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
@@ -413,12 +448,25 @@ static int smc911x_probe(struct device_d *dev)
 		is_32bit = is_32bit == IORESOURCE_MEM_32BIT;
 	priv->base = dev_request_mem_region(dev, 0);
 
+	if (pdata && pdata->shift)
+		priv->shift = pdata->shift;
+
 	if (is_32bit) {
-		priv->reg_read = __smc911x_reg_readl;
-		priv->reg_write = __smc911x_reg_writel;
+		if (pdata->shift) {
+			priv->reg_read = __smc911x_reg_readl_shift;
+			priv->reg_write = __smc911x_reg_writel_shift;
+		} else {
+			priv->reg_read = __smc911x_reg_readl;
+			priv->reg_write = __smc911x_reg_writel;
+		}
 	} else {
-		priv->reg_read = __smc911x_reg_readw;
-		priv->reg_write = __smc911x_reg_writew;
+		if (pdata->shift) {
+			priv->reg_read = __smc911x_reg_readw_shift;
+			priv->reg_write = __smc911x_reg_writew_shift;
+		} else {
+			priv->reg_read = __smc911x_reg_readw;
+			priv->reg_write = __smc911x_reg_writew;
+		}
 	}
 
 	val = smc911x_reg_read(priv, BYTE_TEST);
diff --git a/drivers/net/smc911x.h b/drivers/net/smc911x.h
index 68f6590..baf3598 100644
--- a/drivers/net/smc911x.h
+++ b/drivers/net/smc911x.h
@@ -25,9 +25,10 @@
 /* Below are the register offsets and bit definitions
  * of the Lan911x memory space
  */
-#define RX_DATA_FIFO		 (0x00 << AS)
 
-#define TX_DATA_FIFO		 (0x20 << AS)
+#define RX_DATA_FIFO		 0x00
+
+#define TX_DATA_FIFO		 0x20
 #define	TX_CMD_A_INT_ON_COMP			0x80000000
 #define	TX_CMD_A_INT_BUF_END_ALGN		0x03000000
 #define	TX_CMD_A_INT_4_BYTE_ALGN		0x00000000
@@ -42,7 +43,7 @@
 #define	TX_CMD_B_DISABLE_PADDING		0x00001000
 #define	TX_CMD_B_PKT_BYTE_LENGTH		0x000007FF
 
-#define RX_STATUS_FIFO		(0x40 << AS)
+#define RX_STATUS_FIFO		0x40
 #define	RX_STS_PKT_LEN				0x3FFF0000
 #define	RX_STS_ES				0x00008000
 #define	RX_STS_BCST				0x00002000
@@ -56,8 +57,8 @@
 #define	RX_STS_MII_ERR				0x00000008
 #define	RX_STS_DRIBBLING			0x00000004
 #define	RX_STS_CRC_ERR				0x00000002
-#define RX_STATUS_FIFO_PEEK 	(0x44 << AS)
-#define TX_STATUS_FIFO		(0x48 << AS)
+#define RX_STATUS_FIFO_PEEK 	0x44
+#define TX_STATUS_FIFO		0x48
 #define	TX_STS_TAG				0xFFFF0000
 #define	TX_STS_ES				0x00008000
 #define	TX_STS_LOC				0x00000800
@@ -68,12 +69,12 @@
 #define	TX_STS_MANY_DEFER			0x00000004
 #define	TX_STS_UNDERRUN				0x00000002
 #define	TX_STS_DEFERRED				0x00000001
-#define TX_STATUS_FIFO_PEEK	(0x4C << AS)
-#define ID_REV			(0x50 << AS)
+#define TX_STATUS_FIFO_PEEK	0x4C
+#define ID_REV			0x50
 #define	ID_REV_CHIP_ID				0xFFFF0000  /* RO */
 #define	ID_REV_REV_ID				0x0000FFFF  /* RO */
 
-#define INT_CFG			(0x54 << AS)
+#define INT_CFG			0x54
 #define	INT_CFG_INT_DEAS			0xFF000000  /* R/W */
 #define	INT_CFG_INT_DEAS_CLR			0x00004000
 #define	INT_CFG_INT_DEAS_STS			0x00002000
@@ -82,7 +83,7 @@
 #define	INT_CFG_IRQ_POL				0x00000010  /* R/W Not Affected by SW Reset */
 #define	INT_CFG_IRQ_TYPE			0x00000001  /* R/W Not Affected by SW Reset */
 
-#define INT_STS			(0x58 << AS)
+#define INT_STS			0x58
 #define	INT_STS_SW_INT				0x80000000  /* R/WC */
 #define	INT_STS_TXSTOP_INT			0x02000000  /* R/WC */
 #define	INT_STS_RXSTOP_INT			0x01000000  /* R/WC */
@@ -111,7 +112,7 @@
 #define	INT_STS_GPIO2_INT			0x00000004  /* R/WC */
 #define	INT_STS_GPIO1_INT			0x00000002  /* R/WC */
 #define	INT_STS_GPIO0_INT			0x00000001  /* R/WC */
-#define INT_EN			(0x5C << AS)
+#define INT_EN			0x5C
 #define	INT_EN_SW_INT_EN			0x80000000  /* R/W */
 #define	INT_EN_TXSTOP_INT_EN			0x02000000  /* R/W */
 #define	INT_EN_RXSTOP_INT_EN			0x01000000  /* R/W */
@@ -141,14 +142,14 @@
 #define	INT_EN_GPIO1_INT			0x00000002  /* R/W */
 #define	INT_EN_GPIO0_INT			0x00000001  /* R/W */
 
-#define BYTE_TEST		(0x64 << AS)
-#define FIFO_INT		(0x68 << AS)
+#define BYTE_TEST		0x64
+#define FIFO_INT		0x68
 #define	FIFO_INT_TX_AVAIL_LEVEL			0xFF000000  /* R/W */
 #define	FIFO_INT_TX_STS_LEVEL			0x00FF0000  /* R/W */
 #define	FIFO_INT_RX_AVAIL_LEVEL			0x0000FF00  /* R/W */
 #define	FIFO_INT_RX_STS_LEVEL			0x000000FF  /* R/W */
 
-#define RX_CFG			(0x6C << AS)
+#define RX_CFG			0x6C
 #define	RX_CFG_RX_END_ALGN			0xC0000000  /* R/W */
 #define		RX_CFG_RX_END_ALGN4		0x00000000  /* R/W */
 #define		RX_CFG_RX_END_ALGN16		0x40000000  /* R/W */
@@ -158,7 +159,7 @@
 #define	RX_CFG_RXDOFF				0x00001F00  /* R/W */
 //#define	RX_CFG_RXBAD			0x00000001  /* R/W */
 
-#define TX_CFG			(0x70 << AS)
+#define TX_CFG			0x70
 //#define	TX_CFG_TX_DMA_LVL		0xE0000000	 /* R/W */
 //#define	TX_CFG_TX_DMA_CNT		0x0FFF0000	 /* R/W Self Clearing */
 #define	TX_CFG_TXS_DUMP				0x00008000  /* Self Clearing */
@@ -167,7 +168,7 @@
 #define	TX_CFG_TX_ON				0x00000002  /* R/W */
 #define	TX_CFG_STOP_TX				0x00000001  /* Self Clearing */
 
-#define HW_CFG			(0x74 << AS)
+#define HW_CFG			0x74
 #define	HW_CFG_TTM				0x00200000  /* R/W */
 #define	HW_CFG_SF				0x00100000  /* R/W */
 #define	HW_CFG_TX_FIF_SZ			0x000F0000  /* R/W */
@@ -183,19 +184,19 @@
 #define	HW_CFG_SRST_TO				0x00000002  /* RO */
 #define	HW_CFG_SRST				0x00000001  /* Self Clearing */
 
-#define RX_DP_CTRL		(0x78 << AS)
+#define RX_DP_CTRL		0x78
 #define	RX_DP_CTRL_RX_FFWD			0x80000000  /* R/W */
 #define	RX_DP_CTRL_FFWD_BUSY			0x80000000  /* RO */
 
-#define RX_FIFO_INF		(0x7C << AS)
+#define RX_FIFO_INF		0x7C 
 #define	 RX_FIFO_INF_RXSUSED			0x00FF0000  /* RO */
 #define	 RX_FIFO_INF_RXDUSED			0x0000FFFF  /* RO */
 
-#define TX_FIFO_INF		(0x80 << AS)
+#define TX_FIFO_INF		0x80
 #define	TX_FIFO_INF_TSUSED			0x00FF0000  /* RO */
 #define	TX_FIFO_INF_TDFREE			0x0000FFFF  /* RO */
 
-#define PMT_CTRL		(0x84 << AS)
+#define PMT_CTRL		0x84
 #define	PMT_CTRL_PM_MODE			0x00003000  /* Self Clearing */
 #define	PMT_CTRL_PHY_RST			0x00000400  /* Self Clearing */
 #define	PMT_CTRL_WOL_EN				0x00000200  /* R/W */
@@ -211,7 +212,7 @@
 #define	PMT_CTRL_PME_EN				0x00000002  /* R/W Not Affected by SW Reset */
 #define	PMT_CTRL_READY				0x00000001  /* RO */
 
-#define GPIO_CFG		(0x88 << AS)
+#define GPIO_CFG		0x88
 #define	GPIO_CFG_LED3_EN			0x40000000  /* R/W */
 #define	GPIO_CFG_LED2_EN			0x20000000  /* R/W */
 #define	GPIO_CFG_LED1_EN			0x10000000  /* R/W */
@@ -231,23 +232,23 @@
 #define	GPIO_CFG_GPIOD1				0x00000002  /* R/W */
 #define	GPIO_CFG_GPIOD0				0x00000001  /* R/W */
 
-#define GPT_CFG			(0x8C << AS)
+#define GPT_CFG			0x8C
 #define	GPT_CFG_TIMER_EN			0x20000000  /* R/W */
 #define	GPT_CFG_GPT_LOAD			0x0000FFFF  /* R/W */
 
-#define GPT_CNT			(0x90 << AS)
+#define GPT_CNT			0x90
 #define	GPT_CNT_GPT_CNT				0x0000FFFF  /* RO */
 
-#define ENDIAN			(0x98 << AS)
-#define FREE_RUN		(0x9C << AS)
-#define RX_DROP			(0xA0 << AS)
-#define MAC_CSR_CMD		(0xA4 << AS)
+#define ENDIAN			0x98
+#define FREE_RUN		0x9C
+#define RX_DROP			0xA0
+#define MAC_CSR_CMD		0xA4
 #define	 MAC_CSR_CMD_CSR_BUSY			0x80000000  /* Self Clearing */
 #define	 MAC_CSR_CMD_R_NOT_W			0x40000000  /* R/W */
 #define	 MAC_CSR_CMD_CSR_ADDR			0x000000FF  /* R/W */
 
-#define MAC_CSR_DATA		(0xA8 << AS)
-#define AFC_CFG			(0xAC << AS)
+#define MAC_CSR_DATA		0xA8
+#define AFC_CFG			0xAC
 #define		AFC_CFG_AFC_HI			0x00FF0000  /* R/W */
 #define		AFC_CFG_AFC_LO			0x0000FF00  /* R/W */
 #define		AFC_CFG_BACK_DUR		0x000000F0  /* R/W */
@@ -256,7 +257,7 @@
 #define		AFC_CFG_FCADD			0x00000002  /* R/W */
 #define		AFC_CFG_FCANY			0x00000001  /* R/W */
 
-#define E2P_CMD			(0xB0 << AS)
+#define E2P_CMD			0xB0
 #define		E2P_CMD_EPC_BUSY		0x80000000  /* Self Clearing */
 #define		E2P_CMD_EPC_CMD			0x70000000  /* R/W */
 #define		E2P_CMD_EPC_CMD_READ		0x00000000  /* R/W */
@@ -271,7 +272,7 @@
 #define		E2P_CMD_MAC_ADDR_LOADED		0x00000100  /* RO */
 #define		E2P_CMD_EPC_ADDR		0x000000FF  /* R/W */
 
-#define E2P_DATA		(0xB4 << AS)
+#define E2P_DATA		0xB4
 #define	E2P_DATA_EEPROM_DATA			0x000000FF  /* R/W */
 /* end of LAN register offsets and bit definitions */
 
diff --git a/include/smc911x.h b/include/smc911x.h
new file mode 100644
index 0000000..148906b
--- /dev/null
+++ b/include/smc911x.h
@@ -0,0 +1,18 @@
+/*
+ * (C) Copyright 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+ */
+
+#ifndef __SMC911X_PLATFORM_H_
+#define __SMC911X_PLATFORM_H_
+
+/**
+ * @brief Platform dependent feature:
+ * Pass pointer to this structure as part of device_d -> platform_data
+ */
+struct smc911x_plat {
+	int shift;
+};
+
+#endif /* __SMC911X_PLATFORM_H_ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
