Delivery-date: Tue, 28 Jan 2025 17:58:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcoux-005b29-2E
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 17:58:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcoux-000563-PS
	for lore@pengutronix.de; Tue, 28 Jan 2025 17:58:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iun7esqXkjGpkUUMCnDxt+oYu2oHvyMxI08dGXtKBAI=; b=vLyFmHDQlLbcDzVoQp8e4vaaYV
	30+vQSEnpD15n7n2dwYk1FTIzT0C3frTUDJNac6tvd1kFDrIR57bvt7Bkst4HC2mhHuyBIZBV3XPp
	BWrJ4urKESgIdQd2Zy/W2I2oXPLQpEaNVEH/V4EUO8hMoVf7+8NB1A1iWIk+Xe50ig99ZEOX3CTZX
	u/1le9r1/wJwEKogvvY0zSscDTZqXqDvcD8SRf15RRegGJLSFD2yRfQWj10E9uiHND2eftKJFatOF
	PuhmekOAg4XX7uCMf+XCcqRsiYKSB1DNeDyPAi+5+ZfUpB1miJRMnfYzg0YVv1Smgf5p77tw5p7Pi
	c7jPjf7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcouW-00000005P8b-2icC;
	Tue, 28 Jan 2025 16:58:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcouU-00000005P7v-0TfA
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 16:57:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcouS-0004y9-Pl
	for barebox@lists.infradead.org; Tue, 28 Jan 2025 17:57:56 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcouS-002KF6-1v
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 17:57:56 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcouS-007XLc-38
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 17:57:56 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 28 Jan 2025 17:57:55 +0100
Message-Id: <20250128165755.1796439-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_085758_148627_E04FEE01 
X-CRM114-Status: GOOD (  13.21  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5] video: simple-panel: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

---
v4 -> v5: - regulator enable/disable before and after the gpio in right order
          - use dev_errp_probe after regulator_get
v3 -> v4: - better bail out if the regulator is set but not available
v2 -> v3: - reset regulator->power to NULL in case nothing was found
v1 -> v2: - added the missing signed-off-by
---
 drivers/video/simple-panel.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 7048e2f51b..931cbbe65f 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -12,6 +12,7 @@
 #include <fb.h>
 #include <gpio.h>
 #include <of_gpio.h>
+#include <regulator.h>
 #include <video/backlight.h>
 #include <video/vpl.h>
 #include <i2c/i2c.h>
@@ -25,6 +26,7 @@ struct simple_panel {
 	struct device_node *backlight_node;
 	struct backlight_device *backlight;
 	struct device_node *ddc_node;
+	struct regulator *power;
 	int enable_delay;
 };
 
@@ -42,6 +44,8 @@ static int simple_panel_enable(struct simple_panel *panel)
 		}
 	}
 
+	regulator_enable(panel->power);
+
 	if (gpio_is_valid(panel->enable_gpio))
 		gpio_direction_output(panel->enable_gpio,
 			panel->enable_active_high);
@@ -69,6 +73,8 @@ static int simple_panel_disable(struct simple_panel *panel)
 		gpio_direction_output(panel->enable_gpio,
 			!panel->enable_active_high);
 
+	regulator_disable(panel->power);
+
 	return 0;
 }
 
@@ -154,6 +160,10 @@ static int simple_panel_probe(struct device *dev)
 
 	panel->backlight_node = of_parse_phandle(node, "backlight", 0);
 
+	panel->power = regulator_get(dev, "power");
+	if (IS_ERR(panel->power))
+		return dev_errp_probe(dev, panel->power, "Cannot find regulator\n");
+
 	ret = vpl_register(&panel->vpl);
 	if (ret)
 		return ret;
-- 
2.39.5



