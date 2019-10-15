Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJDE-0007Ox-NQ
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 09:33:54 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 15 Oct 2019 11:33:47 +0200
Message-Id: <20191015093347.5032-3-o.rempel@pengutronix.de>
In-Reply-To: <20191015093347.5032-1-o.rempel@pengutronix.de>
References: <20191015093347.5032-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/3] ARM: dts: stm32mp157a-dk1: overwrite regulator for
 sdmmc node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

There is currently no driver for the STPMIC1, which supplies the 3v3
rail into the SDMMC2. The regulator is on on boot though, so lets
replace it with a fixed regulator till we have a regulator driver for
the STPMIC1.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
[afa: replaced /delete-node/ with fixed-regulator]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157a-dk1.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index cd3d614d46..460637450a 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -33,4 +33,17 @@
 			pool;
 		};
 	};
+
+	reg_vmmc: regulator-vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "vmmc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+&sdmmc1 {
+	/* regulator driver not yet ported to barebox, but always on */
+	vmmc-supply = <&reg_vmmc>;
 };
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
