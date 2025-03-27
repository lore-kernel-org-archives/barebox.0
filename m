Delivery-date: Thu, 27 Mar 2025 11:07:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk8s-004paT-2O
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 11:07:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txk8s-0004x6-5U
	for lore@pengutronix.de; Thu, 27 Mar 2025 11:07:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CpqjoKePVNvPSMqszrkfXQrCgYZYDfqQGNRwWdnPWWM=; b=kE8BrXCURQgdwwDebi+9AafD/1
	M9UivGs59TuXgerAybXll9Nhy57noc68vzLpeVwuoyC0PjbNmlEKwW4avsPzqM8hFt8++7dw3Kg5U
	UvRhZp7ehcDx/i46lLEz1sBiD51+jFbUo5lAdRLP6nXniA/Hv9qbTG33Vaa+dQOwuHLIsyxw5b+Yg
	Fg10BqKFPmrOqib5efb1Z12dWJxg1qeJh2dPs0PCvI6zEoPP0CoTBrtlBHxtSsua8HlC9J4DHRFtL
	2CzY+2MkW1Xcjdo5yKcadmm05aICEtpVp7/TC+PH0XaRcezQr4n3x92Aj7PyggXIm52oJhSenyy0v
	MZPPzCSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk8Q-0000000Aelx-2FEx;
	Thu, 27 Mar 2025 10:06:50 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txk8O-0000000Ael5-0W7h
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 10:06:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=CpqjoKePVNvPSMqszrkfXQrCgYZYDfqQGNRwWdnPWWM=;
	b=CpJAB7x/QBKgTDFQButmGQURMd3m73Xp72UiQBAvy0U1R2AEGPrcLR80rL8iA0S+olMWopSPNgQcl
	 z8OltCxLeOxSnFlpYiD2/CK+b4GSgrE0VJ/Z2GvJkvwxnfvesTe48L6EKTzyV75U4mAF2VFlrpEDmI
	 vdm/BFUxU1gx8Y3/tD8hIB64PdfNS5TH60AYXHI5rcPnkq0y5Rvb43T/Cvzy6CDyBpWmNYc+iL8hk6
	 QLUQEK46kkh4+M6TQKvb9wYN5fzYETTa33mmgHQJt/Vc3GTOaXgtA6/3oiqW9W2FyCobwNvl78gLa5
	 zYUeaKEcYfVRJ6pfjsZjvMFXMTz5PRA==
X-MSG-ID: 308106b6-0af3-11f0-abc5-005056817704
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Robin van der Gracht <robin@protonic.nl>
Date: Thu, 27 Mar 2025 11:06:34 +0100
Message-ID: <20250327100635.656657-1-robin@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_030648_301356_0F6FB73D 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: boards: protonic-imx6: prtvt7: Don't use fixed numbers for dynamic GPIOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPIO indexing differs from the pin indexing.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 32 +++++++++++++++++++++------
 1 file changed, 25 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 9e62dc1544..4585ca4730 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -21,6 +21,7 @@
 #include <net.h>
 #include <of_device.h>
 #include <linux/regmap.h>
+#include <of_gpio.h>
 #include <sys/mount.h>
 #include <sys/stat.h>
 #include <unistd.h>
@@ -740,17 +741,34 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
 	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
 }
 
-#define GPIO_KEY_F6     (0xe0 + 5)
-#define GPIO_KEY_CYCLE  (0xe0 + 2)
-
 static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
 {
-	/* This function relies heavely on the gpio-pca9539 driver */
+	int gpio_cycle, gpio_f6;
+	struct device_node *keys, *key;
+
+	keys = of_find_compatible_node(NULL, NULL, "gpio-keys");
+	if (!keys) {
+		dev_err(priv->dev, "Can't find gpio-keys of node!\n");
+		return -ENODEV;
+	}
 
-	gpio_direction_input(GPIO_KEY_F6);
-	gpio_direction_input(GPIO_KEY_CYCLE);
+	key = of_find_node_by_name(keys, "key-cycle");
+	gpio_cycle = of_get_named_gpio_flags(key, "gpios", 0, NULL);
+	if (gpio_cycle < 0) {
+		dev_err(priv->dev, "Unable to get cycle key gpio\n");
+		return gpio_cycle;
+	}
+	gpio_request_one(gpio_cycle, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "Cycle");
+
+	key = of_find_node_by_name(keys, "key-f6");
+	gpio_f6 = of_get_named_gpio_flags(key, "gpios", 0, NULL);
+	if (gpio_f6 < 0) {
+		dev_err(priv->dev, "Unable to get F6 key gpio\n");
+		return gpio_f6;
+	}
+	gpio_request_one(gpio_f6, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "F6");
 
-	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
+	if (!(gpio_is_active(gpio_cycle) && gpio_is_active(gpio_f6)))
 		priv->no_usb_check = 1;
 
 	return 0;
-- 
2.43.0



