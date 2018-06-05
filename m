Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQGPl-00026b-85
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 18:10:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  5 Jun 2018 20:10:21 +0200
Message-Id: <20180605181021.10467-3-o.rempel@pengutronix.de>
In-Reply-To: <20180605181021.10467-1-o.rempel@pengutronix.de>
References: <20180605181021.10467-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 3/3] MIPS: dts: dpt-module: add Atheros ART partition
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

and define it as source of MAC address for ag71xx driver

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 2c38bbc09..2adf02438 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -11,6 +11,12 @@
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
+
+		art@0 {
+			compatible = "qca,art-ar9331", "qca,art";
+			device-path = &spiflash, "partname:art";
+			barebox,provide-mac-address = <&mac0>;
+		};
 	};
 
 	leds {
@@ -30,6 +36,11 @@
 		label = "barebox-environment";
 		reg = <0x80000 0x10000>;
 	};
+
+	partition@7f0000 {
+		label = "art";
+		reg = <0x7f0000 0x10000>;
+	};
 };
 
 &mac0 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
