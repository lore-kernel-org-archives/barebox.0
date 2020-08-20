Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8f69-0004mo-Q3
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 07:34:59 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 20 Aug 2020 09:34:50 +0200
Message-Id: <20200820073454.17500-9-o.rempel@pengutronix.de>
In-Reply-To: <20200820073454.17500-1-o.rempel@pengutronix.de>
References: <20200820073454.17500-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v5 08/12] ARM: dts: protonic: lanmcu: add eMMC partition table
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Since this board do not including imx6qdl-prti6q.dtsi, it will not get
partition table which was added for other Protonic boards. So, add it
separately.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6dl-lanmcu.dts | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index b05ed9c3ba..06d47bdc0d 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -13,6 +13,11 @@
 
 	chosen {
 		stdout-path = &uart4;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc3, "partname:barebox-environment";
+		};
 	};
 
 	memory {
@@ -414,9 +419,14 @@
 		#size-cells = <1>;
 		#address-cells = <1>;
 
-		bootstate_backend: bootstate_backend@f0000 {
-			reg = <0xf0000 0x10000>;
-			label = "bootstate";
+		partition@100000 {
+			label = "barebox-environment";
+			reg = <0x100000 0x100000>;
+		};
+
+		partition@200000 {
+			label = "state";
+			reg = <0x200000 0x100000>;
 		};
 	};
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
