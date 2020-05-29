Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeeTu-00011I-3Z
 for barebox@lists.infradead.org; Fri, 29 May 2020 12:51:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jeeTs-0000OF-VR
 for barebox@lists.infradead.org; Fri, 29 May 2020 14:51:24 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jeeTs-0002Eo-L6
 for barebox@lists.infradead.org; Fri, 29 May 2020 14:51:24 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 29 May 2020 14:51:22 +0200
Message-Id: <20200529125122.8561-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] ARM: MXS: duckbill: set duart to serial0
To: barebox@lists.infradead.org

In the imx28.dtsi the serial0 is set to auart0 which is not the one
used on the duckbill. We set duart to serial0 so the console will be
properly set.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/dts/imx28-duckbill.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx28-duckbill.dts b/arch/arm/dts/imx28-duckbill.dts
index 2a995a7938..299c33e270 100644
--- a/arch/arm/dts/imx28-duckbill.dts
+++ b/arch/arm/dts/imx28-duckbill.dts
@@ -4,6 +4,10 @@
 	chosen {
 		stdout-path = &duart;
 	};
+
+	aliases {
+		serial0 = &duart;
+	};
 };
 
 &duart {
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
