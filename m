Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQno-0004rS-08
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:22:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:13 +0200
Message-Id: <1411719735-30949-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] ARM: dts: Update am335x-bone-common.dtsi
To: barebox@lists.infradead.org

Update from current upstream dtsi. This enables the USB control
module.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am335x-bone-common.dtsi | 38 ++++++++++++++++++------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index e1effac..ef97d90 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -178,31 +178,31 @@
 
 &usb {
 	status = "okay";
+};
 
-	control@44e10000 {
-		status = "okay";
-	};
+&usb_ctrl_mod {
+	status = "okay";
+};
 
-	usb-phy@47401300 {
-		status = "okay";
-	};
+&usb0_phy {
+	status = "okay";
+};
 
-	usb-phy@47401b00 {
-		status = "okay";
-	};
+&usb1_phy {
+	status = "okay";
+};
 
-	usb@47401000 {
-		status = "okay";
-	};
+&usb0 {
+	status = "okay";
+};
 
-	usb@47401800 {
-		status = "okay";
-		dr_mode = "host";
-	};
+&usb1 {
+	status = "okay";
+	dr_mode = "host";
+};
 
-	dma-controller@07402000  {
-		status = "okay";
-	};
+&cppi41dma  {
+	status = "okay";
 };
 
 &i2c0 {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
