Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeok-00052Z-0q
 for barebox@lists.infradead.org; Fri, 31 May 2019 10:31:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWeoi-0005rd-Ks
 for barebox@lists.infradead.org; Fri, 31 May 2019 12:31:20 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 12:31:16 +0200
Message-Id: <20190531103116.27378-4-l.stach@pengutronix.de>
In-Reply-To: <20190531103116.27378-1-l.stach@pengutronix.de>
References: <20190531103116.27378-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: rdu2: reserve pstore memory region
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Reserve a 2 MiB memory region (barebox may choose another address)
to serve as a pstore backend.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index bfc75ba606d6..5d141fcb3450 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -65,6 +65,23 @@
 		switch-eeprom = &switch;
 	};
 
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		/* Address will be determined by the bootloader */
+		ramoops@2fe00000 {
+			compatible = "ramoops";
+			reg = <0x2fe00000 0x200000>;
+			ecc-size = <16>;
+			record-size = <0x20000>;
+			console-size = <0x20000>;
+			ftrace-size = <0x20000>;
+			pmsg-size = <0x20000>;
+		};
+	};
+
 	panel {
 		compatible = "simple-panel";
 		/* Timings for all supported panels, the correct one is enabled
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
