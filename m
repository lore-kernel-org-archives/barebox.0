Delivery-date: Fri, 13 Jan 2023 12:38:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOM-00AjK9-FP
	for lore@lore.pengutronix.de; Fri, 13 Jan 2023 12:38:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pGIOJ-0006U1-It
	for lore@pengutronix.de; Fri, 13 Jan 2023 12:38:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wiBjYl28pxB3dATQ4X+xGIo/ZWq3y/Byx9ToBxrIN0o=; b=ZZ0U+454oHvEadftod3iQUlYCY
	2wtXylHmxGoYeZNaWJAQvjbnBETbIgsZbLO9sO7NJV+0aTS6wxarkJiM1JvLFn1XHDZq2GVuIHaUW
	Oy7gmu/uHaGIz384YSLGUIwk1OeX2Xb1XGuaSM5P7+9MhG3R8W2rLyrv3vobQT3c8fDM7m9x2W1in
	yeFgUReqGeL2rAdiG7dCHo5UKA/nB72R9QvltGmvMyztiNp+G9xf/YK0e5zMumKzohfrdU15liyxH
	bQBaBdalf/iZ2Mlyk6sPyuHbre5vYPd4Ro47qYKaw7adxMQBb7HDOQbT3Hqvv75iQnLMNM2fTor7c
	cbjMnleg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIMV-002EY1-DR; Fri, 13 Jan 2023 11:36:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGIK9-002DQP-1u
	for barebox@lists.infradead.org; Fri, 13 Jan 2023 11:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK4-0005Yl-BX; Fri, 13 Jan 2023 12:34:12 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK3-005kq1-Lx; Fri, 13 Jan 2023 12:34:11 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1pGIK2-00BGRW-D7; Fri, 13 Jan 2023 12:34:10 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 13 Jan 2023 12:34:04 +0100
Message-Id: <20230113113407.2684725-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230113113407.2684725-1-o.rempel@pengutronix.de>
References: <20230113113407.2684725-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_033417_128306_8839118A 
X-CRM114-Status: GOOD (  14.87  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 5/8] ARM: imx6sx: udoo-neo: add version detection support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are different board versions. Make use of it to be able to get
proper kernel devicetree.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/udoo-neo/board.c | 91 +++++++++++++++++++++++++++++++-
 1 file changed, 89 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/udoo-neo/board.c b/arch/arm/boards/udoo-neo/board.c
index e2078e3395..ffdb70dfae 100644
--- a/arch/arm/boards/udoo-neo/board.c
+++ b/arch/arm/boards/udoo-neo/board.c
@@ -2,12 +2,99 @@
 // SPDX-FileCopyrightText: 2014 Sascha Hauer, Pengutronix
 
 #include <common.h>
-#include <init.h>
-#include <linux/clk.h>
 #include <deep-probe.h>
+#include <gpio.h>
+#include <mach/bbu.h>
+#include <mach/imx6.h>
+
+/**
+ * Detects the board model by checking the R184 and R185 resistors.
+ * A mounted resistor (0Ohm) connects the GPIO to ground, so the
+ * GPIO value will be 0.
+ *
+ * FULL     - Eth, WiFi, motion sensors, 1GB RAM         -> R184 not mounted - R185 mounted
+ * EXTENDED - NO Eth, WiFi, motion sensors, 1GB RAM      -> R184 not mounted - R185 not mounted
+ * BASE     - Eth, NO WiFi, NO motion sensors, 512MB RAM -> R184 mounted     - R185 mounted
+ * BASE KS  - NO Eth, WiFi, NO motion sensors, 512MB RAM -> R184 mounted     - R185 not mounted
+ */
+
+enum imx6sx_udoneo_board_type {
+	UDOO_NEO_BASIC = 0,
+	UDOO_NEO_BASIC_KS = 1,
+	UDOO_NEO_FULL = 2,
+	UDOO_NEO_EXTENDED = 3,
+	UDOO_NEO_UNKNOWN,
+};
+
+#define GPIO_R184 IMX_GPIO_NR(4, 13)
+#define GPIO_R185 IMX_GPIO_NR(4, 0)
+
+static enum imx6sx_udoneo_board_type imx6sx_udoneo_detect(struct device *dev)
+{
+	struct device_node *gpio_np = NULL;
+	int r184, r185;
+	int ret;
+
+	gpio_np = of_find_node_by_name_address(NULL, "gpio@20a8000");
+	if (gpio_np) {
+		ret = of_device_ensure_probed(gpio_np);
+		if (ret) {
+			dev_warn(dev, "Can't probe GPIO node\n");
+			goto detect_error;
+		}
+	} else {
+		dev_warn(dev, "Can't get GPIO node\n");
+		goto detect_error;
+	}
+
+	ret = gpio_request(GPIO_R184, "version r184");
+	if (ret)
+		goto detect_error;
+
+	ret = gpio_request(GPIO_R185, "version r185");
+	if (ret)
+		goto detect_error;
+
+	ret = gpio_direction_input(GPIO_R184);
+	if (ret)
+		goto detect_error;
+
+	ret = gpio_direction_input(GPIO_R185);
+	if (ret)
+		goto detect_error;
+
+	r184 = gpio_get_value(GPIO_R184);
+	r185 = gpio_get_value(GPIO_R185);
+
+	return r184 << 1 | r185 << 0;
+
+detect_error:
+	dev_warn(dev, "Board detection failed\n");
+
+	return UDOO_NEO_UNKNOWN;
+}
 
 static int imx6sx_udoneo_probe(struct device *dev)
 {
+	enum imx6sx_udoneo_board_type type;
+	const char *model;
+
+	type = imx6sx_udoneo_detect(dev);
+	switch (type) {
+	case UDOO_NEO_FULL:
+		model = "UDOO Neo Full";
+		break;
+	case UDOO_NEO_EXTENDED:
+		model = "UDOO Neo Extended";
+		break;
+	case UDOO_NEO_BASIC:
+		model = "UDOO Neo Basic";
+		break;
+	default:
+		model = "UDOO Neo unknown";
+	}
+
+	barebox_set_model(model);
 	barebox_set_hostname("mx6sx-udooneo");
 
 	return 0;
-- 
2.30.2



