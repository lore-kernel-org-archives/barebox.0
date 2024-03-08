Delivery-date: Fri, 08 Mar 2024 12:18:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFd-00DdBP-35
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 12:18:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riYFb-0000sl-Mk
	for lore@pengutronix.de; Fri, 08 Mar 2024 12:18:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xcz5cTmleuORXAy3Ii5/ZkPzabPattwsmrvi78u3G04=; b=2s61fEi7dUil2OUiscWs61kxjb
	BPYvENfrrp91sR+MrwpXTjFIqQkff+qeGR69EOBQNC0H/+xihceegCZqfBPrGi2cHvR08nNHVwF9M
	Zum5Y7RX2Dp48Q6uimg1aswUXQ9l8havXL6MK6wdOY4LyhLpPejWOvJLoA1MHQMrEszPc6zCk3j9k
	F0i0REmxtC3gD2P78a1Z+DxkuqhUTB45xgT332cC3HGCntVonIPab/KHYntSu5oEioDswz0QWA+O8
	UqezMC4fYKglCB70KkCCRnNq+F4ARliLsmo9Yz9yIfTevewzctTCGvHrCHpX2b81XR/Ik/rhepcTk
	dAr4b6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYF3-00000008vgt-0hI0;
	Fri, 08 Mar 2024 11:18:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riYEd-00000008vQI-3Plk
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 11:18:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1riYEY-0007Id-Qs
	for barebox@lists.infradead.org; Fri, 08 Mar 2024 12:17:50 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Mar 2024 12:17:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-4-6d50c90485f3@pengutronix.de>
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6082;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=zOWbFMSg00ZGNIfWCTirv04gnqaB8R3e1L2twFZIlUw=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJffT54srw3UO/65NkhS9eYp7y7Vn5s59onhhKmDzx7u
 nLnFAgxdJSyMIhxMciKKbJErj2ksVn4s86X4+cZYOawMoEMYeDiFICJzOFmZPhgc2hGT0Tdgvcv
 5GY9zpBf2v53Cueu13uNzj3ey+sx/3oXI8Ou9CL37U2Ns7epLW/5KPzptO7lT8r+my/q3Hzn4B5
 3ZCkDAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_031756_024276_184E3A51 
X-CRM114-Status: GOOD (  17.45  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/12] mci: arasan: read clk phases from DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Depending on the used SDHCI mode the clock phases are different.
Import the helper function to get these values from the DT from linux v6.7.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c | 121 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 121 insertions(+)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index cc1bad8b62..76022708cd 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -30,10 +30,33 @@
 #define SDHCI_ARASAN_BUS_WIDTH			4
 #define TIMEOUT_VAL				0xE
 
+#define ZYNQMP_CLK_PHASES			10
+#define ZYNQMP_CLK_PHASE_UHS_SDR104		6
+#define ZYNQMP_CLK_PHASE_HS200			9
+/* Default settings for ZynqMP Clock Phases */
+#define ZYNQMP_ICLK_PHASE {0, 63, 63, 0, 63,  0,   0, 183, 54,  0, 0}
+#define ZYNQMP_OCLK_PHASE {0, 72, 60, 0, 60, 72, 135, 48, 72, 135, 0}
+
+/**
+ * struct sdhci_arasan_clk_data - Arasan Controller Clock Data.
+ *
+ * @clk_phase_in:	Array of Input Clock Phase Delays for all speed modes
+ * @clk_phase_out:	Array of Output Clock Phase Delays for all speed modes
+ * @set_clk_delays:	Function pointer for setting Clock Delays
+ * @clk_of_data:	Platform specific runtime clock data storage pointer
+ */
+struct sdhci_arasan_clk_data {
+	int		clk_phase_in[ZYNQMP_CLK_PHASES + 1];
+	int		clk_phase_out[ZYNQMP_CLK_PHASES + 1];
+	void		(*set_clk_delays)(struct sdhci *host);
+	void		*clk_of_data;
+};
+
 struct arasan_sdhci_host {
 	struct mci_host		mci;
 	struct sdhci		sdhci;
 	unsigned int		quirks; /* Arasan deviations from spec */
+	struct sdhci_arasan_clk_data clk_data;
 /* Controller does not have CD wired and will not function normally without */
 #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
 #define SDHCI_ARASAN_QUIRK_NO_1_8_V		BIT(1)
@@ -119,6 +142,7 @@ static int arasan_sdhci_init(struct mci_host *mci, struct device *dev)
 static void arasan_sdhci_set_clock(struct mci_host *mci, unsigned int clock)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
+	struct sdhci_arasan_clk_data *clk_data = &host->clk_data;
 
 	if (host->quirks & SDHCI_ARASAN_QUIRK_CLOCK_25_BROKEN) {
 		/*
@@ -219,6 +243,101 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 	return ret;
 }
 
+static void sdhci_arasan_set_clk_delays(struct sdhci *host)
+{
+	struct arasan_sdhci_host *arasan_sdhci = sdhci_to_arasan(host);
+	struct mci_host *mci = &arasan_sdhci->mci;
+	struct sdhci_arasan_clk_data *clk_data = &arasan_sdhci->clk_data;
+
+}
+
+static void arasan_dt_read_clk_phase(struct device *dev,
+				     struct sdhci_arasan_clk_data *clk_data,
+				     unsigned int timing, const char *prop)
+{
+	struct device_node *np = dev->of_node;
+
+	u32 clk_phase[2] = {0};
+	int ret;
+
+	/*
+	 * Read Tap Delay values from DT, if the DT does not contain the
+	 * Tap Values then use the pre-defined values.
+	 */
+	ret = of_property_read_u32_array(np, prop, &clk_phase[0], 2);
+	if (ret < 0) {
+		dev_dbg(dev, "Using predefined clock phase for %s = %d %d\n",
+			prop, clk_data->clk_phase_in[timing],
+			clk_data->clk_phase_out[timing]);
+		return;
+	}
+
+	/* The values read are Input and Output Clock Delays in order */
+	clk_data->clk_phase_in[timing] = clk_phase[0];
+	clk_data->clk_phase_out[timing] = clk_phase[1];
+}
+
+/**
+ * arasan_dt_parse_clk_phases - Read Clock Delay values from DT
+ *
+ * @dev:		Pointer to our struct device.
+ * @clk_data:		Pointer to the Clock Data structure
+ *
+ * Called at initialization to parse the values of Clock Delays.
+ */
+static void arasan_dt_parse_clk_phases(struct device *dev,
+				       struct sdhci_arasan_clk_data *clk_data)
+{
+	u32 mio_bank = 0;
+	int i;
+
+	/*
+	 * This has been kept as a pointer and is assigned a function here.
+	 * So that different controller variants can assign their own handling
+	 * function.
+	 */
+	clk_data->set_clk_delays = sdhci_arasan_set_clk_delays;
+
+	if (of_device_is_compatible(dev->of_node, "xlnx,zynqmp-8.9a")) {
+		u32 zynqmp_iclk_phase[ZYNQMP_CLK_PHASES + 1] = ZYNQMP_ICLK_PHASE;
+		u32 zynqmp_oclk_phase[ZYNQMP_CLK_PHASES + 1] = ZYNQMP_OCLK_PHASE;
+
+		of_property_read_u32(dev->of_node, "xlnx,mio-bank", &mio_bank);
+		if (mio_bank == 2) {
+			zynqmp_oclk_phase[ZYNQMP_CLK_PHASE_UHS_SDR104] = 90;
+			zynqmp_oclk_phase[ZYNQMP_CLK_PHASE_HS200] = 90;
+		}
+
+		for (i = 0; i <= ZYNQMP_CLK_PHASES; i++) {
+			clk_data->clk_phase_in[i] = zynqmp_iclk_phase[i];
+			clk_data->clk_phase_out[i] = zynqmp_oclk_phase[i];
+		}
+	}
+
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_LEGACY,
+				 "clk-phase-legacy");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS,
+				 "clk-phase-mmc-hs");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_SD_HS,
+				 "clk-phase-sd-hs");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR12,
+				 "clk-phase-uhs-sdr12");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR25,
+				 "clk-phase-uhs-sdr25");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR50,
+				 "clk-phase-uhs-sdr50");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_SDR104,
+				 "clk-phase-uhs-sdr104");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_UHS_DDR50,
+				 "clk-phase-uhs-ddr50");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_DDR52,
+				 "clk-phase-mmc-ddr52");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS200,
+				 "clk-phase-mmc-hs200");
+	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS400,
+				 "clk-phase-mmc-hs400");
+}
+
 static int arasan_sdhci_probe(struct device *dev)
 {
 	struct device_node *np = dev->of_node;
@@ -281,6 +400,8 @@ static int arasan_sdhci_probe(struct device *dev)
 	mci->f_max = clk_get_rate(clk_xin);
 	mci->f_min = 50000000 / 256;
 
+	arasan_dt_parse_clk_phases(dev, &arasan_sdhci->clk_data);
+
 	/* parse board supported bus width capabilities */
 	mci_of_parse(&arasan_sdhci->mci);
 

-- 
2.40.1



