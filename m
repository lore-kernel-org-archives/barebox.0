Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVsG-00020S-4g
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 09:37:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 11:36:55 +0200
Message-Id: <1371461816-18004-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371461816-18004-1-git-send-email-s.hauer@pengutronix.de>
References: <1371461816-18004-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX51: Add usbmisc devicetree node
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
index fcbc8be..310614b 100644
--- a/arch/arm/dts/imx51.dtsi
+++ b/arch/arm/dts/imx51.dtsi
@@ -183,6 +183,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80000 0x0200>;
 				interrupts = <18>;
+				fsl,usbmisc = <&usbmisc 0>;
 				status = "disabled";
 			};
 
@@ -190,6 +191,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80200 0x0200>;
 				interrupts = <14>;
+				fsl,usbmisc = <&usbmisc 1>;
 				status = "disabled";
 			};
 
@@ -197,6 +199,7 @@
 				compatible = "fsl,imx51-usb", "fsl,imx27-usb";
 				reg = <0x73f80400 0x0200>;
 				interrupts = <16>;
+				fsl,usbmisc = <&usbmisc 2>;
 				status = "disabled";
 			};
 
@@ -207,6 +210,12 @@
 				status = "disabled";
 			};
 
+			usbmisc: usbmisc@73f80800 {
+				#index-cells = <1>;
+				compatible = "fsl,imx51-usbmisc";
+				reg = <0x73f80800 0x0200>;
+			};
+
 			gpio1: gpio@73f84000 {
 				compatible = "fsl,imx51-gpio", "fsl,imx35-gpio";
 				reg = <0x73f84000 0x4000>;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
