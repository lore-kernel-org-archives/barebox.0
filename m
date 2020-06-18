Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qX-6B
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:51 +0200
Message-Id: <20200618091102.30150-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/15] ARM: vexpress: dts: fix barebox partitioning breakage
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Roland Hieber <rhi@pengutronix.de>

There is no /smb@4000000 node upstream any longer as it was
renamed with the 8d158e1a4091 ("dts: update to v5.7-rc1") sync.

Adjust the barebox device tree accordingly. It's likely that this
resulted in barebox v2020.06.0 state, environment and update breakage on
the vexpress boards.

Cc: Roland Hieber <rhi@pengutronix.de>
Fixes: 8d158e1a4091 ("dts: update to v5.7-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/vexpress-v2p-ca15.dts | 26 +++++++--------
 arch/arm/dts/vexpress-v2p-ca9.dts  | 51 ++++++++++++++----------------
 2 files changed, 34 insertions(+), 43 deletions(-)

diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index 211eaccb6238..a4cdc8d1f5f0 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -5,23 +5,19 @@
 		compatible = "barebox,environment";
 		device-path = &barebox_env;
 	};
+};
 
-	smb@8000000 {
-		motherboard {
-			flash@0,00000000 {
-				#address-cells = <1>;
-				#size-cells = <1>;
+&{/bus@8000000/motherboard/flash@0,00000000} {
+	#address-cells = <1>;
+	#size-cells = <1>;
 
-				partition@0 {
-					label = "barebox";
-					reg = <0x0 0x80000>;
-				};
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
 
-				barebox_env: partition@80000 {
-					label = "barebox-environment";
-					reg = <0x80000 0x80000>;
-				};
-			};
-		};
+	barebox_env: partition@80000 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
 	};
 };
diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
index b13c114f0cb0..cb4afef185b6 100644
--- a/arch/arm/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/dts/vexpress-v2p-ca9.dts
@@ -10,34 +10,6 @@
 		state = &state;
 	};
 
-	smb@4000000 {
-		motherboard {
-			flash@0,00000000 {
-				#address-cells = <1>;
-				#size-cells = <1>;
-
-				partitions {
-					compatible = "fixed-partitions";
-
-					partition@0 {
-						label = "barebox";
-						reg = <0x0 0x80000>;
-					};
-
-					barebox_env: partition@80000 {
-						label = "barebox-environment";
-						reg = <0x80000 0x80000>;
-					};
-
-					state_storage: partition@100000 {
-						label = "barebox-state";
-						reg = <0x100000 0x100000>;
-					};
-				};
-			};
-		};
-	};
-
 	/* State: mutable part */
 	state: state {
 		magic = <0x4d433230>;
@@ -92,3 +64,26 @@
 		};
 	};
 };
+
+&{/bus@4000000/motherboard/flash@0,00000000} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+
+		barebox_env: partition@80000 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
+
+		state_storage: partition@100000 {
+			label = "barebox-state";
+			reg = <0x100000 0x100000>;
+		};
+	};
+};
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
