Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggQ5z-0004Cx-AH
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 08:17:16 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 7 Jan 2019 09:17:08 +0100
Message-Id: <1546849029-47070-4-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
References: <1546849029-47070-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/4] ARM: dts: am335x-phytec-state: Add state partition for
 bootchooser
To: barebox@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-phytec-state.dtsi | 57 +++++++++++++++++++++++++++++++++--
 1 file changed, 55 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/am335x-phytec-state.dtsi b/arch/arm/dts/am335x-phytec-state.dtsi
index d332abe4b9b7..1f61cf5a2e6c 100644
--- a/arch/arm/dts/am335x-phytec-state.dtsi
+++ b/arch/arm/dts/am335x-phytec-state.dtsi
@@ -15,13 +15,14 @@
 / {
 	aliases {
 		am335x_phytec_mac_state = &am335x_phytec_mac_state;
+		state = &am335x_phytec_boot_state;
 	};
 
 	am335x_phytec_mac_state: am335x_phytec_mac_state {
 		magic = <0x3f45620e>;
 		compatible = "barebox,state";
 		backend-type = "raw";
-		backend = <&backend_state_eeprom>;
+		backend = <&backend_state_mac_eeprom>;
 		backend-stridesize = <40>;
 		keep-previous-content;
 
@@ -37,6 +38,54 @@
 		};
 
 	};
+
+	am335x_phytec_boot_state: am335x_phytec_boot_state {
+		magic = <0x883b86a6>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend = <&backend_state_update_eeprom>;
+		backend-stridesize = <54>;
+		keep-previous-content;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			last_chosen {
+				reg = <0x0 0x4>;
+				type = "uint32";
+			};
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				remaining_attempts {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+				priority {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
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
+		};
+	};
 };
 
 &eeprom {
@@ -45,9 +94,13 @@
 		compatible = "fixed-partitions";
 		#size-cells = <1>;
 		#address-cells = <1>;
-		backend_state_eeprom: state@0 {
+		backend_state_mac_eeprom: state@0 {
 			reg = <0x000 0x100>;
 			label = "state-eeprom";
 		};
+		backend_state_update_eeprom: state@100 {
+			reg = <0x100 0x150>;
+			label = "update-eeprom";
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
