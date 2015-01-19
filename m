Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDBYd-0001n2-4V
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 12:35:52 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6724AA0033C
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 13:36:02 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 19 Jan 2015 13:34:38 +0100
Message-Id: <1421670878-23133-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1421670878-23133-1-git-send-email-w.egorov@phytec.de>
References: <1421670878-23133-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: am335x-phytec-phyflex: Add USB host support
To: barebox@lists.infradead.org

Add USB host support for the phyflex-som.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/dts/am335x-phytec-phyflex.dts | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/dts/am335x-phytec-phyflex.dts b/arch/arm/dts/am335x-phytec-phyflex.dts
index 6c49567..5459cd2 100644
--- a/arch/arm/dts/am335x-phytec-phyflex.dts
+++ b/arch/arm/dts/am335x-phytec-phyflex.dts
@@ -39,6 +39,13 @@
 };
 
 &am33xx_pinmux {
+	usb_pins: pinmux_usb {
+		pinctrl-single,pins = <
+			0x21c (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* usb0_drvvbus.usb0_drvvbus */
+			0x234 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* usb1_drvvbus.usb1_drvvbus */
+		>;
+	};
+
 	i2c0_pins: pinmux_i2c0_pins {
 			pinctrl-single,pins = <
 			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_sda */
@@ -129,6 +136,30 @@
 	};
 };
 
+&cppi41dma {
+        status = "okay";
+};
+
+
+&usb_ctrl_mod {
+        status = "okay";
+};
+
+&usb {
+        pinctrl-names = "default";
+        pinctrl-0 = <&usb_pins>;
+        status = "okay";
+};
+
+&usb1 {
+        dr_mode = "host";
+        status = "okay";
+};
+
+&usb1_phy {
+        status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
