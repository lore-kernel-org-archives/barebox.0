Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-00085x-Bq
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:44:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:51 +0100
Message-Id: <1298886235-1769-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] mci mxs: give functions a uniq mxs_mci_ namespace
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c |    4 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c          |    4 +-
 arch/arm/mach-mxs/include/mach/mci.h           |    2 +-
 drivers/mci/mxs.c                              |  124 ++++++++++++------------
 4 files changed, 67 insertions(+), 67 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index d46431c..84aa837 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -46,13 +46,13 @@ static struct device_d sdram_dev = {
 	.platform_data = &ram_pdata,
 };
 
-static struct stm_mci_platform_data mci_pdata = {
+static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 };
 
 static struct device_d mci_dev = {
-	.name     = "stm_mci",
+	.name     = "mxs_mci",
 	.map_base = IMX_SSP1_BASE,
 	.platform_data = &mci_pdata,
 };
diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 9258442..a3f4a28 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -28,14 +28,14 @@
 #include <mach/mci.h>
 #include <mach/fb.h>
 
-static struct stm_mci_platform_data mci_pdata = {
+static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400 * 1000,
 };
 
 static struct device_d mci_socket = {
-	.name = "stm_mci",
+	.name = "mxs_mci",
 	.map_base = IMX_SSP0_BASE,
 	.platform_data = &mci_pdata,
 };
diff --git a/arch/arm/mach-mxs/include/mach/mci.h b/arch/arm/mach-mxs/include/mach/mci.h
index b924908..1090c1a 100644
--- a/arch/arm/mach-mxs/include/mach/mci.h
+++ b/arch/arm/mach-mxs/include/mach/mci.h
@@ -18,7 +18,7 @@
 #ifndef __MACH_MMC_H
 #define __MACH_MMC_H
 
-struct stm_mci_platform_data {
+struct mxs_mci_platform_data {
 	unsigned caps;	/**< supported operating modes (MMC_MODE_*) */
 	unsigned voltages; /**< supported voltage range (MMC_VDD_*) */
 	unsigned f_min;	/**< min operating frequency in Hz (0 -> no limit) */
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index db789e7..af69357 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -165,7 +165,7 @@
 # define HW_SSP_VERSION 0x130
 #endif
 
-struct stm_mci_host {
+struct mxs_mci_host {
 	unsigned	clock;	/* current clock speed in Hz ("0" if disabled) */
 	unsigned	index;
 #ifdef CONFIG_MCI_INFO
@@ -180,9 +180,9 @@ struct stm_mci_host {
  * @param hw_dev Host interface device instance
  * @return Unit's clock in [Hz]
  */
-static unsigned get_unit_clock(struct device_d *hw_dev)
+static unsigned mxs_mci_get_unit_clock(struct device_d *hw_dev)
 {
-	struct stm_mci_host *host_data = GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	return imx_get_sspclk(host_data->index);
 }
@@ -193,7 +193,7 @@ static unsigned get_unit_clock(struct device_d *hw_dev)
  * @param cmd Command description
  * @return Response bytes count, -EINVAL for unsupported response types
  */
-static int get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
+static int mxs_mci_get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
 {
 	switch (cmd->resp_type) {
 	case MMC_RSP_NONE:
@@ -222,7 +222,7 @@ static int get_cards_response(struct device_d *hw_dev, struct mci_cmd *cmd)
  *
  * Can also stop the clock to save power
  */
-static void finish_request(struct device_d *hw_dev)
+static void mxs_mci_finish_request(struct device_d *hw_dev)
 {
 	/* stop the engines (normaly already done) */
 	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 8);
@@ -233,7 +233,7 @@ static void finish_request(struct device_d *hw_dev)
  * @param status HW_SSP_STATUS's content
  * @return 0 if no error, negative values else
  */
-static int get_cmd_error(unsigned status)
+static int mxs_mci_get_cmd_error(unsigned status)
 {
 	if (status & SSP_STATUS_ERROR)
 		pr_debug("Status Reg reports %08X\n", status);
@@ -260,7 +260,7 @@ static int get_cmd_error(unsigned status)
  * @param hw_dev Host interface device instance
  * @param to Timeout value in MCI card's bus clocks
  */
-static void stm_setup_timout(struct device_d *hw_dev, unsigned to)
+static void mxs_mci_setup_timeout(struct device_d *hw_dev, unsigned to)
 {
 	uint32_t reg;
 
@@ -280,7 +280,7 @@ static void stm_setup_timout(struct device_d *hw_dev, unsigned to)
  * may fail whith high clock speeds. If you receive -EIO errors you can try
  * again with reduced clock speeds.
  */
-static int read_data(struct device_d *hw_dev, void *buffer, unsigned length)
+static int mxs_mci_read_data(struct device_d *hw_dev, void *buffer, unsigned length)
 {
 	uint32_t *p = buffer;
 
@@ -318,7 +318,7 @@ static int read_data(struct device_d *hw_dev, void *buffer, unsigned length)
  * may fail with high clock speeds. If you receive -EIO errors you can try
  * again with reduced clock speeds.
  */
-static int write_data(struct device_d *hw_dev, const void *buffer, unsigned length)
+static int mxs_mci_write_data(struct device_d *hw_dev, const void *buffer, unsigned length)
 {
 	const uint32_t *p = buffer;
 
@@ -349,7 +349,7 @@ static int write_data(struct device_d *hw_dev, const void *buffer, unsigned leng
  * @param data Data transfer description (might be NULL)
  * @return 0 on success
  */
-static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
+static int mxs_mci_transfer_data(struct device_d *hw_dev, struct mci_data *data)
 {
 	unsigned length;
 
@@ -363,7 +363,7 @@ static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
 		 * But last time I tried it, it failed badly. Don't know why yet
 		 */
 		if (data->flags & MMC_DATA_WRITE) {
-			err = write_data(host, data->src, 16);
+			err = mxs_mci_write_data(host, data->src, 16);
 			data->src += 16;
 			length -= 16;
 		}
@@ -381,9 +381,9 @@ static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
 
 	if (data != NULL) {
 		if (data->flags & MMC_DATA_READ)
-			return read_data(hw_dev, data->dest, length);
+			return mxs_mci_read_data(hw_dev, data->dest, length);
 		else
-			return write_data(hw_dev, data->src, length);
+			return mxs_mci_write_data(hw_dev, data->src, length);
 	}
 
 	return 0;
@@ -395,7 +395,7 @@ static int transfer_data(struct device_d *hw_dev, struct mci_data *data)
  * @param data_flags Data information (may be 0)
  * @return Corresponding setting for the SSP_CTRL0 register
  */
-static uint32_t prepare_transfer_setup(unsigned cmd_flags, unsigned data_flags)
+static uint32_t mxs_mci_prepare_transfer_setup(unsigned cmd_flags, unsigned data_flags)
 {
 	uint32_t reg = 0;
 
@@ -428,10 +428,10 @@ static uint32_t prepare_transfer_setup(unsigned cmd_flags, unsigned data_flags)
  * - "broadcast commands with response (BCR)"
  * - "addressed command (AC)" with response, but without data
  */
-static int stm_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
+static int mxs_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
 {
 	/* setup command and transfer parameters */
-	writel(prepare_transfer_setup(cmd->resp_type, 0) |
+	writel(mxs_mci_prepare_transfer_setup(cmd->resp_type, 0) |
 		SSP_CTRL0_ENABLE, hw_dev->map_base + HW_SSP_CTRL0);
 
 	/* prepare the command, when no response is expected add a few trailing clocks */
@@ -442,7 +442,7 @@ static int stm_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
 	/* prepare command's arguments */
 	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
 
-	stm_setup_timout(hw_dev, 0xffff);
+	mxs_mci_setup_timeout(hw_dev, 0xffff);
 
 	/* start the transfer */
 	writel(SSP_CTRL0_RUN, hw_dev->map_base + HW_SSP_CTRL0 + 4);
@@ -452,9 +452,9 @@ static int stm_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
 		;
 
 	if (cmd->resp_type & MMC_RSP_PRESENT)
-		get_cards_response(hw_dev, cmd);
+		mxs_mci_get_cards_response(hw_dev, cmd);
 
-	return get_cmd_error(readl(hw_dev->map_base + HW_SSP_STATUS));
+	return mxs_mci_get_cmd_error(readl(hw_dev->map_base + HW_SSP_STATUS));
 }
 
 /**
@@ -464,10 +464,10 @@ static int stm_mci_std_cmds(struct device_d *hw_dev, struct mci_cmd *cmd)
  * @param data The data information (buffer, direction aso.) May be NULL
  * @return 0 on success
  */
-static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
+static int mxs_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
-	struct stm_mci_host *host_data = (struct stm_mci_host*)GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
 	uint32_t xfer_cnt, log2blocksize, block_cnt;
 	int err;
 
@@ -482,7 +482,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 
 	/* setup command and transfer parameters */
 #ifdef CONFIG_ARCH_IMX23
-	writel(prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
+	writel(mxs_mci_prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
 		SSP_CTRL0_BUS_WIDTH(host_data->bus_width) |
 		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
 		SSP_CTRL0_ENABLE |
@@ -497,7 +497,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 		hw_dev->map_base + HW_SSP_CMD0);
 #endif
 #ifdef CONFIG_ARCH_IMX28
-	writel(prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
+	writel(mxs_mci_prepare_transfer_setup(cmd->resp_type, data != NULL ? data->flags : 0) |
 		SSP_CTRL0_BUS_WIDTH(host_data->bus_width) |
 		(xfer_cnt != 0 ? SSP_CTRL0_DATA_XFER : 0) | /* command plus data */
 		SSP_CTRL0_ENABLE,
@@ -516,9 +516,9 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	/* prepare command's arguments */
 	writel(cmd->cmdarg, hw_dev->map_base + HW_SSP_CMD1);
 
-	stm_setup_timout(hw_dev, 0xffff);
+	mxs_mci_setup_timeout(hw_dev, 0xffff);
 
-	err = transfer_data(hw_dev, data);
+	err = mxs_mci_transfer_data(hw_dev, data);
 	if (err != 0) {
 		pr_debug(" Transfering data failed\n");
 		return err;
@@ -528,7 +528,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
 	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_RUN)
 		;
 
-	get_cards_response(hw_dev, cmd);
+	mxs_mci_get_cards_response(hw_dev, cmd);
 
 	return 0;
 }
@@ -554,7 +554,7 @@ static int stm_mci_adtc(struct device_d *hw_dev, struct mci_cmd *cmd,
  * @note Up to "SSP unit DIV" the outer world must care. This routine only
  * handles the "SSP DIV".
  */
-static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
+static unsigned mxs_mci_setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 {
 	unsigned ssp, div, rate, reg;
 
@@ -563,7 +563,7 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
 		return 0;
 	}
 
-	ssp = get_unit_clock(hw_dev);
+	ssp = mxs_mci_get_unit_clock(hw_dev);
 
 	for (div = 2; div < 255; div += 2) {
 		rate = DIV_ROUND_CLOSEST(DIV_ROUND_CLOSEST(ssp, nc), div);
@@ -588,7 +588,7 @@ static unsigned setup_clock_speed(struct device_d *hw_dev, unsigned nc)
  *
  * This will reset everything in all registers of this unit! (FIXME)
  */
-static void stm_mci_reset(struct device_d *hw_dev)
+static void mxs_mci_reset(struct device_d *hw_dev)
 {
 	writel(SSP_CTRL0_SFTRST, hw_dev->map_base + HW_SSP_CTRL0 + 8);
 	while (readl(hw_dev->map_base + HW_SSP_CTRL0) & SSP_CTRL0_SFTRST)
@@ -603,21 +603,21 @@ static void stm_mci_reset(struct device_d *hw_dev)
  * @param mci_dev MCI device instance
  * @return 0 on success, negative value else
  */
-static int stm_mci_initialize(struct mci_host *mci_pdata, struct device_d *mci_dev)
+static int mxs_mci_initialize(struct mci_host *mci_pdata, struct device_d *mci_dev)
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
-	struct stm_mci_host *host_data = (struct stm_mci_host*)GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
 
 	/* enable the clock to this unit to be able to reset it */
 	writel(SSP_CTRL0_CLKGATE, hw_dev->map_base + HW_SSP_CTRL0 + 8);
 
 	/* reset the unit */
-	stm_mci_reset(hw_dev);
+	mxs_mci_reset(hw_dev);
 
 	/* restore the last settings */
-	host->clock = host_data->clock = setup_clock_speed(hw_dev, host->clock);
-	stm_setup_timout(hw_dev, 0xffff);
+	host->clock = host_data->clock = mxs_mci_setup_clock_speed(hw_dev, host->clock);
+	mxs_mci_setup_timeout(hw_dev, 0xffff);
 	writel(SSP_CTRL0_IGNORE_CRC |
 		SSP_CTRL0_BUS_WIDTH(host_data->bus_width),
 		hw_dev->map_base + HW_SSP_CTRL0);
@@ -635,18 +635,18 @@ static int stm_mci_initialize(struct mci_host *mci_pdata, struct device_d *mci_d
  * @param data The data to handle in the command (can be NULL)
  * @return 0 on success, negative value else
  */
-static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
+static int mxs_mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
 			struct mci_data *data)
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
 	int rc;
 
 	if ((cmd->resp_type == 0) || (data == NULL))
-		rc = stm_mci_std_cmds(hw_dev, cmd);
+		rc = mxs_mci_std_cmds(hw_dev, cmd);
 	else
-		rc = stm_mci_adtc(hw_dev, cmd, data);	/* with response and data */
+		rc = mxs_mci_adtc(hw_dev, cmd, data);	/* with response and data */
 
-	finish_request(hw_dev);	/* TODO */
+	mxs_mci_finish_request(hw_dev);	/* TODO */
 	return rc;
 }
 
@@ -659,11 +659,11 @@ static int mci_request(struct mci_host *mci_pdata, struct mci_cmd *cmd,
  *
  * Drivers currently realized values are stored in MCI's platformdata
  */
-static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
+static void mxs_mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 			unsigned bus_width, unsigned clock)
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
-	struct stm_mci_host *host_data = (struct stm_mci_host*)GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *host_data = (struct mxs_mci_host*)GET_HOST_DATA(hw_dev);
 	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 
 	switch (bus_width) {
@@ -681,7 +681,7 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 		break;
 	}
 
-	host->clock = host_data->clock = setup_clock_speed(hw_dev, clock);
+	host->clock = host_data->clock = mxs_mci_setup_clock_speed(hw_dev, clock);
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n", host->bus_width,
 			host->clock);
 }
@@ -691,9 +691,9 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 #ifdef CONFIG_MCI_INFO
 const unsigned char bus_width[3] = { 1, 4, 8 };
 
-static void stm_info(struct device_d *hw_dev)
+static void mxs_mci_info(struct device_d *hw_dev)
 {
-	struct stm_mci_host *host_data = GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *host_data = GET_HOST_DATA(hw_dev);
 
 	printf(" Interface\n");
 	printf("  Min. bus clock: %u Hz\n", host_data->f_min);
@@ -704,10 +704,10 @@ static void stm_info(struct device_d *hw_dev)
 }
 #endif
 
-static int stm_mci_probe(struct device_d *hw_dev)
+static int mxs_mci_probe(struct device_d *hw_dev)
 {
-	struct stm_mci_platform_data *pd = hw_dev->platform_data;
-	struct stm_mci_host *host_data;
+	struct mxs_mci_platform_data *pd = hw_dev->platform_data;
+	struct mxs_mci_host *host_data;
 	struct mci_host *host;
 
 	if (hw_dev->platform_data == NULL) {
@@ -715,14 +715,14 @@ static int stm_mci_probe(struct device_d *hw_dev)
 		return -EINVAL;
 	}
 
-	host = xzalloc(sizeof(struct stm_mci_host) + sizeof(struct mci_host));
-	host_data = (struct stm_mci_host*)&host[1];
+	host = xzalloc(sizeof(struct mxs_mci_host) + sizeof(struct mci_host));
+	host_data = (struct mxs_mci_host*)&host[1];
 
 	hw_dev->priv = host_data;
 	host->hw_dev = hw_dev;
-	host->send_cmd = mci_request,
-	host->set_ios = mci_set_ios,
-	host->init = stm_mci_initialize,
+	host->send_cmd = mxs_mci_request,
+	host->set_ios = mxs_mci_set_ios,
+	host->init = mxs_mci_initialize,
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
@@ -752,20 +752,20 @@ static int stm_mci_probe(struct device_d *hw_dev)
 	}
 #endif
 	if (pd->f_min == 0) {
-		host->f_min = get_unit_clock(hw_dev) / 254 / 256;
+		host->f_min = mxs_mci_get_unit_clock(hw_dev) / 254 / 256;
 		pr_debug("Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
 		pr_debug("Min. frequency is %u Hz, could be %u Hz\n",
-			host->f_min, get_unit_clock(hw_dev) / 254 / 256);
+			host->f_min, mxs_mci_get_unit_clock(hw_dev) / 254 / 256);
 	}
 	if (pd->f_max == 0) {
-		host->f_max = get_unit_clock(hw_dev) / 2 / 1;
+		host->f_max = mxs_mci_get_unit_clock(hw_dev) / 2 / 1;
 		pr_debug("Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
 		pr_debug("Max. frequency is %u Hz, could be %u Hz\n",
-			host->f_max, get_unit_clock(hw_dev) / 2 / 1);
+			host->f_max, mxs_mci_get_unit_clock(hw_dev) / 2 / 1);
 	}
 
 #ifdef CONFIG_MCI_INFO
@@ -776,18 +776,18 @@ static int stm_mci_probe(struct device_d *hw_dev)
 	return mci_register(host);
 }
 
-static struct driver_d stm_mci_driver = {
-        .name  = "stm_mci",
-        .probe = stm_mci_probe,
+static struct driver_d mxs_mci_driver = {
+        .name  = "mxs_mci",
+        .probe = mxs_mci_probe,
 #ifdef CONFIG_MCI_INFO
-	.info = stm_info,
+	.info = mxs_mci_info,
 #endif
 };
 
-static int stm_mci_init_driver(void)
+static int mxs_mci_init_driver(void)
 {
-        register_driver(&stm_mci_driver);
+        register_driver(&mxs_mci_driver);
         return 0;
 }
 
-device_initcall(stm_mci_init_driver);
+device_initcall(mxs_mci_init_driver);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
