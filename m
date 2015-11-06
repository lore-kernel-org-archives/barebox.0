Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034r-B6
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:04 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-Kg
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:39 +0100
Message-Id: <1446827139-339-7-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
References: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: microsom: get MAC address from fuses
To: barebox@lists.infradead.org

The production models have the MAC fuses blown, so we can use a
real MAC address instead of a random one.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx6dl-hummingboard.dts | 4 ++++
 arch/arm/dts/imx6q-hummingboard.dts  | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 3c35cbaee2c6..231496526065 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -19,6 +19,10 @@
 	};
 };
 
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx6q-hummingboard.dts b/arch/arm/dts/imx6q-hummingboard.dts
index ab4510e874c9..e1d2fa8ce227 100644
--- a/arch/arm/dts/imx6q-hummingboard.dts
+++ b/arch/arm/dts/imx6q-hummingboard.dts
@@ -19,6 +19,10 @@
 	};
 };
 
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
