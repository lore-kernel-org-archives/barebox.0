Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DKt-0002eN-Mw
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 11:39:00 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Aug 2019 13:38:53 +0200
Message-Id: <20190826113854.27895-2-o.rempel@pengutronix.de>
In-Reply-To: <20190826113854.27895-1-o.rempel@pengutronix.de>
References: <20190826113854.27895-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/3] MIPS: dts: dpt-module: fix gpio button
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

GPIO11 is set to 0 by default and there is no internal pull ups
to set a different configuration. To fix the system with gpio-key
activated we need to fix devicetree first.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index f0de46315c..315589aab9 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -24,6 +24,12 @@
 			barebox,default-trigger = "heartbeat";
 		};
 	};
+
+	gpio-keys {
+		button@0 {
+			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+		};
+	};
 };
 
 &spiflash {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
