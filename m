Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vp0wD-0007F4-JV
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 19:19:46 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri,  6 Dec 2013 20:17:46 +0100
Message-Id: <1386357468-26892-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1386357468-26892-1-git-send-email-r.schwebel@pengutronix.de>
References: <1386357468-26892-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: i.MX6: tqma6x: dts: move FEC enablement to baseboard
To: barebox@lists.infradead.org

The definition if the FEC is used is made by the baseboard (MBa6x), not
by the module (TQMa6x). Move it there.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/dts/imx6q-mba6x.dts  | 4 ++++
 arch/arm/dts/imx6q-tqma6x.dts | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
index 69d46b4..e057fc4 100644
--- a/arch/arm/dts/imx6q-mba6x.dts
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -26,6 +26,10 @@
 	};
 };
 
+&fec {
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
diff --git a/arch/arm/dts/imx6q-tqma6x.dts b/arch/arm/dts/imx6q-tqma6x.dts
index 597388e..f556381 100644
--- a/arch/arm/dts/imx6q-tqma6x.dts
+++ b/arch/arm/dts/imx6q-tqma6x.dts
@@ -81,7 +81,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet_1>;
 	phy-mode = "rgmii";
-	status = "okay";
+	status = "disabled";
 };
 
 &hdmi {
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
