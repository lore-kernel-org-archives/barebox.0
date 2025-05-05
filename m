Delivery-date: Mon, 05 May 2025 14:08:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBuce-002S7d-01
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucc-0007Kx-Kt
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=huz/jmS0ahVL9V0DZ9OMAPS8KDOAJetKM4YSnDSKeWY=; b=XqxEhSTOcQnQ62gN5RwHPRQ0JT
	BBeVWuqmkiaUF3T4/rPru6mXxeK3ibb7NAbctPuY3ezJ1QpfOSbZDxYx/NV8Ct5Sk9Xz4MsCSVYBp
	MeAtNlf2TNRDgf9pjCTIySNZp/O/E6iqhMpf43j6ySVVDJ7Oqk1Wm5rbFr4YqmYi0qftFmbO5PbVT
	eRSQ0cuZoAlHQpnUIuIyZj0gRYCZRvVMomPpw7+F/V1iK9hoI8dBy8TDBIbJWG5iNyg+IdYIdGn3C
	Bv2Wkn7oL2fKkNW+5eCR3prGUjFuoRaDQFH6H1kZXevRgkqSqp0E/UF/hGPI+FjsE7ZwBIG3O15W5
	fwLaqHQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuc0-00000007FsC-0cnl;
	Mon, 05 May 2025 12:07:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuai-00000007FaC-48GM
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006RV-Ce; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001DxD-0b;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-1n;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:05 +0200
Message-Id: <20250505120633.3717186-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050637_375327_6EF7755F 
X-CRM114-Status: GOOD (  24.91  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/30] mci: move most recent I/O settings into mci_host::ios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already keep around mci_host::{clock,bus_width,timing}, which hold
the last configured I/O settings.

Before duplicating yet another member in struct mci_host, let's do as
Linux does and embed the active struct mmc_ios directly directly into
the MCI object.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c           | 14 ++++----
 drivers/mci/atmel_mci.c              |  4 +--
 drivers/mci/mci-core.c               | 48 ++++++++++++++--------------
 drivers/mci/mmci.c                   | 18 +++++------
 drivers/mci/rockchip-dwcmshc-sdhci.c |  2 +-
 drivers/mci/sdhci.c                  | 10 +++---
 drivers/mci/stm32_sdmmc2.c           | 12 +++----
 include/mci.h                        | 10 +++---
 8 files changed, 58 insertions(+), 60 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index e987ff654862..0ec4cb57ab76 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -155,7 +155,7 @@ static int arasan_zynqmp_execute_tuning(struct mci_host *mci, u32 opcode)
 	int err;
 
 	/* ZynqMP SD controller does not perform auto tuning in DDR50 mode */
-	if (mci->timing == MMC_TIMING_UHS_DDR50)
+	if (mci->ios.timing == MMC_TIMING_UHS_DDR50)
 		return 0;
 
 	arasan_zynqmp_dll_reset(host, device_id);
@@ -205,9 +205,9 @@ static void arasan_sdhci_set_clock(struct mci_host *mci, unsigned int clock)
 	}
 
 	clk_set_phase(clk_data->sampleclk,
-		      clk_data->clk_phase_in[mci->mci->host->timing]);
+		      clk_data->clk_phase_in[mci->mci->host->ios.timing]);
 	clk_set_phase(clk_data->sdcardclk,
-		      clk_data->clk_phase_out[mci->mci->host->timing]);
+		      clk_data->clk_phase_out[mci->mci->host->ios.timing]);
 
 	sdhci_set_clock(&host->sdhci, clock, mci->f_max);
 }
@@ -312,9 +312,9 @@ static void sdhci_arasan_set_clk_delays(struct sdhci *host)
 	struct sdhci_arasan_clk_data *clk_data = &arasan_sdhci->clk_data;
 
 	clk_set_phase(clk_data->sampleclk,
-		      clk_data->clk_phase_in[mci->timing]);
+		      clk_data->clk_phase_in[mci->ios.timing]);
 	clk_set_phase(clk_data->sdcardclk,
-		      clk_data->clk_phase_out[mci->timing]);
+		      clk_data->clk_phase_out[mci->ios.timing]);
 }
 
 static void arasan_dt_read_clk_phase(struct device *dev,
@@ -372,7 +372,7 @@ static int arasan_zynqmp_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 	/* Assert DLL Reset */
 	zynqmp_pm_sd_dll_reset(node_id, PM_DLL_RESET_ASSERT);
 
-	switch (host->timing) {
+	switch (host->ios.timing) {
 	case MMC_TIMING_MMC_HS:
 	case MMC_TIMING_SD_HS:
 	case MMC_TIMING_UHS_DDR50:
@@ -441,7 +441,7 @@ static int arasan_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 	if (sdhci_arasan->sdhci.version < SDHCI_SPEC_300)
 		return 0;
 
-	switch (host->timing) {
+	switch (host->ios.timing) {
 	case MMC_TIMING_MMC_HS:
 	case MMC_TIMING_SD_HS:
 	case MMC_TIMING_UHS_DDR50:
diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 18d623f20823..1012feb6c226 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -35,9 +35,9 @@ static void atmci_info(struct device *mci_dev)
 {
 	struct atmel_mci *host = mci_dev->priv;
 
-	printf("  Bus data width: %d bit\n", host->mci.bus_width);
+	printf("  Bus data width: %d bit\n", host->mci.ios.bus_width);
 
-	printf("  Bus frequency: %u Hz\n", host->mci.clock);
+	printf("  Bus frequency: %u Hz\n", host->mci.ios.clock);
 	printf("  Frequency limits: ");
 	if (host->mci.f_min == 0)
 		printf("no lower limit ");
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index c4830a47a5f4..498ea71d96c6 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -121,7 +121,7 @@ static int mci_set_blocklen(struct mci *mci, unsigned len)
 {
 	struct mci_cmd cmd = {};
 
-	if (mci->host->timing == MMC_TIMING_MMC_DDR52)
+	if (mci->host->ios.timing == MMC_TIMING_MMC_DDR52)
 		return 0;
 
 	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCKLEN, len, MMC_RSP_R1);
@@ -1032,14 +1032,14 @@ static void mci_set_ios(struct mci *mci)
 {
 	struct mci_host *host = mci->host;
 	struct mci_ios ios = {
-		.bus_width = host->bus_width,
-		.clock = host->clock,
-		.timing = host->timing,
+		.bus_width = host->ios.bus_width,
+		.clock = host->ios.clock,
+		.timing = host->ios.timing,
 	};
 
 	host->ops.set_ios(host, &ios);
 
-	host->actual_clock = host->clock;
+	host->actual_clock = host->ios.clock;
 }
 
 /**
@@ -1058,7 +1058,7 @@ static void mci_set_clock(struct mci *mci, unsigned clock)
 	if (clock < host->f_min)
 		clock = host->f_min;
 
-	host->clock = clock;	/* the new target frequency */
+	host->ios.clock = clock;	/* the new target frequency */
 	mci_set_ios(mci);
 }
 
@@ -1071,7 +1071,7 @@ static void mci_set_bus_width(struct mci *mci, enum mci_bus_width width)
 {
 	struct mci_host *host = mci->host;
 
-	host->bus_width = width;	/* the new target bus width */
+	host->ios.bus_width = width;	/* the new target bus width */
 	mci_set_ios(mci);
 }
 
@@ -1432,7 +1432,7 @@ static int mci_startup_sd(struct mci *mci)
 	}
 
 	if (mci->tran_speed > 25000000)
-		mci->host->timing = MMC_TIMING_SD_HS;
+		mci->host->ios.timing = MMC_TIMING_SD_HS;
 
 	mci_set_clock(mci, mci->tran_speed);
 
@@ -1471,7 +1471,7 @@ static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width,
 	if (err < 0)
 		goto out;
 
-	mci->host->timing = timing;
+	mci->host->ios.timing = timing;
 	mci_set_bus_width(mci, bus_width);
 
 	switch (bus_width) {
@@ -1526,7 +1526,7 @@ static int mci_mmc_select_bus_width(struct mci *mci)
 		 * 4bit transfer mode. On success set the corresponding
 		 * bus width on the host.
 		 */
-		ret = mci_mmc_try_bus_width(mci, bus_widths[idx], host->timing);
+		ret = mci_mmc_try_bus_width(mci, bus_widths[idx], host->ios.timing);
 		if (ret > 0)
 			break;
 	}
@@ -1548,9 +1548,9 @@ static int mci_mmc_select_hs_ddr(struct mci *mci)
 	if (!(mci_caps(mci) & (MMC_CAP_MMC_1_8V_DDR | MMC_CAP_MMC_3_3V_DDR)))
 		return 0;
 
-	ret = mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_DDR52);
+	ret = mci_mmc_try_bus_width(mci, host->ios.bus_width, MMC_TIMING_MMC_DDR52);
 	if (ret < 0)
-		return mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_HS);
+		return mci_mmc_try_bus_width(mci, host->ios.bus_width, MMC_TIMING_MMC_HS);
 
 	/* Block length is fixed to 512 bytes while in DDR mode */
 	mci->read_bl_len = SECTOR_SIZE;
@@ -1666,10 +1666,10 @@ static int mmc_select_hs200(struct mci *mci)
 		 * NB: We can't move to full (HS200) speeds until after we've
 		 * successfully switched over.
 		 */
-		old_timing = mci->host->timing;
-		old_clock = mci->host->clock;
+		old_timing = mci->host->ios.timing;
+		old_clock = mci->host->ios.clock;
 
-		mci->host->timing = MMC_TIMING_MMC_HS200;
+		mci->host->ios.timing = MMC_TIMING_MMC_HS200;
 		mci_set_ios(mci);
 		mci_set_clock(mci, mci->host->hs_max_dtr);
 
@@ -1680,8 +1680,8 @@ static int mmc_select_hs200(struct mci *mci)
 		 * it is a switch error.
 		 */
 		if (err == -EBADMSG) {
-			mci->host->clock = old_clock;
-			mci->host->timing = old_timing;
+			mci->host->ios.clock = old_clock;
+			mci->host->ios.timing = old_timing;
 			mci_set_ios(mci);
 		}
 	}
@@ -1759,7 +1759,7 @@ static int mci_startup_mmc(struct mci *mci)
 		else
 			mci->tran_speed = 26000000;
 
-		host->timing = MMC_TIMING_MMC_HS;
+		host->ios.timing = MMC_TIMING_MMC_HS;
 	}
 
 	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
@@ -1774,7 +1774,7 @@ static int mci_startup_mmc(struct mci *mci)
 			ret = mmc_hs200_tuning(mci);
 
 		if (ret) {
-			host->timing = MMC_TIMING_MMC_HS;
+			host->ios.timing = MMC_TIMING_MMC_HS;
 			mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
 		}
 	}
@@ -2448,17 +2448,17 @@ static void mci_info(struct device *dev)
 	}
 
 	printf("Host information:\n");
-	printf("  current clock: %d\n", host->clock);
+	printf("  current clock: %d\n", host->ios.clock);
 
-	if (host->bus_width == MMC_BUS_WIDTH_8)
+	if (host->ios.bus_width == MMC_BUS_WIDTH_8)
 		bw = 8;
-	else if (host->bus_width == MMC_BUS_WIDTH_4)
+	else if (host->ios.bus_width == MMC_BUS_WIDTH_4)
 		bw = 4;
 	else
 		bw = 1;
 
 	printf("  current buswidth: %d\n", bw);
-	printf("  current timing: %s\n", mci_timing_tostr(host->timing));
+	printf("  current timing: %s\n", mci_timing_tostr(host->ios.timing));
 	mci_print_caps(host->host_caps);
 
 	printf("Card information:\n");
@@ -2841,7 +2841,7 @@ static int mci_card_probe(struct mci *mci)
 
 on_error:
 	if (rc != 0) {
-		host->clock = 0;	/* disable the MCI clock */
+		host->ios.clock = 0;	/* disable the MCI clock */
 		mci_set_ios(mci);
 		regulator_disable(host->supply);
 		mci->nr_parts = 0;
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index c811d3980f98..1a70776bb125 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -472,35 +472,35 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	sdi_clkcr = mmci_readl(host, MMCICLOCK);
 
 	/* Ramp up the clock rate */
-	if (mci->clock) {
+	if (mci->ios.clock) {
 		u32 clkdiv = 0;
 		u32 tmp_clock;
 
 		dev_dbg(host->hw_dev, "setting clock and bus width in the host:");
-		if (mci->clock >= mci->f_max) {
+		if (mci->ios.clock >= mci->f_max) {
 			clkdiv = 0;
-			mci->clock = mci->f_max;
+			mci->ios.clock = mci->f_max;
 		} else {
-			clkdiv = (host->mclk / mci->clock) - 2;
+			clkdiv = (host->mclk / mci->ios.clock) - 2;
 		}
 		tmp_clock = host->mclk / (clkdiv + 2);
-		while (tmp_clock > mci->clock) {
+		while (tmp_clock > mci->ios.clock) {
 			clkdiv++;
 			tmp_clock = host->mclk / (clkdiv + 2);
 		}
 		if (clkdiv > MCI_CLK_CLKDIV_MASK)
 			clkdiv = MCI_CLK_CLKDIV_MASK;
 		tmp_clock = host->mclk / (clkdiv + 2);
-		mci->clock = tmp_clock;
+		mci->ios.clock = tmp_clock;
 		sdi_clkcr &= ~(MCI_CLK_CLKDIV_MASK);
 		sdi_clkcr |= clkdiv;
 	}
 
 	/* Set the bus width */
-	if (mci->bus_width) {
+	if (mci->ios.bus_width) {
 		u32 buswidth = 0;
 
-		switch (mci->bus_width) {
+		switch (mci->ios.bus_width) {
 		case MMC_BUS_WIDTH_1:
 			buswidth |= MCI_1BIT_BUS;
 			break;
@@ -511,7 +511,7 @@ static void mci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 			buswidth |= MCI_ST_8BIT_BUS;
 			break;
 		default:
-			dev_err(host->hw_dev, "Invalid bus width (%d)\n", mci->bus_width);
+			dev_err(host->hw_dev, "Invalid bus width (%d)\n", mci->ios.bus_width);
 			break;
 		}
 		sdi_clkcr &= ~(MCI_xBIT_BUS_MASK);
diff --git a/drivers/mci/rockchip-dwcmshc-sdhci.c b/drivers/mci/rockchip-dwcmshc-sdhci.c
index ff4ba3125873..6f3795465765 100644
--- a/drivers/mci/rockchip-dwcmshc-sdhci.c
+++ b/drivers/mci/rockchip-dwcmshc-sdhci.c
@@ -130,7 +130,7 @@ static void rk_sdhci_set_clock(struct rk_sdhci_host *host, unsigned int clock)
 	u32 txclk_tapnum = DLL_TXCLK_TAPNUM_DEFAULT, extra;
 	int err;
 
-	host->mci.clock = 0;
+	host->mci.ios.clock = 0;
 
 	/* DO NOT TOUCH THIS SETTING */
 	extra = DWCMSHC_EMMC_DLL_DLYENA |
diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 2c12f00ab967..f54cc6d58b2c 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -87,7 +87,7 @@ static int sdhci_send_tuning(struct sdhci *host, u32 opcode)
 	 * to 64 here.
 	 */
 	if (cmd.cmdidx == MMC_SEND_TUNING_BLOCK_HS200 &&
-	    host->mci->bus_width == MMC_BUS_WIDTH_8) {
+	    host->mci->ios.bus_width == MMC_BUS_WIDTH_8) {
 		sdhci_write16(host, SDHCI_BLOCK_SIZE, SDHCI_MAKE_BLKSZ(7, 128));
 	} else {
 		sdhci_write16(host, SDHCI_BLOCK_SIZE, SDHCI_MAKE_BLKSZ(7, 64));
@@ -196,7 +196,7 @@ int sdhci_execute_tuning(struct sdhci *sdhci, u32 opcode)
 	 * If the Host Controller supports the HS200 mode then the
 	 * tuning function has to be executed.
 	 */
-	switch (host->timing) {
+	switch (host->ios.timing) {
 	/* HS400 tuning is done in HS200 mode */
 	case MMC_TIMING_MMC_HS400:
 		err = -EINVAL;
@@ -859,9 +859,9 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 
 	BUG_ON(!host->mci); /* Call sdhci_setup_host() before using this */
 
-	host->mci->clock = 0;
+	host->mci->ios.clock = 0;
 
-	sdhci_set_uhs_signaling(host, host->mci->timing);
+	sdhci_set_uhs_signaling(host, host->mci->ios.timing);
 
 	sdhci_wait_idle_data(host, NULL);
 
@@ -870,7 +870,7 @@ void sdhci_set_clock(struct sdhci *host, unsigned int clock, unsigned int input_
 	if (clock == 0)
 		return;
 
-	clk = sdhci_calc_clk(host, clock, &host->mci->clock, input_clock);
+	clk = sdhci_calc_clk(host, clock, &host->mci->ios.clock, input_clock);
 	sdhci_enable_clk(host, clk);
 }
 
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 30745ea7c6c0..b517ab7964e2 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -254,7 +254,7 @@ static void stm32_sdmmc2_pwron(struct stm32_sdmmc2_priv *priv)
 	       priv->base + SDMMC_POWER);
 
 	/* during the first 74 SDMMC_CK cycles the SDMMC is still disabled. */
-	udelay(DIV_ROUND_UP(74 * USEC_PER_SEC, priv->mci.clock));
+	udelay(DIV_ROUND_UP(74 * USEC_PER_SEC, priv->mci.ios.clock));
 }
 
 static dma_addr_t stm32_sdmmc2_start_data(struct stm32_sdmmc2_priv *priv,
@@ -539,17 +539,17 @@ static int stm32_sdmmc2_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 {
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
-	u32 desired = mci->clock;
+	u32 desired = mci->ios.clock;
 	u32 sys_clock = clk_get_rate(priv->clk);
 	u32 clk = 0, ddr = 0;
 
 	dev_dbg(priv->dev, "%s: bus_width = %d, clock = %d\n", __func__,
-		mci->bus_width, mci->clock);
+		mci->ios.bus_width, mci->ios.clock);
 
 	if (mci_timing_is_ddr(ios->timing))
 		ddr = SDMMC_CLKCR_DDR;
 
-	if (mci->clock)
+	if (mci->ios.clock)
 		stm32_sdmmc2_pwron(priv);
 	else
 		stm32_sdmmc2_pwrcycle(priv);
@@ -570,9 +570,9 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	clk |= ddr;
 
-	if (mci->bus_width == MMC_BUS_WIDTH_4)
+	if (mci->ios.bus_width == MMC_BUS_WIDTH_4)
 		clk |= SDMMC_CLKCR_WIDBUS_4;
-	if (mci->bus_width == MMC_BUS_WIDTH_8)
+	if (mci->ios.bus_width == MMC_BUS_WIDTH_8)
 		clk |= SDMMC_CLKCR_WIDBUS_8;
 
 	writel(clk | priv->clk_reg_msk | SDMMC_CLKCR_HWFC_EN,
diff --git a/include/mci.h b/include/mci.h
index 10bba878a8f9..7ee2e4faa90c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -606,10 +606,8 @@ struct mci_host {
 #define MMC_CAP2_CRYPTO		0
 	unsigned f_min;		/**< host interface lower limit */
 	unsigned f_max;		/**< host interface upper limit */
-	unsigned clock;		/**< Current clock used to talk to the card */
 	unsigned actual_clock;
-	enum mci_bus_width bus_width;	/**< used data bus width to the card */
-	enum mci_timing timing;	/**< used timing specification to the card */
+	struct mci_ios ios;		/* current io bus settings */
 	unsigned hs_max_dtr;
 	unsigned hs200_max_dtr;
 	unsigned max_req_size;
@@ -739,8 +737,8 @@ static inline struct mci *mci_get_device_by_devpath(const char *devpath)
 
 static inline int mmc_card_hs(struct mci *mci)
 {
-	return mci->host->timing == MMC_TIMING_SD_HS ||
-		mci->host->timing == MMC_TIMING_MMC_HS;
+	return mci->host->ios.timing == MMC_TIMING_SD_HS ||
+		mci->host->ios.timing == MMC_TIMING_MMC_HS;
 }
 
 /*
@@ -760,7 +758,7 @@ int mci_rpmb_route_frames(struct mci *mci, void *req, unsigned long reqlen,
 
 static inline bool mmc_card_hs200(struct mci *mci)
 {
-	return mci->host->timing == MMC_TIMING_MMC_HS200;
+	return mci->host->ios.timing == MMC_TIMING_MMC_HS200;
 }
 
 #endif /* _MCI_H_ */
-- 
2.39.5



