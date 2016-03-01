Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaedp-0004CY-Lv
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 07:22:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Mar 2016 08:22:23 +0100
Message-Id: <1456816943-490-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX53-qsb: Fix gpio button polarity
To: Barebox List <barebox@lists.infradead.org>

Since 253fb33 (input: gpio-keys: convert to input framework) the
gpio-buttons are registered with the input framework which has the
side effect that they are activated during boot and no longer have
to be activated manually by activating the input device console.
This reveals that the gpio-button polarities are wrong: The autoboot
is no longer running through since a gpio button press is wrongly
detected.
Fix the polarities in the barebox dts for now to get back a working
board. A proper fix has been sent upstream to the kernel. Once this
has landed and propagated back to barebox this patch can be reverted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53-qsb-common.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/dts/imx53-qsb-common.dtsi b/arch/arm/dts/imx53-qsb-common.dtsi
index bf634e4..85e1b8b 100644
--- a/arch/arm/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/dts/imx53-qsb-common.dtsi
@@ -19,6 +19,24 @@
 			device-path = &bareboxenv;
 		};
 	};
+
+	/*
+	 * The buttons are marked as active high in the upstream dts.
+	 * Remove these once fixed upstream.
+	 */
+	gpio-keys {
+		power {
+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+		};
+
+		volume-up {
+			gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
+		};
+
+		volume-down {
+			gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &esdhc1 {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
