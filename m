Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUPt2-0006Vr-J2
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 07:47:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Oct 2020 09:47:01 +0200
Message-Id: <20201019074702.8809-2-s.hauer@pengutronix.de>
In-Reply-To: <20201019074702.8809-1-s.hauer@pengutronix.de>
References: <20201019074702.8809-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: at91sam9263ek: Update NAND partitioning
To: Barebox List <barebox@lists.infradead.org>

The current NAND partitioning is derived from the kernel dts. A current
barebox built with at91sam9263ek_defconfig no longer fits into the
barebox partition. Also a Kernel built with sama5_defconfig no longer
fits into the kernel partition.
This makes the board quite unusable for modern setups, so take the step
and do an incompatible update of the partitioning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/at91sam9263ek.dts | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index 9013108144..29a615f482 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -3,12 +3,44 @@
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-			device-path = &nand_controller, "partname:bareboxenv";
+			device-path = &environment_nand;
 		};
 	};
 
 };
 
+&nand_controller {
+	nand@3 {
+		/delete-node/ partitions;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			at91bootstrap@0 {
+				label = "at91bootstrap";
+				reg = <0x0 0x20000>;
+			};
+
+			barebox@20000 {
+				label = "barebox";
+				reg = <0x20000 0x100000>;
+			};
+
+			environment_nand: bareboxenv@120000 {
+				label = "barebox-environment";
+				reg = <0x120000 0x20000>;
+			};
+
+			rootfs@140000 {
+				label = "root";
+				reg = <0x140000 0x0>;
+			};
+		};
+	};
+};
+
 &{/ahb/apb/mmc@fff84000} {
 	pinctrl-0 = <
 		&pinctrl_board_mmc1
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
