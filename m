Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beOe8-0002q5-5w
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 15:38:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Aug 2016 17:38:18 +0200
Message-Id: <1472485099-10551-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1472485099-10551-1-git-send-email-s.hauer@pengutronix.de>
References: <1472485099-10551-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX6 Santaro: Add USB support
To: Barebox List <barebox@lists.infradead.org>

Enable usbotg and usbh1 devices to gain USB support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-guf-santaro.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index e8a2b96..3217a5b 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -577,6 +577,16 @@
 	status = "okay";
 };
 
+&usbh1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbh1>;
+	status = "okay";
+};
+
+&usbotg {
+	status = "okay";
+};
+
 &usdhc2 {
 	/* SD card socket */
 	pinctrl-names = "default";
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
