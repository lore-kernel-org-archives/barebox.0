Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS62I-00020C-TN
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 10:53:53 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PS62G-0008Qx-1d
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:40 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PS62F-0002Im-Sf
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 11:53:39 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 13 Dec 2010 11:53:33 +0100
Message-Id: <1292237617-7064-11-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 10/14] STM378x: Adapt the MCI driver to support i.MX23 and
	i.MX28
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/Kconfig   |    4 +-
 drivers/mci/stm378x.c |  139 +++++++++++++++++++++++++++++++++++++++++++------
 2 files changed, 124 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b1f2773..ee04079 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -28,11 +28,11 @@ config MCI_INFO
 comment "--- MCI host drivers ---"
 
 config MCI_STM378X
-	bool "i.MX23"
+	bool "i.MX23/i.MX28"
 	depends on ARCH_STM
 	help
 	  Enable this entry to add support to read and write SD cards on a
-	  i.MX23 based system.
+	  i.MX23/i.MX28 based system.
 
 config MCI_S3C
 	bool "S3C"
diff --git a/drivers/mci/stm378x.c b/drivers/mci/stm378x.c
index fb74822..94b0f4a 100644
--- a/drivers/mci/stm378x.c
+++ b/drivers/mci/stm378x.c
@@ -61,37 +61,77 @@
 # define SSP_CTRL0_LONG_RESP (1 << 19)
 # define SSP_CTRL0_GET_RESP (1 << 17)
 # define SSP_CTRL0_ENABLE (1 << 16)
+#ifdef CONFIG_ARCH_IMX23
 # define SSP_CTRL0_XFER_COUNT(x) ((x) & 0xffff)
+#endif
 
 #define HW_SSP_CMD0 0x010
 # define SSP_CMD0_SLOW_CLK (1 << 22)
 # define SSP_CMD0_CONT_CLK (1 << 21)
 # define SSP_CMD0_APPEND_8CYC (1 << 20)
+#ifdef CONFIG_ARCH_IMX23
 # define SSP_CMD0_BLOCK_SIZE(x) (((x) & 0xf) << 16)
 # define SSP_CMD0_BLOCK_COUNT(x) (((x) & 0xff) << 8)
+#endif
 # define SSP_CMD0_CMD(x) ((x) & 0xff)
 
 #define HW_SSP_CMD1 0x020
-#define HW_SSP_COMPREF 0x030
-#define HW_SSP_COMPMASK 0x040
-#define HW_SSP_TIMING 0x050
+
+#ifdef CONFIG_ARCH_IMX23
+# define HW_SSP_COMPREF 0x030
+# define HW_SSP_COMPMASK 0x040
+# define HW_SSP_TIMING 0x050
+# define HW_SSP_CTRL1 0x060
+# define HW_SSP_DATA 0x070
+#endif
+#ifdef CONFIG_ARCH_IMX28
+# define HW_SSP_XFER_COUNT 0x30
+# define HW_SSP_BLOCK_SIZE 0x40
+#  define SSP_BLOCK_SIZE(x) ((x) & 0xf)
+#  define SSP_BLOCK_COUNT(x) (((x) & 0xffffff) << 4)
+# define HW_SSP_COMPREF 0x050
+# define HW_SSP_COMPMASK 0x060
+# define HW_SSP_TIMING 0x070
+# define HW_SSP_CTRL1 0x080
+# define HW_SSP_DATA 0x090
+#endif
+/* bit definition for register HW_SSP_TIMING */
 # define SSP_TIMING_TIMEOUT_MASK (0xffff0000)
 # define SSP_TIMING_TIMEOUT(x) ((x) << 16)
 # define SSP_TIMING_CLOCK_DIVIDE(x) (((x) & 0xff) << 8)
 # define SSP_TIMING_CLOCK_RATE(x) ((x) & 0xff)
 
-#define HW_SSP_CTRL1 0x060
+/* bit definition for register HW_SSP_CTRL1 */
 # define SSP_CTRL1_POLARITY (1 << 9)
 # define SSP_CTRL1_WORD_LENGTH(x) (((x) & 0xf) << 4)
 # define SSP_CTRL1_SSP_MODE(x) ((x) & 0xf)
 
-#define HW_SSP_DATA 0x070
-#define HW_SSP_SDRESP0 0x080
-#define HW_SSP_SDRESP1 0x090
-#define HW_SSP_SDRESP2 0x0A0
-#define HW_SSP_SDRESP3 0x0B0
+#ifdef CONFIG_ARCH_IMX23
+# define HW_SSP_SDRESP0 0x080
+# define HW_SSP_SDRESP1 0x090
+# define HW_SSP_SDRESP2 0x0A0
+# define HW_SSP_SDRESP3 0x0B0
+#endif
+#ifdef CONFIG_ARCH_IMX28
+# define HW_SSP_SDRESP0 0x0A0
+# define HW_SSP_SDRESP1 0x0B0
+# define HW_SSP_SDRESP2 0x0C0
+# define HW_SSP_SDRESP3 0x0D0
+#endif
+
+#ifdef CONFIG_ARCH_IMX28
+# define HW_SSP_DDR_CTRL 0x0E0
+# define HW_SSP_DLL_CTRL 0x0F0
+#endif
+
+#ifdef CONFIG_ARCH_IMX23
+# define HW_SSP_STATUS 0x0C0
+#endif
+#ifdef CONFIG_ARCH_IMX28
+# define HW_SSP_STATUS 0x100
+#endif
 
-#define HW_SSP_STATUS 0x0C0
+/* bit definition for register HW_SSP_STATUS */
 # define SSP_STATUS_PRESENT (1 << 31)
 # define SSP_STATUS_SD_PRESENT (1 << 29)
 # define SSP_STATUS_CARD_DETECT (1 << 28)
@@ -111,11 +151,23 @@
 	SSP_STATUS_RESP_CRC_ERR | SSP_STATUS_RESP_ERR | \
 	SSP_STATUS_RESP_TIMEOUT | SSP_STATUS_DATA_CRC_ERR | SSP_STATUS_TIMEOUT)
 
-#define HW_SSP_DEBUG 0x100
-#define HW_SSP_VERSION 0x110
+#ifdef CONFIG_ARCH_IMX28
+# define HW_SSP_DLL_STS 0x110
+#endif
+
+#ifdef CONFIG_ARCH_IMX23
+# define HW_SSP_DEBUG 0x100
+# define HW_SSP_VERSION 0x110
+#endif
+
+#ifdef CONFIG_ARCH_IMX28
+# define HW_SSP_DEBUG 0x120
+# define HW_SSP_VERSION 0x130
+#endif
 
 struct stm_mci_host {
 	unsigned	clock;	/* current clock speed in Hz ("0" if disabled) */
+	unsigned	index;
 #ifdef CONFIG_MCI_INFO
 	unsigned	f_min;
 	unsigned	f_max;
@@ -124,6 +176,18 @@ struct stm_mci_host {
 };
 
 /**
+ * Get the SSP clock rate
+ * @param hw_dev Host interface device instance
+ * @return Unit's clock in [Hz]
+ */
+static unsigned get_unit_clock(struct device_d *hw_dev)
+{
+	struct stm_mci_host *host_data = GET_HOST_DATA(hw_dev);
+
+	return imx_get_sspclk(host_data->index);
+}
+
+/**
  * Get MCI cards response if defined for the type of command
  * @param hw_dev Host interface device instance
  * @param cmd Command description
@@ -417,6 +481,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 		xfer_cnt = log2blocksize = block_cnt = 0;
 
 	/* setup command and transfer parameters */
+#ifdef CONFIG_ARCH_IMX23
 	writel(prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
 		SSP_CTRL0_BUS_WIDTH(host_data->bus_width) |
 		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
@@ -430,6 +495,23 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 		SSP_CMD0_BLOCK_COUNT(block_cnt) |
 		(cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ? SSP_CMD0_APPEND_8CYC : 0),
 		hw_dev->map_base + HW_SSP_CMD0);
+#endif
+#ifdef CONFIG_ARCH_IMX28
+	writel(prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
+		SSP_CTRL0_BUS_WIDTH(host_data->bus_width) |
+		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
+		SSP_CTRL0_ENABLE,
+		hw_dev->map_base + HW_SSP_CTRL0);
+	writel(xfer_cnt, hw_dev->map_base + HW_SSP_XFER_COUNT);
+
+	/* prepare the command and the transfered data count */
+	writel(SSP_CMD0_CMD(cmd->cmdidx) |
+		(cmd->cmdidx == MMC_CMD_STOP_TRANSMISSION ? SSP_CMD0_APPEND_8CYC : 0),
+		hw_dev->map_base + HW_SSP_CMD0);
+	writel(SSP_BLOCK_SIZE(log2blocksize) |
+		SSP_BLOCK_COUNT(block_cnt),
+		hw_dev->map_base + HW_SSP_BLOCK_SIZE);
+#endif
 
 	/* prepare command's arguments */
 	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
@@ -481,7 +563,7 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	ssp = imx_get_sspclk(0);
+	ssp = get_unit_clock(hw_dev);
 
 	for (div = 2; div < 255; div += 2) {
 		rate = DIV_ROUND_CLOSEST(DIV_ROUND_CLOSEST(ssp, nc), div);
@@ -657,21 +739,44 @@ static int stm_mci_probe(struct device_d *hw_dev)
 	host->voltages = pd->voltages;
 	host->host_caps = pd->caps;
 
+#ifdef CONFIG_ARCH_IMX23
+	host_data->index = 0;	/* there is only one clock for all */
+#endif
+#ifdef CONFIG_ARCH_IMX28
+	/* one dedicated clock per unit */
+	switch (hw_dev->map_base) {
+	case IMX_SSP0_BASE:
+		host_data->index = 0;
+		break;
+	case IMX_SSP1_BASE:
+		host_data->index = 1;
+		break;
+	case IMX_SSP2_BASE:
+		host_data->index = 2;
+		break;
+	case IMX_SSP3_BASE:
+		host_data->index = 3;
+		break;
+	default:
+		pr_debug("Unknown SSP unit at address 0x%08x\n", hw_dev->map_base);
+		return 0;
+	}
+#endif
 	if (pd->f_min == 0) {
-		host->f_min = imx_get_sspclk(0) / 254U / 256U;
+		host->f_min = get_unit_clock(hw_dev) / 254 / 256;
 		pr_debug("Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
 		pr_debug("Min. frequency is %u Hz, could be %u Hz\n",
-			host->f_min, imx_get_sspclk(0) / 254U / 256U);
+			host->f_min, get_unit_clock(hw_dev) / 254 / 256);
 	}
 	if (pd->f_max == 0) {
-		host->f_max = imx_get_sspclk(0) / 2U / 1U;
+		host->f_max = get_unit_clock(hw_dev) / 2 / 1;
 		pr_debug("Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
 		pr_debug("Max. frequency is %u Hz, could be %u Hz\n",
-			host->f_max, imx_get_sspclk(0) / 2U / 1U);
+			host->f_max, get_unit_clock(hw_dev) / 2 / 1);
 	}
 
 #ifdef CONFIG_MCI_INFO
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
