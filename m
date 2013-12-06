Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vp0wD-0007F5-JU
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 19:19:46 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri,  6 Dec 2013 20:17:47 +0100
Message-Id: <1386357468-26892-3-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX6: tqma6x: dts: get MAC address from OCOTP
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 arch/arm/dts/imx6qdl-tqma6x.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
index 668fa25..86d5ca7 100644
--- a/arch/arm/dts/imx6qdl-tqma6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
@@ -30,6 +30,10 @@
 	status = "okay";
 };
 
+&ocotp1 {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
