Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5qEE-0006ow-Sn
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 10:42:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1g5qE1-0004eo-Lx
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 12:42:21 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <str@pengutronix.de>) id 1g5qE1-00056U-A7
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 12:42:21 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Sep 2018 12:42:06 +0200
Message-Id: <20180928104206.17764-6-s.trumtrar@pengutronix.de>
In-Reply-To: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
References: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: dts: socfpga: achilles: enable second ethernet port
To: Barebox List <barebox@lists.infradead.org>

The Reflex Achilles has 2 ethernet ports. Enable the second one, too.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 908e929d9edf..176e06df12a5 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -174,6 +174,27 @@
 	status = "okay";
 };
 
+&gmac2 {
+	phy-mode = "rgmii";
+	phy-addr = <0x3>;
+
+	status = "okay";
+
+	txd0-skew-ps = <0>; /* -420ps */
+	txd1-skew-ps = <0>; /* -420ps */
+	txd2-skew-ps = <0>; /* -420ps */
+	txd3-skew-ps = <0>; /* -420ps */
+	rxd0-skew-ps = <420>; /* 0ps */
+	rxd1-skew-ps = <420>; /* 0ps */
+	rxd2-skew-ps = <420>; /* 0ps */
+	rxd3-skew-ps = <420>; /* 0ps */
+	txen-skew-ps = <0>; /* -420ps */
+	txc-skew-ps = <1860>; /* 960ps */
+	rxdv-skew-ps = <420>; /* 0ps */
+	rxc-skew-ps = <1680>; /* 780ps */
+	max-frame-size = <3800>;
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
