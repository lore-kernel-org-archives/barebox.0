Delivery-date: Tue, 06 May 2025 08:38:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwc-002i3A-1a
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 08:38:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCBwb-0001ug-CD
	for lore@pengutronix.de; Tue, 06 May 2025 08:38:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2x0X72VazL56EIw9M6smSM0buSCyMdGuX4bqOuZyb2k=; b=xTDiFXR2LCi6IlIxT0bJTFaOcj
	Bg8j0Z7U18Gjh4pkrB9TG6LsdqZT5df1pwMVo7yF/D3sjLKX1eSI0xdVIZSi2+k0CJ5ES+LD8pczE
	Sn/dgGaLbELiSuAZ394OdmAErjvDbkYpVSDj28YmlBqz+jdAmPdEpPf469DDT+2ZXEFPV0R8qutus
	IDFOZJqcay3xaUqp4H6oofQZH8vTcQK+PFY9yU83vAEdMBALRxxwCRxxjHv6MNeGeIfdHCKDdI0nA
	zL47XnYi1tZlZwQIpN4bKS3UD1P5y+rSSRBhWfHs7jJpkuS5eEPSuK0WqUTX0303+qVLF7cQDTelb
	latMCB4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBw9-0000000AjQk-1dNB;
	Tue, 06 May 2025 06:37:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCBtA-0000000AiKQ-3db6
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 06:34:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-0000Tb-I9; Tue, 06 May 2025 08:34:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-001LpR-10;
	Tue, 06 May 2025 08:34:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCBt9-00D9CO-2D;
	Tue, 06 May 2025 08:34:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 08:34:44 +0200
Message-Id: <20250506063446.3133582-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
References: <20250506063446.3133582-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_233448_914988_672481E6 
X-CRM114-Status: GOOD (  13.45  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] pinctrl: at91: replace dev_get_drvdata with device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dev_get_drvdata() and device_get_match_data() can already deal with both
OF and non-OF match data, so at91_pinctrl_get_driver_data only adds some
unneeded complexity. Remove it and while at it switch to the less
error-prone device_get_match_data.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 27 +++------------------------
 1 file changed, 3 insertions(+), 24 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 25b4d084ed6d..eb0ce648095d 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -26,13 +26,13 @@
 
 struct at91_pinctrl {
 	struct pinctrl_device pctl;
-	struct at91_pinctrl_mux_ops	*ops;
+	const struct at91_pinctrl_mux_ops	*ops;
 };
 
 struct at91_gpio_chip {
 	struct gpio_chip	chip;
 	void __iomem		*regbase;	/* PIO bank virtual address */
-	struct at91_pinctrl_mux_ops *ops;	/* ops */
+	const struct at91_pinctrl_mux_ops *ops;	/* ops */
 };
 
 #define MAX_GPIO_BANKS		5
@@ -384,27 +384,6 @@ static struct of_device_id at91_pinctrl_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, at91_pinctrl_dt_ids);
 
-static struct at91_pinctrl_mux_ops *at91_pinctrl_get_driver_data(struct device *dev)
-{
-	struct at91_pinctrl_mux_ops *ops_data = NULL;
-	int rc;
-
-	if (dev->of_node) {
-		const struct of_device_id *match;
-		match = of_match_node(at91_pinctrl_dt_ids, dev->of_node);
-		if (!match)
-			ops_data = NULL;
-		else
-			ops_data = (struct at91_pinctrl_mux_ops *)match->data;
-	} else {
-		rc = dev_get_drvdata(dev, (const void **)&ops_data);
-		if (rc)
-			ops_data = NULL;
-	}
-
-	return ops_data;
-}
-
 static int at91_pinctrl_set_conf(struct at91_pinctrl *info, unsigned int pin_num, unsigned int mux, unsigned int conf)
 {
 	unsigned int mask;
@@ -492,7 +471,7 @@ static int at91_pinctrl_probe(struct device *dev)
 
 	info = xzalloc(sizeof(struct at91_pinctrl));
 
-	info->ops = at91_pinctrl_get_driver_data(dev);
+	info->ops = device_get_match_data(dev);
 	if (!info->ops) {
 		dev_err(dev, "failed to retrieve driver data\n");
 		return -ENODEV;
-- 
2.39.5



