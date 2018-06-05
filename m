Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQGPl-00026z-88
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 18:10:39 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  5 Jun 2018 20:10:20 +0200
Message-Id: <20180605181021.10467-2-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/3] MIPS: dts: tl_wdr4300: add Atheros ART partition
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

and define it as source of MAC address for ag71xx driver

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
index 5216cdc1e..d3bd7a3d2 100644
--- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
+++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
@@ -26,6 +26,12 @@
 			compatible = "barebox,environment";
 			device-path = &spiflash, "partname:barebox-environment";
 		};
+
+		art@0 {
+			compatible = "qca,art-ar9344", "qca,art";
+			device-path = &spiflash, "partname:art";
+			barebox,provide-mac-address = <&mac0>;
+		};
 	};
 };
 
@@ -63,6 +69,11 @@
 			label = "barebox-environment";
 			reg = <0x80000 0x10000>;
 		};
+
+		partition@7f0000 {
+			label = "art";
+			reg = <0x7f0000 0x10000>;
+		};
 	};
 };
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
