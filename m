Delivery-date: Thu, 23 Nov 2023 11:41:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r679C-005jey-0m
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 11:41:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r679C-0003bD-8l
	for lore@pengutronix.de; Thu, 23 Nov 2023 11:41:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XMLVTUbJMvxMj+ExNw8aOZ7+sOtTu+hc2evRhQge0+g=; b=dA+sw4CyLfSHxuziI4I4zN3pk2
	qB2xAd00ZICp6F6qmbu7iyPWluQl9p6j0zbHX5lLC1Rcp8O+nuLDG09vtwYer7tnCz5LKslQJOWZi
	lxvO+CQNw7Yobuno8Zr4AcnsHLmaYOjTw82Lx2M7HGDTG8THnzqiVFycN9TkvSxWKcBW94QEoRxdW
	dOvgrnKm2Qx93A+zX3Y+JY0Hatgn5W7hK/uVaS7bojFCPEjzAqGA+x2KCf33h88ITufSLkasCCtz8
	N/uL5d5/xhCtu0cxUHhi08oXk96wS/447Iqys6RVfIfjz55qDZa0xSZhBT+knQrcp5lFJpiCOT1Ae
	WgXxwlbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r677X-004PFQ-0k;
	Thu, 23 Nov 2023 10:39:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r677T-004PDQ-23
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 10:39:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r677P-0003CJ-Et; Thu, 23 Nov 2023 11:39:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r677P-00B1EU-2K; Thu, 23 Nov 2023 11:39:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r677O-001x3o-39;
	Thu, 23 Nov 2023 11:39:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Nov 2023 11:38:08 +0100
Message-Id: <20231123103808.432548-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231123103808.432548-1-a.fatoum@pengutronix.de>
References: <20231123103808.432548-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_023939_677940_59EF1DF7 
X-CRM114-Status: GOOD (  12.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] mci: stm32_sdmmc2: enable eMMC 52MHz DDR mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dual data rate can be enabled on STM32 SDMMC2 host by toggling a bit in
the CLKRC register and avoiding clock bypass. Let's do that for a nice
boost in throughput. Before:

  barebox@STM32MP157C-ED1:/ time cp /dev/mmc0.data /tmp
  time: 2684ms

After:

  barebox@STM32MP157C-ED1:/ time cp /dev/mmc1.data /tmp
  time: 1624ms

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/stm32_sdmmc2.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index 90e969a867e6..1bfef1ccf0eb 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -538,11 +538,14 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
 	u32 desired = mci->clock;
 	u32 sys_clock = clk_get_rate(priv->clk);
-	u32 clk = 0;
+	u32 clk = 0, ddr = 0;
 
 	dev_dbg(priv->dev, "%s: bus_width = %d, clock = %d\n", __func__,
 		mci->bus_width, mci->clock);
 
+	if (mci_timing_is_ddr(ios->timing))
+		ddr = SDMMC_CLKCR_DDR;
+
 	if (mci->clock)
 		stm32_sdmmc2_pwron(priv);
 	else
@@ -555,13 +558,15 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
 	 * clk_div > 0 and NEGEDGE = 1 => command and data generated on
 	 * SDMMCCLK falling edge
 	 */
-	if (desired && (sys_clock > desired ||
+	if (desired && (sys_clock > desired || ddr ||
 			IS_RISING_EDGE(priv->clk_reg_msk))) {
 		clk = DIV_ROUND_UP(sys_clock, 2 * desired);
 		if (clk > SDMMC_CLKCR_CLKDIV_MAX)
 			clk = SDMMC_CLKCR_CLKDIV_MAX;
 	}
 
+	clk |= ddr;
+
 	if (mci->bus_width == MMC_BUS_WIDTH_4)
 		clk |= SDMMC_CLKCR_WIDBUS_4;
 	if (mci->bus_width == MMC_BUS_WIDTH_8)
@@ -624,6 +629,11 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 	if (mci->f_max >= 52000000)
 		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
 
+	if (of_property_read_bool(np, "mmc-ddr-3_3v"))
+		mci->host_caps |= MMC_CAP_MMC_3_3V_DDR;
+	if (of_property_read_bool(np, "mmc-ddr-1_8v"))
+		mci->host_caps |= MMC_CAP_MMC_1_8V_DDR;
+
 	return mci_register(&priv->mci);
 
 priv_free:
-- 
2.39.2



