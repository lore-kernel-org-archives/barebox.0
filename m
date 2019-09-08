Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kip-0008Jd-Js
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:06:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id x3so4846611plr.12
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:06:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:06:14 -0700
Message-Id: <20190908000615.28868-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190908000615.28868-1-andrew.smirnov@gmail.com>
References: <20190908000615.28868-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] ARM: dts: imx8mq-zii-ultra: Add switch EEPROM alias
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq-zii-ultra.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index 53679b0d3c..6e41e820b8 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -23,6 +23,15 @@
 		};
 	};
 
+	aliases {
+		/*
+		 * NVMEM device corresponding to EEPROM attached to
+		 * the switch shared DT node with it, so we use that
+		 * fact to create a desirable naming
+		 */
+		switch-eeprom = &switch;
+	};
+
 	mdio0: bitbang-mdio {
 		compatible = "virtual,mdio-gpio";
 		pinctrl-names = "default";
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
