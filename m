Delivery-date: Mon, 02 May 2022 16:31:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlX5W-006By8-1O
	for lore@lore.pengutronix.de; Mon, 02 May 2022 16:31:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlX5T-0002A2-8j
	for lore@pengutronix.de; Mon, 02 May 2022 16:31:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Aqvq8vtPomSsG+DlzFWCSdCcNvqM7BNWSuymy9yf3Ng=; b=axJTjpcx0rEb80
	Lx6KahkDDNBv+9PbZ6YdtjlVkEctlh2OMP24DKyPKkJpzOBKAu/raYc4OUzweNPa/EhQVK8BlYmeH
	9QIz1bLKhTb9l4qfthVxPGG7neWrDSSTP6AvXNnzv1SDY6KuAayiziz/q6XiGys830mV1qt8gc/K4
	OOj21PugcKhj6FtIy/4H0+6VRAsNS37CDmqt1XldLshuvxrGIhz+U6aBh0sdI/6YEexqlWrk7k7uf
	J+TGzrmGAUp/yYGa4SQcBRXb7ZCJ8IXfJanA0DyXagVep1Dr68zEo+CFIbYtJs9NrE3OxId2lx1xz
	VRUEFoO2VG/ebn3OW1cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlX44-001OZS-3L; Mon, 02 May 2022 14:30:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlX3v-001OXn-8M
 for barebox@lists.infradead.org; Mon, 02 May 2022 14:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nlX3r-0001qm-2E; Mon, 02 May 2022 16:30:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nlX3r-006YHa-Q9; Mon, 02 May 2022 16:30:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nlX3p-005gaG-Aw; Mon, 02 May 2022 16:30:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 May 2022 16:29:59 +0200
Message-Id: <20220502142959.1325298-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_073007_338540_AA7DF5EC 
X-CRM114-Status: GOOD (  16.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: rpi: fix CM3 breakage after multi-image rework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox used to apply quirks by asking VideoCore firmware. If this was
not possible, an error message is printed, but other initialization
happened as expected. With the move to board driver matched by DT, we
incur two breakages:

  - Compute Module 3/3+ used to be explicitly supported, but are absent
    in new compatible list
  - Unsupported variants used to initialize with only an error message,
    but now their revision ID must be known

Fix this by amending the compatible list with all non-Raspberry Pi 4
compatibles listed in the binding. We also make existence of a match
data optional and error out if it doesn't exist. This is so far unused,
but it conveys the intent for future users.

Fixes: c062cd5cf47d ("ARM: rpi: validate devicetree compatible instead of changing model name")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Only build-tested.
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 32 ++++++++++++++++++++---
 arch/arm/mach-bcm283x/include/mach/mbox.h |  1 +
 2 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 82da4d646482..41ef7d16773e 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -350,8 +350,10 @@ static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
 	const struct rpi_machine_data *dcfg;
 
 	dcfg = of_device_get_match_data(priv->dev);
-	if (!dcfg)
-		return ERR_PTR(-EINVAL);
+	if (!dcfg) {
+		dev_err(priv->dev, "Unknown board. Not applying fixups\n");
+		return NULL;
+	}
 
 	for (; dcfg->hw_id != U8_MAX; dcfg++) {
 		if (priv->hw_id & 0x800000) {
@@ -367,7 +369,7 @@ static const struct rpi_machine_data *rpi_get_dcfg(struct rpi_priv *priv)
 		return dcfg;
 	}
 
-	dev_err(priv->dev, "Failed to get dcfg for board_id: 0x%x.\n",
+	dev_err(priv->dev, "dcfg 0x%x for board_id doesn't match DT compatible\n",
 		priv->hw_id);
 	return ERR_PTR(-ENODEV);
 }
@@ -405,7 +407,7 @@ static int rpi_devices_probe(struct device_d *dev)
 	rpi_env_init();
 	rpi_vc_fdt();
 
-	if (dcfg->init)
+	if (dcfg && dcfg->init)
 		dcfg->init(priv);
 
 	reg = regulator_get_name("bcm2835_usb");
@@ -584,6 +586,24 @@ static const struct rpi_machine_data rpi_3_model_b_plus[] = {
 	},
 };
 
+static const struct rpi_machine_data rpi_compute_module_3[] = {
+	{
+		.hw_id = BCM2837_BOARD_REV_CM3,
+	}, {
+		.hw_id = BCM2837B0_BOARD_REV_CM3_PLUS,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
+static const struct rpi_machine_data rpi_model_zero_2_w[] = {
+	{
+		.hw_id = BCM2837B0_BOARD_REV_ZERO_2,
+	}, {
+		.hw_id = U8_MAX
+	},
+};
+
 static const struct of_device_id rpi_of_match[] = {
 	/* BCM2835 based Boards */
 	{ .compatible = "raspberrypi,model-a", .data = rpi_model_a },
@@ -604,6 +624,10 @@ static const struct of_device_id rpi_of_match[] = {
 	{ .compatible = "raspberrypi,3-model-a-plus", .data = rpi_3_model_a_plus },
 	{ .compatible = "raspberrypi,3-model-b", .data = rpi_3_model_b },
 	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_model_b_plus },
+	{ .compatible = "raspberrypi,model-zero-2-w", .data = rpi_model_zero_2_w },
+	{ .compatible = "raspberrypi,3-compute-module", .data = rpi_compute_module_3 },
+	{ .compatible = "raspberrypi,3-compute-module-lite", .data = rpi_compute_module_3 },
+
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
index f10f5bc14844..a9f06512bc23 100644
--- a/arch/arm/mach-bcm283x/include/mach/mbox.h
+++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
@@ -171,6 +171,7 @@ struct bcm2835_mbox_tag_hdr {
 #define BCM2837B0_BOARD_REV_3B_PLUS   	0x0d
 #define BCM2837B0_BOARD_REV_3A_PLUS   	0x0e
 #define BCM2837B0_BOARD_REV_CM3_PLUS	0x10
+#define BCM2837B0_BOARD_REV_ZERO_2	0x12
 
 struct bcm2835_mbox_tag_get_board_rev {
 	struct bcm2835_mbox_tag_hdr tag_hdr;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

