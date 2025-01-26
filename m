Delivery-date: Sun, 26 Jan 2025 22:46:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcASs-004qMi-1l
	for lore@lore.pengutronix.de;
	Sun, 26 Jan 2025 22:46:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcASs-0006zO-LP
	for lore@pengutronix.de; Sun, 26 Jan 2025 22:46:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VKr4/Fc8GkE7XfTVKmeyVMH2E13PRSo2IAgoeLtbP+c=; b=VFt1gHteZz8NCJpQKIJyMpYs/l
	OfdjRRqUNsb29ghs9tZF5084HU2AfSATHoh0gaNsYQA5C6T9nfC4K6Ar3OGfWTnbBrqf2KK2WUQWx
	98qfrc+fYyiFjkYYE8PUMLCFa0wcL7wbRT7gUSRN3+CUG7BafPA5qr3zfDMrTq1DIRXGhVlt3zSao
	mRI3zO3vBX53qHgGqE3FoM/5b9y3VpKwCmc+owlJmKz7KBMXSGEm7WE3Lx9w7bVz/UwhPRk+r7fNj
	1BadHo8xNGLcDx6gwW0mmloMNTjysCOW6oYIHt4lMrXVQ8uU0qZR3WGQs/rnjvR/Yx6EpQP37mzcn
	eGORWq9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcASS-000000018R0-3OUw;
	Sun, 26 Jan 2025 21:46:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcASP-000000018QY-3zTJ
	for barebox@lists.infradead.org;
	Sun, 26 Jan 2025 21:46:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcASO-0006rj-OY
	for barebox@lists.infradead.org; Sun, 26 Jan 2025 22:46:16 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcASO-0021Cg-1q
	for barebox@lists.infradead.org;
	Sun, 26 Jan 2025 22:46:16 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1tcASO-0015Ax-33
	for barebox@lists.infradead.org;
	Sun, 26 Jan 2025 22:46:16 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 26 Jan 2025 22:46:14 +0100
Message-Id: <20250126214614.258154-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_134617_991858_AD2281B7 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH v2] video: simple-panel: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: added the missging signed-off-by

 drivers/video/simple-panel.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/video/simple-panel.c b/drivers/video/simple-panel.c
index 7048e2f51b..d4c6874987 100644
--- a/drivers/video/simple-panel.c
+++ b/drivers/video/simple-panel.c
@@ -10,6 +10,7 @@
 #include <linux/err.h>
 #include <of.h>
 #include <fb.h>
+#include <regulator.h>
 #include <gpio.h>
 #include <of_gpio.h>
 #include <video/backlight.h>
@@ -25,6 +26,7 @@ struct simple_panel {
 	struct device_node *backlight_node;
 	struct backlight_device *backlight;
 	struct device_node *ddc_node;
+	struct regulator *power;
 	int enable_delay;
 };
 
@@ -49,6 +51,8 @@ static int simple_panel_enable(struct simple_panel *panel)
 	if (panel->enable_delay)
 		mdelay(panel->enable_delay);
 
+	regulator_enable(panel->power);
+
 	if (panel->backlight) {
 		ret = backlight_set_brightness_default(panel->backlight);
 		if (ret)
@@ -65,6 +69,8 @@ static int simple_panel_disable(struct simple_panel *panel)
 	if (panel->backlight)
 		backlight_set_brightness(panel->backlight, 0);
 
+	regulator_disable(panel->power);
+
 	if (gpio_is_valid(panel->enable_gpio))
 		gpio_direction_output(panel->enable_gpio,
 			!panel->enable_active_high);
@@ -154,6 +160,10 @@ static int simple_panel_probe(struct device *dev)
 
 	panel->backlight_node = of_parse_phandle(node, "backlight", 0);
 
+	panel->power = regulator_get(dev, "power");
+	if (IS_ERR(panel->power))
+		dev_warn(dev, "Cannot find regulator\n");
+
 	ret = vpl_register(&panel->vpl);
 	if (ret)
 		return ret;
-- 
2.39.5



