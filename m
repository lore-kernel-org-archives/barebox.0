Delivery-date: Fri, 15 Mar 2024 15:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl890-007x8N-2x
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 15:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl88y-0001aq-17
	for lore@pengutronix.de; Fri, 15 Mar 2024 15:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wCUhCH98aTvFS06L1czdaq/5+m7Gk3ccGhd/vkv9Mh8=; b=xArYd3gjEJ2Lj9efZ0z+DABH5L
	HThuVDVq6vOkFIega2Lzut8OJW1/5JheMMZOPrUKEYGab3Mua4R/ocAK6fRCazat2J1dcibTJzxd1
	POqbiQQl0r8CZvVG4Xbj0LND4X9UqwCmBd1m+xFCe6pJSs6j2N8hOXSWJfHgVXnOTMIsksvlzNmB+
	K+QOh5t+iC5xTGi3GBRpOcJEjnW2HiKxIMfnJeDsH8dum11Jh/RCrJIKwNlWVg6dLa5P+ejjwD6h/
	9JKi3nUdWTH8TdKOnsGIucVWaRIy6FeU5ynrrOA3NFMPMSGwnL4F4ypl3ZOEjujjoy+qy7i4CSSxj
	z020sorA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl88C-00000000OrK-08cJ;
	Fri, 15 Mar 2024 14:01:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl880-00000000OkG-08WD
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 14:01:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rl87y-000817-SX; Fri, 15 Mar 2024 15:01:42 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 15 Mar 2024 15:00:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-7-df268c2f4907@pengutronix.de>
References: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
In-Reply-To: <20240315-v2024-02-0-topic-arasan-hs200-support-v3-0-df268c2f4907@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12491;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=jtiUbg3XpAdjURcuEBSNKw8/cV43uhKIvMfxPqS41O0=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFK/hKzWdNNtNco9sunsa89P7ivyjnX2zAmYI2Z1rlXm3
 b4rc69s7ShlYRDjYpAVU2SJXHtIY7PwZ50vx88zwMxhZQIZwsDFKQATEV/J8N8x0ubUpJdZibsU
 Ao/9emwRF/GIUe4NV89Wlr1fE5lSI/wYGa7+kEuw6wifpGCxetOkbc91lbmLou2mruQ5cb9k66y
 sI3wA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_070144_456509_7F5BA23D 
X-CRM114-Status: GOOD (  21.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 07/14] mci: arasan: register sdcard/sampleclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Read and register the sampleclk and sdcardclk. They are needed later for
HS200 tuning support.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 316 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 316 insertions(+)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 0e4c1287ae..4111b3321a 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -6,6 +6,7 @@
 #include <init.h>
 #include <linux/clk.h>
 #include <mci.h>
+#include <mach/zynqmp/firmware-zynqmp.h>
 
 #include "sdhci.h"
 
@@ -40,12 +41,20 @@
 /**
  * struct sdhci_arasan_clk_data - Arasan Controller Clock Data.
  *
+ * @sdcardclk_hw:	Struct for the clock we might provide to a PHY.
+ * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
+ * @sampleclk_hw:	Struct for the clock we might provide to a PHY.
+ * @sampleclk:		Pointer to normal 'struct clock' for sampleclk_hw.
  * @clk_phase_in:	Array of Input Clock Phase Delays for all speed modes
  * @clk_phase_out:	Array of Output Clock Phase Delays for all speed modes
  * @set_clk_delays:	Function pointer for setting Clock Delays
  * @clk_of_data:	Platform specific runtime clock data storage pointer
  */
 struct sdhci_arasan_clk_data {
+	struct clk_hw	sdcardclk_hw;
+	struct clk      *sdcardclk;
+	struct clk_hw	sampleclk_hw;
+	struct clk      *sampleclk;
 	int		clk_phase_in[ZYNQMP_CLK_PHASES + 1];
 	int		clk_phase_out[ZYNQMP_CLK_PHASES + 1];
 	void		(*set_clk_delays)(struct sdhci *host);
@@ -154,6 +163,11 @@ static void arasan_sdhci_set_clock(struct mci_host *mci, unsigned int clock)
 			clock = (25000000 * 19) / 25;
 	}
 
+	clk_set_phase(clk_data->sampleclk,
+		      clk_data->clk_phase_in[mci->mci->host->timing]);
+	clk_set_phase(clk_data->sdcardclk,
+		      clk_data->clk_phase_out[mci->mci->host->timing]);
+
 	sdhci_set_clock(&host->sdhci, clock, host->sdhci.max_clk);
 }
 
@@ -251,6 +265,10 @@ static void sdhci_arasan_set_clk_delays(struct sdhci *host)
 	struct mci_host *mci = &arasan_sdhci->mci;
 	struct sdhci_arasan_clk_data *clk_data = &arasan_sdhci->clk_data;
 
+	clk_set_phase(clk_data->sampleclk,
+		      clk_data->clk_phase_in[mci->timing]);
+	clk_set_phase(clk_data->sdcardclk,
+		      clk_data->clk_phase_out[mci->timing]);
 }
 
 static void arasan_dt_read_clk_phase(struct device *dev,
@@ -279,6 +297,302 @@ static void arasan_dt_read_clk_phase(struct device *dev,
 	clk_data->clk_phase_out[timing] = clk_phase[1];
 }
 
+/**
+ * sdhci_zynqmp_sampleclk_set_phase - Set the SD Input Clock Tap Delays
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees:		The clock phase shift between 0 - 359.
+ *
+ * Set the SD Input Clock Tap Delays for Input path
+ *
+ * Return: 0 on success and error value on error
+ */
+static int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
+	struct arasan_sdhci_host *sdhci_arasan =
+		container_of(clk_data, struct arasan_sdhci_host, clk_data);
+	struct mci_host *host = &sdhci_arasan->mci;
+	const char *clk_name = clk_hw_get_name(hw);
+	u32 node_id = !strcmp(clk_name, "clk_in_sd0") ? NODE_SD_0 : NODE_SD_1;
+	u8 tap_delay, tap_max = 0;
+	int ret;
+
+	/* This is applicable for SDHCI_SPEC_300 and above */
+	if (sdhci_arasan->sdhci.version < SDHCI_SPEC_300)
+		return 0;
+
+	/* Assert DLL Reset */
+	zynqmp_pm_sd_dll_reset(node_id, PM_DLL_RESET_ASSERT);
+
+	switch (host->timing) {
+	case MMC_TIMING_MMC_HS:
+	case MMC_TIMING_SD_HS:
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		/* For 50MHz clock, 120 Taps are available */
+		tap_max = 120;
+		break;
+	case MMC_TIMING_UHS_SDR50:
+		/* For 100MHz clock, 60 Taps are available */
+		tap_max = 60;
+		break;
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS200:
+		/* For 200MHz clock, 30 Taps are available */
+		tap_max = 30;
+		break;
+	default:
+		break;
+	}
+
+	tap_delay = (degrees * tap_max) / 360;
+
+	/* Set the Clock Phase */
+	ret = zynqmp_pm_set_sd_tapdelay(node_id, PM_TAPDELAY_INPUT, tap_delay);
+	if (ret)
+		pr_err("Error setting Input Tap Delay\n");
+
+	return ret;
+}
+
+static unsigned long arasan_zynqmp_sampleclk_recalc_rate(struct clk_hw *hw,
+							 unsigned long parent_rate)
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
+	struct arasan_sdhci_host *sdhci_arasan =
+		container_of(clk_data, struct arasan_sdhci_host, clk_data);
+	struct mci_host *host = &sdhci_arasan->mci;
+
+	return host->actual_clock;
+};
+
+/**
+ * sdhci_zynqmp_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
+ *
+ * @hw:			Pointer to the hardware clock structure.
+ * @degrees:		The clock phase shift between 0 - 359.
+ *
+ * Set the SD Output Clock Tap Delays for Output path
+ *
+ * Return: 0 on success and error value on error
+ */
+static int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
+	struct arasan_sdhci_host *sdhci_arasan =
+		container_of(clk_data, struct arasan_sdhci_host, clk_data);
+	struct mci_host *host = &sdhci_arasan->mci;
+	const char *clk_name = clk_hw_get_name(hw);
+	u32 node_id = !strcmp(clk_name, "clk_out_sd0") ? NODE_SD_0 : NODE_SD_1;
+	u8 tap_delay, tap_max = 0;
+	int ret;
+
+	/* This is applicable for SDHCI_SPEC_300 and above */
+	if (sdhci_arasan->sdhci.version < SDHCI_SPEC_300)
+		return 0;
+
+	switch (host->timing) {
+	case MMC_TIMING_MMC_HS:
+	case MMC_TIMING_SD_HS:
+	case MMC_TIMING_UHS_DDR50:
+	case MMC_TIMING_MMC_DDR52:
+		/* For 50MHz clock, 30 Taps are available */
+		tap_max = 30;
+		break;
+	case MMC_TIMING_UHS_SDR50:
+		/* For 100MHz clock, 15 Taps are available */
+		tap_max = 15;
+		break;
+	case MMC_TIMING_UHS_SDR104:
+	case MMC_TIMING_MMC_HS200:
+		/* For 200MHz clock, 8 Taps are available */
+		tap_max = 8;
+		break;
+	default:
+		break;
+	}
+
+	tap_delay = (degrees * tap_max) / 360;
+
+	/* Set the Clock Phase */
+	ret = zynqmp_pm_set_sd_tapdelay(node_id, PM_TAPDELAY_OUTPUT, tap_delay);
+	if (ret)
+		pr_err("Error setting Output Tap Delay\n");
+
+	/* Release DLL Reset */
+	zynqmp_pm_sd_dll_reset(node_id, PM_DLL_RESET_RELEASE);
+
+	return ret;
+}
+
+static unsigned long arasan_zynqmp_sdcardclk_recalc_rate(struct clk_hw *hw,
+							 unsigned long parent_rate)
+{
+	struct sdhci_arasan_clk_data *clk_data =
+		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
+	struct arasan_sdhci_host *sdhci_arasan =
+		container_of(clk_data, struct arasan_sdhci_host, clk_data);
+	struct mci_host *host = &sdhci_arasan->mci;
+
+	return host->actual_clock;
+};
+
+static const struct clk_ops clk_sampleclk_ops = {
+	.recalc_rate = arasan_zynqmp_sampleclk_recalc_rate,
+	.set_phase = arasan_zynqmp_sampleclk_set_phase,
+};
+
+static const struct clk_ops clk_sdcardclk_ops = {
+	.recalc_rate = arasan_zynqmp_sdcardclk_recalc_rate,
+	.set_phase = arasan_zynqmp_sdcardclk_set_phase,
+};
+
+/**
+ * arasan_sdhci_register_sampleclk - Register the sampleclk for a PHY to use
+ *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ *
+ * Some PHY devices need to know what the actual card clock is.  In order for
+ * them to find out, we'll provide a clock through the common clock framework
+ * for them to query.
+ *
+ * Return: 0 on success and error value on error
+ */
+static int
+arasan_sdhci_register_sampleclk(struct sdhci_arasan_clk_data *clk_data,
+				struct clk *clk_xin,
+				struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct clk_init_data sampleclk_init = {};
+	const char *clk_name;
+	int ret;
+
+	ret = of_property_read_string_index(np, "clock-output-names", 1,
+					    &sampleclk_init.name);
+	if (ret) {
+		dev_err(dev, "DT has #clock-cells but no clock-output-names\n");
+		return ret;
+	}
+
+	clk_name = __clk_get_name(clk_xin);
+	sampleclk_init.parent_names = &clk_name;
+	sampleclk_init.num_parents = 1;
+	sampleclk_init.ops = &clk_sampleclk_ops;
+
+	clk_data->sampleclk_hw.init = &sampleclk_init;
+	clk_data->sampleclk = clk_register(dev, &clk_data->sampleclk_hw);
+	if (IS_ERR(clk_data->sampleclk))
+		return PTR_ERR(clk_data->sampleclk);
+	clk_data->sampleclk_hw.init = NULL;
+
+	ret = of_clk_add_provider(np, of_clk_src_simple_get,
+				  clk_data->sampleclk);
+	if (ret)
+		dev_err(dev, "Failed to add sample clock provider\n");
+
+	return ret;
+}
+
+/**
+ * sdhci_arasan_register_sdcardclk - Register the sdcardclk for a PHY to use
+ *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ *
+ * Some PHY devices need to know what the actual card clock is.  In order for
+ * them to find out, we'll provide a clock through the common clock framework
+ * for them to query.
+ *
+ * Return: 0 on success and error value on error
+ */
+static int
+arasan_sdhci_register_sdcardclk(struct sdhci_arasan_clk_data *clk_data,
+				struct clk *clk_xin,
+				struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct clk_init_data sdcardclk_init = {};
+	const char *clk_name;
+	int ret;
+
+	ret = of_property_read_string_index(np, "clock-output-names", 0,
+					    &sdcardclk_init.name);
+	if (ret) {
+		dev_err(dev, "DT has #clock-cells but no clock-output-names\n");
+		return ret;
+	}
+
+	clk_name = __clk_get_name(clk_xin);
+	sdcardclk_init.parent_names = &clk_name;
+	sdcardclk_init.ops = &clk_sdcardclk_ops;
+	sdcardclk_init.num_parents = 1;
+
+	clk_data->sdcardclk_hw.init = &sdcardclk_init;
+	clk_data->sdcardclk = clk_register(dev, &clk_data->sdcardclk_hw);
+	if (IS_ERR(clk_data->sdcardclk))
+		return PTR_ERR(clk_data->sdcardclk);
+	clk_data->sdcardclk_hw.init = NULL;
+
+	ret = of_clk_add_provider(np, of_clk_src_simple_get,
+				  clk_data->sdcardclk);
+	if (ret)
+		dev_err(dev, "Failed to add sdcard clock provider\n");
+
+	return ret;
+}
+
+/**
+ * arasan_sdhci_register_sdclk - Register the sdcardclk for a PHY to use
+ *
+ * @sdhci_arasan:	Our private data structure.
+ * @clk_xin:		Pointer to the functional clock
+ * @dev:		Pointer to our struct device.
+ *
+ * Some PHY devices need to know what the actual card clock is.  In order for
+ * them to find out, we'll provide a clock through the common clock framework
+ * for them to query.
+ *
+ * Note: without seriously re-architecting SDHCI's clock code and testing on
+ * all platforms, there's no way to create a totally beautiful clock here
+ * with all clock ops implemented.  Instead, we'll just create a clock that can
+ * be queried and set the CLK_GET_RATE_NOCACHE attribute to tell common clock
+ * framework that we're doing things behind its back.  This should be sufficient
+ * to create nice clean device tree bindings and later (if needed) we can try
+ * re-architecting SDHCI if we see some benefit to it.
+ *
+ * Return: 0 on success and error value on error
+ */
+static int arasan_sdhci_register_sdclk(struct sdhci_arasan_clk_data *sdhci_arasan,
+				       struct clk *clk_xin,
+				       struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	u32 num_clks = 0;
+	int ret;
+
+	/* Providing a clock to the PHY is optional; no error if missing */
+	if (of_property_read_u32(np, "#clock-cells", &num_clks) < 0)
+		return 0;
+
+	ret = arasan_sdhci_register_sdcardclk(sdhci_arasan, clk_xin, dev);
+	if (ret)
+		return ret;
+
+	if (num_clks)
+		return arasan_sdhci_register_sampleclk(sdhci_arasan, clk_xin,
+						       dev);
+
+	return 0;
+}
+
 /**
  * arasan_dt_parse_clk_phases - Read Clock Delay values from DT
  *
@@ -402,6 +716,8 @@ static int arasan_sdhci_probe(struct device *dev)
 	mci->f_max = clk_get_rate(clk_xin);
 	mci->f_min = 50000000 / 256;
 
+	arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
+
 	arasan_dt_parse_clk_phases(dev, &arasan_sdhci->clk_data);
 
 	/* parse board supported bus width capabilities */

-- 
2.40.1



