Delivery-date: Wed, 03 Apr 2024 17:32:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rs2bP-006bhK-34
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 17:32:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rs2bP-00033I-Ao
	for lore@pengutronix.de; Wed, 03 Apr 2024 17:32:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3ZQAlPVI5lyZhwnD91GtEsdVwR3lfIeD2JM7ZIh4joY=; b=on7Nfs+GGiuP4PfSLsEER9HAW2
	qepAwKIwL/fi9pwlaMJ8STHSB9tjto0AyaWuRc6N/4LYQfIZnTh6glUtR87q46DntVS/wBhPxeHND
	wJoPJeIbwbrwtBFBSNMXuzoEQQS8EcBedBhtYd60jU/FN2j0xWt6jnUiYKYqploYIXe88z4vXD6Lt
	VJXhqGSQ60h1HyOOu5sylVj5EH/8WjghllB8cSq1tCCeAIuWZ8Q4e2y+gAl0ZmFbHHJkKxruoy5+r
	H0Yz6E69Ah6IyHKJqgsoEzx2vEozio8KOgxaVHjS9Pdlj4iaJ2YFnTwRicNFDf/MkxJEzASyCPAon
	stpCerEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2ao-0000000Gkl0-2maz;
	Wed, 03 Apr 2024 15:32:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs2al-0000000Gkje-1T8d
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 15:32:00 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rs2ah-0002Jv-1L
	for barebox@lists.infradead.org; Wed, 03 Apr 2024 17:31:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  3 Apr 2024 17:31:51 +0200
Message-Id: <20240403153151.2859387-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_083159_414284_2DD2D278 
X-CRM114-Status: GOOD (  14.89  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pmdomain: imx8mp-blk-ctrl: fix adb handshake handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix powering the DWC3 USB subsystem which is part of the HSIO BLKCTRL.
Currently we enable the USB clocks and the USB module clock within the
HSIO BLKCTRL. The later get stuck during the first call of
imx8mp_blk_ctrl_power_on() since the parent GPCv2 device is not powered
yet.

Fix this by porting the Linux imx8mp_blk_ctrl::power_nb notifier_block
logic. The Linux driver enable/disable the USB module to propagate the
ADB handshake instead of powering it permanently. The logic is executed
after the parent GPCv2 power domain is powered so we can access the HSIO
BLKCTRL registers.

Fixes: 5cb41f0b62dc ("pmdomain: imx: add i.MX8MP HSIO blk-ctrl driver")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 28 ++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
index 38de9d88a139..b71a4a793761 100644
--- a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
+++ b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
@@ -192,20 +192,34 @@ static void imx8mp_hsio_blk_ctrl_power_off(struct imx8mp_blk_ctrl *bc,
 	}
 }
 
-static int imx8mp_hsio_enable_usb_clk(struct imx8mp_blk_ctrl *bc)
+static int imx8mp_hsio_propagate_adb_handshake(struct imx8mp_blk_ctrl *bc)
 {
 	int ret;
 	struct clk_bulk_data *usb_clk = bc->domains[IMX8MP_HSIOBLK_PD_USB].clks;
 	int num_clks = bc->domains[IMX8MP_HSIOBLK_PD_USB].data->num_clks;
+	static int once;
 
+	if (once)
+		return 0;
+
+	/*
+	 * enable USB clock for a moment for the power-on ADB handshake
+	 * to proceed
+	 */
 	ret = clk_bulk_prepare_enable(num_clks, usb_clk);
 	if (ret)
 		return ret;
 
 	regmap_set_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
 
-	return 0;
+	udelay(5);
+
+	regmap_clear_bits(bc->regmap, GPR_REG0, USB_CLOCK_MODULE_EN);
+	clk_bulk_disable_unprepare(num_clks, usb_clk);
 
+	once++;
+
+	return 0;
 }
 
 static const struct imx8mp_blk_ctrl_domain_data imx8mp_hsio_domain_data[] = {
@@ -251,10 +265,6 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 	struct imx8mp_blk_ctrl *bc = domain->bc;
 	int ret;
 
-	ret = imx8mp_hsio_enable_usb_clk(bc);
-	if (ret)
-		return ret;
-
 	/* make sure bus domain is awake */
 	ret = pm_runtime_resume_and_get_genpd(bc->bus_power_dev);
 	if (ret < 0) {
@@ -262,6 +272,12 @@ static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
 		return ret;
 	}
 
+	ret = imx8mp_hsio_propagate_adb_handshake(bc);
+	if (ret) {
+		dev_err(bc->dev, "failed to propagate adb handshake\n");
+		goto bus_put;
+	}
+
 	/* enable upstream clocks */
 	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
 	if (ret) {
-- 
2.39.2



