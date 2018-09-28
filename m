Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5qEI-0004zl-0L
 for barebox@lists.infradead.org; Fri, 28 Sep 2018 10:42:39 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 28 Sep 2018 12:42:01 +0200
Message-Id: <20180928104206.17764-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/6] dts: achilles: add state for bootchooser
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 arch/arm/dts/socfpga_arria10_achilles.dts | 90 +++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index c03982ef5672..fc75afc79516 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -23,6 +23,7 @@
 
 	aliases {
 		serial0 = &uart0;
+		state = &state;
 	};
 
 	chosen {
@@ -40,6 +41,90 @@
 		reg = <0x0 0xc0000000>;
 	};
 
+	state: state {
+		magic = <0x4d433230>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&state_mmc>;
+		backend-stridesize = <1024>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x10 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority {
+					reg = <0x14 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+			factory {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x20 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority {
+					reg = <0x24 0x4>;
+					type = "uint32";
+					default = <10>;
+				};
+			};
+			last_chosen {
+				reg = <0x2C 0x4>;
+				type = "uint32";
+			};
+		};
+	};
+
+	bootstate: bootstate {
+		compatible = "barebox,bootstate";
+		backend-type = "state"; // or "nv", or "efivar"
+		backend = <&state>;
+
+		system0 {
+			default_attempts = <3>;
+		};
+
+		system1 {
+			default_attempts = <3>;
+		};
+
+		factory {
+			default_attempts = <3>;
+		};
+	};
+
 	soc {
 		clkmgr@ffd04000 {
 			clocks {
@@ -120,6 +205,11 @@
 		label = "environment";
 		reg = <0x178000 0x8000>;
 	};
+
+	state_mmc: partition@180000 {
+		label = "state";
+		reg = <0x180000 0xC00>;
+	};
 };
 
 &uart0 {
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
