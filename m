Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W9F0W-0001GJ-Te
 for barebox@lists.infradead.org; Fri, 31 Jan 2014 14:23:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Jan 2014 15:23:13 +0100
Message-Id: <1391178204-20889-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
References: <1391178204-20889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/15] ARM: dts: i.MX25: remove disabled status of usbmisc unit
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx25.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/dts/imx25.dtsi b/arch/arm/dts/imx25.dtsi
index 80ecd1f..c6c0714 100644
--- a/arch/arm/dts/imx25.dtsi
+++ b/arch/arm/dts/imx25.dtsi
@@ -519,7 +519,6 @@
 				clocks = <&clks 9>, <&clks 70>, <&clks 8>;
 				clock-names = "ipg", "ahb", "per";
 				reg = <0x53ff4600 0x00f>;
-				status = "disabled";
 			};
 
 			dryice@53ffc000 {
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
